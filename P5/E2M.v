`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:41 11/23/2020 
// Design Name: 
// Module Name:    E2M 
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
module E2M(
    input [31:0] instr_E,
    input [31:0] pc_E,
    input [31:0] pc_E4,
    input [31:0] pc_E8,
    input [31:0] rt_E,
    input [31:0] aluRet_E,
	input [31:0] ext_E,
	output reg [31:0] ext_M,
    output reg [31:0] pc_M,
    output reg [31:0] pc_M4,
    output reg [31:0] pc_M8,
    output reg [31:0] aluRet_M,
    output reg [31:0] instr_M,
    output reg [31:0] rt_M,
	
    input clk,
    input reset
    );
	always@(posedge clk)begin
		if(reset)begin
			pc_M<=32'h00003000;
			pc_M4<=32'h00003000;
			pc_M8<=32'h00003000;
			aluRet_M<=0;
			instr_M<=0;
			rt_M<=0;
			ext_M<=0;
		end
		else begin
			pc_M<=pc_E;
			pc_M4<=pc_E4;
			pc_M8<=pc_E8;
			aluRet_M<=aluRet_E;
			instr_M<=instr_E;
			rt_M<=rt_E;
			ext_M<=ext_E;
		end
	end


endmodule
