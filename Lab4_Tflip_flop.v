module T_flip(T,clk,Q,reset);
input T,clk,reset;
output Q;
reg Q;
always @(negedge clk)
begin
    if (reset)
    Q=0;
    else begin
        if(T)
        Q=~Q;
        else
            Q=Q;
        end
    end
endmodule
module T_flip_tb;
reg T,clk,reset;
wire Q;
T_flip t1(T,clk,Q,reset);
always #10 clk=~clk;
initial begin
    T=0; clk=0; reset=1;
    $monitor("Time: %0t, T=%b; Clk=%b, Q=%b",$time,T,clk,Q);
    #10 reset=0;
    #10 T=1;
    #10 T=1;
    #10 T=1;
    #10 T=0;
    #10 T=0;
    #10 T=0;
    #10 $finish;
end
endmodule