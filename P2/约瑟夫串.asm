.data
a: .word 100

.text
li $v0 5
syscall
move $s0 $v0 #s0-->n
li $v0 5
syscall
move $s1 $v0 #s1-->m 

li $t0 0
li $t1 1
li $t2 0
li $t5 1
for_i:
	beq $t0 $s0 for_iend
 	for_j:
 		beq $t2 $s1 for_jend
 		beqz $t2 while
 		blt $t1 $s0 add2
 		li $t1 1
 		j while
 		add2:addi $t1 $t1 1
 		while:
 			sll $t4 $t1 2
 			lw $t3 a($t4)
 			beqz $t3 whileend
 			blt $t1 $s0 add1
 			li $t1 1
 			j next
 			add1:addi $t1 $t1 1
 			next:j while
 		whileend:
 		addi $t2 $t2 1
 		j for_j
 	for_jend:
 	sll $t4 $t1 2
 	li $t5 1
 	sw $t5 a($t4)
 	move $a0 $t1
 	li $v0 1
 	syscall
	addi $t0 $t0 1
	li $t2 0
	j for_i
for_iend:

li $v0 10
syscall
 
