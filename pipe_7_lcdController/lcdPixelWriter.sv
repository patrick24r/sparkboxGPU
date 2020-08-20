module lcdPixelWriter
#(parameter HOR_PIX = 'd4, // Screen width (pixels)
  parameter VER_PIX = 'd2, // Screen height (pixels)
  parameter THBP = 'd3, // Horizontal back porch
  parameter THFP = 'd2, // Horizontal front porch
  parameter THW = 'd1, // hsync width (dclk cycles)
  parameter TVBP = 'd2, // Vertical back porch
  parameter TVFP = 'd1, // vertical front porch
  parameter TVW = 'd1 // vsync width (hclk cycles)
)(
	input clk_12mhz,
	input rst,
	input [23:0] rgb,
	input data_valid, // Determine if the current input rgn
	output data_req, // Ready for next pixel data
	lcdBus.controller lcdPins
);

logic unsigned [15:0] dclk_counter;
logic unsigned [15:0] hclk_counter;
logic dclk_en;


initial begin
	dclk_en = 1;
	dclk_counter = 0;
	hclk_counter = 0;
	data_req = 0;
	lcdPins.hsync = 1;
	lcdPins.vsync = 1;
	lcdPins.d_en = 0;
	lcdPins.rgb = 24'd0;
end

always_comb begin
	// The clk to the lcd is the same 12 MHz clock, only gated
	lcdPins.d_clk <= clk_12mhz && dclk_en;
	// Turn off the display when 
	lcdPins.disp_en <= rst;

	// Hsync is low immediately until the width
	lcdPins.hsync <= !(dclk_counter < THW);
	// Vsync is low after the front porch for the width
	lcdPins.vsync <= !(hclk_counter >= TVFP && hclk_counter < TVFP + TVW);

	// Request data the clock cycle before data
	data_req <= (dclk_counter >= THBP - 1 && dclk_counter < THBP + HOR_PIX - 1) && 
		hclk_counter >= TVFP + TVBP;
end

// Clock gating and data requests update on falling edge
always_ff @(negedge clk_12mhz) begin
	// Always want the output clock to be the input clock unless
	// the data is not valid during output
	dclk_en <= data_valid || !data_req;
end

// Outputs update on positive clk_12mhz
always_ff @(posedge clk_12mhz or negedge rst) begin
	if (!rst) begin
		dclk_counter <= 0;
		hclk_counter <= 0;
		lcdPins.rgb <= 24'd0;
		
	end else begin
		lcdPins.rgb = rgb;
		// If we are requesting data, we need to enable data
		lcdPins.d_en <= data_req;
		
		// Increment dclk_counter if the clock is enabled
		if (dclk_en && dclk_counter >= THFP + THBP + HOR_PIX - 1) begin
			// dclk is rolling over
			dclk_counter <= 0;
			// Increment the hclk counter
			if (hclk_counter >= TVFP + TVBP + VER_PIX - 1) hclk_counter <= 0;
			else hclk_counter <= hclk_counter + 1;
		end else if (dclk_en) begin
			// Increment dclk, not rolling over
			dclk_counter <= dclk_counter + 1;
			hclk_counter <= hclk_counter;
		end else begin
			// Counters stay the same
			dclk_counter <= dclk_counter;
			hclk_counter <= hclk_counter;
		end
	end
end

	
endmodule