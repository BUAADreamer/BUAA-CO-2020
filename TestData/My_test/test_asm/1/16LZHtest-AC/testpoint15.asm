.data
nums: .space 4096
.text
ori $t0, $0, 12
ori $t1, $0, 15
sw $t1, nums($t0)
lw $t2, nums($t0)
beq $t1, $t2, tag
nop
ori $t0, 1
tag:
ori $t0, $0, 16
ori $t1, $0, 19
sw $t1, nums($t0)
lw $t2, nums($t0)
beq $t2, $t1, tag2
nop
ori $t0, 1
tag2:
ori $t0, $0, 20
ori $t1, $0, 21
sw $t1, nums($t0)
lw $t2, nums($t0)
nop
beq $t2, $t1, tag3
nop
ori $t0, 1
tag3:
ori $t0, $0, 24
ori $t1, $0, 22
sw $t1, nums($t0)
lw $t2, nums($t0)
nop
beq $t1, $t2, tag4
nop
ori $t0, 1
tag4:
ori $t0, $0, 28
ori $t1, $0, 23
sw $t1, nums($t0)
lw $t2, nums($t0)
nop
nop
beq $t1, $t2, tag5
nop
ori $t0, 1
tag5:
ori $t0, $0, 28
ori $t1, $0, 23
sw $t1, nums($t0)
lw $t2, nums($t0)
nop
nop
beq $t2, $t1, tag6
nop
ori $t0, 1
tag6:
ori $t0, $0, 28
ori $t1, $0, 23
sw $t1, nums($t0)
lw $t2, nums($t0)
nop
nop
beq $t0, $t0, tag7
nop
ori $t0, 1
tag7:
 ori $t0, $0, 2