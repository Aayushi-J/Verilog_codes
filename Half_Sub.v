module halfsub_data (a,b,diff,borr);
input a, b;
output diff,borr;
wire w1;
assign w1=~a;
and a1(borr,w1,b);
xor x1(diff,a,b);
endmodule

//Test Bench
module halfsub_test;
reg a,b;
wire borr, diff;

halfsub_data halfsub_test(a,b,diff,borr);
initial
begin
a = 1'b0;
b = 1'b0;
$monitor("Time:%0t a=%b b=%b diff=%b borr=%b", $time, a, b, diff, borr);
#5 a=1'b0; b=1'b0;
#5 a=1'b0; b=1'b1;
#5 a=1'b1; b=1'b0;
#5 a=1'b1; b=1'b1;
end
endmodule