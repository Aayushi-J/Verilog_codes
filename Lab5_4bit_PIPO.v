module pipomod(clk,clear, pi, po);

input clk,clear;

input [3:0] pi;

output [3:0] po;

wire [3:0] pi;

reg [3:0] po;

always @(posedge clk)

begin

if (clear)

po<= 4'b0000;

else

 

po <= pi;

end

endmodule


module pipot_v;

reg clk;

reg clear;

reg [3:0] pi;

wire [3:0] po;

pipomod uut (.clk(clk),.clear(clear),.pi(pi),.po(po) );
always #5 clk = ~clk;

 

initial begin

clk = 0;

clear = 0;

pi = 0;

#5 clear=1'b1;

#5 clear=1'b0;

#10 pi=4'b1001;

#10 pi=4'b1010;

#10 pi=4'b1011;

#10 pi=4'b1110;

#10 pi=4'b1111;

#10 pi=4'b0000;


end

initial #100 $stop;
endmodule