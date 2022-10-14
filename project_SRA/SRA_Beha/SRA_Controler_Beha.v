
module SRA_Controler_Beha(ctrl_word, reset, clk);
			parameter msb = 15, S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
			parameter word_size = 19;
			input reset, clk;
			output[word_size:0] ctrl_word;
			
			//reg[4:0] W_R;			// Write R1, R2, R3, R4, R5
			//reg[9:0] S_Bus;		// Select bus
			//reg[3:0] ctrl_AU;		//control AU1 and AU2
			//reg OE; 					// Output enable
			reg[2:0] state;
			//wire[3:0] ctrl_AU;
			wire[word_size:0] CW_S0, CW_S1, CW_S2, CW_S3, CW_S4;
			
			assign CW_S0[word_size:0] = {5'h19, 10'h286, 4'h0, 1'b0};
			assign CW_S1[word_size:0] = {5'h11, 10'h125, 4'h1, 1'b0};
			assign CW_S2[word_size:0] = {5'h09, 10'h056, 4'h2, 1'b0};
			assign CW_S3[word_size:0] = {5'h04, 10'h010, 4'h8, 1'b1};
			assign CW_S4[word_size:0] = {5'h03, 10'h018, 4'h4, 1'b0};
			
			assign ctrl_word[word_size:0] = (state == S0) ? CW_S0 : (state == S1) ? CW_S1 : (state == S2) ? CW_S2 
														: (state == S3) ? CW_S3 : (state == S4) ? CW_S4 : {(word_size+1){1'bz}};
			//assign ctrl_word = {W_R[4:0], S_Bus[9:0], ctrl_AU[3:0], OE};
			
			initial state = 4; 
			always @(negedge clk) begin
					if(reset) state = 0;
					else if(state < 4) state = state + 1;
					else state = 0;
			end
			
//			always @(state) begin
//					
////					case(state)
////						4'h0 : begin W_R[4:0] = 5'h19; S_Bus[9:0] = 10'h286; ctrl_AU[3:0] = 4'h0; OE = 0; end
////						4'h1 : begin W_R[4:0] = 5'h11; S_Bus[9:0] = 10'h125; ctrl_AU[3:0] = 4'h1; OE = 0; end
////						4'h2 : begin W_R[4:0] = 5'h09; S_Bus[9:0] = 10'h056; ctrl_AU[3:0] = 4'h2; OE = 0; end
////						4'h3 : begin W_R[4:0] = 5'h04; S_Bus[9:0] = 10'h010; ctrl_AU[3:0] = 4'h8; OE = 1; end
////						4'h4 : begin W_R[4:0] = 5'h03; S_Bus[9:0] = 10'h018; ctrl_AU[3:0] = 4'h4; OE = 0; end
////						default ;
////					endcase	
//			end
			
endmodule
