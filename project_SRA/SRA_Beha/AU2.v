

 /*ctrl_AU
			00: sub(A,B) 01: add(A,B) ; 10: max(A,B) 11: max(A,B)*/
module AU2(Out, InA, InB, ctrl);
		parameter msb = 15;
		input signed[msb:0] InA, InB;
		input[1:0] ctrl;
		output signed[msb:0] Out;
		
		wire sign, s_m1, s_m2, s_B, c_in;
		wire signed[msb:0] o_add, A, B, o_m1, o_m2;
		
		assign s_B = (ctrl[1] | ~ctrl[0]);
		assign c_in = s_B;
		
		assign s_m1 = ctrl[1];
		assign s_m2 = (~sign | ~ctrl[1]);
		
		assign sign = o_add[msb];
		
		assign A = InA;
		assign B = ( InB ^ {(msb+1){s_B}} );
		adder adder(.Sum(o_add), .A(A), .B(B), .c_in(c_in));
		
		assign o_m1 = (s_m1) ? InA : o_add;
		assign o_m2 = (s_m2) ? o_m1 : InB;
		
		assign Out = o_m2;
						
endmodule












// /*ctrl_AU
//			00: sub(A,B) 01: add(A,B) ; 10: max(A,B) 11: max(A,B)*/
//module AU2(Out, A, B, ctrl);
//		parameter msb = 15;
//		parameter ADD = 2'b01, SUB = 2'b00, MAX = 2'b1x;
//		input signed[msb:0] A, B;
//		input[1:0] ctrl;
//		output signed[msb:0] Out;
//
//		
//		wire sign, s_m1, s_m2;
//		wire signed[msb:0] o_add, A, B, o_m1, o_m2;
//		
//
//		assign s_m1 = (ctrl == ADD || ctrl == SUB) ? 1'b0 : 1'b1;
//		assign s_m2 = (ctrl == ADD || ctrl == SUB || (ctrl == MAX && !sign)) ? 1'b1 : 1'b0;
//		
//		assign sign = o_add[msb];
//		
//		assign A = A;
//		assign B = B;
//		
//		assign o_add = (ctrl == ADD) ? A + B : A - B;
//		assign o_m1 = (s_m1) ? A : o_add;
//		assign o_m2 = (s_m2) ? o_m1 : B;
//		
//		assign Out = o_m2;
//						
//endmodule
