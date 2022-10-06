

`timescale 1ns/1ns
module tb_REG_1();
	reg clk, W, RA, RB, I;
	wire OutA, OutB;
	
	initial begin
		clk = 0;
		W = 0;
		RA = 0;
		RB = 0;
		
		I = 1;
		#4 W = 1;
		#2 W = 0;
		RA = 1;
		
		I = 0;
		#8 W = 1;
		#2 W = 0;
		RB = 1;
		end
	always #5 clk = ~clk;
	//REG_1(OutA, OutB, I, W, RA, RB, clk);
	REG_1 reg1(OutA, OutB, I, W, RA, RB, clk);
	
endmodule

	