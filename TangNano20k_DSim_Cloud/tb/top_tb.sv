`timescale 1ns/1ps

module top_tb;

//inputs
	logic clk_27;

//outputs
	logic output_pixel;

	top2 u_top (
		.clk_27(clk_27),
		.output_pixel(output_pixel)
	);

	GSR GSR(.GSRI(1'b1));

	initial begin
		clk_27 = 0;
		forever #18.518 clk_27 =~clk_27;
	end

	initial begin
		#1000000;
		$stop;
	end

endmodule
