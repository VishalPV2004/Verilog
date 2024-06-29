module even_parity_gen(input a,b,c,output reg d);
  
  always @(*)
    begin
      d <= a ^ b ^ c;
    end
endmodule
