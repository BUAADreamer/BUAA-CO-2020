`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:48:41 11/25/2020 
// Design Name: 
// Module Name:    instr_class 
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
`include "constants.v"
module instr_class(
    input [31:0] instr,
    output jal,
    output cal_i,
    output cal_r,
    output load,
	output beq,
	output jr,
	output store
    );
	assign cal_i = (instr[`op]==`ori||instr[`op]==`lui);
	assign cal_r = (instr[`op]==`R&&instr[`fun]!=`jr);
	assign jal = (instr[`op]==`jal);
	assign load = (instr[`op]==`lw);
	assign jr = (instr[`op]==`R&&instr[`fun]==`jr);
	assign beq = instr[`op]==`beq;
	assign store = instr[`op]==`sw;
endmodule
