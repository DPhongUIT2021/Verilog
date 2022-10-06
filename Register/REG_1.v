

module REG_1(OutA, OutB, I, W, RA, RB, clk);
	input I, W, RA, RB, clk;
	output OutA, OutB;
	
	wire wq, wd, nW, a0, a1;
	
	not not0(nW, W);
	and and0(a0, wq, nW);
	and and1(a1, I, W);
	or or0(wd, a0, a1);
	
	D_FF dff0(wq, wd, clk);
	
	bufif1 buf0(OutA, wq, RA);
	bufif1 buf1(OutB, wq, RB);
	
endmodule

	




