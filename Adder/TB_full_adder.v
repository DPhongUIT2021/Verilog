


`timescale 1ns/1ns

module tb_full_adder();
	reg[2:0] count;
	wire sum, c_out;
	
	initial begin
		count = 0;
		end
	always #5 count = count +1;
	
	full_adder full_adder0(.sum(sum), .c_out(c_out), .a(count[0]), .b(count[1]), .c_in(count[2]));
	
endmodule


