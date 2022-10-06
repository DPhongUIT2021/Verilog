


`timescale 1ns/1ns
module tb_REG_16();
	reg clk, W, RA, RB;
	reg[15:0] I;
	wire[15:0] OutA, OutB;
	
	initial begin
		clk = 0;
		W = 0;
		RA = 0;
		RB = 0;
		
		I = 16'h99;
		#4 W = 1;
		#2 W = 0;
		I = 16'bx;
		RA = 1;
		
		I = 16'h555;
		#8 W = 1;
		#2 W = 0;
		I = 16'bx;
		RB = 1;
		end
	always #5 clk = ~clk;
	//REG_16(OutA, OutB, I, W, RA, RB, clk);
	REG_16 r16(OutA, OutB, I, W, RA, RB, clk);
	
endmodule

	