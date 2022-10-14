

module adder_cell(Sum, carry_out, A, B, carry_in);
			input A, B, carry_in;
			output Sum, carry_out;
				/* 
					sum = a xor b xor c_in
					carry_out = ab + carry_in(a xor b)
				*/
			assign Sum = (A ^ B ^ carry_in);
			assign carry_out = ((A & B) | (carry_in & (A ^ B)));
			
endmodule
