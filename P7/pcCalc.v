`timescale 1ns / 1ps
module pcCalc(
    input [31:0] pc,
	input [31:0] pc_D4,
    input [31:0] imm,
	 input [31:0] rsData,
    output reg [31:0] npc,
	 input [3:0] branch,
	 input jump,
	 input zero,
	 input pcSrc,
	 input [25:0] imm26
    );
	 always@(*)begin
		case(pcSrc)
			0:begin
				if( zero&&(branch!=0) )begin
					npc=pc_D4+(imm<<2);
				end
				else begin
					npc=pc+4;
				end
			end
			1:begin
				if(jump)begin
					npc={pc_D4[31:28],imm26,{2{1'b0}}};
				end
				else begin 
					npc=rsData;
				end
			end
			default:npc=32'h00003000;
		endcase
	 end
endmodule