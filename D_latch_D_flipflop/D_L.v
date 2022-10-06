

module D_L(Q, Qbar, D, E);
	input D, E;
	output Q, Qbar;
	
	wire nD, w_a1, w_a2;

	not not_D(nD, D);
	and and_1(w_a1, E, nD);
	and and_2(w_a2, E, D);
	nor nor_1(Q, Qbar, w_a1);
	nor nor_2(Qbar, Q, w_a2);
	
endmodule

module D_L_clr_prs(Q, Qbar, D, E, CLR, PRS);
	input D, E, CLR, PRS;
	output Q, Qbar;
	
	wire nD, w_a1, w_a2;

	not not_D(nD, D);
	and and_1(w_a1, E, nD);
	and and_2(w_a2, E, D);
	nor nor_1(Q, Qbar, w_a1, CLR);
	nor nor_2(Qbar, Q, w_a2, PRS);
	
endmodule



module D_FF_clear(Q, D, clk, clear);
	input D, clk, clear;
	output Q;
	
	wire Qm, nclk;
	
	not not_clk(nclk, clk);
	//D_L_clr_prs(Q, Qbar, D, E, CLR, PRS);
	//D_L(Q, Qbar, D, E);
	D_L d0(.Q(Qm), .Qbar(), .D(D), .E(nclk));
	D_L_clr_prs d1(.Q(Q), .Qbar(), .D(Qm), .E(clk), .CLR(clear), .PRS());

endmodule

//module T_FF(Q, T, clk);
//	input T, clk;
//	output Q;
//	
//	wire Qnot, Tnot, a1, a2, w_into_d;
//	
//	not not_Q(Qnot, Q);
//	not not_T(Tnot, T);
//	
//	and and_1(a1, Q, Tnot);
//	and and_2(a2, Qnot, T);
//	
//	or or1(w_into_d, a1, a2);
//	
//	//D_FF(Q, D, clk);
//	
//	D_FF dff0(Q, w_into_d, clk);
//
//endmodule

module T_FF(Q, T, clk);
	input T, clk;
	output Q;
	
	wire w1;
	
	xor xor0(w1, T, Q);
	
	D_FF dff0(Q, w1, clk);

endmodule
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	