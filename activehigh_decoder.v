module active_decoder(y0,y1,en,i0,i1,i2,i3);
input y0,y1,en;
output i0,i1,i2,i3;
wire y0not,y1not;
not n1(y0not,y0);
not n2(y1not,y1);
and a1(i0,y0not,y1not,en);
and a2(i1,y0not,y1,en);
and a3(i2,y0,y1not,en);
and a4(i3,y0,y1,en);
endmodule
module active_decoder_tb;
reg en,y0,y1;
wire i0,i1,i2,i3;
active_decoder a1(y0,y1,en,i0,i1,i2,i3);
initial
begin
    y0=1'b0; y1=1'b0; en=1'b1;
    $monitor("Time=%0t, y0=%b, y1=%b, en=%b, i0=%b, i1=%b, i2=%b, i3=%b", $time,y0,y1,en,i0,i1,i2,i3);
    #10 y0=1'b0; y1=1'b1; en=1'b1;
    #10 y0=1'b1; y1=1'b0; en=1'b1;
    #10 y0=1'b1; y1=1'b1; en=1'b1;
end
endmodule