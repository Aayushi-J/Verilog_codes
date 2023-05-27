module Or_program(A,B,out);
input A,B;
output out;
or a1(out,A,B);
endmodule
module Or_program_tb;
reg A,B;
wire C;
Or_program o1(A,B,out);
initial
begin
    A=0;B=0;
    $monitor("Time=%0t, A=%b, B=%b, Output=%b",$time, A,B,out);
    #10 A=0; B=1;
    #10 A=1; B=0;
    #10 A=1; B=1;
end
endmodule