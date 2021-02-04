.data
	a:.space 64
	b1:.space 64
	c:.space 256
	space: .asciiz " "
	ln:	.asciiz "\n"
.text
.macro calc_addr(%dst,%row,%column,%rank)
	multu %row %rank
	mflo %dst
	addu %dst %dst %column
.end_macro

	li $v0 5
	syscall
	move $t0 $v0	#v0-->n
	li $t1 0  #t1-->i
	li $t2 0	#t2-->j	  t3-->address  t4-->data
	for_i:
		beq $t1 $t0 for_i_end
		for_j:
			beq $t2 $t0 for_j_end
			
			calc_addr($t3,$t1,$t2,$t0)
			li $v0 5
			syscall	
			move $t4 $v0
			sb $t4 a($t3)	#input a[i][j]
			
			addi $t2 $t2 1 #j++
			j for_j
		for_j_end:
		addi $t1 $t1 1#i++
		li $t2 0
		j for_i	
	for_i_end:
	
	
	li $t1 0  #t1-->i
	li $t2 0	#t2-->j	  t3-->address  t4-->data
	for_i_1:
		beq $t1 $t0 for_i_1_end
		for_j_1:
			beq $t2 $t0 for_j_1_end
			
			calc_addr($t3,$t1,$t2,$t0)
			li $v0 5
			syscall	
			move $t4 $v0
			sb $t4 b1($t3)	#input a[i][j]
			
			addi $t2 $t2 1 #j++
			j for_j_1
		for_j_1_end:
		addi $t1 $t1 1#i++
		li $t2 0
		j for_i_1
	for_i_1_end:
	
	
	li $t1 0  #t1-->i
	li $t2 0	#t2-->j	  t3-->k  t4-->c[i][j] 
	li $s1 4	#s1--> size of an element of c
	multu $s1 $t0 
	mflo $s0  #s0-->n*4
	
	for_i_2:
		beq $t1 $t0 for_i_2_end
		for_j_2:
			beq $t2 $t0 for_j_2_end
			li $t3 0
			li $t4 0
			for_k:
				beq $t3 $t0 for_k_end
				calc_addr($t5,$t1,$t3,$t0)
				calc_addr($t6,$t3,$t2,$t0)
				lb $s1 a($t5)
				lb $s2 b1($t6)
				multu $s1 $s2
				mflo $s3
				add $t4 $t4 $s3
				addiu $t3 $t3 1
				j for_k
			for_k_end:
			#multu $t1 $s0
			#mflo $t5
			#multu $t2 $s1
			#mflo $t6
			#addu $t5 $t5 $t6
			move $a0 $t4
			li $v0 1
			syscall
			la $a0 space
			li $v0 4
			syscall
			addi $t2 $t2 1 #j++
			li $t3 0
			j for_j_2
		for_j_2_end:
		la $a0 ln
		li $v0 4
		syscall
		addi $t1 $t1 1#i++
		li $t2 0
		j for_i_2
	for_i_2_end:
	
	
	
li $v0,10
syscall
	
	
	

