`timescale 1ns / 1ps
module ALU(
    input [31:0] dataA,
    input [31:0] dataB,
    input [2:0] aluCtrl,
    output reg [31:0] result,
    output reg zero
    );
	 always@(*)begin
		case(aluCtrl)
			3'b000:begin   //&
			  result = dataA&dataB;
			  zero = result==0;
			end
			3'b001:begin	 //|
			  result = dataA|dataB;
			  zero = result==0;
			end
			3'b010:begin   //+
			  result = dataA+dataB;
			  zero = result==0;
			end
			3'b011:begin   //-
			  result = dataA-dataB;
			  zero = result==0;
			end
			default:begin
			  result = result;
			  zero = 0;
			end
		endcase
	 end
endmodule