`timescale 1ns / 1ps
module full_tb;
    reg [15:0] a, b, c, d;
    wire [15:0] y0,y1,y2,y3;
    
    sort s
    (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );
    integer i=0;
    initial
    begin
        a=0;b=0;c=0;d=0;
        #10
        a=0;b=6;c=2;d=1;
        #10
        a=7;b=2;c=1;d=9;
        #10
        a=1000;b=100;c=10;d=1;
        #10
        a=100;b=1000;c=1;d=10;
        for(i=0;i<20;i=i+1)
        begin
        #10
            a=$random;
            b=$random;
            c=$random;
            d=$random;
        end
        #10
        $finish;
    end
endmodule
