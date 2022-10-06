

module shift_3(Out, In);
	parameter msb = 15;
	
	input[msb:0] In;
	output[msb:0] Out;
	
	assign Out[msb:13] = 3'b000;
	assign Out[12:0] = In[msb:3];
	
endmodule
