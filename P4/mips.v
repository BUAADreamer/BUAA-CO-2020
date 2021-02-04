`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: fzc
// 
// Create Date:    18:25:50 11/14/2020 
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
    input reset
    );
	 wire [31:0] next_pc,pc;
	 wire [31:0] instr;
	 wire [31:0] pcPlus4;
	 wire [31:0] RD1,RD2,WD,RD;
	 wire [4:0] WA;
	 wire [31:0] out_ext;
	 wire [31:0] dataB,result;
	 wire [2:0] aluCtrl;
	 wire zero;
	 wire [4:0] rs,rt,rd;
	 wire [15:0] imm16;
	 wire [25:0] imm26;
	 wire [5:0] opcode;
	 wire [5:0] funcode;
	 wire aluSrc,regWrite,memRead,memWrite,extOp,branch,jump,pcSrc;
	 wire [1:0] regDst;
	 wire [1:0] memToReg;
	 
	 
	 
	 //datapath
	 PC main_pc (
	 .clk(clk), 
    .reset(reset), 
    .next_pc(next_pc), 
    .pc(pc)
    );
	 
	 im main_im (
    .pc(pc), 
    .instr(instr)
    );
	  
	 pcCalc main_pcCalc (
    .pc(pc), 
    .imm(out_ext), 
    .npc(next_pc), 
    .pcPlus4(pcPlus4), 
    .branch(branch), 
    .jump(jump), 
    .zero(zero),
	 .pcSrc(pcSrc),
	 .rsData(RD1),
	 .imm26(imm26)
    );
	 
	 writeASel main_wASrc (
    .rt(rt), 
    .rd(rd), 
    .regDst(regDst), 
    .WA(WA)
    );
	 
	 GRF main_grf (
    .RA1(rs), 
    .RA2(rt), 
    .RD1(RD1), 
    .RD2(RD2), 
    .WA(WA), 
    .WD(WD), 
    .WE(regWrite), 
    .reset(reset), 
    .clk(clk),
	 .pc(pc)
    );
	 
	 EXT main_ext (
    .in(imm16), 
    .extOp(extOp), 
    .out(out_ext)
    );
	 
	 aluDSel main_aluSrc (
    .rtData(RD2), 
    .imm32(out_ext), 
    .aluSrc(aluSrc), 
    .aluDataB(dataB)
    );
	 
	 ALU main_alu (
    .dataA(RD1), 
    .dataB(dataB), 
    .aluCtrl(aluCtrl), 
    .result(result), 
    .zero(zero)
    );
	 
	 DM main_dm (
    .A(result), 
    .WD(RD2), 
    .RD(RD), 
    .RE(memRead), 
    .WE(memWrite), 
    .clk(clk), 
    .reset(reset),
	 .pc(pc)
    );
	 
	 writeDSel main_writeDSel (
    .aluOut(result), 
    .dmRd(RD), 
    .imm16(imm16), 
    .pcPlus4(pcPlus4), 
    .memToReg(memToReg), 
    .writeD(WD)
    );
	 
	 spliter main_spliter (
    .instr(instr), 
    .rs(rs), 
    .rt(rt), 
    .rd(rd), 
    .imm16(imm16), 
    .opcode(opcode), 
    .funcode(funcode), 
    .imm26(imm26)
    );
	 

	 //ctrl unit
	 ctroller main_ctrl (
		 .op(opcode), 
		 .func(funcode), 
		 .regDst(regDst), 
		 .aluSrc(aluSrc), 
		 .regWrite(regWrite), 
		 .memRead(memRead), 
		 .memWrite(memWrite), 
		 .memToReg(memToReg), 
		 .extOp(extOp), 
		 .branch(branch), 
		 .jump(jump), 
		 .aluCtrl(aluCtrl),
		 .pcSrc(pcSrc)
    );
	  
endmodule
