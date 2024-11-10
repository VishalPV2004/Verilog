`timescale 1ns / 1ps

module TFF(
    input t,
    input clk,
    input rst,
    input en,
    output reg q
    );

    always @(posedge clk) begin
        if (rst)
            q <= 1'b0;    
        else if (en) begin
            if (t)
                q <= ~q;   
            else
                q <= q;    
        end
    end
endmodule
