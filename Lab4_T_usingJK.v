module T_flip(T,J,K,clk,Q,reset);
input T,clk,reset;
output J,K,Q;
reg J,K,Q;
always @(negedge clk)
begin
    J=T;
    K=T;
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
wire J,K,Q;
T_flip t1(T,J,K,clk,Q,reset);
always #10 clk=~clk;
initial begin
    T=0; clk=0; reset=1;
    $monitor("Time: %0t, T=%b, J=%b, K=%b, Clk=%b, Q=%b",$time,T,J,K,clk,Q);
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
