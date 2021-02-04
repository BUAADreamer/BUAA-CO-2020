module forRsD(
	  input [2:0] selRsD,
	  input [31:0] grf_RD1,
	  input [31:0] pc_E8,
	  input [31:0] aluRet_M,
	  input [31:0] pc_M8,
	  input [31:0] writeData_W,
	  input [31:0] pc_W8,
	  output reg [31:0] for_rs_D
	);
	always@(*)begin
		case(selRsD) 
			0:for_rs_D=grf_RD1;
			1:for_rs_D=pc_E8;
			2:for_rs_D=pc_M8;
			3:for_rs_D=aluRet_M;
			4:for_rs_D=pc_W8;
			5:for_rs_D=writeData_W;
			default:for_rs_D=0;
		endcase
	end
endmodule

module forRtD(
	  input [2:0] selRtD,
	  input [31:0] grf_RD2,
	  input [31:0] pc_E8,
	  input [31:0] aluRet_M,
	  input [31:0] pc_M8,
	  input [31:0] writeData_W,
	  input [31:0] pc_W8,
	  output reg [31:0] for_rt_D
	);
	always@(*)begin
		case(selRtD) 
			0:for_rt_D=grf_RD2;
			1:for_rt_D=pc_E8;
			2:for_rt_D=pc_M8;
			3:for_rt_D=aluRet_M;
			4:for_rt_D=pc_W8;
			5:for_rt_D=writeData_W;
			default:for_rt_D=0;
		endcase
	end
endmodule

module forRsE(
	  input [2:0] selRsE,
	  input [31:0] aluRet_M,
	  input [31:0] pc_M8,
	  input [31:0] writeData_W,
	  input [31:0] pc_W8,
	  input [31:0] rsD_E,
	  output reg [31:0] for_rs_E
	);
	always@(*)begin
		case(selRsE)
			0:for_rs_E=rsD_E;
			1:for_rs_E=pc_M8;
			2:for_rs_E=aluRet_M;
			3:for_rs_E=pc_W8;
			4:for_rs_E=writeData_W;
			default:for_rs_E=0;
		endcase
	end
endmodule

module forRtE(
	  input [2:0] selRtE,
	  input [31:0] aluRet_M,
	  input [31:0] pc_M8,
	  input [31:0] writeData_W,
	  input [31:0] pc_W8,
	  input [31:0] rtD_E,
	  output reg [31:0] for_rt_E
	);
	always@(*)begin
		case(selRtE)
			0:for_rt_E=rtD_E;
			1:for_rt_E=pc_M8;
			2:for_rt_E=aluRet_M;
			3:for_rt_E=pc_W8;
			4:for_rt_E=writeData_W;
			default:for_rt_E=0;
		endcase
	end
endmodule

module forRtM(
	  input [2:0] selRtM,
	  input [31:0] writeData_W,
	  input [31:0] pc_W8,
	  input [31:0] rt_M,
	  output reg [31:0] for_rt_M
	);
	always@(*)begin
		case(selRtM)
			0:for_rt_M=rt_M;
			1:for_rt_M=pc_W8;
			2:for_rt_M=writeData_W;
			default:for_rt_M=0;
		endcase
	end
endmodule
