module fullsub_gate(bout,D,a,b,bin);
input a,b,bin;
output bout,D;
wire w1,w4,w5,w6;
xor (D,a,b,bin);
not n1(w1,a);
and a1(w4,w1,b);
and a2(w5,w1,bin);
and a3(w6,b,bin);
or o1(bout,w4,w5,w6);
endmodule

//Test Bench
module fullsub_test;
reg a,b,bin;
wire bout,D;
fullsub_gate fullsub_test(bout,D,a,b,bin);
initial
begin
a = 1'b0; b = 1'b0; bin = 1'b0;
$monitor("Time:%0t, a=%b, b=%b, cin=%b, borr=%b, D=%b", $time, a, b, bin, bout, D);
#5 a = 1'b0; b = 1'b0; bin = 1'b1;
#10 a = 1'b0; b = 1'b1; bin = 1'b0;
#10 a = 1'b0; b = 1'b1; bin = 1'b1;
#10 a = 1'b1; b = 1'b0; bin = 1'b0;
#10 a = 1'b1; b = 1'b0; bin = 1'b1;
#10 a = 1'b1; b = 1'b1; bin = 1'b0;
#10 a = 1'b1; b = 1'b1; bin = 1'b1;
end
endmodule

