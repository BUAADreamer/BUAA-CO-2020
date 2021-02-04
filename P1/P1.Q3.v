`timescale 1ns / 1ps
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output reg [31:0] ext
    );
    reg [31:0] t;
    always@(*) begin
        case(EOp) 
            0:begin
                ext={{16{imm[15]}},imm};
            end
            1:begin
                ext={{16{0}},imm};
            end
            2:begin
                ext={imm,{16{0}}};
            end
            3:begin
                t={{16{imm[15]}},imm};
                ext=t<<2;
            end
        endcase
    end

endmodule
