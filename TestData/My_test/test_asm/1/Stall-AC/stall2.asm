ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
sw $t5 0($0)
ori $t1 $0 0xabfe
lw $t4 0($0)
addu $t1 $t4 $t1	#lw-cal
ori $t0 $0 0x0008


