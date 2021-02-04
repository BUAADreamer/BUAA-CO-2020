`timescale 1ns / 1ps
module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
	reg [3:0] s;
	reg [1:0] o;
	assign out=o;
    reg [7:0] ch;

    initial begin
        s=0;
		  o=0;
        ch=0;
    end

always @(posedge clk) begin
    ch=char;
    if(s==0) begin
        if((ch>=65&&ch<=90)||(ch>=97&&ch<=122)) begin
            s<=1;	
            o<=0;
        end
        else begin
            o<=0;
        end
    end
    else if (s==1) begin
        if((ch>=65&&ch<=90)||(ch>=97&&ch<=122)) begin
            s<=1;
				o<=0;
        end
        else if(ch>=48&&ch<=57) begin
            s<=2;
				o<=1;
        end
        else begin
            s<=0;
				o<=0;
        end
    end
	else begin
        if(ch>=48&&ch<=57) begin
            s<=2;
				o<=1;
        end
        else begin
            s<=0;
				o<=0;
        end
    end
end
	 
endmodule
