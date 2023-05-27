module function1(A,B);
input A;
output B;
assign B=!A;
endmodule
module function1_tb;
reg A;
wire B;
function1 fun(A,B);
initial 
begin
    A=1;
    $monitor("Time=%0t, A=%b, B=%b", $time, A, B);
    #10 A=0;
    #10 A=1;
end
endmodule
