.data
	bian: .space 260
	ap: .space 40
	space: .asciiz " "
.text
	main:
		li $s1 1
		li $s7 4
		li $s2 0
		jal inputInt
		move $s4 $v0
		jal inputInt 
		move $s5 $v0	#input n,m  s4=n s5=m
		li $t0 1
	for_i:
		bgt $t0 $s5 for_i_end
		jal inputInt
		move $a0 $v0
		jal printInt
		
		la $a0,space
		li $v0,4
		syscall
		
		jal inputInt
		move $a0 $v0
		jal printInt
		
		la $a0,space
		li $v0,4
		syscall
		
		addi $t0 $t0 1
		j for_i
	for_i_end:
	
	la $a0,space
	li $v0,4
	syscall
	la $a0,space
	li $v0,4
	syscall
	la $a0,space
	li $v0,4
	syscall
	
	move $a0 $s4
	jal printInt
	
	la $a0,space
	li $v0,4
	syscall
	
	move $a0 $s5
	jal printInt
	
	li $v0 10
	syscall
	
	move $a0 $s5
	jal printInt
	
	
	
inputInt:
	li $v0,5
	syscall	
	jr $ra
printInt: #a0-a3 is the parameter
	li $v0 1
	syscall
	jr $ra
