ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
sw $t5 0($0)
ori $t1 $0 0xabfe
lw $t4 0($0)
addu $t1 $t1 $t4	#lw-cal
ori $t0 $0 0x0008
sw $t0 4($t0)
lw $t0 4($t0)		#lw sw
sw $t1 8($t0)


