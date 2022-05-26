`timescale 1ns / 1ps
module out34//to find 3rd and 4th largest
    (
        input [15:0] a, b,
        output [15:0] y3, y4
    );
    wire agb;
    comp16b cmp1
    (
        .a(a),
        .b(b),
        .ag(agb)
    );
    mux2to1 m1
    (
        .a(a),
        .b(b),
        .sel(agb),
        .y(y3)
    );
    mux2to1 m2
    (
        .a(b),
        .b(a),
        .sel(agb),
        .y(y4)
    );
endmodule
