`timescale 1ns / 1ps
module DM(
    input [31:0] A,
    input [31:0] WD,
    output [31:0] RD,
    input RE,
    input WE,
    input clk,
    input reset,
	 input [31:0] pc,
	 input stall_D
    );
	 reg [31:0] dm [0:1023];
	 wire [11:2] addr;
	 assign addr=A[11:2];
	 integer i=0;
	 assign RD=RE?dm[addr]:0;
	 
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
		if(/*stall_D &*/WE & ~reset)begin
			$display("%d@%h: *%h <= %h",$time, pc, A, WD);
			//$display("@%h: *%h <= %h", pc, A, WD);
		end
	 end
endmodule