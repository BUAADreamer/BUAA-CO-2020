`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:23 11/14/2020 
// Design Name: 
// Module Name:    grf 
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
module GRF(
    input [4:0] RA1,
    input [4:0] RA2,
    output [31:0] RD1,
    output [31:0] RD2,
    input [4:0] WA,
    input [31:0] WD,
    input WE,
    input reset,
    input clk,
	 input [31:0] pc
    );
	 reg [31:0] gpr [31:0];
	 assign RD1=gpr[RA1];
	 assign RD2=gpr[RA2];
	 integer i=0;
	 always@(posedge clk)begin
		if(reset)begin
			for(i=0;i<32;i=i+1)begin
				gpr[i]<=32'b0;
			end
		end
		else begin
			if(WE)begin
				if(WA)gpr[WA]<=WD;
				else gpr[WA]<=0;
			end
		end
	 end
	 
	 always@(posedge clk)begin
		if(WE & ~reset)begin
			$display("@%h: $%d <= %h", pc, WA, WD);
		end
	 end
endmodule
