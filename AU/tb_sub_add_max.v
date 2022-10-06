

`timescale 1ns/100ps
module tb_sub_add_max();
		parameter msb = 15;
		reg signed [msb:0] A, B;
		reg[1:0] c;
		wire signed [msb:0] O;
		
		initial begin
			A = 10;
			B = 5;
			c = 0;
			#4 A = 6; B = 11;
			
			end
		always #1 c = c + 1;

		//module sub_add_max(O, A, B, c1, c0);
		sub_add_max sub_add_max0(.O(O), .A(A), .B(B), .c1(c[1]), .c0(c[0]));
endmodule


