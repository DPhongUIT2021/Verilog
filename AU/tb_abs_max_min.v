


`timescale 1ns/1ns
module tb_abs_max_min();
	parameter msb = 15;
	reg signed [msb:0] A, B;
	wire signed [msb:0] O;
	reg[1:0] c;
	
	initial begin 
		A = 100;
		B = 99;
		c = 1;
		#1 c = 0;
		#1 c = 1;
		#1 c = 2;
		#1 c = 3;
		B = -5;
		#1 c = 0;
		end
	
	//module abs_max_min(O, A, B, c1, c0);
	abs_max_min name0( .O(O), .A(A), .B(B), .c1(c[1]), .c0(c[0]) );
	
endmodule

