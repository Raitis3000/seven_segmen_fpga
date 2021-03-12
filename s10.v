module s10(s10_bit, m1_bit, s10_counter);

input s10_bit;
output reg m1_bit;
output reg [4:0] s10_counter;							

initial begin
	m1_bit 	= 0;
end

always @ (posedge s10_bit)begin
	s10_counter <= s10_counter + 1;
	
	if (s10_counter == 3)m1_bit <= !m1_bit;
	if (s10_counter == 0)m1_bit <= !m1_bit;
	
	if (s10_counter == 5)begin
		s10_counter <=0;
	end
end

endmodule
