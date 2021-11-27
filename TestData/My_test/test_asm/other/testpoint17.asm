.data
.space 8

.text
ori $t4, $zero, 3
sw $t4, 0
ori $t5, $zero, 2
sw $t5, 4
lw $t2, 4
lw $t1, 0
addu $t3, $t1, $t2
