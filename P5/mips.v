`timescale 1ns / 1ps
`include "constants.v"
module mips(
    input reset,
    input clk
    );
	
	//IF level
	wire [31:0] npc,pc_F,pc_W;
	wire [31:0] instr_F;
	wire [4:0] writeAddr_W;
	wire [31:0] writeData_W;
	wire regWrite_W;
	wire [31:0] for_rs_D,for_rt_D,for_rs_E,for_rt_E,for_rt_M;
	wire [2:0] selRsD,selRtD,selRsE,selRtE,selRtM;
	wire stall_F,stall_D,flush_E;
	PC PC(.clk(clk), .reset(reset), .next_pc(npc), .pc(pc_F), .en(stall_F));
	IM IM(.pc(pc_F), .instr(instr_F));
	
	//D level
	wire [31:0] instr_D,pc_D4,pc_D8,pc_D,grf_RD1,grf_RD2,ext_D;
	wire [1:0] regDst_D,extOp_D;
	wire branch_D,jump_D,pcSrc_D,equal_D;
	//F_D_register
	F2D F_D_reg (.clk(clk), .reset(reset), .en(stall_D), .instr_F(instr_F), .pc_F(pc_F), .npc(npc),.pc_D(pc_D), .pc_D4(pc_D4), .pc_D8(pc_D8), .instr_D(instr_D));
	//other logic unit
	controller ctrl_D (.op(instr_D[`op]), .func(instr_D[`fun]), .regDst(regDst_D),.extOp(extOp_D), .branch(branch_D), .jump(jump_D),.pcSrc(pcSrc_D));
	GRF GRF (.RA1(instr_D[`rs]), .RA2(instr_D[`rt]), .RD1(grf_RD1), .RD2(grf_RD2),  .WA(writeAddr_W), .WD(writeData_W), .WE(regWrite_W), .reset(reset), .clk(clk), .pc_W(pc_W),.stall_D(stall_D));
	EXT ext_unit_D (.imm16(instr_D[`imm16]), .extOp(extOp_D), .ext_D(ext_D));
	CMP cmp_D (.d1(for_rs_D), .d2(for_rt_D), .equal(equal_D));
	pcCalc next_pc (.pc(pc_F), .pc_D4(pc_D4),.imm(ext_D), .rsData(for_rs_D), .npc(npc),.branch(branch_D), .jump(jump_D), .zero(equal_D), .pcSrc(pcSrc_D), .imm26(instr_D[`imm26]));

	//E level
	wire [31:0] pc_E,pc_E4,pc_E8,instr_E,rsD_E,rtD_E,ext_E,aluDataB_E,aluRet_E,E_grf_RD1,E_grf_RD2;
	wire aluSrc_E,zero_E;
	wire [2:0] aluCtrl_E;
	wire [1:0] memToReg_E;
	//D_E_register
	D2E D_E_reg (.instr_D(instr_D), .pc_D(pc_D), .pc_D4(pc_D4), .pc_D8(pc_D8), .pc_E(pc_E), .pc_E4(pc_E4), .pc_E8(pc_E8), 
    .grf_RD1(for_rs_D), .grf_RD2(for_rt_D), .ext_D(ext_D), .ext_E(ext_E), .instr_E(instr_E), .rs_E(rsD_E), .rt_E(rtD_E),.clk(clk), .reset(reset|flush_E));
	//other logic unit
	controller ctrl_E (.op(instr_E[`op]), .func(instr_E[`fun]), .aluSrc(aluSrc_E), .aluCtrl(aluCtrl_E),.memToReg(memToReg_E));
	aluDSel selAlu_E (.rtData(for_rt_E), .imm32(ext_E), .aluSrc(aluSrc_E), .aluDataB(aluDataB_E));
	ALU alu_E (.dataA(for_rs_E), .dataB(aluDataB_E), .aluCtrl(aluCtrl_E), .result(aluRet_E), .zero(zero_E));
	

	//M level
	wire [31:0] pc_M,pc_M4,pc_M8,instr_M,aluRet_M,rt_M,RD_M,ext_M,aluRet_E_M,rt_E_M;
	wire memRead_M,memWrite_M;
	//lui selector
	aluRetSel lui_ext_sel (.lui(memToReg_E==2), .ext_E(ext_E), .aluRet_E(aluRet_E), .aluRet_M(aluRet_E_M));
	//E_M_registers
	E2M E_M_reg (.instr_E(instr_E), .pc_E(pc_E), .pc_E4(pc_E4), .pc_E8(pc_E8), .rt_E(for_rt_E), .aluRet_E(aluRet_E_M), .pc_M(pc_M), .pc_M4(pc_M4), .pc_M8(pc_M8),	
	.aluRet_M(aluRet_M), .instr_M(instr_M), .rt_M(rt_M), .clk(clk), .reset(reset),.ext_E(ext_E),.ext_M(ext_M));
	//other logic unit
	controller ctrl_M (.op(instr_M[`op]), .func(instr_M[`fun]), .memRead(memRead_M), .memWrite(memWrite_M));
	DM DM_M (.A(aluRet_M), .WD(for_rt_M), .RD(RD_M), .RE(memRead_M), .WE(memWrite_M), .clk(clk), .reset(reset), .pc(pc_M),.stall_D(stall_D));
	
	//W level
	wire [31:0] pc_W4,pc_W8,aluRet_W,instr_W,rt_W,RD_W,ext_W;
	wire [1:0] regDst_W,memToReg_W;
	//M_W_reg
	M2W M_W_reg (.instr_M(instr_M), .pc_M(pc_M), .pc_M4(pc_M4), .pc_M8(pc_M8), .rt_M(rt_M), .aluRet_M(aluRet_M), .RD_M(RD_M), .pc_W(pc_W), .pc_W4(pc_W4), .pc_W8(pc_W8), 
	.aluRet_W(aluRet_W), .instr_W(instr_W), .rt_W(rt_W), .RD_W(RD_W), .clk(clk), .reset(reset),.ext_M(ext_M),.ext_W(ext_W));
	//other logic unit
	controller ctrl_W (.op(instr_W[`op]), .func(instr_W[`fun]), .regDst(regDst_W), .regWrite(regWrite_W), .memToReg(memToReg_W));
	writeDSel selD_W (.aluOut(aluRet_W), .dmRd(RD_W), .lui_ext(ext_W), .pcPlus8(pc_W8), .memToReg(memToReg_W), .writeD(writeData_W));
	writeASel selA_W (.rt(instr_W[`rt]), .rd(instr_W[`rd]), .regDst(regDst_W), .WA(writeAddr_W));
	
	//hazard logic unit
	hazard_Unit hazard_Unit (.instr_D(instr_D), .instr_E(instr_E), .instr_M(instr_M), .instr_W(instr_W), 
	.stall_F(stall_F), .stall_D(stall_D), .flush_E(flush_E), 
    .selRsD(selRsD), .selRtD(selRtD), .selRsE(selRsE), .selRtE(selRtE), .selRtM(selRtM));
	
	//forward_mux
	forRsD mux_forRsD (.selRsD(selRsD), .grf_RD1(grf_RD1), .pc_E8(pc_E8), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .for_rs_D(for_rs_D));
	forRtD mux_forRtD (.selRtD(selRtD), .grf_RD2(grf_RD2), .pc_E8(pc_E8), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .for_rt_D(for_rt_D));
	forRsE mux_forRsE (.selRsE(selRsE), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .rsD_E(rsD_E), .for_rs_E(for_rs_E));
	forRtE mux_forRtE (.selRtE(selRtE), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .rtD_E(rtD_E), .for_rt_E(for_rt_E));
	forRtM mux_forRtM (.selRtM(selRtM), .writeData_W(writeData_W), .pc_W8(pc_W8), .rt_M(rt_M), .for_rt_M(for_rt_M));
endmodule
