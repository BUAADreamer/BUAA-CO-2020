`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:44:06 12/16/2020 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset,
    input interrupt,
    output [31:0] addr
    );

	wire PrWE_cpu_o,PrWE_bri_o,WeDEV0,WeDEV1,IRQ_tc0,IRQ_tc1;
	wire [31:2] PrAddr_cpu_o,PrAddr_bri_o;
	wire [31:0] PrWD_cpu_o,PrWD_bri_o,TCRD0,TCRD1,PrRD;
	
	Bridge Bridge (.PrAddr(PrAddr_cpu_o), .PrWE(PrWE_cpu_o), .PrWD(PrWD_cpu_o), .DEV0_RD(TCRD0), .DEV1_RD(TCRD0), 
	.PrRD(PrRD), .DEV_Addr(PrAddr_bri_o), .DEV_WD(PrWD_bri_o), .WeDEV0(WeDEV0), .WeDEV1(WeDEV1));
	
	TC Timer0(.clk(clk), .reset(reset), .Addr(PrAddr_bri_o), .WE(WeDEV0), .Din(PrWD_bri_o), .Dout(TCRD0), .IRQ(IRQ_tc0));
	TC Timer1(.clk(clk), .reset(reset), .Addr(PrAddr_bri_o), .WE(WeDEV1), .Din(PrWD_bri_o), .Dout(TCRD1), .IRQ(IRQ_tc1));
	
	cpu MyCPU (.reset(reset), .clk(clk), .interrupt(interrupt), .PrAddr(PrAddr_cpu_o), .PrWD(PrWD_cpu_o), 
	.PrRD(PrRD), .PrWE(PrWE_cpu_o), .HWInt({3'b0,interrupt,IRQ_tc0,IRQ_tc1}),.PCAddr(addr));
endmodule
