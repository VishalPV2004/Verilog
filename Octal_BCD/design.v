module octal_binary_encoder(input [7:0] x, output [2:0] z);
  assign z[0] = x[1] | x[3] | x[5] | x[7];
  assign z[1] = x[2] | x[3] | x[6] | x[7];
  assign z[2] = x[4] | x[5] | x[6] | x[7];
endmodule