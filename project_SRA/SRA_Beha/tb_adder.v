

`timescale 1ns/1ns
module tb_adder();
	reg[15:0] A, B;
	reg c_in;
	
	wire[15:0] Out;
	
	initial begin
		A = 10000;
		B = 20000;
		c_in = 0;
		end
	always #5 A = A + 10000;
	
	//module adder(Sum, A, B, c_in);
	adder add16(.Sum(Out), .A(A), .B(B), .c_in(c_in));
	
endmodule
