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
	input [15:0] imm16,
	input [31:0] pcPlus4,
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
				writeD={imm16,{16{1'b0}}};
			end
			2'b11:begin
				writeD=pcPlus4;
			end
			default:begin
				writeD=0;
			end
		endcase
	end
endmodule
