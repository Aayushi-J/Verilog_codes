module And_function1(A,B,C);
input A,B;
output C;
assign C=A&B;
endmodule
module And_function1_tb;
reg A,B;
wire C;
And_function1 a1(A,B,C);
initial
begin
    A=0;B=0;
    $monitor("TIme=%0t, A=%b, B=%b, C=%b", $time, A, B, C);
    #10 A=0; B=1;
    #10 A=1; B=0;
    #10 A=1; B=1;
end 
endmodule