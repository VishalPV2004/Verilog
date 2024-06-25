module decimal_BCD_tb;
  reg [9:0] x; reg [3:0] z;
  decimal_BCD dut(.x(x),.z(z));
  
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
  initial
    begin
      x = 10'b1010101010; #10;
      x = 10'b1111100000; #10;
      
      $finish;
    end
endmodule