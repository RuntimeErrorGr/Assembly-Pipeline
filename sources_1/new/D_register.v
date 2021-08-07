`timescale 1ns / 1ps

module D_register(a, b, c, d, e, load, clear, clk, out);
input [2:0] a, b, c, d, e;
input load, clear, clk;
output reg [14:0]out;

always @(posedge clk)
begin
    if(load) 
    begin
        out[2:0] = a;
        out[5:3] = b;
        out[8:6] = c;
        out[11:9] = d;
        out[14:12] = e;
    end
    if(clear)
        out <= 0;
end
endmodule
