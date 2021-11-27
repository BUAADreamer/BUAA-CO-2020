ori $t0, $0, 12
ori $t1, $0, 12
bne $t0, $t1, loop
nop
ori $s0, $0, 1
loop:
ori $s0, $0, 2
ori $t2, $0, 11
ori $t3, $0, 11
bne $t3, $t2, loop2
nop
ori $s0, $0, 1
loop2:
ori $s0,$0, 2
ori $t4, $0, 22
ori $t5, $0, 22
nop
bne $t4, $t5, loop3
nop
ori $s0, $0, 1
loop3:
ori $s0, $0, 3
ori $t6, $0, 12
ori $t7, $0, 12
nop
bne $t7, $t6, loop4
nop
ori $s0, $0, 1
loop4:
 ori $s0, $0, 4  
