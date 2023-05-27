module Half_adder(A,B,S,C);
input A,B;
output S,C;
assign S=A^B;
assign C=A&B;
endmodule
module Half_adder_tb;
reg A,B;
wire S,C;
Half_adder h1(A,B,S,C);
initial
begin
    A=0; B=0;
    $monitor("Time=%0t, A=%b, B=%b, S=%b, C=%b",$time,A,B,S,C);
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
end
endmodule