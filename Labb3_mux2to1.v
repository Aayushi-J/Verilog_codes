module mux1(I0,I1,S,O);
input I0,I1,S;
output O;
wire w1,w2,w3;
not n1(w1,S);
and a2(w2,w1,I0);
and a1(w3,I1,S);
or o1(O,w2,w3);
endmodule
module mux1_tb;
reg I0,I1,S;
wire O;
mux1 m1(I0,I1,S,O);
initial begin
    I0=0;I1=0;S=0;
    $monitor("Time=%0t, I0=%b, I1=%b, S=%b, Out=%b", $time,I0,I1,S,O);
    #10 I0=0;I1=0;S=1;
    #10 I0=0;I1=1;S=0;
    #10 I0=0;I1=1;S=1;
    #10 I0=1;I1=0;S=0;
    #10 I0=1;I1=0;S=1;
    #10 I0=1;I1=1;S=0;
    #10 I0=1;I1=1;S=1;
end
endmodule
