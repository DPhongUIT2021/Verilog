//
// Author: Truongnh
// Module 7447 improved to display a 3-digit decimal number in LED 7-segment on DE2
// Domain activity: from -999 to 999
// 
module decoder7447 (in, hex3, hex2, hex1, hex0);
        input       [15:0]  in;
        output 	  [6:0]   hex3, hex2, hex1, hex0;

    wire [3:0] digit3, digit2, digit1, digit0;

    digit d (
        .in (in), .digit3 (digit3), .digit2 (digit2), .digit1 (digit1), .digit0 (digit0)
    );

    display d3 (
        .in (digit3), .out (hex3)
    );

    display d2 (
        .in (digit2), .out (hex2)
    );

    display d1 (
        .in (digit1), .out (hex1)
    );
    
    display d0 (
        .in (digit0), .out (hex0)
    );

endmodule 

module digit (in, digit3, digit2, digit1, digit0);
        input       [15:0]  in;
        output reg  [3:0]   digit3, digit2, digit1, digit0;

        reg [15:0]  temp;
        
    always @(in) begin
        if (in[15] == 0) begin
            digit3 <= 0;
            digit2 <= in / 100;
            digit1 <= (in - digit2 * 100) / 10;
            digit0 <= in % 10;
        end
        else begin
            temp = ~(in) + 1'b1;
            digit3 <= 10;
            digit2 <= temp / 100;
            digit1 <= (temp - digit2 * 100) / 10;
            digit0 <= temp % 10;
        end
    end
endmodule 

module display (in, out); 
        input       [3:0]  in;
        output reg  [6:0]  out;

    always @(in) begin
        case (in)     
            0: out = 7'b1000000;
            1: out = 7'b1111001;
            2: out = 7'b0100100;
            3: out = 7'b0110000;
            4: out = 7'b0011001;
            5: out = 7'b0010010;
            6: out = 7'b0000010;
            7: out = 7'b1111000;
            8: out = 7'b0000000;
            9: out = 7'b0010000;
            default: out = 7'b0111111;
        endcase
    end
endmodule
