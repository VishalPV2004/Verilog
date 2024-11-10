`timescale 1ns / 1ps


module UpCounter(
    input clk, rst, load,
    input [3:0] din,
    output reg [3:0] count
    );
    
    
    always @(posedge clk)
    begin
    if (rst)
     count <= 4'b0;
    else if (load)
     count <= din;
    else
     count <= count + 1'b1;
    end    
    
    
endmodule
