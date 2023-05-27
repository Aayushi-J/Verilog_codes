module D_flip_flop(D,clk,Q);
input D,clk;
output Q;
reg Q;
always @(posedge clk)
begin
    Q=D;
end
endmodule
module D_flip_flop_tb;
reg D,clk;
wire Q;
D_flip_flop a1(D,clk,Q);
initial begin
    D=1; clk=0;
    $monitor("Time: %0t, D=%b, clk=%b, Q=%b", $time,D,clk,Q);
    #10 D=1; clk=0;
    #10 D=0; clk=1;
    #10 D=1; clk=0;
    #10 D=1; clk=1;
end
endmodule