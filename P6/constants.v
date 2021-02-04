//R
//opcode
`define R 6'b000000
//funcode
//cal_r
`define add 6'b100000
`define addu 6'b100001
`define sub 6'b100010
`define subu 6'b100011
`define AND 6'b100100
`define OR 6'b100101
`define NOR 6'b100111
`define XOR 6'b100110 

`define sll 6'b000000
`define sllv 6'b000100
`define slt 6'b101010
`define sltu 6'b101011
`define sra 6'b000011
`define srav 6'b000111
`define srl 6'b000010
`define srlv 6'b000110
//jump to rs
`define jr 6'b001000
`define jalr 6'b001001
//hi and lo
`define mfhi 6'b010000
`define mflo 6'b010010
`define mthi 6'b010001
`define mtlo 6'b010011
`define mult 6'b011000
`define multu 6'b011001
`define div 6'b011010
`define divu 6'b011011

//I
//opcode
//store and load
`define lw 6'b100011
`define lb 6'b100000
`define lbu 6'b100100
`define lh 6'b100001
`define lhu 6'b100101
`define sw 6'b101011
`define sb 6'b101000
`define sh 6'b101001
//br
`define beq 6'b000100
`define bne 6'b000101
`define bgtz 6'b000111
`define blez 6'b000110
`define bgeltz 6'b000001  
//bgeltz:20:16 to decide the instr
`define bgez 5'b00001
`define bltz 5'b00000

//cal_i
`define lui 6'b001111
`define ori 6'b001101
`define addi 6'b001000
`define addiu 6'b001001
`define andi 6'b001100
`define xori 6'b001110
`define slti 6'b001010
`define sltiu 6'b001011

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
`define shamt 10:6
`define imm26 25:0
`define imm16 15:0
