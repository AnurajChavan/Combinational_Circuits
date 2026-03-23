module mux_2to1(
   input A,
   input B,
   input S,
   output Out   );

   assign Out=((~S)&A)|(S&B);
 
endmodule
