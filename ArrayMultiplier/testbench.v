module TB;
  reg [3:0] A, B;
  wire [7:0] P;
  
  array_multiplier am(.x(A), .y(B), .z(P));
  
  initial begin
    $monitor("A = %b (%0d), B = %b (%0d) --> P = %b, P(dec) = %0d", A, A, B, B, P, P);
    A = 4'd1; B = 4'd0; #10;
    A = 4'd7; B = 4'd5; #10;
    A = 4'd8; B = 4'd9; #10;
    A = 4'hF; B = 4'hF; #10;
    A = 4'd3; B = 4'd2; #10;
    A = 4'd15; B = 4'd1; #10;
    A = 4'd6; B = 4'd10; #10;
    A = 4'd4; B = 4'd8; #10;

$dumpfile("dump.vcd"); $dumpvars;
    $finish;
  end
endmodule
