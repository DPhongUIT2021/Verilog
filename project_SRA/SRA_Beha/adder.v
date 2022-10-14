

module adder(Sum, A, B, c_in);
			parameter msb = 15;
			input[msb:0] A, B;
			input c_in;
			output[msb:0] Sum;
			
			wire[msb:0] carry_out;
			//module adder_cell(Sum, carry_out, A, B, carry_in);
			adder_cell add[msb:0](.Sum(Sum[msb:0]), .carry_out(carry_out[msb:0]), .A(A[msb:0]), .B(B[msb:0]), .carry_in({carry_out[msb-1:0],c_in}));
 
endmodule

