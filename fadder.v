module fadder(s,cout,a,b,c);

   input a,b,c;
   output s,cout;
   wire s1,c1,c2;
   
   xor G1(s1,a,b),G2(s,s1,c);
   and G4(c1,a,b),G5(c2,s1,c);
   or G3(cout,c2,c1);
   
endmodule
