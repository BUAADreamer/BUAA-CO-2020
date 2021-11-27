lui $t0 0xf65b
ori $t1 $0 0xabfe
lui $t4 0xaf78
tiao:
ori $t2 $0 0x3018
addu $t5 $t1 $t3
beq $t4 $t5 end
lui $t3 0x49bf
j tiao
addu $t4 $t1 $t3
addu $t4 $t4 $t3
end:
subu $t5 $t1 $t2
#addu $t4 $t4 $t3
ori $t3 $0 0x3044
func:
beq $t3 $31 ha		#jal + delay + beq
addu $t4 $t4 $t2
ori $t5 $t3 0x6349
jal func
addu $t5 $t2 $t3
subu $t1 $t2 $t5
ha:
subu $t4 $t4 $0
addu $t5 $0 $t4
beq $t4 $t5 end6	#cal + x + beq
subu $t4 $t5 $t3
addu $t6 $t2 $t3
j ha
end6:
ori $t3 $t4 0x26cb
ori $1 $0 48
addu $ra $ra, $1
lui $2 0x41ba
jr $ra			#cal + x + jr
addu $1 $0 $t3
subu $t4 $t4 $t1
ori $s0 $0 24
addu $ra $ra $s0
stein:jr $ra
addu $t4 $t5 $t1
subu $t2 $t4 $t3
ori $1 $0 4
jal stein		#jal + change$ra + jr
addu $ra $ra $1		
lui $s1 0x6249
subu $s1 $s1 $31
jal stein
subu $t0 $t3 $t5

