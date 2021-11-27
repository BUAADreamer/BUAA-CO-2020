.data
nums: .space 4096
.text
ori $s1, $s1, 0x3000
ori $s0, $0, 15
sw $s0, nums+0x30
ori $s0, $0, 16
sw $s0, nums+0x40
ori $s0, $0, 17
sw $s0, nums+0x54
jal loop
subu $t1, $ra, $s1
ori $t0, $0, 1
loop:
 lw $s3, nums($t1)
 jal loop2
 subu $t1, $ra, $s1
 ori $t0, $0, 1
loop2:
 nop
 lw $s4, nums($t1)
 jal loop3
 subu $t1, $ra, $s1
 ori $t0, $0, 1
loop3:
 nop
 nop
 lw $s5, nums($t1)
 
 