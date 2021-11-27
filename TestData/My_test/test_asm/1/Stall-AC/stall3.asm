lui $t0 0xf65b
ori $t1 $0 0xabfe
ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
addu $t4 $t1 $t3
beq $t5 $t4 end		#cal-beq
subu $t6 $t2 $t3
ori $1 $0 4
subu $31 $31 $1
end: subu $t6 $t3 $t1
sw $t6 0($0)
lw $s0 0($0)
end1:lw $s1 0($0)
beq $s0 $s1 end1
ori $s0 $s1 0x619f
