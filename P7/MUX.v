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
	input [31:0] pcPlus8,
	input [2:0] memToReg,
	input [31:0] mdOut_W,
	input [31:0] cp0rd_W,
	output reg [31:0] writeD
);
	always@(*)begin
		case(memToReg)
			3'b000:begin
				writeD=aluOut;
			end
			3'b001:begin
				writeD=dmRd;
			end
			3'b010:begin
				writeD=pcPlus8;
			end
			3'b011:begin
				writeD=mdOut_W;
			end
			3'b100:begin
				writeD=cp0rd_W;
			end
			default:begin
				writeD=0;
			end
		endcase
	end
endmodule

module hiloSel(
	input [31:0] HI,
	input [31:0] LO,
	input sel,
	output [31:0] mdOut_E
);
	assign mdOut_E=sel==1?LO:HI;
endmodule

module shrsSel(
	input [4:0] shamt,
	input [4:0] rs_4_0,
	input sel,
	output [4:0] shamt_out
);
	assign shamt_out=sel==1?shamt:rs_4_0;
	
endmodule
