`timescale 1ns / 1ps

module top(a, b, c, d, e, clk, load, clear, res);

    input [2:0] a, b, c, d, e;
    output [2:0] res;
    input clk, load, clear;
    wire [14:0] out1, out2, out3, out4;
    wire [2:0] i1, i2, i3, i4;

    D_register r1(a, b, c, d, e, load, clear, clk, out1);
//i1 = a * b
    mul m1(out1[2:0], out1[5:3], i1);
//i2 = d * e
    mul m2(out1[11:9], out1[14:12], i2);

    D_register r2(i1, out1[8:6], i2, 0, 0, load, clear, clk, out2);
//i3 = i1 + c
    add s1(out2[2:0], out2[5:3], i3);

    D_register r3(i3, out2[8:6], 0, 0, 0, load, clear, clk, out3);
//i4 = i3 - i2
    dif d1(out3[2:0], out3[5:3], i4);

    D_register r4(i4, 0, 0, 0, 0, load, clear, clk, out4);
    assign res = out4[2:0];

endmodule
