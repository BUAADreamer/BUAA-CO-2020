.data 
nums: .space 4096

.text 
ori $t2, $0 15
sw $t2, nums
lw $t1, nums
beq $t2, $t1, tag
nop
ori $t0, $0, 1 
tag:
ori $t0, $0, 17

ori $t5, $0, 19
sw $t5, nums
lw $t6, nums
beq $t6, $t5, tag2
nop
ori $t0, $0, 1
tag2:
ori $t0, $0, 18
