
module Traffic(state, cnt, HG, HY, HR, FG, FY, FR, reset, rtc_clk);
			input reset, rtc_clk;
			output HG, HY, HR, FG, FY, FR;
			output[5:0] cnt;
			output[1:0] state;
			
			wire over_flag, sel_compare, rst_cnt, S0, S1, S2, S3;
			reg[1:0] state;
			
			assign S0 = (~state[1] & ~state[0]);
			assign S1 = (~state[1] & state[0]);
			assign S2 = (state[1] & ~state[0]);
			assign S3 = (state[1] & state[0]);
			
			assign HG = S0;
			assign HY = S1;
			assign HR = (S2 | S3);
			assign FG = S2;
			assign FY = S3;
			assign FR = (S0 | S1);
			assign sel_compare = (S0 | S2);
			assign rst_cnt = (over_flag | reset);
			
			counter cnter(.cnt(cnt), .over_flag(over_flag), .reset(rst_cnt), .sel_compare(sel_compare), .clk(rtc_clk));
			
 			initial begin
					state = 3;
			end
			
			always @(negedge over_flag, posedge reset) begin
						if(reset) state = 0;
						else state = state + 1;	
			end
									
endmodule


