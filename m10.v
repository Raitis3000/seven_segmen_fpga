module m10(m10_bit, m10_counter);

input m10_bit;
output reg [4:0] m10_counter;							

always @ (posedge m10_bit)begin
	m10_counter <= m10_counter + 1;
	
	if (m10_counter == 5)begin
		m10_counter <=0;
	end
end

endmodule
