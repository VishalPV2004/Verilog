module HA(input x, input y, output s, output c);
  assign s = x ^ y;
  assign c = x & y;
endmodule

module FA(input x, input y, input z, output s, output c);
  assign s = x ^ y ^ z;
  assign c = (x & y) | (y & z) | (x & z);
endmodule

module array_multiplier(input [3:0] x, input [3:0] y, output [7:0] z);
  wire [15:0] a;
  wire [2:0] hc;  
  wire [5:0] fc;  
  wire [5:0] f;   

  assign a[0] = x[0] & y[0];
  assign a[1] = x[1] & y[0];
  assign a[2] = x[2] & y[0];
  assign a[3] = x[3] & y[0];

  assign a[4] = x[0] & y[1];
  assign a[5] = x[1] & y[1];
  assign a[6] = x[2] & y[1];
  assign a[7] = x[3] & y[1];

  assign a[8] = x[0] & y[2];
  assign a[9] = x[1] & y[2];
  assign a[10] = x[2] & y[2];
  assign a[11] = x[3] & y[2];

  assign a[12] = x[0] & y[3];
  assign a[13] = x[1] & y[3];
  assign a[14] = x[2] & y[3];
  assign a[15] = x[3] & y[3];

  assign z[0] = a[0];

  HA ha1(a[1], a[4], z[1], hc[0]);
  FA fa1(a[2], a[5], hc[0], f[0], fc[0]);
  FA fa2(a[3], a[6], fc[0], f[1], fc[1]);
  HA ha2(a[7], fc[1], f[2], hc[1]);

  HA ha3(a[8], f[0], z[2], hc[2]);
  FA fa3(a[9], f[1], hc[2], f[3], fc[2]);
  FA fa4(a[10], f[2], fc[2], f[4], fc[3]);
  FA fa5(a[11], hc[1], fc[3], f[5], fc[4]);

  HA ha4(a[12], f[3], z[3], hc[2]);
  FA fa6(a[13], f[4], hc[2], z[4], fc[4]);
  FA fa7(a[14], f[5], fc[4], z[5], fc[5]);
  FA fa8(a[15], fc[4], fc[5], z[6], z[7]);
endmodule

