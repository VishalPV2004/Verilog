module even_parity_gen_tb;
  reg a,b,c;
  wire d;
  
  even_parity_gen uut(.a(a),.b(b),.c(c),.d(d));
  
  initial
    begin
      $dumpfile("dumo.vcd"); $dumpvars;
    end
  
  initial
    begin
      a = 1'b1; b = 1'b1, c = 1'b0; #10;
    end
endmodule
  
