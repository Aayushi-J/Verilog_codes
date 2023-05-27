// Gate Level Modeling
module xnor_gate(c,a,b);
input a,b;
output c;
xnor (c,a,b);
endmodule

//Test Bench
module xnor_test;
reg a,b;
wire c;
xnor_gate  xnor_test(c,a,b);
initial
begin
#000 a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
end
initial
begin
$monitor($time,"a=%b,b=%b,c=%b",a,b,c);
end
endmodule 



