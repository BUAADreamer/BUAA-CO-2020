`timescale 1ns / 1ps
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output [1:0] format_type
    );
	function isnum;
        input[7:0] a;
        isnum=(a>=48&&a<=57);
    endfunction

    function islower;
        input[7:0] a;
        islower=(a<=122&&a>=97);
    endfunction

    function ishex;
        input[7:0] a;
        ishex=((a>=48&&a<=57)||(a>=97&&a<=102));
    endfunction

    integer s=0,hex=0,hex1=0,dec=0,dec1=0,hex2=0,s2=0;
    reg[1:0] s1=0;
    reg[7:0] ch;
    assign format_type=s2;
    always @(posedge clk) begin   
        if(reset) begin
            s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;
        end
        ch=char;
        case(s)
        0:begin
            if(ch=="^")
                s=1;
        end  
        1:begin     //^
            if(isnum(ch)) begin
                s=2;
                dec=1;
            end
            else if(ch=="^") s=1;
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        2:begin     //^dec
            if(isnum(ch)) begin
                dec=dec+1;
                if(dec>4) begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
            else begin
                if(ch=="@") s=3;
                else if(ch=="^") s=1;   
                else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
        end
        3:begin     //^dec@
            if(ishex(ch)) begin
                s=4;
                hex=1;
            end
            else if(ch=="^") s=1;
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        4:begin     //^dec@hex8
            if(ishex(ch)) begin
               hex=hex+1;
               if(hex>8) begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
            else begin
                if(hex==8&&ch==":") s=5;
                else if(ch=="^") s=1;
                else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
        end
        5:begin     //^dec@hex8:
            if(ch==" ") s=6;
            else if(ch=="$") s=7;
            else if(ch=="*") s=9;
            else if(ch=="^") s=1;
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        6:begin     //^dec@hex8:' '
            if(ch=="$") s=7;
            else if(ch=="*") s=9; 
            else if(ch=="^") s=1;
            else if(ch!=" ") begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        7:begin     //^dec@hex8:' '$
            s1=1;
            if(isnum(ch)) begin
                dec1=1;
                s=8;
            end
            else if(ch=="^") s=1;   //^dec@hex8:' '$dec
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        8:begin     //^dec@hex8:' '$dec
            if(isnum(ch)) begin
                dec1=dec1+1;
                if(dec1>4) begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
            else begin
                if(ch==" ") s=11;
                else if(ch=="<") s=12;
                else if(ch=="^") s=1;
                else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
        end
        9:begin     //^dec@hex8:' '*
            s1=2;
            if(ishex(ch)) begin
                hex1=1;
                s=10;
            end
            else if(ch=="^") s=1;
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        10:begin    //^dec@hex8:' '*hex8
            if(ishex(ch)) begin
                hex1=hex1+1;
                if(hex1>8) begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
            else begin
                if(ch==" "&&hex1==8) s=11;
                else if(ch=="<"&&hex1==8) s=12;
                else if(ch=="^") s=1;
                else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
        end
        11:begin    //^dec@hex8:' '*hex8
            if(ch=="<") s=12;
            else if(ch=="^") s=1;
            else if(ch!=" ") begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        12:begin
            if(ch=="=") s=13;
            else if(ch=="^") s=1;
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        13:begin
            if(ishex(ch)) begin
                hex2=1;
                s=15;
            end
            else if(ch==" ") s=14;
            else if(ch=="^") s=1;
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        14:begin
            if(ishex(ch)) begin 
                s=15;
                hex2=1;
            end
            else if(ch=="^") s=1;
            else if(ch!=" ") begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        15:begin
            if(ishex(ch)) begin
                hex2=hex2+1;
                if(hex2>8) begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
            else begin
                if(hex2==8&&ch=="#") s=16;
                else if(ch=="^") s=1;
                else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
            end
        end
        16:begin
            if(ch=="^") s=1;
            else begin s=0;s2=0;s1=0;hex=0;dec=0;dec1=0;hex1=0;hex2=0;end
        end
        endcase
        s2=(s==16)?s1:0;
    end
endmodule
