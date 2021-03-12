module display_time(s1_bit, s10_bit, m1_bit, m10_bit, s1_counter, s10_counter, m1_counter, m10_counter, HEX0, HEX1, HEX2, HEX3);

input wire s1_bit;
input wire s10_bit;
input wire m1_bit;
input wire m10_bit;

input wire [4:0] s1_counter;
input wire [4:0] s10_counter;
input wire [4:0] m1_counter;
input wire [4:0] m10_counter;
	
output reg [6:0] HEX0;
output reg [6:0] HEX1;
output reg [6:0] HEX2;
output reg [6:0] HEX3;
	 
	 
localparam [6:0] one 	= 7'b1111001;	 
localparam [6:0] two 	= 7'b0100100;
localparam [6:0] three 	= 7'b0110000;
localparam [6:0] four 	= 7'b0011001;
localparam [6:0] five 	= 7'b0010010;
localparam [6:0] six		= 7'b0000010;
localparam [6:0] seven	= 7'b1111000;
localparam [6:0] eight	= 7'b0000000;
localparam [6:0] nine	= 7'b0010000;
localparam [6:0] zero	= 7'b1000000;
localparam [6:0] blank	= 7'b1111111;


always @ (posedge s1_bit) begin
	case(s1_counter)
		0:HEX0 <= 	zero;
		1:HEX0 <= 	one;
		2:HEX0 <= 	two;
		3:HEX0 <=  	three;
		4:HEX0 <= 	four;
		5:HEX0 <=  	five;
		6:HEX0 <= 	six;
		7:HEX0 <= 	seven;
		8:HEX0 <=  	eight;
		9:HEX0 <= 	nine;
	endcase
end

always @ (posedge s10_bit) begin
	case(s10_counter)
		0:HEX1 <= 	zero;
		1:HEX1 <= 	one;
		2:HEX1 <= 	two;
		3:HEX1 <=  	three;
		4:HEX1 <= 	four;
		5:HEX1 <=  	five;
		6:HEX1 <= 	six;
		7:HEX1 <= 	seven;
		8:HEX1 <=  	eight;
		9:HEX1 <= 	nine;
	endcase
end

always @ (posedge m1_bit) begin
	case(m1_counter)
		0:HEX2 <= 	zero;
		1:HEX2 <= 	one;
		2:HEX2 <= 	two;
		3:HEX2 <=  	three;
		4:HEX2 <= 	four;
		5:HEX2 <=  	five;
		6:HEX2 <= 	six;
		7:HEX2 <= 	seven;
		8:HEX2 <=  	eight;
		9:HEX2 <= 	nine;
	endcase
end

always @ (posedge m10_bit) begin
	case(m10_counter)
		0:HEX3 <= 	zero;
		1:HEX3 <= 	one;
		2:HEX3 <= 	two;
		3:HEX3 <=  	three;
		4:HEX3 <= 	four;
		5:HEX3 <=  	five;
		6:HEX3 <= 	six;
		7:HEX3 <= 	seven;
		8:HEX3 <=  	eight;
		9:HEX3 <= 	nine;
	endcase
end

endmodule
