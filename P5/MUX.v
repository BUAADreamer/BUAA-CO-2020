module writeASel(
		input [4:0] rt,
		input [4:0] rd,
		input [1:0] regDst,
		output reg [4:0] WA
    );
		always@(*)begin
			case(regDst)
			0:begin
				WA=rt;
			end
			1:begin
				WA=rd;
			end
			2:begin
				WA=5'b11111;
			end
			default:begin
				WA=WA;
			end
			endcase
		end
endmodule

module aluDSel(
		input [31:0] rtData,
		input [31:0] imm32,
		input aluSrc,
		output [31:0] aluDataB
);
		assign aluDataB=(aluSrc)?imm32:rtData;
endmodule

module writeDSel(
	input [31:0] aluOut,
	input [31:0] dmRd,
	input [31:0] lui_ext,
	input [31:0] pcPlus8,
	input [1:0] memToReg,
	output reg [31:0] writeD
);
	always@(*)begin
		case(memToReg)
			2'b00:begin
				writeD=aluOut;
			end
			2'b01:begin
				writeD=dmRd;
			end
			2'b10:begin
				writeD=lui_ext;
			end
			2'b11:begin
				writeD=pcPlus8;
			end
			default:begin
				writeD=0;
			end
		endcase
	end
endmodule


module aluRetSel(
	input lui,
	input [31:0] ext_E,
	input [31:0] aluRet_E,
	output reg [31:0] aluRet_M 
);
	always@(*) begin
		case(lui)
			0:aluRet_M=aluRet_E;
			1:aluRet_M=ext_E;
			default:aluRet_M=aluRet_E;
		endcase
	end
endmodule
