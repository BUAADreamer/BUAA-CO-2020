.data
array: .space 120		# 4 * 30

.text
j main					# jump to main
ori $s0, $zero, 29		# n = 29

init:
# ori $s0, $zero, 29		# n = 29
li $s1, 0x3badb8		# a = 3911096
sw $s1, array			# store a to array[0]
li $s2, 0xaedb5			# b = 716213
sw $s2, array+4			# store b to array[1]

# ori $t0, $zero, 1		# i = 1
ori $t1, $zero, 1		# constant 1
# ori $t4, $zero, 4		# constant 4

jr $ra					# return to main
ori $t4, $zero, 4		# constant 4

main:
jal init				# jump to init (check $ra cover)
ori $t0, $zero, 1		# i = 1

for_begin:
	beq $t0, $s0, for_end # end for loop if (i == n)
	nop
	
	addu $t2, $t0, $t0	# offset = 2 * i
	addu $t2, $t2, $t2	# offset = 4 * i
	lw $s2, array($t2)	# b = array[i]
	
	ori $s3, $s1, 0x1234 # c = a | 4660
	subu $s3, $s3, $s2	# c = c - b
	
	addu $t2, $t2, $t4	# offset += 4
	sw $s3, array($t2)	# store c to array[i + 1]
	
	move $s1, $s2		# a = b
	
# addu $t0, $t0, $t1		# i = i + 1
beq $zero, $zero, for_begin # jump to for_begin
addu $t0, $t0, $t1		# i = i + 1
for_end:

jal test_reg
nop

terminate:
beq $zero, $zero, terminate # terminate
nop

test_reg:
li $a0, 0x12345678		# test $a0
# ori $v0, $zero, 0xcba9	# test $v0
ori $zero, $zero, 0xcdef # test read only
jr $ra
ori $v0, $zero, 0xcba9	# test $v0
