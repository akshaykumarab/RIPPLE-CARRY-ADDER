`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:48 07/29/2024
// Design Name:   ripple_adder
// Module Name:   Ripple_Test_Bench.v
// Project Name:  Exp-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ripple_Test_Bench_v;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Test case 1
    a = 4'b0001; b = 4'b0010; cin = 1'b0; // 1 + 2 = 3
    #100; // Wait for 10 time units
    $display("Test Case 1: a = %b, b = %b, cin = %b -> sum = %b, cout = %b", a, b, cin, sum, cout);
    
    // Test case 2
    a = 4'b1111; b = 4'b0001; cin = 1'b0; // 15 + 1 = 16
    #100;
    $display("Test Case 2: a = %b, b = %b, cin = %b -> sum = %b, cout = %b", a, b, cin, sum, cout);
    
    // Test case 3
    a = 4'b1010; b = 4'b0101; cin = 1'b1; // 10 + 5 + 1 = 16
    #100;
    $display("Test Case 3: a = %b, b = %b, cin = %b -> sum = %b, cout = %b", a, b, cin, sum, cout);
    
    // Test case 4
    a = 4'b0000; b = 4'b0000; cin = 1'b0; // 0 + 0 = 0
    #100;
    $display("Test Case 4: a = %b, b = %b, cin = %b -> sum = %b, cout = %b", a, b, cin, sum, cout);
    
    // Test case 5
    a = 4'b1111; b = 4'b1111; cin = 1'b1; // 15 + 15 + 1 = 31
    #100;
    $display("Test Case 5: a = %b, b = %b, cin = %b -> sum = %b, cout = %b", a, b, cin, sum, cout);
    
    $finish; // End simulation

	end
      
endmodule

