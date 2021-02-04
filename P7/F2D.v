`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:07 11/23/2020 
// Design Name: 
// Module Name:    F2D 
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
module F2D(
    input clk,
    input reset,
    input en,
    input [31:0] instr_F,
    input [31:0] pc_F,
	input [31:0] npc,
	input [4:0] excCode_F,
	output reg [4:0] excCode_D,
    output reg [31:0] pc_D,
    output reg [31:0] pc_D4,
    output reg [31:0] pc_D8,
    output reg [31:0] instr_D,
	input BD_F,
	output reg BD_D
    );
	always@(posedge clk)begin
		if(reset)begin
			pc_D<=32'h00000000;
			pc_D4<=32'h00000000;
			pc_D8<=32'h00000000;
			instr_D<=0;
			excCode_D<=5'b0;
			BD_D<=1'b0;
		end
		else if(en) begin
			pc_D<=pc_F;
			pc_D4<=pc_F+4;
			pc_D8<=pc_F+8;
			instr_D<=instr_F;
			excCode_D<=excCode_F;
			BD_D<=BD_F;
		end
	end

endmodule
