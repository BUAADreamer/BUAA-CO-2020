`timescale 1ns / 1ps
module Bridge(
    input [31:2] PrAddr,
    input PrWE,
    input [31:0] PrWD,
    input [31:0] DEV0_RD,
    input [31:0] DEV1_RD,
	output [31:0] PrRD,
	output [31:2] DEV_Addr,
    output [31:0] DEV_WD,
    output WeDEV0,
    output WeDEV1
    );
	wire rdev0,rdev1;
	assign rdev0=(PrAddr[31:4]==28'h00007F0);
	assign rdev1=(PrAddr[31:4]==28'h00007F1);
	assign PrRD=(rdev0)?DEV0_RD:
				(rdev1)?DEV1_RD:32'b0;
	assign WeDEV0=PrWE&&rdev0;
	assign WeDEV1=PrWE&&rdev1;
	assign DEV_Addr=PrAddr;
	assign DEV_WD=PrWD;

endmodule
