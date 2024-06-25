module tb_octal_binary_encoder();

  reg [7:0] x;
  wire [2:0] z;
  
  octal_binary_encoder dut (
    .x(x),
    .z(z)
  );
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    x = 8'b00000001;
    #10;
    $display("Input: %b, Output: %b", x, z);
    
    x = 8'b01010101;
    #10;
    $display("Input: %b, Output: %b", x, z);
    
    
    $finish;
  end
  
endmodule

