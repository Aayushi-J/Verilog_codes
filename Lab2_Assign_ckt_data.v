module ckt_level(A,B,C,S,Cout);
input A,B,C;
output S,Cout;
wire w1,w2,w3;
assign w1=A^B;
assign S=w1^C;
assign w2=w1&C;
assign w3=A&B;
assign Cout=w2|w3;
endmodule
module ckt_level_tb;
reg A,B,C;
wire S,Cout;
ckt_level z(A,B,C,S,Cout);
initial begin
    A=0;B=0;C=0;
    $monitor("Time=%0t, A=%b, B=%b, C=%b, S=%b, Cout=%b",$time, A,B,C,S,Cout);
    #10 A=0;B=0;C=1;
    #10 A=0;B=1;C=0;
    #10 A=0;B=1;C=1;
    #10 A=1;B=0;C=0;
    #10 A=1;B=0;C=1;
    #10 A=1;B=1;C=0;
    #10 A=1;B=1;C=1;
end
endmodule 