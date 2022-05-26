`timescale 1ns / 1ps
module sort
    (
        input [15:0] a, b, c, d,
        output [15:0] y0,y1,y2,y3
    );
    wire [1:0] selout1, selout2;
    wire [15:0] ao1, bo1, co1, ao2, bo2;
    out1 o3
    (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y(y0),
        .selout(selout1)
    );
    
    red4to3 r1
    (
        .selin(selout1),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .ao(ao1),
        .bo(bo1),
        .co(co1)
    );
    
    out2 o2
    (
        .a(ao1),
        .b(bo1),
        .c(co1),
        .y(y1),
        .selout(selout2)
    );
    
    red3to2 r2
    (
        .selin(selout2),
        .a(ao1),
        .b(bo1),
        .c(co1),
        .ao(ao2),
        .bo(bo2)
    );
    
    out34 o34
    (
        .a(ao2),
        .b(bo2),
        .y3(y3),
        .y4(y2)
    );
    
endmodule
