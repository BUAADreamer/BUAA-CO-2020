ori $1,$1,4
ori $2,$2,10
addu $3,$2,$3
beq $2,$3,next
ori $2,$0,0x3024
jal next
next:
sw $2,0($0)
lw $3,0($0)
jr $2
subu $2,$2,$1
subu $3,$2,$1