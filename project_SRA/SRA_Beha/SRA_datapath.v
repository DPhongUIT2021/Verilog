
module SRA_datapath(Out, In1, In2, ctrl_word, clk);
		parameter msb = 15;
		input[msb:0] In1, In2;
		input[19:0] ctrl_word;
		input clk;
		output[msb:0] Out;
		
		reg[msb:0] R1, R2, R3, R4, R5;												// Register
		wire[msb:0] O_AU1, O_AU2, A_AU1, B_AU1, A_AU2, B_AU2; 				// Out and In of 2 block AU
		wire[msb:0] busR1, busR2, busR3, busR4, busR5;       					// Bus input register
		wire[msb:0] O_SRigh1, O_SRigh3; 												// Out shift righ 1 and 3
		wire W_R1, W_R2, W_R3, W_R4, W_R5;											// write enable register
		wire s0_R1, s1_R1, s0_R2, s1_R2, s0_BAU1									// select bus 
							, s1_BAU1, s0_R5, s1_R5, s0_AAU2, s1_AAU2;	
		wire[1:0] ctrl_AU1, ctrl_AU2; 												// Control AU1 and AU2
		wire OE;																		// Enable output
		wire[4:0] W_R;
		wire[9:0] S_BUS;
		wire[3:0] ctrl_AU;
		
		AU1 au1(.Out(O_AU1), .InA(A_AU1), .InB(B_AU1), .ctrl(ctrl_AU1)); //module AU1(Out, A, B, ctrl);		
		AU2 au2(.Out(O_AU2), .InA(A_AU2), .InB(B_AU2), .ctrl(ctrl_AU2)); //module AU2(Out, A, B, ctrl);

		
		assign busR1 = (s0_R1) ? In1 : (s1_R1) ? O_AU1 : {msb+1{1'bz}};
		assign busR2 = (s0_R2) ? In2 : (s1_R2) ? O_AU1 : {msb+1{1'bz}};
		assign busR3 = O_SRigh1;
		assign busR4 = O_AU1;
		assign busR5 = (s0_R5) ? O_SRigh3 : (s1_R5) ? O_AU2 : {msb+1{1'bz}};
		assign A_AU1 = R1;
		assign B_AU1 = (s0_BAU1) ? R1 : (s1_BAU1) ? R2 : {msb+1{1'bz}};
		assign A_AU2 = (s0_AAU2) ? R4 : (s1_AAU2) ? R3 : {msb+1{1'bz}};
		assign B_AU2 = R5;
		assign O_SRigh1 = {1'b0,O_AU1[msb:1]}; // block shift righ input: O_AU1 - output: O_SRigh1, O_SRigh3
		assign O_SRigh3 = {3'b000,O_AU1[msb:3]};
		assign Out = (OE) ? R5 : {msb+1{1'bz}};
		assign {W_R1, W_R2, W_R3, W_R4, W_R5} = W_R[4:0];
		assign {s0_R1, s1_R1, s0_R2, s1_R2, s0_BAU1, s1_BAU1, s0_R5, s1_R5, s0_AAU2, s1_AAU2} = S_BUS[9:0];
		assign {ctrl_AU1[1:0], ctrl_AU2[1:0]} = ctrl_AU[3:0];
		assign {W_R[4:0], S_BUS[9:0], ctrl_AU[3:0], OE} = ctrl_word[19:0];
		
		always @(posedge clk) begin
				if(W_R1) R1 = busR1;
				if(W_R2) R2 = busR2;
				if(W_R3) R3 = busR3;
				if(W_R4) R4 = busR4;
				if(W_R5) R5 = busR5;
		end
		
		
endmodule

