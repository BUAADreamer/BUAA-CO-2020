`timescale 1ns / 1ps
`include "constants.v"
module controller(
		input [5:0] op,
		input [5:0] func,
		output [1:0] regDst,
		output aluSrc,
		output regWrite,
		output memRead,
		output memWrite,
		output [1:0] memToReg,
		output [1:0] extOp,
		output branch,
		output jump,
		output [2:0] aluCtrl,
		output pcSrc
    );
		reg addu=0,subu=0,jr=0;
		reg beq=0,lui=0,ori=0,lw=0,sw=0;
		reg jal=0,j=0;
		reg nop=0;
		always@(*)begin
			addu=0;subu=0;jr=0;
			beq=0;lui=0;ori=0;lw=0;sw=0;
			jal=0;j=0;
			nop=0;
			case(op)
				`R:begin
					case(func)
						`addu:addu=1;
						`subu:subu=1;
						`jr:jr=1;
						default:nop=1;
					endcase
				end
				`beq:beq=1;
				`lui:lui=1;
				`ori:ori=1;
				`lw:lw=1;
				`sw:sw=1;
				`j:j=1;
				`jal:jal=1;
				default:nop=1;
			endcase
		end
		assign regDst = (addu|subu|jr)?2'b01:
					    (jal)?2'b10:2'b00;
		assign aluSrc = lw|sw|ori;
		assign regWrite = addu|subu|lw|lui|ori|jal;
		assign memRead = lw;
		assign memWrite = sw;
		assign memToReg = (jal)?2'b11:
		                  (lw)?2'b01:
						  (lui)?2'b10:
						  2'b00;
		assign extOp = (ori)?2'b01:
					   (lui)?2'b10:
					   2'b00;
	    assign branch = beq;
		assign aluCtrl = (ori)?3'b001:
		                 (addu|lw|sw)?3'b010:
						 (subu|beq)?3'b011:
						 3'b000;
		assign jump = (jal|j);
		assign pcSrc = (jr|jal|j);
endmodule
