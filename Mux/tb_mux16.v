

`timescale 1ns/1ns
module tb_mux16();
		reg s;
		reg[15:0] A, B;
		wire[15:0] O;
		
		initial begin
			s = 0;
			A = 1000;
			B = 2000;
			#1 s = 1;
			end
			
		//module mux16(o, i0, i1, s);
		mux16 mux16_0(O, A, B, s);
endmodule
