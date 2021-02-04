`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:46 11/23/2020 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] d1,
    input [31:0] d2,
	input [3:0] branch,
    output eq,
	output lez,
	output ltz,
	output gez,
	output gtz,
	output equal
    );
	assign eq=(d1==d2);
	assign lez=(($signed(d1))<=0);
	assign ltz=(($signed(d1))<0);
	assign gez=(($signed(d1))>=0);
	assign gtz=(($signed(d1))>0);
	assign equal=(eq&&branch==4'b0001)||(~eq&&branch==4'b0010)||(gtz&&branch==4'b0011)
				 ||(lez&&branch==4'b0100)||(gez&&branch==4'b0101)||(ltz&&branch==4'b0110);
	
endmodule
