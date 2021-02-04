`timescale 1ns / 1ps
`include "constants.v"
module CP0(
    input [4:0] A1,
    input [4:0] A2,
    input [31:0] Din,
    input [31:0] PC,
    input [6:2] ExcCode,
    input [5:0] HWInt,
    input We,
    input EXLSet,
    input EXLClr,
    input clk,
    input reset,
	output IntReq,
    output reg [31:0]  EPC,
    output [31:0] DOut,
	input delayslot,
	input syscall
    );
	
	//grf logic
	//SR
	reg [15:10] SRIM;
	reg EXL,IE;
	wire [31:0] SR={16'b0,SRIM,8'b0,EXL,IE};
	//CAUSE
	reg BD;
	reg [15:10] IP;
	reg [6:2] excCode;
	wire [31:0] CAUSE={BD,15'b0,IP,3'b0,excCode,2'b0};
	//PRID
	reg [31:0] PRID;
	
	//combinational logic
	wire intr,exc;
	
	assign intr=(|(HWInt & SRIM)) && IE && !EXL ;
	assign exc=(ExcCode!=0);
	assign IntReq=intr|exc;
	assign DOut=(A1==`CP0_SR)?SR:
				(A1==`CP0_CAUSE)?CAUSE:
				(A1==`CP0_EPC)?EPC:
				(A1==`CP0_PRID)?PRID:32'b0;
	always@(posedge clk)begin
		if(reset)begin
			SRIM<=6'b0;
			EXL<=1'b0;
			IE<=1'b0;
			BD<=1'b0;
			IP<=6'b0;
			excCode<=5'b0;
			EPC<=0;
			PRID<=32'd19373573;
		end
		else begin
			//IP<=0;
			IP<=HWInt;
			if(We)begin
				case(A2)
					`CP0_SR: {SRIM,EXL,IE}<={Din[15:10],Din[1:0]};
					`CP0_EPC: EPC<={Din[31:2],2'b00};
					default: PRID<=32'd19373573;
				endcase
			end
			if(EXLSet)begin
				EXL<=1'b1;
			end
			else if(EXLClr)begin
				EXL<=1'b0;
			end
			if(intr)begin
				BD<=delayslot;
				excCode<=0;
				EPC<=(delayslot)?({PC[31:2],2'b00}-4):({PC[31:2], 2'b00});
			end
			else if(ExcCode!=0)begin
				BD<=delayslot;
				excCode<=ExcCode;
				EPC<=(delayslot)?({PC[31:2],2'b00}-4):({PC[31:2], 2'b00});
			end
		end
	end
endmodule



