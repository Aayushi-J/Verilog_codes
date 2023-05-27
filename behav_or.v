module and_behav(A,B,C);
input A,B;
output C;
reg C;
always@(A or B or C)
begin
    if(A==0 && B==0)
        C=0;
    else
        C=1;
    end
endmodule
module and_behav_tb;
reg A,B;
wire C;
and_behav a1(A,B,C);
initial 
begin
    A=0;B=0;
    $monitor("Time=%0t, A=%b, B=%b, C=%b", $time, A, B, C);
    #10 A=0; B=1;
    #10 A=1; B=0;
    #10 A=1; B=1;
end
endmodule 