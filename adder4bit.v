module adder4bit(s,cout,x,y,cin);

   input [3:0]x,y; input cin;
   output [3:0]s;  output cout;
   wire c1,c2,c3;
   
   fadder FA0 (s[0],c1,x[0],y[0],cin);
   fadder FA1 (s[1],c2,x[1],y[1],c1);
   fadder FA2 (s[2],c3,x[2],y[2],c2);
   fadder FA3 (s[3],cout,x[3],y[3],c3);
   
   
endmodule