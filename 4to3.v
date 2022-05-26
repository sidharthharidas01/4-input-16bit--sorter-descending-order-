`timescale 1ns / 1ps
module red4to3 //to remove largest element and compare others
    (
        input [1:0] selin,
        input [15:0] a, b, c, d,
        output [15:0] ao, bo, co
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
    mux2to1 m3
        (
            .a(c),
            .b(d),
            .sel(~(selin[0]&selin[1])),
            .y(co)
        );        
endmodule
