module circuit_design(A,B,C,out);
input A,B,C;
output out;
wire w1,w2;
not b1(w1,A);
and a1(w2,B,C);
nand c1(out,w1,w2);
endmodule
module circuit_design_tb;
reg A,B,C;
wire out;
circuit_design a1(A,B,C,out);
initial 
begin
    A=0;B=0;C=0;
    $monitor("TIme=%0t, A=%b, B=%b, C=%b, Output=%b", $time, A,B,C, out);
    #10 A=0;B=0;C=1;
    #10 A=0;B=1;C=0;
    #10 A=0;B=1;C=1;
    #10 A=1;B=0;C=0;
    #10 A=1;B=0;C=1;
    #10 A=1;B=1;C=0;
    #10 A=1;B=1;C=1;
end
endmodule