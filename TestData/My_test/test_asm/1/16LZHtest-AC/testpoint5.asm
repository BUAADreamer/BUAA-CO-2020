.data
nums: .space 4096

.text
ori $t0, $0, 0x3094
ori $t1, $0, 0x30a4
ori $t2, $0, 0x30b4
ori $t3, $0, 0x30c4
ori $t4, $0, 4
ori $t5, $0, 8
ori $t6, $0, 0xc
sw $t0, nums
sw $t1, nums+4
sw $t2, nums+8
sw $t3, nums+12
sw $t3, nums+16
sw $t4, nums+20

lw $s0, nums
jr $s0
nop
tag:
lw  $s1, nums($t4)
nop
jr $s1
nop
tag2:
 lw $s2, nums($t5)
 nop
 nop
 jr $s2
 nop
tag3:
 lw $s3, nums($t6)
 nop
 nop
 nop
 jr $s3
 nop

ori $t9, $0, 1
ori $t9, $0, 2
j tag
nop
ori $t9, $0, 1
ori $t9, $0, 3
j tag2
nop
ori $t9, $0, 1
ori $t9, $0, 4
j tag3
nop
ori $t9, $0, 1
ori $t9, $0, 5
end:
