module four_bit_ring_counter (
      input clock,
      input reset,
  output [2:0] q
    );
 
  reg[2:0] a;
 
    always @(posedge clock)
      if (reset)
        a = 3'b001;
 
      else
        begin
        a <= a<<1; 
        a[0]<=a[3];
        end
 
    assign q = a;
 
  endmodule
  module stimulus;
	reg clock;
	reg reset;
	// Outputs
  wire[2:0] q;
	// Instantiate the Unit Under Test (UUT)
	four_bit_ring_counter r1 (
      .clock(clock), 
      .reset(reset), 
      .q(q)
	);
 
  always #10 clock = ~clock;
 
	initial begin
		// Initialize Inputs
    clock = 0;  
	reset = 0;
 
	#5 reset = 1;
	#20 reset = 0; 
	#500 $finish;
    end  
 
		initial begin
          $monitor($time, " clock=%1b,reset=%1b,q=%b",clock,reset,q);
		 end
 
endmodule