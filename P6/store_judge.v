`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:57:51 12/01/2020 
// Design Name: 
// Module Name:    store_judge 
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
module store_judge(
    input [1:0] op,
    output reg [3:0] BE,
    input [1:0] A_1_0
    );
	always@(*)begin
		BE=4'b0000;
		case(op)
			2'b00:begin //sw
				BE=4'b1111;
			end
			2'b01:begin  //sh
				BE=(A_1_0[1]==1'b1)?4'b1100:4'b0011;
			end
			2'b10:begin  //sb
				BE=(A_1_0==2'b00)?4'b0001:
				    (A_1_0==2'b01)?4'b0010:
					(A_1_0==2'b10)?4'b0100:
					(A_1_0==2'b11)?4'b1000:
												4'b0000;
			end
			default:begin
				BE=4'b0000;
			end
		endcase
	end

endmodule
