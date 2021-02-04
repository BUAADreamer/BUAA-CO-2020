`timescale 1ns / 1ps
module IM(
    input [31:0] pc,
    output reg [31:0] instr
    );
	 reg [31:0] instruction [0:4095];
	 reg [11:0] addr;
	 
	 integer file_wr,i;
	 initial begin 
		for(i=0;i<4096;i=i+1)begin
			instruction[i]=0;
		end
		$readmemh("code.txt",instruction);
		$readmemh("code_handler.txt", instruction, 1120, 2047);
	 end
	 
	 always@(*)begin
		addr=pc[13:2]-12'hc00;
		instr=instruction[addr];
	 end
endmodule