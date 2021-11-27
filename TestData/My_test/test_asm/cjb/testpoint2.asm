.data
.space 4

.text
li $t0, 0x12345678
sw $t0, 0
lw $zero, 0

beq $zero, $zero, skiplw
ori $a0, $zero, 1

ori $v0, $zero, 1
skiplw:
ori $a0, $zero, 2

lui $zero, 0x1234
addu $zero, $zero, $zero

beq $zero, $zero, skipr
ori $a1, $zero, 1

ori $v1, $zero, 1
skipr:
ori $a1, $zero, 2
