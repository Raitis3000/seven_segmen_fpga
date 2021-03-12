module s1(s1_bit, s10_bit, s1_counter);

input s1_bit;
output reg s10_bit;
output reg [4:0] s1_counter;							//counts up to 9 for seconds

initial begin
	s10_bit 	= 0;
end

always @ (posedge s1_bit) begin
	s1_counter <= s1_counter + 1;
	
	if (s1_counter == 5)s10_bit <= !s10_bit;
	if (s1_counter == 0)s10_bit <= !s10_bit;
	
	if (s1_counter == 9)s1_counter <=0;
end

endmodule
