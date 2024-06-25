module Binary_GrayCode(input [2:0] x, output [2:0] z);
  assign z[0] = x[0] ^ x[1];
  assign z[1] = x[2] ^ x[1];
  assign z[2] = x[2];
endmodule