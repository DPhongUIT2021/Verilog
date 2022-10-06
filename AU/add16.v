
module add16(sum, c_out, a, b, c_in);
	input[15:0] a, b;
	input c_in;
	output[15:0] sum;
	output c_out;
	
	wire[14:0] c;
	//module full_adder(sum, c_out, a, b, c_in);
	full_adder f0[15:0](sum[15:0], {c_out,c[14:0]} , a[15:0], b[15:0], {c[14:0], c_in});
	
endmodule

