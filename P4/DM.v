`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:13 11/14/2020 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] A,
    input [31:0] WD,
    output [31:0] RD,
    input RE,
    input WE,
    input clk,
    input reset,
	 input [31:0] pc
    );
	 reg [31:0] dm [0:1023];
	 wire [11:2] addr;
	 assign addr=A[11:2];
	 integer i=0;
	 assign RD=RE?dm[addr]:RD;
	 always@(posedge clk)begin
		 if(reset)begin
			for(i=0;i<=10'h3ff;i=i+1)begin
				dm[i]<=0;
			end
		 end
		 else begin
			if(WE)begin
				dm[addr]<=WD;
			end
			else begin
				dm[addr]<=dm[addr];
			end
		 end
	 end
	 
	 always@(posedge clk)begin
		if(WE & ~reset)begin
			$display("@%h: *%h <= %h", pc, A, WD);
		end
	 end
endmodule
