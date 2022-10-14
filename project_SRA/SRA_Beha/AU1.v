
 /*ctrl_AU[1:0]
			00: abs(B); 01: max(A,B) ; 10: min(A,B) 11: min(A,B)*/
module AU1(Out, InA, InB, ctrl);
		parameter msb = 15;
		input signed[msb:0] InA, InB;
		input[1:0] ctrl;
		output signed[msb:0] Out;
		
		wire signed[msb:0] A, B, o_mux1, o_mux2, o_add;
		wire s_A, s_m1, s_m2, sign;
	
		assign s_A = (ctrl[1] | ctrl[0]);
		assign s_m1	 = s_A;
		assign s_m2 = ( (~sign & ~ctrl[1]) | (sign & ctrl[1]) );
		assign A = (InA & {16{s_A}});
		assign B = InB;
		
		assign o_add = A - B;
		assign sign = o_add[msb];
		assign o_mux1 = (s_m1) ? InA : o_add;
		assign o_mux2 = (s_m2) ? o_mux1 : InB;
		
		assign Out = o_mux2;

endmodule



