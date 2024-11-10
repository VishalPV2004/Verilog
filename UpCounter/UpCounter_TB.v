`timescale 1ns / 1ps

module UpCounter_TB();

  reg clk, rst, load;
  reg [3:0] din;
  wire [3:0] count;
  
  UpCounter dut(.clk(clk),.rst(rst),.load(load),.din(din),.count(count));
  
  initial 
  begin
   clk = 1'b0;
   forever #5 clk = ~clk;
   end
   
   initial
   begin
     {load,rst} = 2'b10; din =  4'b1010; #10;
     {load,rst} = 2'b00; din = 4'b1010; #10;
     {load,rst} = 2'b10; din = 4'b1010; #10;
     {load,rst} = 2'b00; din = 4'b1010; #10;
     {load,rst} = 2'b10; din = 4'b1010; #10;
     {load,rst} = 2'b00; din = 4'b1010; #10;
     {load,rst} = 2'b10; din = 4'b1010; #10;
     {load,rst} = 2'b00; din = 4'b1010; #10;
     
     #10 $finish;
   end

endmodule
