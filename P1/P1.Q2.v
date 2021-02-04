module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output reg [31:0] C
    );


always@(*) begin
    case(ALUOp) 
        0: begin
            C=A+B;
        end
        1: begin
            C=A-B;
        end
        2: begin
            C=A&B;
        end
        3: begin
            C=A|B;
        end
        4: begin
            C=A>>B;
        end
        5: begin
            C=($signed(A))>>>B;
        end
        default: begin
            C=C;
        end
    endcase
end

endmodule
