`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:21:45 11/14/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] dataA,
    input [31:0] dataB,
    input [2:0] aluCtrl,
    output reg [31:0] result,
    output reg zero
    );
	 always@(*)begin
		case(aluCtrl)
			3'b000:begin   //&
			  result = dataA&dataB;
			end
			3'b001:begin	 //|
			  result = dataA|dataB;
			end
			3'b010:begin   //+
			  result = dataA+dataB;
			end
			3'b011:begin   //-
			  result = dataA-dataB;
			end
			default:begin
			  result = result;
			end
		endcase
		zero=(dataA==dataB);
	 end
endmodule
