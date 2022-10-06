

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

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	