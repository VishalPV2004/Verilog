module tb_binary_graycode;

  reg [2:0] x;
  wire [2:0] z;

  Binary_GrayCode dut (
    .x(x),
    .z(z)
  );


  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    x = 3'b000;
    #10 x = 3'b001;
    #10 x = 3'b010;
    #10 x = 3'b011;
    #10 x = 3'b100;
    #10 x = 3'b101;
    #100 $finish;
  end

endmodule
