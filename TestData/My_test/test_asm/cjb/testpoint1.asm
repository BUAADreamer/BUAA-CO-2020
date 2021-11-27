.data
.space 4

.text
li $t0, 0x12345678
sw $t0, 0
lw $s0, 0

beq $t0, $s0, skiplw
ori $a0, $zero, 1

ori $v0, $zero, 1
skiplw:
ori $a0, $zero, 2

lui $t1, 0x1234
addu $t2, $t1, $zero

beq $t1, $t2, skipr
ori $a1, $zero, 1

ori $v1, $zero, 1
skipr:
ori $a1, $zero, 2
