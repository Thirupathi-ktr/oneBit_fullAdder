module tb();
  reg a,b,c;
  wire sum,carry;
  
  half_adder dut(.a(a),
             .b(b),
             .c(c),
             .sum(sum),
             .carry(carry) );
  
  initial
    begin
      a = 0; b = 0; c = 0;
      #20;
      
      a = 0; b = 0; c = 1;
      #20;
      a = 0; b = 1; c = 0;
      #20;
      a = 0; b = 1; c = 1;
      #20;
      a = 1; b = 1; c = 0;
      #20;
      a = 0; b = 0; c = 1;
      #20;
      a = 1; b = 0; c = 1;
      #20;
      a = 1; b = 1; c = 1;
      #20;
    end
  initial
      begin
        $monitor("input a = %b,b = %b,sum = %b,carry = %b",a,b,sum,carry);
      end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
  
      
      
    
