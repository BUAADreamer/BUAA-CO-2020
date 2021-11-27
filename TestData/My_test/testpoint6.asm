ori $3,$0,123
ori $4,$0,123
beq $4,$3,nn
addu $9,$3,$3
addu $10,$5,$5
nn:
jal next
ori $5, $0,345
ori $6,$0,789
next:
ori $4,$0,1234567