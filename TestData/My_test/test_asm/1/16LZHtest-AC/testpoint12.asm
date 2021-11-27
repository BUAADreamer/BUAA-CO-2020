.data
nums:.space 4096

.text
ori $t0, $0, 4
lui $t1, 15
sw $t1, nums($t0)
lw $t2, nums($t0)
lw $t3, nums($t0)
lw $t4, nums($t0)
lw $t5, nums($t0)

ori $t0, $0, 4
ori $t1, $0, 8
ori $t2, $0, 12
ori $t3, $0, 16
lui $s1, 17
lui $s2, 18
lui $s3, 19
lui $s4, 20
lui $s5, 21

sw $s1, nums
lw $s2, nums
sw $s2, nums($t0)
sw $s2, nums($t1)
sw $s2, nums($t2)
sw $s2, nums($t3)

sw $t0, nums
lw $t1, nums
sw $s1, nums($t1)

sw $t2, nums
lw $t1, nums
nop
sw $s2, nums($t1)

sw $t2, nums
lw $t1, nums
nop
nop
sw $s2, nums($t1)

sw $t3, nums
lw $t1, nums
nop
nop
nop
sw $s2, nums($t1)



