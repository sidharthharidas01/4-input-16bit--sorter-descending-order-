`timescale 1ns / 1ps

module out1 //greatest output
    (
        input [15:0] a, b, c, d,
        output [15:0] y,
        output [1:0] selout
    );
    
    wire e0, e1, e2, e3;
    wire agb,agc,agd,bgc,bgd,cgd;
    
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
        .a(a),
        .b(d),
        .ag(agd)
    );
    comp16b cmp4
    (
        .a(b),
        .b(c),
        .ag(bgc)
    );
    comp16b cmp5
    (
        .a(b),
        .b(d),
        .ag(bgd)
    );
    comp16b cmp6
    (
        .a(c),
        .b(d),
        .ag(cgd)
    );
    
    assign e0 = agb&agc&agd;
    assign e1 = (~agb)&bgc&bgd;
    assign e2 = (~agc)&(~bgc)&cgd;
    assign e3 = ~(agd|bgd|cgd);
    
    
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
        .d(d),
        .sel(selout),
        .y(y)
    );
endmodule
