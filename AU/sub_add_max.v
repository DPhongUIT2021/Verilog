
/* fun: 00, 01,  10, 11 
			-,  +, max, max */
module sub_add_max(O, A, B, c1, c0);
		parameter msb = 15;
		input[msb:0] A, B;
		input c1, c0;
		output[msb:0] O;
		
		wire xor_b, c_in, sign, n_sign, s0, s1, n_c1, n_c0, s1_0, s1_1;
		wire[msb:0] w_b, w_mux, xor_b_16, w_add;
		
		assign sign = w_add[msb];
		// xor_b = c1 + c0'
		not n0(n_c0, c0);
		or or0(xor_b, c1, n_c0);
		
		// w_b = xor_b_16 xor B
		assign xor_b_16 = {msb+1{xor_b}};
		xor x1[15:0](w_b, xor_b_16, B);
		
		// c_in == xor_b
		assign c_in = xor_b;
		// s0 = c1
		assign s0 = c1;
		// s1 = sign.c1
		not not1(n_sign, sign);
		not not2(n_c1, c1);
		or or1(s1, n_sign, n_c1);
		
		//module add16(sum, c_out, a, b, c_in);
		add16 add0(.sum(w_add), .c_out(), .a(A), .b(w_b), .c_in(c_in));
		
		//module mux16(o, i0, i1, s);
		mux16 mux0(.o(w_mux), .i0(w_add), .i1(A), .s(s0));
		
		mux16 mux1(.o(O), .i0(B), .i1(w_mux), .s(s1));

endmodule



















