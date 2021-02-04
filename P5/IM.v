`timescale 1ns / 1ps
module IM(
    input [31:0] pc,
    output reg [31:0] instr
    );
	 reg [31:0] instruction [0:1023];
	 reg [9:0] addr;
	 
	 integer file_wr;
	 initial begin 
		$readmemh("code.txt",instruction);
	 end
	 
	 always@(*)begin
		addr=pc[11:2];
		instr=instruction[addr];
	 end
endmodule