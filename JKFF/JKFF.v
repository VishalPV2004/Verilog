`timescale 1ns / 1ps

module JKFF(
    input j,k,
    input rst,
    input en,
    output reg q,
    input clk
    );
    
    always @(posedge clk)
    begin
     if (rst)
       q <= 1'b0;
     
     else if (en)
     begin
       if (j == 1 && k == 1)
         q <= ~q;
       else if (j == 0 && k == 0)
         q <= q;
       else if (j == 1 && k == 0)
         q <= 1'b1;
       else
        q <= 1'b0;
     end
     end
    
endmodule
