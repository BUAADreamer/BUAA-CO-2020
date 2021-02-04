`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:27 11/14/2020 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input clk,
    input reset,
    input [31:0] next_pc,
    output reg [31:0] pc
    );
	 always@(posedge clk)begin
		if(reset)begin
		  pc<=32'h00003000;
		end
		else begin
		  pc<=next_pc;
		end
	 end
endmodule
