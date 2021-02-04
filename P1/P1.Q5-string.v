module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
    reg st=0;//是否是第一个字符
    reg [7:0] lastc;
    reg o;
    reg[3:0] s;
    function isnum();
        input [7:0] c;
        isnum=((c>="0")&&(c<="9"));
    endfunction;
    function isop();
        input [7:0] c;
        isop=((c=="+")||(c=="*"));
    endfunction
    function[1:0] is();
        input [7:0] c;
        begin
            if(isnum(c)) is=1;
            else if(isop(c)) is=2;
            else is=0;
        end
    endfunction
    assign out=o;
    always @(posedge clk,posedge clr) begin
        if(clr) begin
            st=0;
            lastc=0;
            o=0;
            s=0;
        end
        else if(st==0)begin
            st=1;
            if(isnum(in))begin
                s=1;
            end
            else begin
                s=2;
            end
        end
        else begin
            if(s!=2) begin   
                if((is(in)==is(lastc))||(!is(in))) begin
                    s=2;
                end
                else if(isop(in)) begin
                    s=3;
                end
                else begin
                    s=1;
                end
            end
        end
        lastc=in;
        o=(s==1)?1:0;
    end
endmodule
