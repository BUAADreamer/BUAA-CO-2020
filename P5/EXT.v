`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:09 11/23/2020 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] imm16,
    input [1:0] extOp,
    output reg [31:0] ext_D
    );
	always@(*)begin
		case(extOp)
			0:begin
				ext_D={{16{imm16[15]}},imm16};
			end
			1:begin
				ext_D={{16{1'b0}},imm16};
			end
			2:begin
				ext_D={imm16,{16{1'b0}}};
			end
			default:begin
				ext_D=0;
			end
		endcase
	 end
endmodule
