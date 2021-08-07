`timescale 1ns / 1ps


module pipeline_test( );
reg clk, load, clear;
reg [2:0] a, b, c, d, e;
wire [2:0] res;
//wire [14:0] out;
pipeline ppln_sim(a, b, c, d, e, clk, load, clear, res);

initial begin
clear = 1; load = 0; clk = 0;
//res = 1 * 0 + 3 - 1 * 2 = 1;
#25 clear = 0; load = 1; a = 1; b = 0; c = 3; d = 1; e = 2;
//res = 7 * 1 + 0 - 2 * 1 = 5
#50 a = 7; b = 1; c = 0; d = 2; e = 1;
//res = 2 * 2 + 2 - 6 * 1 = 0
#50 a = 2; b = 2; c = 2; d = 6; e = 1;

end


always
#25 clk = ~clk;
endmodule
