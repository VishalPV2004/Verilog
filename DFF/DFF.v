`timescale 1ns / 1ps

module DFF(
    input [7:0] d,
    input clk,
    input en,
    input rst,
    output reg [7:0] q
    );

    always @(posedge clk)
    begin
        if (rst)
            q <= 8'b0;
        else if (en)
            q <= d;
        else
            q <= 8'b0;
    end

endmodule
