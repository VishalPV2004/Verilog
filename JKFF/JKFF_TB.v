`timescale 1ns / 1ps
module JKFF_TB();

reg j,k,clk,en, rst;
wire q;

JKFF dut(.clk(clk),.j(j),.k(k),.rst(rst),.en(en),.q(q));

initial begin
clk = 1'b0;
   forever #5 clk = ~clk;
end


initial begin

rst = 1'b1; en = 1'b1; #10;
rst = 1'b0; en = 1'b0; #10;
en = 1'b1;
end

initial
begin
  j = 1'b0; k = 1'b0; #10;
  j = 1'b0; k = 1'b1; #10;
  j = 1'b1; k = 1'b0; #10;
  j = 1'b1; k = 1'b1; #10;
  
  #10 $finish;
end

initial
begin
 $monitor("J : %b, K : %b, rst : %b, enable : %b, output : %b",j,k,rst,en,q);
end

endmodule
