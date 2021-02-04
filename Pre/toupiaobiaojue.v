module toupiaobiaojue(
    input A,
    input B,
    input C,
    output Y
);

assign Y=(A&B)|(A&C)|(B&C);

endmodule