module decimal_BCD(input [9:0] x, output [3:0] z);
  assign z[0] = x[1] | x[3] | x[5] | x[7] | x[9];
  assign z[1] = x[2] | x[3] | x[6] | x[7];
  assign z[2] = x[4] | x[5] | x[6] | x[7];
  assign z[3] = x[8] | x[9];
endmodule;