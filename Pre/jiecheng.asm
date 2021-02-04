.data 
b:.asciiz "\n"
a: .byte 1004
.text
li $v0 5
syscall
move $s0 $v0 #s0-->n
li $t0 1
sb $t0 a($0)
addi $t0 $t0 1 #t0-->i
li $s1 2 #s1-->len of big number
li $s7 10


for_i_2_n:
	bgt $t0 $s0 for_1_end
	li $t1 0 #t1-->s
	li $t2 0 #t2-->c
	li $t3 0 #t3-->j
	for_j_0_len:
		beq $t3 $s1 for_2_end
		move $t4 $t3
		lb $t5 a($t4) #a[j]
		mult $t5 $t0
		mflo $t5
		add $t1 $t5 $t2
		div $t1 $s7
		mfhi $t6
		sb $t6 a($t4)
		mflo $t2
		addi $t3 $t3 1
		j for_j_0_len
	for_2_end:
	addi $t0 $t0 1
	addi $s1 $s1 2
	j for_i_2_n
for_1_end:

li $s4 0
subi $t0 $s1 1
for_i_len_0:
	bltz $t0 for_3_end
	move $t4 $t0
	lb $t5 a($t4)
	beqz $t5 next1
	li $s4 1
	move $a0 $t5
	li $v0 1 
	syscall
	j next
	next1:
	beqz $s4 next
	move $a0 $t5
	li $v0 1 
	syscall
	next:
	subi $t0 $t0 1
	j for_i_len_0
for_3_end:

la $a0 b
li $v0 4
syscall

li $v0 10
syscall

