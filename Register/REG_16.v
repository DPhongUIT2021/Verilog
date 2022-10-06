
module REG_16(OutA, OutB, I, W, RA, RB, clk);
		input[15:0] I;
		input	 W, RA, RB, clk;
		output[15:0] OutA, OutB;
		
		
		REG_1 r1[15:0](OutA[15:0], OutB[15:0], I[15:0], W, RA, RB, clk);
		
endmodule 
