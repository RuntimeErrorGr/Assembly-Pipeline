`timescale 1ns / 1ps

module add(a, b, sum);
    input [2:0]a,b;
    output [2:0]sum;

    assign sum = a + b;
endmodule
