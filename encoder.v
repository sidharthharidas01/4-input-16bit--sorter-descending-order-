`timescale 1ns / 1ps
module encoder
    (
        input x0,x1,x2,x3,
        output reg [1:0] y
    );
    always @(x0 or x1 or x2 or x3)
    begin
    if(x0)
        y=0;
    else if(x1)
        y=1;
    else if(x2)
        y=2;
    else if(x3)
        y=3;
    end
endmodule
