ori $2, 10
ori $3, 5
subu $1, $3, $2
addu $4, $1, $2
subu $4, $3, $2
ori $4, 1
subu $1, $2, $3
lui $1, 10
subu $1, $2, $3
ori $2, 10
sw $1, 0($0)
subu $1, $2, $3
sw $1, 4($0)
subu $1, $2, $3
subu $4, $2, $3
beq $1, $4 QAQ
ori $t0, 10
ori $t1, 10
QAQ:
ori $t2, 10
subu $1, $2, $3

ori $2, 10
ori $0, 10
subu $1, $0, $2
subu $0, $2, $1
