jal loop
nop
jal loop2
nop
jal loop3
nop
jal loop4
nop
ori $t0, $0, 100
loop:
j end
nop
loop2:
 nop
 jr $ra
 nop
loop3:
 nop
 nop
 jr $ra
 nop
loop4:
 nop
 nop
 nop
 jr $ra
 nop
 end:
 nop
 
