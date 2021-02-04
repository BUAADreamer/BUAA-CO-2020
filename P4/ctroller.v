`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:06 11/14/2020 
// Design Name: 
// Module Name:    ctroller 
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
module ctroller(
    input [5:0] op,
	 input [5:0] func,
    output reg [1:0] regDst,
    output reg aluSrc,
    output reg regWrite,
    output reg memRead,
    output reg memWrite,
    output reg [1:0] memToReg,
    output reg extOp,
    output reg branch,
    output reg jump,
    output reg [2:0] aluCtrl,
	 output reg pcSrc
    );
	 always@(*)begin
	 case(op)
		6'b000000:begin  //R instruction
			regDst=1;
			aluSrc=0;
			memRead=0;
			memWrite=0;
			branch=0;
			extOp=0;
			case(func)
			  6'b100001:begin  //addu
				 aluCtrl=3'b010;
				 jump=0;
				 pcSrc=0;
				 memToReg=2'b00;
				 regWrite=1;
			  end
			  6'b100011:begin  //subu
				 aluCtrl=3'b011;
				 jump=0;
				 pcSrc=0;
				 memToReg=2'b00;
				 regWrite=1;
			  end
			  6'b001000:begin  //jr
				 aluCtrl=aluCtrl;
				 jump=0;
				 pcSrc=1;
				 memToReg=memToReg;
				 regWrite=0;
			  end
			  6'b001001:begin  //jalr
				 aluCtrl=aluCtrl;
				 jump=1;
				 pcSrc=1;
				 memToReg=2'b11;
				 regWrite=1;
			  end
			  default:begin
				 jump=0;
				 pcSrc=0;
				 memToReg=memToReg;
				 regWrite=0;
				 aluCtrl=aluCtrl;
			  end
			endcase
		end
		6'b100011:begin  //lw
			regDst=0;
			aluSrc=1;
			regWrite=1;
			memRead=1;
			memWrite=0;
			memToReg=2'b01;
			branch=0;
			aluCtrl=3'b010;
			jump=0;
			extOp=0;
			pcSrc=0;
		end
		6'b101011:begin  //sw
			regDst=0;
			aluSrc=1;
			regWrite=0;
			memRead=0;
			memWrite=1;
			memToReg=memToReg;
			branch=0;
			aluCtrl=3'b010;
			jump=0;
			extOp=0;
			pcSrc=0;
		end
		6'b000100:begin  //beq
			regDst=0;
			aluSrc=0;
			regWrite=0;
			memRead=0;
			memWrite=0;
			memToReg=memToReg;
			branch=1;
			aluCtrl=3'b011;
			jump=0;
			extOp=0;
			pcSrc=0;
		end
		6'b001111:begin  //lui
			regDst=0;
			aluSrc=aluSrc;
			regWrite=1;
			memRead=0;
			memWrite=0;
			memToReg=2'b10;
			branch=0;
			aluCtrl=aluCtrl;
			jump=0;
			extOp=0;
			pcSrc=0;
		end
		6'b001101:begin  //ori
			regDst=0;
			aluSrc=1;
			regWrite=1;
			memRead=0;
			memWrite=0;
			memToReg=2'b00;
			branch=0;
			aluCtrl=3'b001;
			jump=0;
			extOp=1;
			pcSrc=0;
		end
		6'b000011:begin  //jal
			regDst=2;
			aluSrc=aluSrc;
			regWrite=1;
			memRead=0;
			memWrite=0;
			memToReg=2'b11;
			branch=0;
			aluCtrl=aluCtrl;
			jump=1;
			extOp=0;
			pcSrc=0;
		end
		default:begin
			regDst=regDst;
			aluSrc=aluSrc;
			regWrite=regWrite;
			memRead=memRead;
			memWrite=memWrite;
			memToReg=memToReg;
			branch=branch;
			aluCtrl=aluCtrl;
			jump=jump;
			extOp=extOp;
			pcSrc=pcSrc;
		end
	 endcase
	 end
endmodule
