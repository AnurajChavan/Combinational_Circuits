`timescale 1ns / 1ps


module full_add;
	// Inputs
	reg A;
	reg B;
	reg Cin;
	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 0;
		B = 0;
		Cin = 1;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 0;
		B = 1;
		Cin = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 0;
		B = 1;
		Cin = 1;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 1;
		B = 0;
		Cin = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 1;
		B = 0;
		Cin = 1;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 1;
		B = 1;
		Cin = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		A = 1;
		B = 1;
		Cin = 1;
		// Wait 100 ns for global reset to finish
		#100;
		
	end
      
endmodule
