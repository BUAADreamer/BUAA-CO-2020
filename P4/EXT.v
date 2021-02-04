`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:39 11/14/2020 
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
    input [15:0] in,
    input extOp,
    output reg [31:0] out
    );
	 always@(*)begin
		case(extOp)
			0:begin
				out={{16{in[15]}},in};
			end
			1:begin
				out={{16{1'b0}},in};
			end
			default:out=out;
		endcase
	 end
endmodule
