
module shift_1(Out, In);
	parameter msb = 15;
	
	input[msb:0] In;
	output[msb:0] Out;
	
	assign Out[msb] = 1'b0;
	assign Out[14:0] = In[msb:1];
	
endmodule

