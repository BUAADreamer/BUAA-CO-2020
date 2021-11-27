lui $t0 0xf65b
ori $t1 $0 0xabfe
ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
#rs Tuse=0, Tnew_E=`ALU
addu $t4 $t1 $t3
beq $t4 $t5 end		#cal-beq
subu $t6 $t2 $t3
func:
ori $1 $0 4
subu $31 $31 $1
jr $31				#cal-jr
sw $t4 0($0)
jr $31
end: subu $t6 $t3 $t1
jal func
lui $s0 0x462b
ori $s1 $0 0x336c
subu $s2 $s0 $s1
nop