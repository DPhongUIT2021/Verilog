

module D_FF(Q, D, clk);
	input D, clk;
	output Q;
	
	wire Qm, nclk;
	
	not not_clk(nclk, clk);
	D_L d_lach0(.Q(Qm), .Qbar(), .D(D), .E(nclk));
	D_L d_lach1(.Q(Q), .Qbar(), .D(Qm), .E(clk));

endmodule
