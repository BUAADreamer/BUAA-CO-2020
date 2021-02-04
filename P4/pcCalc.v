`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:46 11/14/2020 
// Design Name: 
// Module Name:    pcCalc 
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
module pcCalc(
    input [31:0] pc,
    input [31:0] imm,
	 input [31:0] rsData,
    output reg [31:0] npc,
    output reg [31:0] pcPlus4,
	 input branch,
	 input jump,
	 input zero,
	 input pcSrc,
	 input [25:0] imm26
    );
	 always@(*)begin
		pcPlus4=pc+4;
		case(pcSrc)
			0:begin
				if( zero&branch)begin
					npc=pc+4+(imm<<2);
				end
				else if(jump)begin
					npc={pc[31:28],imm26,{2{1'b0}}};
				end
				else begin
					npc=pc+4;
				end
			end
			1:begin
				npc=rsData;
			end
		endcase
	 end
endmodule
