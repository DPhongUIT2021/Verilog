
/* function:
		C[1:0]   00 	  01        10        11
			Out   abs(B), max(A,B), min(A,B), min(A,B)
			*/

module abs_max_min(O, A, B, c1, c0);
	parameter msb = 15;
	input[msb:0] A, B;
	input c1, c0;
	output[msb:0] O;
		
	wire c2, s1, s1_0, s1_1;
	wire[msb:0] w_a, w_b, c22, w_add0, w_mux0;
	wire sign, n_sign, n_c1;
	
	assign c22 = {16{c2}};
	assign sign = w_add0[msb];
	
	not not0(n_sign, sign);
	not not1(n_c1, c1);
	not not2[15:0](w_b, B);
	
	or or0(c2, c1, c0); // c2 = c1 + c0 === s0
	or or1(s1, s1_0, s1_1);
	
	and and0(s1_0, n_sign, n_c1); // S1 = sign'.c1' + sign.c1
	and and1(s1_1, sign, c1);
	and and2[15:0](w_a, A, c22);
	
	//module add16(sum, c_out, a, b, c_in)
	add16 add16_0( .sum(w_add0), .c_out(), .a(w_a), .b(w_b), .c_in(1));
	
	//module mux16(o, i0, i1, s);
	mux16 mux16_0(w_mux0, w_add0, A, c2);
	mux16 mux16_1(O, B, w_mux0, s1); 
	
endmodule




