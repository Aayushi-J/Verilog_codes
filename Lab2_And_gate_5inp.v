module And_manyinputs(A,B,C,D,E,out);
input A,B,C,D,E;
output out;
and a1(out,A,B,C,D,E);
endmodule
module And_manyinputs_tb;
reg A,B,C,D,E;
wire out;
And_manyinputs a1(A,B,C,D,E,out);
initial begin
    $monitor("Time=%0t, A=%b, B=%b, C=%b, D=%b, E=%b, out=%b", $time, A,B,C,D,E,out);
    #10 A=1;B=1;C=1;D=0;E=0;
    #10 A=0;B=1;C=1;D=0;E=0;
    #10 A=0;B=1;C=0;D=0;E=1;
    #10 A=0;B=1;C=1;D=1;E=1;
    #10 A=1;B=1;C=1;D=1;E=1;
end 
endmodule