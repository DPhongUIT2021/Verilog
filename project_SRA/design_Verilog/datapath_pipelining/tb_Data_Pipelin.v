
`timescale 1ns/1ns
module tb_Data_Pipelin();	
	parameter T_clk = 2;
	reg signed [15:0] A, B; reg[15:0] nT;
	reg clk;
	reg[4:0] read, write;
	reg[1:0] c_AU1, c_AU2;
	reg[12:0] ctrl_bus;
	reg signed[4:0] top, bot, sp;
	wire[26:0] control;
	wire signed[15:0] OUT;
	
	assign control[26:0] = {read, write, c_AU1, c_AU2, ctrl_bus};
	
	initial begin
		clk = 0; nT = 0;
		top = 0;
		bot = 4'bx;
		A = 77; B = -50;
		end
	always #1 clk = ~clk;
	
	always begin
		#T_clk
				top = top  + 1; nT = nT + 1; bot = bot + 1;
				if(top == 5) begin
							top = 0;
							bot = 5;
							A = 77 * nT;
							B = -50 * nT;
							end
				if(bot == 9) bot = 4'bx;			
		end
		
	always begin 
			#0  sp = 0;  // S0_pipeli
			read = 5'b11111; write = 5'b10011; c_AU1 = 2'bxx; c_AU2 = 2'b00; ctrl_bus = 13'b01010x1010010; 
	
			#2  sp = 1;      A = 16'bx; B = 16'bx;
			read = 5'b11111; write = 5'b10001; c_AU1 = 2'b00; c_AU2 = 2'b01; ctrl_bus = 13'b100x011001100; 
		
			#2 sp = 2;
			read = 5'b11111; write = 5'b10010; c_AU1 = 2'b00; c_AU2 = 2'b10; ctrl_bus = 13'b0x10101010010; 
		
			#2 sp = 3;
			read = 5'b11111; write = 5'b00100; c_AU1 = 2'b10; c_AU2 = 2'bxx; ctrl_bus = 13'b0x0x100x0x0x1; 
			
			#2 sp = 4;
			read = 5'b11111; write = 5'b11000; c_AU1 = 2'b01; c_AU2 = 2'bxx; ctrl_bus = 13'b0x0x10010x0x0; 
			
			
			#2 sp = 5;  
			read = 5'b11111; write = 5'b10011; c_AU1 = 2'bxx; c_AU2 = 2'b0; ctrl_bus = 13'b01010x1010010; 
			
			#2 sp = 6;          A = 16'bx; B = 16'bx;
			read = 5'b11111; write = 5'b10001; c_AU1 = 2'b00; c_AU2 = 2'b01; ctrl_bus = 13'b100x011001100; 
			
			#2 sp =7;
			read = 5'b11111; write = 5'b10010; c_AU1 = 2'b00; c_AU2 = 2'b10; ctrl_bus = 13'b0x10101010010; 
			
			#2 sp = 8;
			read = 5'b11111; write = 5'b00100; c_AU1 = 2'b10; c_AU2 = 2'bxx; ctrl_bus = 13'b0x0x100x0x0x1; 
			
			#2 sp = 9;
			read = 5'b11111; write = 5'b11000; c_AU1 = 2'b01; c_AU2 = 2'bxx; ctrl_bus = 13'b0x0x10010x010; #2 ;
			
		end
		
	Data_Pipelin datapath(.OUT(OUT), .In0(A), .In1(B), .Control(control), .clk(clk));	
	
endmodule

		
