ori $t1,$t1,4
ori $t2,$t2,8
sw $t2,0($t1)

lw $t2,0($t1)
addu $t1,$t1,$t2

lw $t2,0($t1)
addu $t1,$t3,$t2

addu $t3,$t4,$t5
sw $t3,0($t1)

ori $t3,$t3,12
sw $t3,0($t2)
lw $t4,0($t2)

subu $1,$1,$1
ori $12,$12,5
ori $1,$1,16
addu $16,$12,$1
addu $18,$16,$1
sw $18,16($1)

