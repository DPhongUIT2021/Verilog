

module mux16(o, i0, i1, s);
	input[15:0] i0, i1;
	input s;
	output[15:0] o;
	
	mux_2 m0[15:0](o[15:0], i0[15:0], i1[15:0], s);
	
endmodule

