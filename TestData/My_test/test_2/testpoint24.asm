ori $3,$0,123
addu $4,$0,$3
beq $4,$3,next1
nop
ori $9,$0,99
next1:
addu $5,$4,$0
ori $6,$0,123
beq $6,$5,next2
nop
ori $9,$0,88
next2:
sw $6,0($0)
lw $7,0($0)
lw $8,0($0)
beq $7,$8,next3
nop
ori $9,$0,77
next3:
ori $9,$0,100