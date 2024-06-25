module tb_BCD_Excess3;
  reg [3:0] b;
    wire [3:0] z;

  BCD_Excess3 dut (
    .b(b),
    .z(z)
  );



  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    b = 4'b0000;

    $display("b = %b -> z = %b", b, z);
    
    repeat (16) begin
      #10; 
      b = b + 1; 
      $display("b = %b -> z = %b", b, z);
    end

    $finish;
  end

endmodule
