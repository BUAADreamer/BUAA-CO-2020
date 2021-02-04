.data 
	a:.space 400
	conv:.space 400
	space:.asciiz" "
	ln:.asciiz"\n"
.text
	.macro getad(%ad,%i,%j,%rank,%ele,%tmp)
		multu %i %rank
		mflo %ad
		multu %j %ele
		mflo %tmp 
		add %ad %ad %tmp
	.end_macro
	input_m1n1m2n2:	#m1-s0 n1-s1 m2-s2 n2-s3
	li $v0 5
	syscall
	move $s0 $v0
	li $v0 5
	syscall
	move $s1 $v0
	li $v0 5
	syscall
	move $s2 $v0
	li $v0 5
	syscall
	move $s3 $v0
	
	li $s4 4 #ele
	mult $s1 $s4 
	mflo $s5 #4*n1
	mult $s3 $s4 
	mflo $s6 #4*n2
	
	input_a_conv:
		li $t0 0
		li $t1 0 #t0-i t1-j t2-address
		for_i_1:
			beq $t0 $s0 for_i_1end
			for_j_1:
				beq $t1 $s1 for_j_1end
				li $v0 5
				syscall
				getad($t2,$t0,$t1,$s5,$s4,$s7)
				sw $v0 a($t2)
				addiu $t1 $t1 1
				j for_j_1
			for_j_1end:li $t1 0
			addiu $t0 $t0 1
			j for_i_1
		for_i_1end:
		
		li $t0 0
		li $t1 0 #t0-i t1-j t2-address
		for_i_2:
			beq $t0 $s2 for_i_2end
			for_j_2:
				beq $t1 $s3 for_j_2end
				li $v0 5
				syscall
				#subi $t3 $s2 1
				#subi $t4 $s3 1
				#sub $t3 $t3 $t0
				#sub $t4 $t4 $t1
				getad($t2,$t0,$t1,$s6,$s4,$s7)
				sw $v0 conv($t2)
				addiu $t1 $t1 1
				j for_j_2
			for_j_2end:li $t1 0
			addiu $t0 $t0 1
			j for_i_2
		for_i_2end:
		
calculate_output:
		sub $t6 $s0 $s2 #t6--m1-m2+1
		addi $t6 $t6 1
		sub $t7 $s1 $s3 #t7--n1-n2+1
		addi $t7 $t7 1
		li $t0 0
		li $t1 0 #t0-i t1-j t2-k t3-l
		li $t2 0
		li $t3 0
		li $a2 0
		for_i_3:
			beq $t0 $t6 for_i_3end
			for_j_3:
				beq $t1 $t7 for_j_3end
					for_k:
						beq $t2 $s2 for_k_end
					for_l:
						beq $t3 $s3 for_l_end
							getad($t4,$t2,$t3,$s6,$s4,$s7)
							add $t8 $t0 $t2
							add $t9 $t1 $t3
							getad($t5,$t8,$t9,$s5,$s4,$s7)
							lw $t8 a($t5)
							lw $t9 conv($t4)
							multu $t8 $t9 
							mflo $t8  #t8=a[k+i][l+j]*conv[k][l]
							add $a2 $a2 $t8
						addi $t3 $t3 1
						j for_l
					for_l_end: li $t3 0
						addi $t2 $t2 1
						j for_k
					for_k_end: li $t2 0
					move $a0 $a2
					li $v0 1
					syscall
					la $a0 space
					li $v0 4
					syscall
					li $a2 0
				addiu $t1 $t1 1
				j for_j_3
			for_j_3end:li $t1 0
			la $a0 ln
			li $v0 4
			syscall
			addiu $t0 $t0 1
			j for_i_3
		for_i_3end:
		
		li $v0 10
		syscall
	