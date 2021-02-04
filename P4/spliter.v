`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:04 11/14/2020 
// Design Name: 
// Module Name:    spliter 
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
module spliter(
    input [31:0] instr,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [15:0] imm16,
    output [5:0] opcode,
    output [5:0] funcode,
    output [25:0] imm26
    );
	 assign rs=instr[25:21];
	 assign rt=instr[20:16];
	 assign rd=instr[15:11];
	 assign imm16=instr[15:0];
	 assign imm26=instr[25:0];
	 assign opcode=instr[31:26];
	 assign funcode=instr[5:0];

endmodule
