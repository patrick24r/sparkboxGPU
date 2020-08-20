module simLcdTester(
    input clk_12mhz,
    input rst,
    input [23:0] rgb_in,
    input data_valid,
    output data_req,

    output [23:0] rgb_out,
    output vsync,
    output hsync,
    output d_en,
    output d_clk,
    output disp_en
);

lcdBus out();


assign rgb_out = out.rgb;
assign vsync = out.vsync;
assign hsync = out.hsync;
assign d_en = out.d_en;
assign disp_en = out.disp_en;
assign d_clk = out.d_clk;


lcdPixelWriter inst_lcdPixelWriter(
	.clk_12mhz, // 15 MHz clock
	.rst, // never reset
	.rgb(rgb_in), // RGB input
	.data_valid, // Data only valid if the fifo is not empty
	.data_req, // rgb color request
	.lcdPins(out.controller)
);

endmodule