`timescale 1ns / 1ps

module mul(a, b, prod);
    input [2:0]a,b;
    output [2:0]prod;

    assign prod = a * b;
endmodule
