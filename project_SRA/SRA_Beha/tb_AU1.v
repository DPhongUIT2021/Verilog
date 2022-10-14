


`timescale 1ps/1ps
module tb_AU1();
	parameter msb = 15;
	parameter T = 2;

	reg signed[msb:0] In1, In2;
	reg[1:0] ctrl_AU;
	wire[msb:0] O;
	
	initial begin 
		In1 = 55;
		In2 = -99;
	end
	
	//module AU1(Out, In1, In2, ctrl);
   AU1 tb_au1(.Out(O), .In1(In1), .In2(In2), .ctrl(ctrl_AU));
	always begin 
		#0 In1 = In1 * 5; In2 = In2 * 9;  ctrl_AU = 2'b00;
		#T In1 = In1 * 5; In2 = In2 * 9;  ctrl_AU = 2'b01;
		#T In1 = In1 * 5; In2 = In2 * 9;  ctrl_AU = 2'b10;
		#T In1 = In1 * 5; In2 = In2 * 9;  ctrl_AU = 2'b11;
	end
	
endmodule


