`timescale 1ns / 1ps

module TFF_TB();

    reg t, clk, rst, en;
    wire q;

    TFF dut(.t(t), .clk(clk), .rst(rst), .en(en), .q(q));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        en = 0;
        t = 0;

        #10 rst = 0;

        #10 en = 1; t = 1;
        #10 t = 0;
        #10 t = 1;

        #10 t = 0;

        #10 en = 0; t = 1;

        #10 rst = 1;
        #10 rst = 0;
        #10 t = 1; en = 1;

        #30 $finish;
    end
endmodule
