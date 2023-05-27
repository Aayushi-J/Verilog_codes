module Half_sub(A,B,S,C);
input A,B;
output S,C;
wire w1;
xor x1(S,A,B);
not n1(w1,A);
and a1(C,w1,B);
endmodule
module Half_sub_tb;
reg A,B;
wire S,C;
Half_sub h1(A,B,S,C);
initial
begin
    A=0; B=0;
    $monitor("Time=%0t, A=%b, B=%b, S=%b, C=%b",$time,A,B,S,C);
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
end
endmodule