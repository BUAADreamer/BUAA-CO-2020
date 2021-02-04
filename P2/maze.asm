.data
	a: .word 100

.text
	.macro getindex(%data,%i,%j,%rank)
		mult %i %rank
		mflo %data
		add %data %data %j
		sll %data %data 2
	.end_macro 
	
	li $v0 5
	syscall
	move $s0 $v0  #-->n
	li $v0 5
	syscall
	move $s1 $v0  #-->m
	
	li $t0 1 #t0-->i
	li $t1 1 #t1-->j
	li $s7 0 #s7-->cnt
	
	for_i_1:
		bgt $t0 $s0 for_i_1end
		for_j_1:
			bgt $t1 $s1 for_j_1end
			getindex($t2,$t0,$t1,$s1)
			li $v0 5
			syscall
			sw $v0 a($t2)
			addi $t1 $t1 1
			j for_j_1
		for_j_1end:
		li $t1 1
		addi $t0 $t0 1
		j for_i_1
	for_i_1end:
	
	li $v0 5
	syscall
	move $s2 $v0  #beginx
	li $v0 5
	syscall
	move $s3 $v0  #beginy
	li $v0 5
	syscall  
	move $s4 $v0  #endx
	li $v0 5
	syscall
	move $s5 $v0  #endy
	move $a0 $s2
	move $a1 $s3
	move $a2 $s4
	move $a3 $s5
	jal way
	move $a0 $s7
	li $v0 1
	syscall
	li $v0 10
	syscall
	
way:
	if_i_end:
		bne $a0 $a2 else
		bne $a1 $a3 else
		addi $s7 $s7 1
		jr $ra
	else:
		li $t1 1
		getindex($t2,$a0,$a1,$s1)
		sw $t1 a($t2)
		sll $t1 $t1 2
		li $t0 0 #t0-->i
		for_i_2:
			beq $t0 $t1 for_i_2end
			li $t2 1
			li $t3 2
			move $t8 $a0 #sti
			move $t9 $a1 #stj
			case0:
				bnez $t0 case1
				addi $t9 $a1 1
				j pro
			case1:
				bne $t0 $t2 case2
				addi $t8 $a0 1
				j pro
			case2:
				bne $t0 $t3 case3
				subi $t9 $a1 1
				j pro
			case3:
				subi $t8 $a0 1
				j pro
				
			pro:
				blt $t8 $t2 next
				bgt $t8 $s0 next
				blt $t9 $t2 next
				bgt $t9 $s1 next
				getindex($t3,$t8,$t9,$s1)
				lw $t2 a($t3)
				bnez $t2 next
				li $t2 1
				sw $t2 a($t3)
				
				sw $a0 0($sp)
				subi $sp $sp 4
				sw $a1 0($sp)
				subi $sp $sp 4
				sw $t3 0($sp)
				subi $sp $sp 4
				sw $ra 0($sp)
				subi $sp $sp 4
				sw $t0 0($sp)
				subi $sp $sp 4

				move $a0 $t8 
				move $a1 $t9

				jal way
				
				addi $sp $sp 4
				lw $t0 0($sp)
				addi $sp $sp 4
				lw $ra 0($sp)
				addi $sp $sp 4
				lw $t3 0($sp)
				addi $sp $sp 4
				lw $a1 0($sp)
				addi $sp $sp 4
				lw $a0 0($sp)
				
				sw $0 a($t3)
			next:
				addi $t0 $t0 1
				j for_i_2
			for_i_2end:
			jr $ra
			
		
	
