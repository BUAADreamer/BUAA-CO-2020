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
	 input stall_D,
	 input [3:0] BE
    );
	 reg [31:0] dm [0:4095];
	 //wire [11:0] addr;
	 //assign addr=A[13:2];
	 integer i=0;
	 assign RD=dm[A[13:2]];

	 always@(posedge clk)begin
		 if(reset)begin
			for(i=0;i<=12'hfff;i=i+1)begin
				dm[i]<=0;
			end
		 end
		 else begin
			if(WE&&A<32'h3000)begin
			case(BE)
				4'b1111:begin
					dm[A[13:2]]<=WD;
					$display("%d@%h: *%h <= %h",$time,pc,A/4*4,WD);
					//$display("@%h: *%h <= %h",pc,A/4*4,WD);
				end
				4'b0011:begin
					dm[A[13:2]][15:0]<=WD[15:0];
					$display("%d@%h: *%h <= %h",$time,pc,A/4*4,{dm[A[13:2]][31:16],WD[15:0]});
					//$display("@%h: *%h <= %h",pc,A/4*4,{dm[A[13:2]][31:16],WD[15:0]});
				end
				4'b1100:begin
					dm[A[13:2]][31:16]<=WD[15:0];
					$display("%d@%h: *%h <= %h",$time,pc,A/4*4,{WD[15:0],dm[A[13:2]][15:0]});
					//$display("@%h: *%h <= %h",pc,A/4*4,{WD[15:0],dm[A[13:2]][15:0]});
				end
				4'b0001:begin
					dm[A[13:2]][7:0]<=WD[7:0];
					$display("%d@%h: *%h <= %h",$time,pc,A/4*4,{dm[A[13:2]][31:8],WD[7:0]});
					//$display("@%h: *%h <= %h",pc,A/4*4,{dm[A[13:2]][31:8],WD[7:0]});
				end
				4'b0010:begin
					dm[A[13:2]][15:8]<=WD[7:0];
					$display("%d@%h: *%h <= %h",$time,pc,A/4*4,{dm[A[13:2]][31:16],WD[7:0],dm[A[13:2]][7:0]});
					//$display("@%h: *%h <= %h",pc,A/4*4,{dm[A[13:2]][31:16],WD[7:0],dm[A[13:2]][7:0]});
				end
				4'b0100:begin
					dm[A[13:2]][23:16]<=WD[7:0];
					$display("%d@%h: *%h <= %h",$time,pc,A/4*4,{dm[A[13:2]][31:24],WD[7:0],dm[A[13:2]][15:0]});
					//$display("@%h: *%h <= %h",pc,A/4*4,{dm[A[13:2]][31:24],WD[7:0],dm[A[13:2]][15:0]});
				end
				4'b1000:begin
					dm[A[13:2]][31:24]<=WD[7:0];
					$display("%d@%h: *%h <= %h",$time,pc,A/4*4,{WD[7:0],dm[A[13:2]][23:0]});
					//$display("@%h: *%h <= %h",pc,A/4*4,{WD[7:0],dm[A[13:2]][23:0]});
				end
			endcase
			end
		 end
	 end
endmodule