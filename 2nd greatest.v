`timescale 1ns / 1ps
module out2//2nd greatest
    (
        input [15:0] a, b, c,
        output [15:0] y,
        output [1:0] selout
    );
    
    wire agb,agc,bgc;
    wire e0, e1, e2, e3;
    
    comp16b cmp1
    (
        .a(a),
        .b(b),
        .ag(agb)
    );
    comp16b cmp2
    (
        .a(a),
        .b(c),
        .ag(agc)
    );
    comp16b cmp3
    (
        .a(b),
        .b(c),
        .ag(bgc)
    );
    assign e0 = agb&agc;
    assign e1 = (~agb)&bgc;
    assign e2 = (~agc)&(~bgc);
    assign e3 = 0;
    
    encoder e
    (
        .x0(e0),
        .x1(e1),
        .x2(e2),
        .x3(e3),
        .y(selout)
    );
    mux m
    (
        .a(a),
        .b(b),
        .c(c),
        .sel(selout),
        .y(y)
    );
endmodule
