`timescale 1ns / 1ps
module red3to2//to remove 2nd largest
    (
        input [1:0] selin,
        input [15:0] a, b, c,
        output [15:0] ao, bo
    );
    
    mux2to1 m1
    (
        .a(a),
        .b(b),
        .sel(~(selin[0]|selin[1])),
        .y(ao)
    );
    mux2to1 m2
    (
        .a(b),
        .b(c),
        .sel(~selin[1]),
        .y(bo)
    );
endmodule
