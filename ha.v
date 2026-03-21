module half_adder (
    input  A, B,
    output SUM, CARRY  );
	
    assign S = A ^ B;   // Sum
    assign C = A & B;   // Carry

endmodule
