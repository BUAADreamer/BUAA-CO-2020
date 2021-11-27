ori  $3, $0,203
addu $4,$0, 203 #ÒªÔÝÍ£
beq $3,$4 next
ori $5,123
ori $6,123

next:
jal end
ori $8,$31,0
ori $9,$31,0
end:
ori $10,$31,0