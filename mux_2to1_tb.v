`timescale 1ns / 1ps

module mux_2to1_tb;

	// Inputs
	reg A;
	reg B;
	reg S;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	mux_2to1 uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 1;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Initialize Inputs
		A = 0;
		B = 1;
		S = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 1;
		B = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		A = 1;
		B = 0;
		S = 1;

		// Wait 100 ns for global reset to finish
		#100;


	end
      
endmodule
