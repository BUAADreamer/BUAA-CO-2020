lui $t0 0xf65b
ori $t1 $0 0xabfe
ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
sw $t5 0($0)
#rs Tuse=0, Tnew_E=`DM
lw $t4 0($0)	#sw-lw
beq $t4 $t5 end #lw-beq
func:
sw $31 4($0)
subu $31 $31 4
beq $t4 $t5 end
lui $t4 0x83ba
nop
lw $31 4($0)	#lw-jr
jr $31
addu $t4 $t0 $t2
end:subu $t4 $t3 $t1
jal func
addu $t6 $t4 $t5
ori $s0 $0 0xfa6b
addu $s1 $t4 $s0