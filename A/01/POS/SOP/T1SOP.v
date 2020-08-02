module module1();
  wire w1, w2, w3, z1, z2, z3, z4, z5, sal;
  reg A, B, C;

  not a1(w1, A);
  not b1(w2, B);
  not c1(w3, C);

  and U1(z1, w1, w2, w3);
  and U2(z2, w1, B, w3);
  and U3(z3, A, w2, w2);
  and U4(z4, A, w2, C);
  and U5(z5, A, B, C);

  or U6(sal, z1,z2,z3,z4,z5);
  
  initial begin
    $display("A  B  C  !  Y");
    $display("---------!---");
    $monitor("%b  %b  %b  !  %b", A,B,C,sal);
    A = 0; B = 0; C = 0;
    #1 C = 1;
    #1 B = 1; C = 0;
    #1 C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 C = 1;
    #1 B = 1; C = 0;
    #1 C = 1;

    $finish;
  end
endmodule
