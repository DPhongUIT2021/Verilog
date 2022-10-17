

`timescale 1ms/1ms

module tb_counter();
		parameter T = 1000;
		reg clk, reset, sel_compare;
		wire over_flag;
		wire[5:0] cnt;
		
		initial begin
				reset = 0;
				clk = 0;
				sel_compare = 0;
				#(T * 30) sel_compare = 1;
				//#(T*10) reset = 1;
				//#T reset = 0;
		end
		always #(T/2) clk = ~clk;
		
		counter md_cnt(.cnt(cnt), .over_flag(over_flag), .reset(reset), .sel_compare(sel_compare), .clk(clk));
		
endmodule


