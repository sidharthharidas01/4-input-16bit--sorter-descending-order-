`timescale 1ns / 1ps
module mux2to1//2 to 1 mux
    (
        input [15:0] a, b,
        input  sel,
        output [15:0] y
    );
    assign y = (sel)?b:a;
//    always @ (sel or a or b)
//    begin
//        case(sel)
//            0: assign y=a;
//            1: assign y=b;
//        endcase
//    end
endmodule