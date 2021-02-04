`timescale 1ns / 1ps
`include "constants.v"
module cpu(
    input reset,
    input clk,
	input interrupt,
	output [31:2] PrAddr,
	output [31:0] PrWD,
	input [31:0] PrRD,
	output PrWE,
	input [7:2] HWInt,
	output [31:0] PCAddr
    );
	
	//CP0_ctrl_SIGNAL
	wire IntReq_M;
	//IF level
	wire [31:0] npc,pc_F,pc_W;
	wire [31:0] instr_F,instr_F_0;
	wire [4:0] writeAddr_W;
	wire [31:0] writeData_W;
	wire [4:0] excCode_F,excCode_D,excCode_M,excCode_E,excCode_D_o,excCode_M_o,excCode_E_o;
	wire regWrite_W;
	wire [31:0] for_rs_D,for_rt_D,for_rs_E,for_rt_E,for_rt_M,cp0rd_M,cp0rd_W,for_epc_M;
	wire [3:0] selRsD,selRtD,selRsE,selRtE,selRtM;
	wire stall_F,stall_D,flush_E,eret_M,eret_D,j_b_W;
	wire [31:0] npc_new,epc_M;
	PC F_PC(.clk(clk), .reset(reset), .next_pc(npc_new), .pc(pc_F), .en(stall_F|IntReq_M));
	IM F_IM(.pc(pc_F), .instr(instr_F_0));
	wire j_b_F;
	controller F_ctrl (.instr(instr_F_0), .op(instr_F_0[`op]), .func(instr_F_0[`fun]), .j_b(j_b_F));
	assign npc_new=(IntReq_M)?32'h4180:(eret_D)?for_epc_M:npc;
	//exception_F
	wire pcExc=(pc_F[1:0]!=2'b00)||(pc_F<32'h3000||pc_F>32'h4ffc);
	assign instr_F=(pcExc)?32'b0:instr_F_0;
	assign excCode_F=(pcExc)?5'd4:5'd0;
	//D level
	wire [31:0] instr_D,pc_D4,pc_D8,pc_D,grf_RD1,grf_RD2,ext_D;
	wire [1:0] regDst_D;
	wire extOp_D;
	wire [3:0] branch_D;
	wire jump_D,pcSrc_D,equal_D,illcode,j_b_D,j_b_E,j_b_M;
	assign eret_D=instr_D==`instr_eret;
	wire BD_D,BD_F,BD_E,BD_M;
	assign BD_F=j_b_D;
	wire syscall;
	//F_D_register
	F2D F_D_reg (.clk(clk), .reset(reset|IntReq_M|(eret_D)), .en(stall_D), .instr_F(instr_F), .pc_F(pc_F), .npc(npc),.pc_D(pc_D), .pc_D4(pc_D4), .pc_D8(pc_D8), .instr_D(instr_D),.excCode_F(excCode_F),.excCode_D(excCode_D),.BD_F(BD_F),.BD_D(BD_D));
	//other logic unit
	controller D_ctrl (.instr(instr_D),.op(instr_D[`op]), .func(instr_D[`fun]), .regDst(regDst_D),.extOp(extOp_D), .branch(branch_D), .jump(jump_D),.pcSrc(pcSrc_D),.illcode(illcode),.j_b(j_b_D),.syscall(syscall));
	GRF D_GRF (.RA1(instr_D[`rs]), .RA2(instr_D[`rt]), .RD1(grf_RD1), .RD2(grf_RD2),  .WA(writeAddr_W), .WD(writeData_W), .WE(regWrite_W), .reset(reset), .clk(clk), .pc_W(pc_W),.stall_D(stall_D));
	EXT D_ext_unit (.imm16(instr_D[`imm16]), .extOp(extOp_D), .ext_D(ext_D));
	CMP D_cmp (.d1(for_rs_D), .d2(for_rt_D), .equal(equal_D),.branch(branch_D));
	pcCalc D_next_pc (.pc(pc_F), .pc_D4(pc_D4),.imm(ext_D), .rsData(for_rs_D), .npc(npc),.branch(branch_D), .jump(jump_D), .zero(equal_D), .pcSrc(pcSrc_D), .imm26(instr_D[`imm26]));
	//exception_D
	assign excCode_D_o=illcode?10:syscall?8:excCode_D;

	//E level
	wire [31:0] pc_E,pc_E4,pc_E8,instr_E,rsD_E,rtD_E,ext_E,aluDataB_E,aluRet_E;
	wire aluSrc_E,zero_E,wHiLo_E,weMD_E,busy_E,mdStart_E,mdStart_E_new,sel_shrs,sign_md_E,rHiLo_E;
	wire [3:0] aluCtrl_E;
	wire [1:0] mord_E;
	wire [31:0] HI_E,LO_E,mdOut_E;
	wire [4:0] shamt_E;
	wire of_E,of_M,st_E,ld_E;
	//D_E_register
	D2E D_E_reg (.instr_D(instr_D), .pc_D(pc_D), .pc_D4(pc_D4), .pc_D8(pc_D8), .pc_E(pc_E), .pc_E4(pc_E4), .pc_E8(pc_E8), 
    .grf_RD1(for_rs_D), .grf_RD2(for_rt_D), .ext_D(ext_D), .ext_E(ext_E), .instr_E(instr_E), .rs_E(rsD_E), .rt_E(rtD_E),.clk(clk), .reset(reset|flush_E|IntReq_M)
	,.excCode_D(excCode_D_o),.excCode_E(excCode_E),.BD_D(BD_D),.BD_E(BD_E));//
	//other logic unit
	controller E_ctrl (.instr(instr_E),.op(instr_E[`op]), .func(instr_E[`fun]), .aluSrc(aluSrc_E), .aluCtrl(aluCtrl_E),.wHiLo(wHiLo_E),
	.weMD(weMD_E),.mord(mord_E),.shamt_or_rs(sel_shrs),.mdStart(mdStart_E),.signmd(sign_md_E),.rHiLo(rHiLo_E),.j_b(j_b_E),.st(st_E),.ld(ld_E));
	ALU E_alu (.dataA(for_rs_E), .dataB(aluDataB_E), .aluCtrl(aluCtrl_E), .result(aluRet_E), .zero(zero_E),.shamt(shamt_E),.of(of_E));
	MULT_DIV E_mdUnit (.reset(reset), .clk(clk), .start(mdStart_E_new), .busy(busy_E), .A(for_rs_E), .B(for_rt_E), .HI(HI_E),.LO(LO_E), .op(mord_E), .WE(weMD_E&&~IntReq_M), .write_sel(wHiLo_E),.sign(sign_md_E));
	aluDSel E_selAlu (.rtData(for_rt_E), .imm32(ext_E), .aluSrc(aluSrc_E), .aluDataB(aluDataB_E));
	hiloSel E_HILOSEL (.HI(HI_E), .LO(LO_E), .sel(rHiLo_E), .mdOut_E(mdOut_E));
	shrsSel E_shrsSel (.shamt(instr_E[10:6]), .rs_4_0(for_rs_E[4:0]), .sel(sel_shrs), .shamt_out(shamt_E));
	//exception_E
	wire cal_of=((instr_E[`op]==`R&&(instr_E[`fun]==`add||instr_E[`fun]==`sub))||instr_E[`op]==`addi)&&of_E;
	assign excCode_E_o=cal_of?5'd12:(st_E&&of_E)?5'd5:(ld_E&&of_E)?5'd4:excCode_E;
	assign mdStart_E_new=IntReq_M?0:mdStart_E;
	//M level
	wire [31:0] pc_M,pc_M4,pc_M8,instr_M,aluRet_M,rt_M,RD_M,ext_M,mdOut_M,wordRead_M;
	wire memRead_M,memWrite_M;
	wire [3:0] BE_M;
	wire [2:0] extRdOp_M;
	wire [1:0] storeOp_M;
	wire ades,adel,ades1,ades2,adel1,adel2,ld_M,st_M,wecp0;
	//E_M_registers
	E2M E_M_reg (.instr_E(instr_E), .pc_E(pc_E), .pc_E4(pc_E4), .pc_E8(pc_E8), .rt_E(for_rt_E), .aluRet_E(aluRet_E), .pc_M(pc_M), .pc_M4(pc_M4), .pc_M8(pc_M8),	
	.aluRet_M(aluRet_M), .instr_M(instr_M), .rt_M(rt_M), .clk(clk), .reset(reset|IntReq_M),.ext_E(ext_E),.ext_M(ext_M),.mdOut_E(mdOut_E),.mdOut_M(mdOut_M),.excCode_E(excCode_E_o),.excCode_M(excCode_M)
	,.of_E(of_E),.of_M(of_M),.BD_E(BD_E),.BD_M(BD_M));
	//other logic unit
	controller M_ctrl (.instr(instr_M),.op(instr_M[`op]), .func(instr_M[`fun]), .memRead(memRead_M), .memWrite(memWrite_M),.extRdOp(extRdOp_M),.storeOp(storeOp_M),.ld(ld_M),.st(st_M),.wecp0(wecp0),.j_b(j_b_M));
	store_judge M_store_judge_unit (.op(storeOp_M), .BE(BE_M), .A_1_0(aluRet_M[1:0]));
	DM M_DM (.A(aluRet_M), .WD(for_rt_M), .RD(wordRead_M), .RE(memRead_M&&~IntReq_M&&~adel), .WE(memWrite_M&&~IntReq_M&&~ades), .clk(clk), .reset(reset), .pc(pc_M),.stall_D(stall_D),.BE(BE_M));
	data_ext M_data_ext_sel (.A(aluRet_M[1:0]), .Din(wordRead_M), .op(extRdOp_M), .Dout(RD_M));
	//exception_M
	assign ades1=((memWrite_M)&&(BE_M==4'b1111&&aluRet_M[1:0]!=2'b00))||((memWrite_M)&&(BE_M==4'b0011||BE_M==4'b1100)&&(aluRet_M[0]!=1'b0||aluRet_M>=32'h3000))
				 ||((memWrite_M)&&(BE_M==4'b0001||BE_M==4'b1000||BE_M==4'b0100||BE_M==4'b0010)&&aluRet_M>=32'h3000);
	assign ades2=(st_M)&&((of_M)||(aluRet_M>=32'h3000&&aluRet_M!=32'h7f00&&aluRet_M!=32'h7f04&&aluRet_M!=32'h7f10&&aluRet_M!=32'h7f14));
	assign ades=ades1||ades2;
	assign adel2=(ld_M)&&of_M;
	assign adel1=(instr_M[`op]==`lw&&aluRet_M[1:0]!=2'b0)||((instr_M[`op]==`lh||instr_M[`op]==`lhu)&&aluRet_M[0]!=1'b0)||
				 ((instr_M[`op]==`lh||instr_M[`op]==`lhu||instr_M[`op]==`lb||instr_M[`op]==`lbu)&&aluRet_M>=32'h7f00&&aluRet_M<=32'h7f1b)||
				 (((aluRet_M>=32'h3000&&aluRet_M<32'h7f00)||(aluRet_M>=32'h7f1c)||(aluRet_M>=32'h7f0c&&aluRet_M<32'h7f10))&&((instr_M[`op]==`lh||instr_M[`op]==`lhu||instr_M[`op]==`lb||instr_M[`op]==`lbu||instr_M[`op]==`lw)));
	assign adel=adel1|adel2;
	assign excCode_M_o=(|HWInt)?5'd0:(adel)?5'd4:(ades)?5'd5:excCode_M;
	wire [31:0] RD_M_o=(aluRet_M<=32'h2ffc)?RD_M:(aluRet_M>=32'h7f00&&aluRet_M<=32'h7f1b)?PrRD:0;
	wire[31:0] pc_M_o=(pc_M||excCode_M)?pc_M:
				  (pc_E||excCode_E)?pc_E:
				  (pc_D||excCode_D)?pc_D:
				  (pc_F)?pc_F:0;
	assign PCAddr=(pc_M||excCode_M)?pc_M:
				  (pc_E||excCode_E)?pc_E:
				  (pc_D||excCode_D)?pc_D:
				  (pc_F)?pc_F:0;
	assign eret_M=instr_M==`instr_eret;			  
	wire BD_M_o=(pc_M||excCode_M)?BD_M:
				(pc_E||excCode_E)?BD_E:
				(pc_D||excCode_D)?BD_D:
				(pc_F)?BD_F:0;
	assign PrAddr=aluRet_M[31:2];
	assign PrWE=memWrite_M&&~(IntReq_M)&&~ades;
	assign PrWD=for_rt_M;
	//CP0
	CP0 M_CP0 (.A1(instr_M[`rd]), .A2(instr_M[`rd]), .Din(for_rt_M), .PC(pc_M_o), .ExcCode(excCode_M_o), .HWInt(HWInt), 
    .We(wecp0&&~IntReq_M), .EXLSet(IntReq_M), .EXLClr(eret_W), .clk(clk), .reset(reset), .IntReq(IntReq_M), .EPC(epc_M), .DOut(cp0rd_M), .delayslot(BD_M_o));
	assign eret_W=instr_W==`instr_eret;
	//W level
	wire [31:0] pc_W4,pc_W8,aluRet_W,instr_W,rt_W,RD_W,ext_W,mdOut_W;
	wire [1:0] regDst_W;
	wire [2:0] memToReg_W;
	//M_W_reg
	M2W M_W_reg (.instr_M(instr_M), .pc_M(pc_M), .pc_M4(pc_M4), .pc_M8(pc_M8), .rt_M(rt_M), .aluRet_M(aluRet_M), .RD_M(RD_M_o), .pc_W(pc_W), .pc_W4(pc_W4), .pc_W8(pc_W8), 
	.aluRet_W(aluRet_W), .instr_W(instr_W), .rt_W(rt_W), .RD_W(RD_W), .clk(clk), .reset(reset|IntReq_M),.ext_M(ext_M),.ext_W(ext_W),.mdOut_M(mdOut_M),.mdOut_W(mdOut_W),
	.cp0rd_M(cp0rd_M),.cp0rd_W(cp0rd_W));
	//other logic unit
	controller W_ctrl (.instr(instr_W),.op(instr_W[`op]), .func(instr_W[`fun]), .regDst(regDst_W), .regWrite(regWrite_W), .memToReg(memToReg_W),.j_b(j_b_W));
	writeDSel W_selD (.aluOut(aluRet_W), .dmRd(RD_W), .pcPlus8(pc_W8), .memToReg(memToReg_W), .writeD(writeData_W),.mdOut_W(mdOut_W),.cp0rd_W(cp0rd_W));
	writeASel W_selA (.rt(instr_W[`rt]), .rd(instr_W[`rd]), .regDst(regDst_W), .WA(writeAddr_W));
	
	//hazard logic unit
	hazard_Unit Hazard_Unit (.instr_D(instr_D), .instr_E(instr_E), .instr_M(instr_M), .instr_W(instr_W), 
	.stall_F(stall_F), .stall_D(stall_D), .flush_E(flush_E), .busy(busy_E),
    .selRsD(selRsD), .selRtD(selRtD), .selRsE(selRsE), .selRtE(selRtE), .selRtM(selRtM));
	assign for_epc_M=(eret_D&&instr_M[`op]==`COP0&&instr_M[`rs]==`mtc0rs&&instr_M[`rd]==`CP0_EPC)?for_rt_M:
					 (eret_D&&instr_E[`op]==`COP0&&instr_E[`rs]==`mtc0rs&&instr_E[`rd]==`CP0_EPC)?for_rt_E:epc_M;
	//forward_mux
	forRsD Mux_forRsD (.selRsD(selRsD), .grf_RD1(grf_RD1), .pc_E8(pc_E8), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .for_rs_D(for_rs_D),.mdOut_E(mdOut_E),.mdOut_M(mdOut_M));
	forRtD Mux_forRtD (.selRtD(selRtD), .grf_RD2(grf_RD2), .pc_E8(pc_E8), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .for_rt_D(for_rt_D),.mdOut_E(mdOut_E),.mdOut_M(mdOut_M));
	forRsE Mux_forRsE (.selRsE(selRsE), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .rsD_E(rsD_E), .for_rs_E(for_rs_E),.mdOut_M(mdOut_M));
	forRtE Mux_forRtE (.selRtE(selRtE), .aluRet_M(aluRet_M), .pc_M8(pc_M8), .writeData_W(writeData_W), .pc_W8(pc_W8), .rtD_E(rtD_E), .for_rt_E(for_rt_E),.mdOut_M(mdOut_M));
	forRtM Mux_forRtM (.selRtM(selRtM), .writeData_W(writeData_W), .pc_W8(pc_W8), .rt_M(rt_M), .for_rt_M(for_rt_M));
endmodule
