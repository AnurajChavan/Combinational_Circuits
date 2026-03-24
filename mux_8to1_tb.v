`timescale 1ns / 1ps

module mux_8to1_tb;

	// Inputs
	reg [7:0] I;
	reg [2:0] S;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	mux_8to1 uut (
		.I(I), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I = 8'b10101010;  // test pattern
		S = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;

		// Apply all select values
		#10 S = 3'b000;  // Y = I[0]
		#10 S = 3'b001;  // Y = I[1]
		#10 S = 3'b010;  // Y = I[2]
		#10 S = 3'b011;  // Y = I[3]
		#10 S = 3'b100;  // Y = I[4]
		#10 S = 3'b101;  // Y = I[5]
		#10 S = 3'b110;  // Y = I[6]
		#10 S = 3'b111;  // Y = I[7]

		// Change input pattern
		#10 I = 8'b11001100;

		// Repeat select sequence
		#10 S = 3'b000;
		#10 S = 3'b001;
		#10 S = 3'b010;
		#10 S = 3'b011;
		#10 S = 3'b100;
		#10 S = 3'b101;
		#10 S = 3'b110;
		#10 S = 3'b111;

		#20 $finish;
	end

	// Monitor output
	initial begin
		$monitor("Time=%0t | S=%b | I=%b | Y=%b", $time, S, I, Y);
	end
      
endmodule
