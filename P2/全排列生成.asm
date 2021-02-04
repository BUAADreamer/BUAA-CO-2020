.data
	symbol:.space 28
	a:.space 28
	space: .asciiz " "
	ln:	.asciiz"\n"
	
.text

main:
	li $v0 5
	syscall 
	move $s0 $v0 #s0-->n
	move $a0 $0
	jal fullarray
	li $v0 10
	syscall
	
fullarray:
	li $t0 0 #t0--i
	move $s1 $a0
	blt $a0 $s0 for_i_begin
	for_i_1:
		beq $t0 $s0 for_i_1end
		li $t1 4
		mult $t0 $t1
		mflo $t1
		lw $a0 a($t1)
		li $v0 1
		syscall
		la $a0 space
		li $v0 4
		syscall
		addi $t0 $t0 1
		j for_i_1 
	for_i_1end:
		la $a0 ln
		li $v0 4
		syscall
		move $a0 $s1
		jr $ra
	
	for_i_begin:
	li $t0 0
	for_i:
		beq $t0 $s0 for_i_end
		
		li $t1 4
		mult $t0 $t1
		mflo $t3	#t3=4*i
		li $t1 1
		lw $t1 symbol($t3)
		bnez $t1 next
		
		li $t1 4
		multu $a0 $t1
		mflo $t1 #t1=4*index
		addi $t2 $t0 1
		sw $t2 a($t1)
		li $t2 1
		sw $t2 symbol($t3)
		
		sw $ra 0($sp)
		subi $sp $sp 4
		sw $a0 0($sp)
		subi $sp $sp 4
		sw $t0 0($sp)
		subi $sp $sp 4
		sw $t3 0($sp)
		subi $sp $sp 4
		
		addi $a0 $a0 1
		jal fullarray
		
		addi $sp $sp 4
		lw $t3 0($sp)
		addi $sp $sp 4
		lw $t0 0($sp)
		addi $sp $sp 4
		lw $a0 0($sp)
		addi $sp $sp 4
		lw $ra 0($sp)
		
		sw $0 symbol($t3)
		
	next:
		addi $t0 $t0 1
		j for_i
	for_i_end:
		jr $ra 
	

