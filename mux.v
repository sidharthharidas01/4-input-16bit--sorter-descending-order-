`timescale 1ns / 1ps
module mux
    (
        input [15:0] a, b, c, d,
        input [1:0] sel,
        output [15:0] y
    );
//    always @ (sel or a or b or c or d)
//    begin
    assign y=(sel<2)?((sel<1)?a:b):((sel<3)?c:d);
//        case(sel)
//            0: assign y=a;
//            1: assign y=b;
//            2: assign y=c;
//            3: assign y=d;
//        endcase
//    end
endmodule
