`timescale 1ns / 1ps
`include "constants.v"
module hazard_Unit(
    input [31:0] instr_D,
    input [31:0] instr_E,
    input [31:0] instr_M,
    input [31:0] instr_W,
    output stall_F,
    output stall_D,
    output flush_E,
    output [3:0] selRsD,
    output [3:0] selRtD,
    output [3:0] selRsE,
    output [3:0] selRtE,
    output [3:0] selRtM,
	input busy
    );
	
	wire D_b,D_cal_r,D_cal_i,D_load,D_store,D_jr,D_jal,D_jalr,D_cal_md,D_md,D_r_md,D_w_md,D_mtc0,D_mfc0;
	instr_class D_class (.instr(instr_D), .jal(D_jal), .cal_i(D_cal_i), .cal_r(D_cal_r), .load(D_load), .b(D_b), .jr(D_jr), .store(D_store),.jalr(D_jalr),.md(D_md),.cal_md(D_cal_md),.r_md(D_r_md),.w_md(D_w_md),.mfc0(D_mfc0),.mtc0(D_mtc0));
	wire E_b,E_cal_r,E_cal_i,E_loaE,E_store,E_jr,E_jal,E_jalr,E_cal_md,E_md,E_r_md,E_mtc0,E_mfc0;
	instr_class E_class (.instr(instr_E), .jal(E_jal), .cal_i(E_cal_i), .cal_r(E_cal_r), .load(E_load), .b(E_b), .jr(E_jr), .store(E_store),.jalr(E_jalr),.md(E_md),.cal_md(E_cal_md),.r_md(E_r_md),.mfc0(E_mfc0),.mtc0(E_mtc0));
	wire M_b,M_cal_r,M_cal_i,M_load,M_store,M_jr,M_jal,M_jalr,M_cal_md,M_md,M_r_md,M_mtc0,M_mfc0;
	instr_class M_class (.instr(instr_M), .jal(M_jal), .cal_i(M_cal_i), .cal_r(M_cal_r), .load(M_load), .b(M_b), .jr(M_jr), .store(M_store),.jalr(M_jalr),.md(M_md),.cal_md(M_cal_md),.r_md(M_r_md),.mfc0(M_mfc0),.mtc0(M_mtc0));
	wire W_b,W_cal_r,W_cal_i,W_load,W_store,W_jr,W_jal,W_jalr,W_cal_md,W_md,W_r_md,W_w_md,W_mtc0,W_mfc0;
	instr_class W_class (.instr(instr_W), .jal(W_jal), .cal_i(W_cal_i), .cal_r(W_cal_r), .load(W_load), .b(W_b), .jr(W_jr), .store(W_store),.jalr(W_jalr),.md(W_md),.cal_md(W_cal_md),.r_md(W_r_md),.w_md(W_w_md),.mfc0(W_mfc0),.mtc0(W_mtc0));
	
	wire stallRt,stallRs,stall,stallMd;
	
	wire [4:0] rs_D,rs_E,rt_D,rt_E,rs_M,rt_M,rd_M,rs_W,rt_W,rd_W,rd_E;
	assign rs_D = instr_D[`rs];
	assign rs_E = instr_E[`rs];
	assign rd_E = instr_E[`rd];
	assign rt_D = instr_D[`rt];
	assign rt_E = instr_E[`rt];
	assign rs_M = instr_M[`rs];
	assign rt_M = instr_M[`rt];
	assign rd_M = instr_M[`rd];
	assign rs_W = instr_W[`rs];
	assign rt_W = instr_W[`rt];
	assign rd_W = instr_W[`rd];
	
	//stall logic
	assign stallRt = (D_b&&(E_load||E_mfc0)&&rt_E==rt_D&&rt_D)||(D_b&&E_cal_i&&rt_E==rt_D&&rt_D)||(D_b&&E_cal_r&&rd_E==rt_D&&rt_D)||(D_b&&(M_load||M_mfc0)&&rt_M==rt_D&&rt_D)||
					 (D_cal_r&&(E_load||E_mfc0)&&rt_D==rt_E&&rt_D||D_cal_md&&(E_load||E_mfc0)&&rt_D==rt_E&&rt_D);
	assign stallRs = (D_b&&(E_load||E_mfc0)&&rt_E==rs_D&&rs_D)||(D_b&&E_cal_i&&rt_E==rs_D&&rs_D)||(D_b&&E_cal_r&&rd_E==rs_D&&rs_D)||(D_b&&(M_load||M_mfc0)&&rt_M==rs_D&&rs_D)||
					 (D_cal_r&&(E_load||E_mfc0)&&rs_D==rt_E&&rs_D)||(D_cal_i&&(E_load||E_mfc0)&&rs_D==rt_E&&rs_D)||(D_load&&(E_load||E_mfc0)&&rs_D==rt_E&&rs_D)||(D_store&&(E_load||E_mfc0)&&rs_D==rt_E&&rs_D)||(D_cal_md&&(E_load||E_mfc0)&&rs_D==rt_E&&rs_D)||
					 (D_jr&&(E_load||E_mfc0)&&rt_E==rs_D&&rs_D)||(D_jr&&E_cal_i&&rt_E==rs_D&&rs_D)||(D_jr&&E_cal_r&&rd_E==rs_D&&rs_D)||(D_jr&&(M_load||M_mfc0)&&rt_M==rs_D&&rs_D)||
					 ((D_jalr||D_w_md)&&(E_load||E_mfc0)&&rt_E==rs_D&&rs_D)||(D_jalr&&E_cal_i&&rt_E==rs_D&&rs_D)||(D_jalr&&E_cal_r&&rd_E==rs_D&&rs_D)||(D_jalr&&(M_load||M_mfc0)&&rt_M==rs_D&&rs_D);
	assign stallMd=(D_md&&busy)||(D_md&&E_cal_md);
	//assign stallcp0=1;
	assign stall = stallRs||stallRt||stallMd;
	assign stall_F = ~stall;
	assign stall_D = ~stall;
	assign flush_E = stall;
	
	//forward logic
	assign selRsD = (rs_D==31&&E_jal&&rs_D||rs_D==rd_E&&E_jalr&&rs_D)?1:
					(rs_D==rd_E&&E_r_md&&rs_D)?6:
					(rs_D==31&&M_jal&&rs_D||rs_D==rd_M&&M_jalr&&rs_D)?2:(rs_D==rt_M&&(M_cal_i)&&rs_D)||(rs_D==rd_M&&M_cal_r&&rs_D)?3:
					(rs_D==rd_M&&M_r_md&&rs_D)?7:
					(rs_D==31&&W_jal&&rs_D||rs_D==rd_W&&W_jalr&&rs_D)?4:(rs_D==rt_W&&(W_cal_i||W_load||W_mfc0)&&rs_D)||(rs_D==rd_W&&W_cal_r&&rs_D)||(rs_D==rd_W&&W_r_md&&rs_D)?5:0;
	
	assign selRtD = (rt_D==31&&E_jal&&rt_D||rt_D==rd_E&&E_jalr&&rt_D)?1:
					(rt_D==rd_E&&E_r_md&&rt_D)?6:
					(rt_D==31&&M_jal&&rt_D||rt_D==rd_M&&M_jalr&&rt_D)?2:(rt_D==rt_M&&(M_cal_i)&&rt_D)||(rt_D==rd_M&&M_cal_r&&rt_D)?3:
					(rt_D==rd_M&&M_r_md&&rt_D)?7:
					(rt_D==31&&W_jal&&rt_D||rt_D==rd_W&&W_jalr&&rt_D)?4:(rt_D==rt_W&&(W_cal_i||W_load||W_mfc0)&&rt_D)||(rt_D==rd_W&&W_cal_r&&rt_D)||(rt_D==rd_W&&W_r_md&&rt_D)?5:0;
	
	assign selRsE = (rs_E==31&&M_jal&&rs_E||rs_E==rd_M&&M_jalr&&rs_E)?1:(rs_E==rt_M&&(M_cal_i)&&rs_E)||(rs_E==rd_M&&M_cal_r&&rs_E)?2:
					(rs_E==rd_M&&M_r_md&&rs_E)?5:
					(rs_E==31&&W_jal&&rs_E||rs_E==rd_W&&W_jalr&&rs_E)?3:(rs_E==rt_W&&(W_cal_i||W_load||W_mfc0)&&rs_E)||(rs_E==rd_W&&W_cal_r&&rs_E)||(rs_E==rd_W&&W_r_md&&rs_E)?4:0;			
	
	assign selRtE = (rt_E==31&&M_jal&&rt_E||rt_E==rd_M&&M_jalr&&rt_E)?1:(rt_E==rt_M&&(M_cal_i)&&rt_E)||(rt_E==rd_M&&M_cal_r&&rt_E)?2:
					(rt_E==rd_M&&M_r_md&&rt_E)?5:
					(rt_E==31&&W_jal&&rt_E||rt_E==rd_W&&W_jalr&&rt_E)?3:(rt_E==rt_W&&(W_cal_i||W_load||W_mfc0)&&rt_E)||(rt_E==rd_W&&W_cal_r&&rt_E)||(rt_E==rd_W&&W_r_md&&rt_E)?4:0;			
	
	assign selRtM = (rt_M==31&&W_jal&&rt_M||rt_M==rd_W&&W_jalr&&rt_M)?1:(rt_M==rt_W&&(W_cal_i||W_load||W_mfc0)&&rt_M)||(rt_M==rd_W&&W_cal_r&&rt_M)||(rt_M==rd_W&&W_r_md&&rt_M)?2:0;
/*	wire test_ans;
	assign test_ans=(rs_E==rt_W&&W_cal_i&&rs_E)||(rs_E==rd_W&&W_cal_r&&rs_E);*/
endmodule
