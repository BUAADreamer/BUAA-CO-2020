`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:58 11/23/2020 
// Design Name: 
// Module Name:    M2W 
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
module M2W(
    input [31:0] instr_M,
    input [31:0] pc_M,
    input [31:0] pc_M4,
    input [31:0] pc_M8,
    input [31:0] rt_M,
    input [31:0] aluRet_M,
	input [31:0] RD_M,
	input [31:0] ext_M,
	input [31:0] mdOut_M,
	output reg [31:0] ext_W,
    output reg [31:0] pc_W,
    output reg [31:0] pc_W4,
    output reg [31:0] pc_W8,
    output reg [31:0] aluRet_W,
    output reg [31:0] instr_W,
    output reg [31:0] rt_W,
	output reg [31:0] RD_W,
	output reg [31:0] mdOut_W,
    input clk,
    input reset
    );
	
	always@(posedge clk)begin
		if(reset)begin
			pc_W<=32'h00003000;
			pc_W4<=32'h00003000;
			pc_W8<=32'h00003000;
			aluRet_W<=0;
			instr_W<=0;
			rt_W<=0;
			RD_W<=0;
			ext_W<=0;
			mdOut_W<=0;
		end
		else begin
			pc_W<=pc_M;
			pc_W4<=pc_M4;
			pc_W8<=pc_M8;
			aluRet_W<=aluRet_M;
			instr_W<=instr_M;
			rt_W<=rt_M;	
			RD_W<=RD_M;
			ext_W<=ext_M;
			mdOut_W<=mdOut_M;
		end
	end


endmodule
