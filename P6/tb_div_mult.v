`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:01:55 12/01/2020
// Design Name:   MULT_DIV
// Module Name:   E:/computer/verilog_ISE/CO/P6/tb_div_mult.v
// Project Name:  P6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULT_DIV
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_div_mult;

	// Inputs
	reg reset;
	reg clk;
	reg start;
	reg [31:0] A;
	reg [31:0] B;
	reg op;

	// Outputs
	wire busy;
	wire [31:0] HI;
	wire [31:0] LO;

	// Instantiate the Unit Under Test (UUT)
	MULT_DIV uut (
		.reset(reset), 
		.clk(clk), 
		.start(start), 
		.busy(busy), 
		.A(A), 
		.B(B), 
		.HI(HI), 
		.LO(LO), 
		.op(op)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
		start = 0;
		A = 0;
		B = 0;
		op = 0;

		// Wait 100 ns for global reset to finish
		#10;
		A=32'h00001234;
		B=32'h000012;
		op=1;
		start=1;
		reset=0;
		#10 start=0;
		op=0;
		#200;
        A=32'h00001234;
		B=32'h00001212;
		op=0;
		start=1;
		#10 start=0;
		// Add stimulus here

	end
      always #5 clk<=~clk;
endmodule

