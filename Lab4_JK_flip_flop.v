module JK_flip(J,K,clk,Q);
input J,K,clk;
output Q;
reg Q;
always @(posedge clk)
begin
    case({J,K})
    2'b00:Q=Q;
    2'b01:Q=0;
    2'b10:Q=1;
    2'b11:Q=~Q;
    endcase
end
endmodule
module JK_flip_tb;
reg J,K,clk;
wire Q;
JK_flip f1(J,K,clk,Q);
always #10 clk=~clk;
initial begin
    J=0;K=0;clk=0;
    $monitor("Time: %0t, J=%b, K=%b, clk=%b, Q=%b", $time,J,K,clk,Q);
    #10 J=0;K=0;
    #10 J=0; K=1;
    #10 J=1; K=0;
    #10 J=1; K=1;
    #10 $finish;
end 
endmodule
