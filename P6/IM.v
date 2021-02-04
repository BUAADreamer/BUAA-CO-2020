`timescale 1ns / 1ps
module IM(
    input [31:0] pc,
    output reg [31:0] instr
    );
	 reg [31:0] instruction [0:4095];
	 reg [11:0] addr;
	 
	 integer file_wr;
	 initial begin 
		$readmemh("code.txt",instruction);
	 end
	 
	 always@(*)begin
		addr=pc[13:2]-12'hc00;
		instr=instruction[addr];
	 end
endmodule