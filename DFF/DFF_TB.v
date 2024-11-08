`timescale 1ns / 1ps

module DFF_TB();

    reg [7:0] d;
    reg clk, en, rst;
    wire [7:0] q;

    DFF dut(.d(d), .clk(clk), .en(en), .q(q), .rst(rst));

    initial
    begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial 
    begin
        rst = 1'b0; en = 1'b0;
        #10 rst = 1'b1; en = 1'b1;
        #10 rst = 1'b0; en = 1'b1;
    end

    initial
    begin
        #10 d = 8'b10101010;
        #10 d = 8'b11111111;
        #10 d = 8'b10100000;
        #10 $finish;
    end

endmodule

