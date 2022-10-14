

`timescale 1ps/1ps

module tb_SRA_Control_Beha();
			parameter msb = 15, T = 2, A = 77, B = -50;
			
			reg reset, clk;
			wire[19:0] ctrl_word;
			wire[msb:0] Out;
			reg signed[msb:0] In1, In2, nT;
			reg[2:0] top; reg[3:0] bot;
			
			SRA_Controler_Beha ctrl(.ctrl_word(ctrl_word), .reset(reset), .clk(clk));
			SRA_datapath dapath(.Out(Out), .In1(In1), .In2(In2), .ctrl_word(ctrl_word), .clk(clk));
			
			initial begin 
					clk = 0; nT = 0;
					top = 0; bot = 4'bx;
					reset = 0;
					In1 = A; In2 = B;
			end
			
			always #(T/2) clk = ~clk;
			
			always begin
				#T top = top  + 1; nT = nT + 1; bot = bot + 1;
					if(top == 5) begin
						top = 0;
						bot = 5;
						In1 = A * nT;
						In2 = B * nT;
					end
				   if(bot == 9) bot = 4'bx;			
			end
			
endmodule







