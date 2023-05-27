module demux(I0,I1,I2,I3,S0,In);
input S0,In;
output I0,I1,I2,I3;
assign I0=(~S0)&(~In);
assign I1=(~S0)&(In);
assign I2=(S0)&(~In);
assign I3=(S0)&(In);
endmodule
module demux_tb;
reg S0,In;
wire I0,I1,I2,I3;
demux d1(I0,I1,I2,I3,S0,In);
initial begin
    S0=0;In=0;
    $monitor("Time=%0t , S=%b, In=%b, I0=%b, I1=%b, I2=%b, I3=%b",$time,S0,In,I0,I1,I2,I3);
    #10 S0=0; In=1;
    #10 S0=1; In=0;
    #10 S0=1; In=1;
end 
endmodule
