module BCD_Excess3(input [3:0] b, output reg [3:0] z);
  
  always @(*)
    begin
      z[0] = ~b[0];
      z[1] = ~(b[0] ^ b[1]);
      z[2] = b[2] ^ (b[1] | b[0]);
      z[3] = b[3] | ( b[2] & b[0]) | (b[2] & b[1]);
    end
endmodule
