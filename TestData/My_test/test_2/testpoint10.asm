lui $3, 3
ori $2, 10
addu $1, $2, $3
lui $3, 3
ori $2, 10
subu $1, $3, $2
ori $4, 10
ori $5, 10
beq $4, $5 QAQ
ori $6, 10
ori $7, 100
QAQ:
ori $7, 40
sw $7, 0($7)
lw $7, 0($7)
