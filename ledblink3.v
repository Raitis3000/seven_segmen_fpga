module ledblink3(
	input CLOCK_50_B5B,
	input hold,
	input KEY0, KEY1, KEY2, KEY3,

   output led,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3  
   );
	
	wire s1_bit, s10_bit, m1_bit, m10_bit;
	wire [4:0] s1_counter;
	wire [4:0] s10_counter;
	wire [4:0] m1_counter;
	wire [4:0] m10_counter;
	
	 
	s_clock			second_oscillator	(CLOCK_50_B5B, led, s1_bit, hold);
	s1					second_counter		(s1_bit, s10_bit, s1_counter);
	s10				ten_sec_counter	(s10_bit, m1_bit, s10_counter);
	m1					minute_counter		(m1_bit, m10_bit, m1_counter);
	m10				ten_min_counter	(m10_bit, m10_counter);
	display_time	seven_seg_disp		(s1_bit, s10_bit, m1_bit, m10_bit, s1_counter, s10_counter, m1_counter, m10_counter, HEX0, HEX1, HEX2, HEX3);

endmodule
