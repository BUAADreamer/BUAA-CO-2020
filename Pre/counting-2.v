`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:14 10/01/2020 
// Design Name:    
// Module Name:    code 
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
module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output [63:0] Output0,
    output [63:0] Output1
    );
	reg [1:0] cnt;
	reg [63:0] o0;
	reg [63:0] o1;
initial begin
	o0=0;
	o1=0;
   cnt=0;
end
assign Output0=o0;
assign Output1=o1;
always @(posedge Clk) begin
	 if(Reset) begin
		cnt=0;
		o0=0;
		o1=0;
	 end
	 else if(En) begin
		if(Slt==0) begin
			o0=o0+1;
		end
		else begin
            cnt=cnt+1;
			if(cnt==0) begin
				o1=o1+1;
			end
		end
	 end
end

endmodule
