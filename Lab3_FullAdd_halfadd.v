module Half_adder(A,B,S,C);
input A,B;
output S,C;
xor x1(S,A,B);
and a1(C,A,B);
endmodule
module full_adder(C,D,E,Sum,Carry);
input C,D,E;
output Sum, Carry;
wire w1,w2,w3;
Half_adder h1(C,D,w1,w2);
Half_adder h2(w1,E,Sum,w3);
or x1(Carry,w2,w3);
endmodule
module full_adder_tb;
reg C,D,E;
wire Sum, Carry;
full_adder h1(C,D,E,Sum,Carry);
initial
begin
    C=0;D=0;E=0;
    $monitor("Time=%0t, C=%b, D=%b, E=%b, Sum=%b, Carry=%b",$time,C,D,E,Sum,Carry);
    #10 C=0;D=0;E=1;
    #10 C=0;D=1;E=0;
    #10 C=0;D=1;E=1;
    #10 C=1;D=0;E=0;
    #10 C=1;D=0;E=1;
    #10 C=1;D=1;E=0;
    #10 C=1;D=1;E=1;
end
endmodule