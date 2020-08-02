module module1();
  wire w1, w2, w3, z1, z2, z3, sal;
  reg A, B, C;

  not a1(w1, A);
  not b1(w2, B);
  not c1(w3, C);

  or U1(z1, A, B, w3);
  or U2(z2, A, w2, C);
  or U3(z3, w1, w2, C);
  and U4(sal, z1, z2, z3);

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
