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
    output [2:0] selRsD,
    output [2:0] selRtD,
    output [2:0] selRsE,
    output [2:0] selRtE,
    output [2:0] selRtM
    );
	
	wire D_beq,D_cal_r,D_cal_i,D_load,D_store,D_jr,D_jal;
	instr_class D_class (.instr(instr_D), .jal(D_jal), .cal_i(D_cal_i), .cal_r(D_cal_r), .load(D_load), .beq(D_beq), .jr(D_jr), .store(D_store));
	wire E_beq,E_cal_r,E_cal_i,E_loaE,E_store,E_jr,E_jal;
	instr_class E_class (.instr(instr_E), .jal(E_jal), .cal_i(E_cal_i), .cal_r(E_cal_r), .load(E_load), .beq(E_beq), .jr(E_jr), .store(E_store));
	wire M_beq,M_cal_r,M_cal_i,M_load,M_store,M_jr,M_jal;
	instr_class M_class (.instr(instr_M), .jal(M_jal), .cal_i(M_cal_i), .cal_r(M_cal_r), .load(M_load), .beq(M_beq), .jr(M_jr), .store(M_store));
	wire W_beq,W_cal_r,W_cal_i,W_load,W_store,W_jr,W_jal;
	instr_class W_class (.instr(instr_W), .jal(W_jal), .cal_i(W_cal_i), .cal_r(W_cal_r), .load(W_load), .beq(W_beq), .jr(W_jr), .store(W_store));
	
	wire stallRt,stallRs,stall;
	
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
	assign stallRt = (D_beq&&E_load&&rt_E==rt_D&&rt_D)||(D_beq&&E_cal_i&&rt_E==rt_D&&rt_D)||(D_beq&&E_cal_r&&rd_E==rt_D&&rt_D)||(D_beq&&M_load&&rt_M==rt_D&&rt_D)||
					 (D_cal_r&&E_load&&rt_D==rt_E&&rt_D);
	assign stallRs = (D_beq&&E_load&&rt_E==rs_D&&rs_D)||(D_beq&&E_cal_i&&rt_E==rs_D&&rs_D)||(D_beq&&E_cal_r&&rd_E==rs_D&&rs_D)||(D_beq&&M_load&&rt_M==rs_D&&rs_D)||
					 (D_cal_r&&E_load&&rs_D==rt_E&&rs_D)||(D_cal_i&&E_load&&rs_D==rt_E&&rs_D)||(D_load&&E_load&&rs_D==rt_E&&rs_D)||(D_store&&E_load&&rs_D==rt_E&&rs_D)||
					 (D_jr&&E_load&&rt_E==rs_D&&rs_D)||(D_jr&&E_cal_i&&rt_E==rs_D&&rs_D)||(D_jr&&E_cal_r&&rd_E==rs_D&&rs_D)||(D_jr&&M_load&&rt_M==rs_D&&rs_D);
	assign stall = stallRs||stallRt;
	assign stall_F = ~stall;
	assign stall_D = ~stall;
	assign flush_E = stall;
	
	//forward logic
	assign selRsD = (rs_D==31&&E_jal&&rs_D)?1:
					(rs_D==31&&M_jal&&rs_D)?2:(rs_D==rt_M&&(M_cal_i)&&rs_D)||(rs_D==rd_M&&M_cal_r&&rs_D)?3:
					(rs_D==31&&W_jal&&rs_D)?4:(rs_D==rt_W&&(W_load||W_cal_i)&&rs_D)||(rs_D==rd_W&&W_cal_r&&rs_D)?5:0;
	assign selRtD = (rt_D==31&&E_jal&&rt_D)?1:
					(rt_D==31&&M_jal&&rt_D)?2:(rt_D==rt_M&&(M_cal_i)&&rt_D)||(rt_D==rd_M&&M_cal_r&&rt_D)?3:
					(rt_D==31&&W_jal&&rt_D)?4:(rt_D==rt_W&&(W_load||W_cal_i)&&rt_D)||(rt_D==rd_W&&W_cal_r&&rt_D)?5:0;
	assign selRsE = (rs_E==31&&M_jal&&rs_E)?1:(rs_E==rt_M&&(M_cal_i)&&rs_E)||(rs_E==rd_M&&M_cal_r&&rs_E)?2:
					(rs_E==31&&W_jal&&rs_E)?3:(rs_E==rt_W&&(W_load||W_cal_i)&&rs_E)||(rs_E==rd_W&&W_cal_r&&rs_E)?4:0;
	assign selRtE = (rt_E==31&&M_jal&&rt_E)?1:(rt_E==rt_M&&(M_cal_i)&&rt_E)||(rt_E==rd_M&&M_cal_r&&rt_E)?2:
					(rt_E==31&&W_jal&&rt_E)?3:(rt_E==rt_W&&(W_load||W_cal_i)&&rt_E)||(rt_E==rd_W&&W_cal_r&&rt_E)?4:0;
	assign selRtM = (rt_M==31&&W_jal&&rt_M)?1:(rt_M==rt_W&&(W_load||W_cal_i)&&rt_M)||(rt_M==rd_W&&W_cal_r&&rt_M)?2:0;
/*	wire test_ans;
	assign test_ans=(rs_E==rt_W&&W_cal_i&&rs_E)||(rs_E==rd_W&&W_cal_r&&rs_E);*/
endmodule
