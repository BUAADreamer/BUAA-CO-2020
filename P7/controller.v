`timescale 1ns / 1ps
`include "constants.v"
module controller(
		input [31:0] instr,
		input [5:0] op,
		input [5:0] func,
		output [1:0] regDst,
		output aluSrc,
		output regWrite,
		output memRead,
		output memWrite,
		output [2:0] memToReg,
		output extOp,
		output [3:0] branch,
		output jump,
		output [3:0] aluCtrl,
		output pcSrc,
		output shamt_or_rs,
		output [1:0] mord,
		output wHiLo,
		output weMD,
		output mdStart,
		output [2:0] extRdOp,
		output [1:0] storeOp,
		output signmd,
		output rHiLo,
		output reg illcode,
		output cal_i,cal_r,cal_md,st,ld,b,jump1,w_md,r_md,
		output wecp0,
		output j_b,
		output reg syscall
    );
		wire instr_20_16;
		assign instr_20_16=instr[20:16];
		reg addu=0,subu=0,sub,add,AND,OR,XOR,NOR,sll,sllv,slt,sltu,sra,srav,srl,srlv;
		reg jr=0,jalr,jal=0,j=0;
		reg lui,ori,addi,addiu,andi,xori,slti,sltiu;
		reg beq=0,bne,bgtz,blez,bgez,bltz;
		reg mfhi,mflo,mthi,mtlo,mult,multu,div,divu;
		reg sw,sb,sh;
		reg lw,lb,lbu,lh,lhu;
		reg nop=0;
		reg eret,mtc0,mfc0;
		always@(*)begin
			addu=0;subu=0;sub=0;add=0;AND=0;OR=0;XOR=0;NOR=0;
			sll=0;sllv=0;slt=0;sltu=0;sra=0;srav=0;srl=0;srlv=0;
			beq=0;bne=0;bgtz=0;blez=0;bgez=0;bltz=0;
			jr=0;jalr=0;jal=0;j=0;
			sw=0;sb=0;sh=0;
			lw=0;lb=0;lbu=0;lh=0;lhu=0;
			mfhi=0;mflo=0;mthi=0;mtlo=0;mult=0;multu=0;div=0;divu=0;
			lui=0;ori=0;addi=0;addiu=0;andi=0;xori=0;slti=0;sltiu=0;
			nop=0;eret=0;mtc0=0;mfc0=0;illcode=0;syscall=0;
			case(op)
				`R:begin
					case(func)
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
						default:begin
							if(instr==32'b0)nop=1;
							else illcode=1;
						end
						`syscall:syscall=1;
					endcase
				end
				`COP0:begin
					if(instr==`instr_eret)eret=1;
					else if(instr[`rs]==`mfc0rs)begin
						mfc0=1;
					end
					else if(instr[`rs]==`mtc0rs)begin
						mtc0=1;
					end	
					else illcode=1;
				end
				`beq:beq=1;
				`bne:bne=1;
				`bgtz:bgtz=1;
				`blez:blez=1;
				`bgeltz:begin
					if(instr_20_16==0)bltz=1;
					else if(instr_20_16==1)bgez=1;
					else illcode=1;
				end
				`spe:begin
					if(instr[`fun]==`syscall)syscall=1;
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
				default:illcode=1;
			endcase
		end
		assign cal_i=lui|ori|addi|addiu|andi|xori|slti|sltiu;
		assign cal_r=add|addu|sub|subu|AND|OR|XOR|NOR|sll|sllv|sra|srav|srl|srlv|slt|sltu;
		assign cal_md=mult|multu|div|divu;
		assign r_md=mflo|mfhi;
		assign w_md=mthi|mtlo;
		assign jump1=j|jalr|jal|jr;
		assign b=beq|bgtz|blez|bgez|bltz|bne;
		assign ld=lw|lb|lbu|lh|lhu;
		assign st=sw|sb|sh;
		
		assign regDst = (cal_r|jalr|r_md)?2'b01:
					    (jal)?2'b10:2'b00;
		assign aluSrc = cal_i|st|ld;
		assign regWrite = cal_r|cal_i|r_md|jal|jalr|ld|mfc0;
		assign memRead = ld;
		assign memWrite = st;
		assign memToReg = (ld)?3'b001:
						  (jump1)?3'b010:
						  (mfhi|mflo)?3'b011:
						  (mfc0)?3'b100:
						  3'b000;
		assign extOp = (xori|andi|ori)?1:0;
	    assign branch = beq?4'b0001:
						bne?4'b0010:
						bgtz?4'b0011:
						blez?4'b0100:
						bgez?4'b0101:
						bltz?4'b0110:4'b0000;
										
		assign aluCtrl = (AND|andi)?4'b0000:
						 (ori|OR)?4'b0001:
		                 (addu||add||addi||addiu||ld||st)?4'b0010:
						 (subu|sub)?4'b0011:
						 (NOR)?4'b0100:
						 (XOR|xori)?4'b0101:
						 (sll|sllv)?4'b0110:
						 (srl|srlv)?4'b0111:
						 (sra|srav)?4'b1000:
						 (slt|slti)?4'b1001:
						 (sltu|sltiu)?4'b1010:
						 (lui)?4'b1011:
						 4'b0000;
		assign jump = (jal|j);
		assign pcSrc = (jr|jal|j|jalr);
		assign shamt_or_rs=srl|sra|sll;
		assign extRdOp=lbu?3'b001:
					   lb?3'b010:
					   lhu?3'b011:
					   lh?3'b100:3'b000;
		assign storeOp=sh?2'b01:sb?2'b10:2'b00;
		assign mdStart=cal_md;
		assign mord=(div|divu)?2'b01:2'b00;
		assign wHiLo=mtlo;
		assign weMD=w_md;
		assign signmd=mult|div;	  
		assign rHiLo=mflo;
		assign wecp0=mtc0;
		assign j_b=jump1||b;
endmodule
