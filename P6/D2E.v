`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:02:12 11/23/2020 
// Design Name: 
// Module Name:    D2E 
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
module D2E(
    input [31:0] instr_D,
    input [31:0] pc_D,
    input [31:0] pc_D4,
    input [31:0] pc_D8,
    output reg [31:0] pc_E,
    output reg [31:0] pc_E4,
    output reg [31:0] pc_E8,
    input [31:0] grf_RD1,
    input [31:0] grf_RD2,
    input [31:0] ext_D,
    output reg [31:0] ext_E,
    output reg [31:0] instr_E,
    output reg [31:0] rs_E,
    output reg [31:0] rt_E,
    input clk,
    input reset
    );
	always@(posedge clk)begin
		if(reset)begin
			pc_E<=32'h00003000;
			pc_E4<=32'h00003000;
			pc_E8<=32'h00003000;
			ext_E<=0;
			instr_E<=0;
			rs_E<=0;
			rt_E<=0;
		end
		else begin
			pc_E<=pc_D;
			pc_E4<=pc_D4;
			pc_E8<=pc_D8;			
			ext_E<=ext_D;
			instr_E<=instr_D;
			rs_E<=grf_RD1;
			rt_E<=grf_RD2;
		end
	end

endmodule
