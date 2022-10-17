


module counter(cnt, over_flag, reset, sel_compare, clk);
			
			input reset, sel_compare, clk;
			output over_flag;
			output[5:0] cnt;
			
			reg[5:0] cnt;  // counter value
			wire over_flag_10, over_flag_50;
			
			assign over_flag_9 = (cnt == 6'd9);
			assign over_flag_49 = (cnt == 6'd49);
			assign over_flag = (sel_compare) ? over_flag_49 : over_flag_9;
			
			initial begin
				cnt = 63;
			end
			
			always @(negedge clk) begin
					if(reset) cnt = 0;
					else cnt = cnt + 1;
			end
endmodule


