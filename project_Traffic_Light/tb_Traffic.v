

`timescale 1ms/1ms

module tb_Traffic();
			parameter T_rtc = 1000;
			wire HG, HY, HR, FG, FY, FR;
			wire[5:0] cnt;
			wire[1:0] state;
			reg reset, rtc_clk;
			
			Traffic md_traffic(.state(state), .cnt(cnt), .HG(HG), .HY(HY), .HR(HR), .FG(FG), .FY(FY), .FR(FR), .reset(reset), .rtc_clk(rtc_clk));
			initial begin
					reset = 0;
					rtc_clk = 0;
					#(T_rtc*185) reset = 1;
			end
			
			always #(T_rtc/2) rtc_clk = ~rtc_clk;
endmodule

