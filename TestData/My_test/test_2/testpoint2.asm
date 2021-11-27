ori $3,$0,123
ori $5, $0, 234
ori $4,$0,123
beq $4,$3,next
addu $30,$30,$5
addu $31,$31,$5
next:
addu $t6,$6,$5