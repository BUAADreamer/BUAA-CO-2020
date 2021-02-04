`timescale 1ns / 1ps
module ALU(
    input [31:0] dataA,
    input [31:0] dataB,
    input [3:0] aluCtrl,
    output reg [31:0] result,
    output reg zero,
	input [4:0] shamt
    );
	 always@(*)begin
		case(aluCtrl)
			4'b0000:begin   //&
			  result = dataA&dataB;
			  zero = result==0;
			end
			4'b0001:begin	 //|
			  result = dataA|dataB;
			  zero = result==0;
			end
			4'b0010:begin   //+
			  result = dataA+dataB;
			  zero = result==0;
			end
			4'b0011:begin   //-
			  result = dataA-dataB;
			  zero = result==0;
			end
			4'b0100:begin   //nor
			  result = ~(dataA | dataB);
			end
			4'b0101:begin   //xor
			  result = dataA^dataB;
			end
			4'b0110:begin   //logical left shift
			  result = dataB<<shamt;
			end
			4'b0111:begin	//logical right shift
			  result = dataB>>shamt;
			end
			4'b1000:begin	//suanshu right logical
			  result = ($signed(dataB))>>>shamt;
			end
			4'b1001:begin   //signed A<B -->1 slt slti 
			  result = $signed(dataA)<$signed(dataB)?32'b1:32'b0;
			end
			4'b1010:begin   //unsigned A<B -->1 sltu sltiu
		      result = dataA<dataB?32'b1:32'b0;
			end
			4'b1011:begin   //lui
			  result = {dataB[15:0],{16{1'b0}}};
			end
			default:begin
			  result = result;
			  zero = 0;
			end
		endcase
	 end
endmodule