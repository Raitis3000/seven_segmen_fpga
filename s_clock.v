module s_clock(CLOCK_50_B5B,
					led,
					s1_bit,
					hold);

input hold;
input CLOCK_50_B5B;
output led;
output reg s1_bit;
integer counter;							//counts up to 25000000, half second

initial begin
	s1_bit 	= 0;
end

always @ (posedge CLOCK_50_B5B)begin
	
	if (hold == 0)begin
		counter <= counter + 1;
		
		if(counter >= 25000000)begin
			counter <=0;
			s1_bit <= !s1_bit;
		end
   end
	
end	

assign led = s1_bit;

endmodule
