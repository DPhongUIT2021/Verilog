

module Data_Pipelin(OUT, In0, In1, Control, clk);
		parameter msb = 15;
		input[msb:0] In0, In1;
		input clk;
		input[26:0] Control;
		output[msb:0] OUT;
		
		
		wire[msb:0] bus1, bus2, bus_R5, B_U1, A_U2, B_U2, O_R1, O_R2, O_R3, O_R4, O_R5, O_U1, O_U2;
		wire[msb:0] O_SH1, O_SH3;
		wire s1_R1, s0_R1, s1_R2, s0_R2, s1_BU1, s0_BU1, s1_R5, s0_R5, s1_A, s0_A, s1_B, s0_B, c_out;
		wire[12:0] ctrl_bus;
		wire[4:0] r_reg, w_reg;
		wire[1:0] c_U1, c_U2;
		
		assign {s1_R1, s0_R1, s1_R2, s0_R2, s1_BU1, s0_BU1, s1_R5, s0_R5, s1_A, s0_A, s1_B, s0_B, c_out} = ctrl_bus[12:0];
		assign {r_reg[4:0], w_reg[4:0], c_U1[1:0], c_U2[1:0], ctrl_bus[12:0]} = Control[26:0];
		
	
		bufif1 buf_s0_R1[15:0](bus1[msb:0], In0[msb:0], {msb+1{s0_R1}});
		bufif1 buf_s0_R2[15:0](bus2[msb:0], In1[msb:0], {msb+1{s0_R2}});
		bufif1 buf_s0_BU1[15:0](B_U1[msb:0], O_R1[msb:0], {msb+1{s0_BU1}});
		bufif1 buf_s1_BU1[15:0](B_U1[msb:0], O_R2[msb:0], {msb+1{s1_BU1}});
		
		//module REG_16(OutA, OutB, I, W, RA, RB, clk);
		REG_16 R1(.OutA(O_R1), .OutB(), .I(bus1), .W(w_reg[0]), .RA(r_reg[0]), .RB(), .clk(clk));
		REG_16 R2(.OutA(O_R2), .OutB(), .I(bus2), .W(w_reg[1]), .RA(r_reg[1]), .RB(), .clk(clk));
		
		//module abs_max_min(O, A, B, c1, c0);
		abs_max_min U1(.O(O_U1), .A(O_R1), .B(B_U1), .c1(c_U1[1]), .c0(c_U1[0]));
		
		bufif1 buf_s1_R1[15:0](bus1[msb:0], O_U1[msb:0], {msb+1{s1_R1}});
		bufif1 buf_s1_R2[15:0](bus2[msb:0], O_U1[msb:0], {msb+1{s1_R2}});
		
		//module shift_3(Out, I)
		shift_3 sh3(O_SH3, O_U1);
		shift_1 sh1(O_SH1, O_U1);
		
		REG_16 R3(.OutA(O_R3), .I(O_SH1), .W(w_reg[2]), .RA(r_reg[2]), .clk(clk));
		REG_16 R4(.OutA(O_R4), .I(O_U1), .W(w_reg[3]), .RA(r_reg[3]), .clk(clk));
		REG_16 R5(.OutA(O_R5), .I(bus_R5), .W(w_reg[4]), .RA(r_reg[4]), .clk(clk));
		
		bufif1 buf_s0_R5[15:0](bus_R5[msb:0], O_SH3[msb:0], {msb+1{s0_R5}});
		bufif1 buf_s1_R5[15:0](bus_R5[msb:0], O_U2[msb:0], {msb+1{s1_R5}});
		
		//module sub_add_max(O, A, B, c1, c0);
		sub_add_max U2(.O(O_U2), .A(A_U2), .B(B_U2), .c1(c_U2[1]), .c0(c_U2[0]));

		bufif1 buf_s0_B[15:0](B_U2[msb:0], O_R5[msb:0], {msb+1{s0_B}});
		bufif1 buf_s1_B[15:0](B_U2[msb:0], O_R3[msb:0], {msb+1{s1_B}});
		
		bufif1 buf_s1_A[15:0](A_U2[msb:0], O_R4[msb:0], {msb+1{s1_A}});
		bufif1 buf_s0_A[15:0](A_U2[msb:0], O_R5[msb:0], {msb+1{s0_A}});
		
		bufif1 buf_out[15:0](OUT[msb:0], O_R5[msb:0], {msb+1{c_out}});
		
		
endmodule

