`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:13 11/14/2020 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input clk,
    input reset,
    input zero,
    input branch,
    output reg [31:0] instr,
    input [31:0] imm,
    output reg [31:0] pcPlus4,
	 input jump
    );
	 reg [31:0] pc=32'h00003000;
	 reg [9:0] address;
	 IM imOfIfu (
		.addr(address), 
		.instr(instr)
    );
	 always@(posedge clk)begin
		if(reset)begin
			pc<=32'h00003000;
		end
		else begin
			address<=pc[11:2];
			pcPlus4<=pc+4;
			if( branch&zero | jump )begin
			  pc <= pc+4+imm;
			end
			else begin
			  pc <= pc+4;
			end
		end 
	 end
endmodule
