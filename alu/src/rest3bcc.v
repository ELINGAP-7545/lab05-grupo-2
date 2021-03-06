module resta3bcc (xi, yi,co,ri,init);


  input [2 :0] xi;
  input [2 :0] yi;
  input init;
  output co;
  output [2 :0] ri;

  wire c1,c2,c3;
  S0resta1 s0 (.A(xi[0]), .B(yi[0]), .Ci(0),  .Cout(c1) ,.S(ri[0]));
  S1resta1 s1 (.A(xi[1]), .B(yi[1]), .Ci(c1), .Cout(c2) ,.S(ri[1]));
  S2resta1 s2 (.A(xi[2]), .B(yi[2]), .Ci(c2), .Cout(c3) ,.S(ri[2]));
  s3resta1 s3 (.A(xi[3]), .B(yi[3]), .Ci(c3), .Cout(co) ,.S(ri[3]));


 endmodule

  always @ ( * ) begin
  	st  = 	A+B+Ci;
  end
  
endmodule

