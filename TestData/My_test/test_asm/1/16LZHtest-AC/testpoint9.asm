.data
nums:.space 4096
.text
ori $s0, $s0, 4
ori $s5, 19
sw $s5, nums($s0)
ori $s2, $s2, 8
ori $s5, 17
sw $s5, nums($s2)
ori $s3, $s3, 4092
lui $s5, 13
sw $s5,nums($s3)
ori $s4, $s4, 20
sw $s4,nums($s4)
ori $t0, $t0, 4
lw $t5, nums($t0)
ori $t2, $t2, 8
nop
lw $t6, nums($t2) 
ori $t3, $t3, 4092
nop 
nop
lw $t7, nums($t3)
ori $t4, $t4, 20
nop
nop
nop
lw $t8, nums($t4)
ori $t6, $0, 24
lw $t9, nums($t6)
