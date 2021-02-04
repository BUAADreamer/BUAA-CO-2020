`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:02 11/14/2020 
// Design Name: 
// Module Name:    im 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module im(
    input [31:0] pc,
    output reg [31:0] instr
    );
	 reg [31:0] instruction [0:1023];
	 reg [9:0] addr;
	 initial begin 
		$readmemh("code.txt",instruction);
	 end
	 always@(*)begin
		addr=pc[11:2];
		instr=instruction[addr];
	 end
endmodule
