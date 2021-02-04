.text
li $v0 5
syscall
move $s0 $v0
blt $s0 2 print0
li $t0 2 #t0-->i	
for_i_1:
	beq $t0 $s0 for_i_1end
	div $s0 $t0 
	mfhi $t1
	beqz $t1 print0 
	addi $t0 $t0 1
	j for_i_1
for_i_1end:

print1:
li $a0 1
li $v0 1
syscall
j end

print0:
li $a0 0
li $v0 1
syscall
j end

end:
li $v0 10
syscall


