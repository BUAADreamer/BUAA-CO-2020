//R

//opcode
`define R 6'b000000
//funcode
`define addu 6'b100001
`define subu 6'b100011
`define jr 6'b001000

//I
//opcode
`define lw 6'b100011
`define sw 6'b101011
`define beq 6'b000100
`define lui 6'b001111
`define ori 6'b001101

//J
//opcode
`define jal 6'b000011
`define j 6'b000010



//wire select of instr
`define fun 5:0
`define op 31:26
`define rs 25:21
`define rt 20:16
`define rd 15:11
`define imm26 25:0
`define imm16 15:0
