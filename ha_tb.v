
`timescale 1ns / 1ps

module half_add;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
           
		
		A = 0;
		B = 1;

		// Wait 100 ns for global reset to finish
		#100;
           
		
		A = 1;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
           
		
		A = 1;
		B = 1;

		// Wait 100 ns for global reset to finish
		#100;
                      

	end
      
endmodule

