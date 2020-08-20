module fpgaLcdLoadingtester(
	input CLOCK_50,
	input [1:0] KEY,
	output [1:0] LED,
	inout [33:0] GPIO_0,
	inout [33:0] GPIO_1
);

logic CLOCK_12;

lcdBus out();
assign GPIO_0[7:0] = out.rgb[23:16]; // Red pins
assign GPIO_0[23:16] = out.rgb[15:8]; // Green pins
assign GPIO_0[15:8] = out.rgb[7:0]; // Blue pins
assign GPIO_0[24] = out.d_clk; // LCD clk pin
assign GPIO_0[25] = out.disp_en; // Display enable pin
assign GPIO_0[26] = out.hsync; // hsync pin
assign GPIO_0[27] = out.vsync; // vsync pin
assign GPIO_0[28] = out.d_en; // data enable pin


logic [23:0] colorIn, colorOut;
logic bsy;

logic buttonSt, newFrame, pixelReq, fifoempty, fifofull;


assign LED[0] = buttonSt;
initial begin
	buttonSt = 0;
end

always_ff @(posedge CLOCK_12) begin
	if (buttonSt == 0) begin
		// Wait for button press
		if (!bsy && !KEY[0]) begin
			newFrame <= 1;
			buttonSt <= 1;
		end else begin
			newFrame <= 0;
			buttonSt <= 0;
		end
	end else begin
		// Wait until button released and ready
		if (bsy || !KEY[0] || !fifoempty) buttonSt <= 1;
		else buttonSt <= 0;
		newFrame <= 0;
	end
end


pll_12mhz inst_pll(
	CLOCK_50,
	CLOCK_12
);	

// FIFO to buffer  the pixel data
pixelFifo inst_fifo(
	.data(colorIn),
	.rdclk(CLOCK_12),
	.rdreq(pixelReq),
	.wrclk(CLOCK_12),
	.wrreq(bsy),
	.q(colorOut),
	.rdempty(fifoempty),
	.wrfull(fifofull)
);

// 
loadingScreenController inst_loadCtrl(
	.clk_12(!CLOCK_12),
	.rst(1'b1),
	.newFrame,
	.bsy,
	.color(colorIn)
);



lcdPixelWriter inst_lcdPixelWriter(
	.clk_12mhz(CLOCK_12), // 15 MHz clock
	.rst(1'b1), // never reset
	.rgb(colorOut), // RGB input
	.data_valid(!fifoempty), // Data only valid if the fifo is not empty
	.data_req(pixelReq), // rgb color request
	.lcdPins(out.controller)
);

endmodule