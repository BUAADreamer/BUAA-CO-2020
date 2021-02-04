`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:05 12/01/2020 
// Design Name: 
// Module Name:    MULT_DIV 
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
module MULT_DIV(
    input reset,
    input clk,
    input start,
    output reg busy,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] HI,
	output reg [31:0] LO,
	input sign,
	input op,
	input WE,
	input write_sel
    );
	integer cnt=0;
	reg [63:0] ret=0;
	reg dmop=0;
	always@(posedge clk)begin
		if(reset)begin
			HI<=0;
			LO<=0;
			cnt<=0;
			ret<=0;
			busy<=0;
			dmop<=0;
		end
		else begin
			if(start&&cnt==0)begin
				case(op)
					0:begin
						if(sign==0)begin
						ret<=A*B;
						dmop<=0;
						end
						else begin
						ret<=($signed(A))*($signed(B));
						dmop<=0;
						end
					end
					1:begin
						if(sign==0)begin
							ret<={A%B,A/B};
							dmop<=1;
						end
						else begin
							ret<={($signed(A))%($signed(B)),($signed(A))/($signed(B))};
							dmop<=1;
						end
					end
					default:begin
						cnt<=0;
						ret<=0;
						busy<=0;
						dmop<=0;
					end
				endcase
				cnt<=1;
				busy<=1;
			end
			else if(cnt==1)begin
				HI<=ret[63:32];
				LO<=ret[31:0];
				busy<=1;
				cnt<=cnt+1;
			end
			else if(cnt>1)begin
				cnt<=cnt+1;
				case(dmop)
				0:begin
					if(cnt<=4)begin
						busy<=1;
					end
					else begin
						busy<=0;
						cnt<=0;
					end
				end
				1:begin
					if(cnt<=9)begin
						busy<=1;
					end
					else begin
						busy<=0;
						cnt<=0;
					end
				end
				default:begin
					cnt<=0;
					busy<=0;
				end
				endcase
			end	
			
			if(WE&&~busy)begin
				case(write_sel)
					0:HI<=A;
					1:LO<=A;
					default:LO<=0;
				endcase
			end
		end
	end

endmodule
