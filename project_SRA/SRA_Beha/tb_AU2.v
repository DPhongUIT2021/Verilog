

 /*ctrl_AU
			00: sub(A,B) 01: add(A,B) ; 10: max(A,B) 11: max(A,B)*/

`timescale 1ps/1ps
module tb_AU2();
	parameter msb = 15;
	parameter T = 2;

	reg signed[msb:0] In1, In2;
	reg[1:0] ctrl_AU;
	wire[msb:0] O;
	
	initial begin 
		In1 = -5;
		In2 = 9;
	end
	
	//module AU1(Out, In1, In2, ctrl); 00: sub(A,B) 01: add(A,B) ; 10: max(A,B) 11: max(A,B)*/
   AU2 tb_au2(.Out(O), .In1(In1), .In2(In2), .ctrl(ctrl_AU));
	always begin 
		#0  ctrl_AU = 2'b00;
		#T  ctrl_AU = 2'b01;
		#T  ctrl_AU = 2'b10;
		#T  ctrl_AU = 2'b11;
		#T ;
	end
	
endmodule
