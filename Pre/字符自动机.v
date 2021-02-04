module id_fsm(
    input [7:0] char,
    input clk,
    output out
);
    integer s=0;
    always@(posedge clk)begin
        case(s)
        0:begin
            if(char>="a"&char<="z"|char>="A"&char<="Z")s<=1;
            else s<=0;
        end
        1:begin
            if(char>="a"&char<="z"|char>="A"&char<="Z")s<=1;
            else if(char>="0"&char<="9")s<=2;
            else s<=0;
        end
        2:begin
            if(char>="0"&char<="9")s<=2;
            else s<=0
        end
    end
    assign out=(s==2);
endmodule