`timescale 1ns/1ps

module mips_tb;

	wire [31:0] addr;
	reg clk,reset,interrupt;

	mips uut(
		.clk(clk),.reset(reset),
		.interrupt(interrupt),
		.addr(addr)
	);

	initial begin
		clk<=0;
		reset<=1;
		interrupt<=0;
		#10;
		reset<=0;
	end

	always #5 clk<=~clk;

endmodule