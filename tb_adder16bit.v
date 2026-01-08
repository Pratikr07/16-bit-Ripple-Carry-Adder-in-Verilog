module tb_adder16bit;

   reg [15:0]x,y;
   wire [15:0]z;
   wire sign,zero,carry,parity,overflow;

   adder16bit DUT (x,y,z,sign,zero,carry,parity,overflow);

   initial begin
      $dumpfile("add16.vcd");
      $dumpvars(0, tb_adder16bit);
      $monitor($time,"x=%h,y=%h,z=%h,sign=%b,zero=%b,carry=%b,parity=%b,overflow=%b",x,y,z,sign,zero,carry,parity,overflow);

      #5 x=16'h8fff; y=16'h8000;
      #5 x=16'hfffe; y=16'h0002;
      #5 x=16'haaaa; y=16'h5555;
      #5 $finish;
   end
endmodule