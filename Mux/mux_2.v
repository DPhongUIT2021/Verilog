
module mux_2(o, i0, i1, s);
	input i0, i1, s;
	output o;
	
	wire snot, a0, a1;
	
	not not0(snot, s);
	
	and and0(a0, i0, snot);
	and and1(a1, i1, s);
	
	or or0(o, a1, a0);
	
endmodule




