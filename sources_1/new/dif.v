`timescale 1ns / 1ps

module dif(a, b, dif);
    input [2:0]a,b;
    output [2:0]dif;
    assign dif = a - b;
endmodule
