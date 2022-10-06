

`timescale 1ns/1ns
module tb_add16();
	reg[15:0] A, B;
	reg c_in;
	
	wire[15:0] O;
	wire c_out;
	
	initial begin
		A = 10000;
		B = 20000;
		c_in = 0;
		end
	always #5 A = A + 10000;
	
	//module add16(sum, c_out, a, b, c_in);
	add16 add16_0(.sum(O), .c_out(c_out), .a(A), .b(B), .c_in(c_in));
	
endmodule
