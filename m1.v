module m1(m1_bit, m10_bit, m1_counter);

input m1_bit;
output reg m10_bit;
output reg [4:0] m1_counter;								

initial begin
	m10_bit 	= 0;
end

always @ (posedge m1_bit)begin
	m1_counter <= m1_counter + 1;
	
	if (m1_counter == 5)m10_bit <= !m10_bit;
	if (m1_counter == 0)m10_bit <= !m10_bit;
	
	if (m1_counter == 9)begin
		m1_counter <=0;
	end
end


endmodule
