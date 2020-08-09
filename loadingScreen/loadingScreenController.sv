module loadingScreenController(
	input clk_12,
	input rst,
	input newFrame,
	output bsy,
	output validPixelOut,
	output [23:0] color,
	output unsigned [16:0] bitAddr
);
localparam 
	STATE_READROM = 0,
	STATE_IDLE = 1,
	STATE_RENDER = 2,
	ROM_HEADER_BYTES = 64,
	BIT_ADDR_OFFSET = ROM_HEADER_BYTES << 3,
	HEIGHT = 272,
	WIDTH = 480;

logic unsigned [1:0] state;	
	
logic unsigned [15:0] yPixel;
logic unsigned [15:0] xPixel;
// logic unsigned [16:0] bitAddr;

logic unsigned [7:0] pixelByte;

logic unsigned [7:0] ctrlData;
logic unsigned [13:0] readRomCounter;
logic unsigned [7:0] romHeader [ROM_HEADER_BYTES-1:0];

initial begin
	state = STATE_READROM;
	xPixel = 0;
	yPixel = 0;
	readRomCounter = 0;
	for (int i = 1; i < ROM_HEADER_BYTES; i++)
		romHeader[i] = 0;
	
end

// State machine and pixel counter
always_ff @(posedge clk_12 or negedge rst) begin
	if (!rst) begin
		state <= STATE_READROM;
		readRomCounter <= 0;
		xPixel <= 0;
		yPixel <= 0;
		for (int i = 1; i < ROM_HEADER_BYTES; i++)
			romHeader[i] <= 0;
	end else begin
		case (state)
			STATE_READROM: begin
				xPixel <= 0;
				yPixel <= 0; 
				readRomCounter <= readRomCounter + 1;
				
				// Save the  ROM header data locally
				romHeader[readRomCounter] <= ctrlData;
				
				// Stay in READROM until all setup data is read
				if (readRomCounter + 1 == ROM_HEADER_BYTES) state <= STATE_IDLE;
				else state <= STATE_READROM;
			end
			
			// Idle until a new frame is requested
			STATE_IDLE: begin
				if (newFrame) state <= STATE_RENDER;
				else state <= STATE_IDLE;
				readRomCounter <= 0;
			end
			
			STATE_RENDER: begin
				readRomCounter <= 0;
				if (xPixel + 1 == WIDTH) begin
					xPixel <= 0;
					if (yPixel + 1 == HEIGHT) begin
						state <= STATE_IDLE;
						yPixel <= 0;
					end else begin
						yPixel <= yPixel + 1;
						state <= STATE_RENDER;
					end
				end else begin
					xPixel <= xPixel + 1;
					yPixel <= yPixel;
					state <= STATE_RENDER;
				end
			end
		endcase
	end
end


always_comb begin
	bitAddr <= yPixel * WIDTH + xPixel + BIT_ADDR_OFFSET;
	bsy <= state != STATE_IDLE;
	validPixelOut <= state == STATE_RENDER;
	color <= pixelByte[bitAddr[2:0]] ? // FT color?
		{romHeader[13], romHeader[12], romHeader[11]} : 
		{romHeader[10], romHeader[9], romHeader[8]};
end


loadingScreenROM inst_loadRom(
	.clock(!clk_12),
	.address_a(bitAddr[16:3]),
	.q_a(pixelByte),
	.address_b(readRomCounter),
	.q_b(ctrlData)
);


endmodule