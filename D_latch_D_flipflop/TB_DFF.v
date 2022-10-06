
`timescale 1ns/1ns

module TB_DFF();
	reg clk, d;
	wire q;
	
	initial begin
		clk = 0;
		d = 0;
		#40 d = 1;
		#50;
		$display("Q= %0b, D=%0b, time=%0t", q, d, $time);
	end
	
	always #5 clk = ~clk;
	
	D_FF dff0(.Q(q), .D(d), .clk(clk));
	
	
endmodule


