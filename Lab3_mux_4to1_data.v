module four_to_one(I0,I1,I2,I3,S0,S1,Y);
input I0,I1,I2,I3,S0,S1;
output Y;
assign Y=((~S0)&(~S1)&I0)|((~S0)&(S1)&I1)|((S0)&(~S1)&I2)|((S0)&(S1)&I3);
endmodule
module four_to_one_tb;
reg S0,S1,I0,I1,I2,I3;
wire Y;
four_to_one f1(I0,I1,I2,I3,S0,S1,Y);
initial begin
    S0 =0; S1 =0; I0 =0; I1 =0; I2 =0; I3 =0;
    $monitor ("Time:%f, S0:%b S1:%b I0:%b I1:%b I2:%b I3:%b Y:%b",$time, S0, S1, I0, I1, I2, I3, Y);
    #5 S0 =0; S1 =0; I0 =0; I1 =0; I2 =0; I3 =0;
    #5 S0 =0; S1 =0; I0 =1; I1 =0; I2 =0; I3 =0;
    #5 S0 =0; S1 =1; I0 =0; I1 =0; I2 =0; I3 =0;
    #5 S0 =0; S1 =1; I0 =0; I1 =1; I2 =0; I3 =0;
    #5 S0 =1; S1 =0; I0 =0; I1 =0; I2 =0; I3 =0;
    #5 S0 =1; S1 =0; I0 =0; I1 =0; I2 =1; I3 =0;
    #5 S0 =1; S1 =1; I0 =0; I1 =0; I2 =0; I3 =0;
    #5 S0 =1; S1 =1; I0 =0; I1 =0; I2 =0; I3 =1;
end
endmodule