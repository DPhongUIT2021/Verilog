

`timescale 1ps/1ps

module tb_adder_cell();
		reg A, B, carry_in;
		wire Out, carry_out;
		
		initial begin
			A = 1;
			B = 0;
			carry_in = 0;
		end
		//module adder(Out, carry_out, In1, In2, carry_in);
		adder_cell adder_cell_name(.Out(Out), .carry_out(carry_out), .In1(A), In2(B), .carry_in(carry_in));
		
endmodule
