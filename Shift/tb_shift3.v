


`timescale 1ns/1ns
module tb_shif1();
	parameter msb = 15;
	reg[msb:0] data;
	
	wire[msb:0] Out;
	
	initial begin
		data = 16'hFEFF;
		end
	always #5 data = data - 4'hF;
	
	shift_3 sh0(Out, data);
	
endmodule
