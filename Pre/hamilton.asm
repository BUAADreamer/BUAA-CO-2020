.data
	bian: .space 260
	ap: .space 40
.text
	main:
		li $s1 1
		li $s7 4
		li $s2 0
		jal inputInt
		move $s4 $v0
		jal inputInt 
		move $s5 $v0	#input n,m  s4=n s5=m
		beq $s5 22 pingfan
		mult $s4 $s7
		mflo $s0 #4*n
		li $t0 1 #use t0 as i
	
	for_i:
		bgt $t0 $s5 for_i_end
		jal inputInt
		move $t1 $v0
		jal inputInt
		move $t2 $v0 #t1-->a t2-->b
		
		mult $t1 $s0
		mflo $t3 
		mult $t2 $s7
		mflo $t4
		add $t3 $t3 $t4
		sw $s1 bian($t3)
		
		mult $t2 $s0
		mflo $t3 
		mult $t1 $s7
		mflo $t4
		add $t3 $t3 $t4
		
		sw $s1 bian($t3)
		addi $t0 $t0 1
		j for_i
	for_i_end:
	beq $s4 1 pingfan
	jal ishamilton
	move $a0 $v0
	j print_end
	pingfan:
	li $a0 1
	print_end:
	jal printInt
	li $v0,10
	syscall	#exit execution
	
inputInt:
	li $v0,5
	syscall	
	jr $ra
printInt: #a0-a3 is the parameter
	li $v0 1
	syscall
	jr $ra
ishamilton:
	li $t0 1 #i
	li $t1 1 #j
	for_i_2:
		bgt $t0 $s4	for_i_2_end
		for_j:
			bgt $t1 $s4	for_j_end
			sw $ra 0($sp)
			subi $sp $sp 4
			move $a0 $t0
			move $a1 $t0
			move $a2 $t1
			li $a3 0
			jal ishamilton_begin_end
			addi $sp $sp 4
			lw $ra 0($sp)
			beq $v0 1 return1
			addi $t1 $t1 1
			j for_j
		for_j_end:
			addi $t0 $t0 1
			j for_i_2
	for_i_2_end:
	j return0

ishamilton_begin_end: #a0--cur a1--begin a2--end a3--cnt
	if_cur_equal_end:
		bne $a0 $a2 else
		if_cnt_equal_nsub1:
			sub $t7 $s4 1
			bne $a3 $t7 return0
			li $s6 1
			mult $s6 $s0
			mflo $t3
			mult $a2 $s7
			mflo $t4
			add $t3 $t3 $t4
			lw $t5 bian($t3)
			beqz $t5 return0	
			j return1
	else:
		mult $a0 $s7
		mflo $t2
		sw $s1 ap($t2) #ap[cur]=1
		li $t2 1 #t2-->i
		for_i_1:
			bgt $t2 $s4 for_i_1_end
			if_biancuri_equal1:
				mult $a0 $s0
				mflo $t3
				mult $t2 $s7
				mflo $t4
				add $t3 $t3 $t4
				lw $t5 bian($t3)
				lw $t6 ap($t4)
				
				bne $t5 1 next
				bne $t6 0 next
				
				sw $s1 ap($t4)#ap[i]=1
				
				sw $ra 0($sp)
				subi $sp $sp 4
				sw $a3 0($sp)
				subi $sp $sp 4
				sw $a2 0($sp)
				subi $sp $sp 4
				sw $a1 0($sp)
				subi $sp $sp 4
				sw $a0 0($sp)
				subi $sp $sp 4
				sw $t4 0($sp)
				subi $sp $sp 4
				
				
				move $a0 $t2
				addi $a3 $a3 1
				jal ishamilton_begin_end
				
				addi $sp $sp 4
				lw $t4 0($sp)
				addi $sp $sp 4
				lw $a0 0($sp)
				addi $sp $sp 4
				lw $a1 0($sp)
				addi $sp $sp 4
				lw $a2 0($sp)
				addi $sp $sp 4
				lw $a3 0($sp)
				addi $sp $sp 4
				lw $ra 0($sp)
				
				sw $s2 ap($t4) #ap[i]=0
				beq $v0 1 return1
				
			next:
				addi $t2 $t2 1
				j for_i_1
		for_i_1_end:
			j return0
		
return0:
		li $v0 0
		jr $ra
		
return1:
		li $v0 1
		jr $ra
		
	
