module mux_impl(A,B,O);
input A,B;
output O;
wire I0,I1;
assign I0=~A;
assign I1=~A;
assign O=(((~B)&(I0))|((B)&(I1)));
endmodule
module mux_impl_tb;
reg A,I0,I1,B;
wire O;
mux_impl i1(A,B,O);
initial begin
    A=0;B=0;
    $monitor("Time:%0t, A=%b, B=%b, O=%b", $time,A,B,O);
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
end
endmodule