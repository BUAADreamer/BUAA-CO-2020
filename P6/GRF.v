`timescale 1ns / 1ps
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
	input [31:0] pc_W,
	input stall_D
    );
	 reg [31:0] gpr [31:0];
	 assign RD1=(WA==RA1&&WA&&WE)?WD:gpr[RA1];
	 assign RD2=(WA==RA2&&WA&&WE)?WD:gpr[RA2];
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
		if(/*stall_D &*/ WE & ~reset)begin
			$display("%d@%h: $%d <= %h", $time, pc_W, WA, WD);
			//$display("@%h: $%d <= %h", pc_W, WA, WD);
		end
	 end
endmodule
