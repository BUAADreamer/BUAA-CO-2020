`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:48:41 11/25/2020 
// Design Name: 
// Module Name:    instr_class 
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
`include "constants.v"
module instr_class(
    input [31:0] instr,
    output reg jal,
    output cal_i,
    output cal_r,
    output load,
	output b,
	output reg jr,
	output reg jalr,
	output store,
	output md,
	output cal_md,
	output r_md,
	output w_md,
	output jump
    );
	reg addu=0,subu=0,sub,add,AND,OR,XOR,NOR,sll,sllv,slt,sltu,sra,srav,srl,srlv;
	reg j=0;
	reg lui,ori,addi,addiu,andi,xori,slti,sltiu;
	reg beq=0,bne,bgtz,blez,bgez,bltz;
	reg mfhi,mflo,mthi,mtlo,mult,multu,div,divu;
	reg sw,sb,sh;
	reg lw,lb,lbu,lh,lhu;
	reg nop=0;
	always@(*)begin
		addu=0;subu=0;sub=0;add=0;AND=0;OR=0;XOR=0;NOR=0;
		sll=0;sllv=0;slt=0;sltu=0;sra=0;srav=0;srl=0;srlv=0;
		beq=0;bne=0;bgtz=0;blez=0;bgez=0;bltz=0;
		jr=0;jalr=0;jal=0;j=0;
		sw=0;sb=0;sh=0;
		lw=0;lb=0;lbu=0;lh=0;lhu=0;
		mfhi=0;mflo=0;mthi=0;mtlo=0;mult=0;multu=0;div=0;divu=0;
		lui=0;ori=0;addi=0;addiu=0;andi=0;xori=0;slti=0;sltiu=0;
		nop=0;
		case(instr[`op])
			`R:begin
				case(instr[`fun])
					`addu:addu=1;
					`subu:subu=1;
					`sub:sub=1;
					`add:add=1;
					`AND:AND=1;
					`OR:OR=1;
					`XOR:XOR=1;
					`NOR:NOR=1;	
					`R:begin
						if(instr!=0)sll=1;
						else nop=1;
					end
					`sllv:sllv=1;
					`slt:slt=1;
					`sltu:sltu=1;
					`sra:sra=1;
					`srav:srav=1;
					`srl:srl=1;
					`srlv:srlv=1;
					`jr:jr=1;
					`jalr:jalr=1;
					`mfhi:mfhi=1;
					`mflo:mflo=1;
					`mthi:mthi=1;
					`mtlo:mtlo=1;
					`mult:mult=1;
					`multu:multu=1;
					`div:div=1;
					`divu:divu=1;
					default:nop=1;
				endcase
			end
			`beq:beq=1;
			`bne:bne=1;
			`bgtz:bgtz=1;
			`blez:blez=1;
			`bgeltz:begin
				if(instr[20:16]==5'b00000)bltz=1;
				else if(instr[20:16]==5'b00001)bgez=1;
			end
			`lui:lui=1;
			`ori:ori=1;
			`addi:addi=1;
			`addiu:addiu=1;
			`andi:andi=1;
			`xori:xori=1;
			`slti:slti=1;
			`sltiu:sltiu=1;
			`lw:lw=1;
			`lb:lb=1;
			`lbu:lbu=1;
			`lh:lh=1;
			`lhu:lhu=1;
			`sw:sw=1;
			`sb:sb=1;
			`sh:sh=1;
			`j:j=1;
			`jal:jal=1;
			default:nop=1;
		endcase
	end
	assign cal_i=lui|ori|addi|addiu|andi|xori|slti|sltiu;
	assign cal_r=add|addu|sub|subu|AND|OR|XOR|NOR|sll|sllv|sra|srav|srl|srlv|slt|sltu;
	assign cal_md=mult|multu|div|divu;
	assign r_md=mflo|mfhi;
	assign w_md=mthi|mtlo;
	assign md=w_md|cal_md|r_md;
	assign jump=j|jalr|jal|jr;
	assign b=beq|bgtz|blez|bgez|bltz|bne;
	assign load=lw|lb|lbu|lh|lhu;
	assign store=sw|sb|sh;
endmodule
