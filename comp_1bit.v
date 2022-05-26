`timescale 1ns / 1ps

module comp16b
    (
        input [15:0] a, b,
        output ag
    );
    wire [16:0] ya, yb, y;
    assign {ya[16],ya[15:0]}={1'b0,a};
    assign {yb[16],yb[15:0]}={1'b0,b};
    assign y = ya-yb;
    assign ag = ~y[16];
endmodule
