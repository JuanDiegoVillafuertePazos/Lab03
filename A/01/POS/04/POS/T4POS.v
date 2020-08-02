module module1()
  wire w1, w2, w3, w4, z1, z2, z3, z4, z5, z6, z7, z8, z9, sal;
  reg A,B,C,D;

  not U1(w1,A);
  not U2(w2,B);
  not U3(w3,C);
  not U4(w4,D);

  or U5(z1,w1,w2,w3,D);
  or U6(z2,w1,B,w3,w4);
  or U7(z3,w1,B,w3,D);
  or U8(z4,A,w2,w3,D);
  or U9(z5,A,w2,C,D);
  or U10(z6,A,B,w3,w4);
  or U11(z7,A,B,w3,D);
  or U12(z8,A,B,C,w4);
  or U13(z9,A,B,C,D);

  and U14(sal,z1,z2,z3,z4,z5,z6,z7,z8,z9);

  initial begin
    $display("A  B  C  D  !  Y");
    $display("------------!---");
    $monitor("%b  %b  %b  %b  !  %b",A,B,C,D,sal);
    A=0;B=0;C=0;D=0;
    #1 D=1;
    #1 C=1; D=0;
    #1 D=1;
    #1 B=1; C=0; D=0;
    #1 D=1;
    #1 C=1; D=0;
    #1 D=1;
    #1 A=1; B=0; C=0; D=0;
    #1 D=1;
    #1 C=1; D=0;
    #1 D=1;
    #1 B=1; C=0; D=0;
    #1 D=1;
    #1 C=1; D=o;
    #1 D=1;
    $finish;
  end
endmodule
