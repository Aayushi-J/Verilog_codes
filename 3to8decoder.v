//3 to 8 decoder using 2 to 4 decoder
//implementation of 3 to 8 decoder using 2 to 4 decoder in verilog without array using gate level method?

module decoder2to4_gl(i0, i1,en, y0, y1, y2, y3);

input i0, i1,en;
output y0, y1, y2, y3;
wire i0bar, i1bar;

not g1(i0bar, i0);
not g2(i1bar, i1);
and g3(y0, i0bar, i1bar,en);
and g4(y1, i0bar, i1,en);
and g5(y2, i0, i1bar,en);
and g6(y3, i0, i1,en);

endmodule

module decoder3to8_g1(w0,w1,w2,y0,y1,y2,y3,y4,y5,y6,y7);

input w0,w1,w2;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire w0bar,w1bar,w2bar;

not g7(w0bar,w0);
not g8(w1bar,w1);
if (w2==0)
not g9(w2bar,w2);
decoder2to4_gl t2(w0bar,w1,w2bar,y3,y2,y1,y0);
else


endmodule

module decoder3to8_g1_tb;

reg w0,w1,w2;
wire y0,y1,y2,y3,y4,y5,y6,y7;

decoder3to8_g1 t1(w0,w1,w2,y0,y1,y2,y3,y4,y5,y6,y7);

initial 

begin
    w0=1'b0;
    w1=1'b0;
    w2=1'b0;
    $monitor("Time=%0t,w0=%b,w1=%b,w2=%b,y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b",$time,w0,w1,w2,y3,y2,y1,y0,y7,y6,y5,y4);
    #5 w0=1'b0;w1=1'b0;w2=1'b0;
    #5 w0=1'b0;w1=1'b0;w2=1'b1;
    #5 w0=1'b0;w1=1'b1;w2=1'b1;
    #5 w0=1'b1;w1=1'b0;w2=1'b0;
    #5 w0=1'b1;w1=1'b0;w2=1'b1;
    #5 w0=1'b1;w1=1'b1;w2=1'b0;
    #5 w0=1'b1;w1=1'b1;w2=1'b1;
end

endmodule