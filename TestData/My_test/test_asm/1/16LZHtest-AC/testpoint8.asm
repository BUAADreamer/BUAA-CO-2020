.data
nums: .space 4096
.text
ori $t0, $t0, 100
sw $t0, nums($t0)
ori $t1, $t1, 12
ori $t3, $t3, 16
sw $t1, nums($t1)
nop
sw $t3, nums($t3)
ori $t4, $t4, 20
nop
nop
sw $t3, nums($t4)
sw $t4, nums($t4)



