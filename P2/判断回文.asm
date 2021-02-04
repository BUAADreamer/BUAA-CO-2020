.data 
	str:.byte 20
	ln:.asciiz "\n"
	
.text 
	li $v0 5
	syscall
	move $s0 $v0 #s0-->n
	
	li $t0 0 #t0-->i
	for_i_1:
		beq $t0 $s0 for_i_1end
		li $v0 12
		syscall
		sb $v0 str($t0)
		addi $t0 $t0 1
		j for_i_1	
	for_i_1end:
	
	
	li $t0 0 #t0-->i
	div $s1 $s0 2
	subi $s2 $s0 1
	for_i_2:
		beq $t0 $s1 for_i_2end
		lb $t1 str($t0)
		sub $t2 $s2 $t0
		lb $t2 str($t2)
		bne $t2 $t1 end0
		addi $t0 $t0 1
		j for_i_2	
	for_i_2end:
		j end1
	
	end0:
	li $a0 0
	j end
	end1:
	li $a0 1
	j end 
	
	end:
		li $v0 1
		syscall
		
		li $v0 10
		syscall
	
	
		
	
