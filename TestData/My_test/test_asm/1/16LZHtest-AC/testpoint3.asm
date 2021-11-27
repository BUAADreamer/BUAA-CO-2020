jal loop
ori $t0, $ra, 0
loop:
 beq $t0, $ra, loop2
 nop
loop2:
 jal loop3
 ori $t1, $ra, 0
loop3:
 beq $ra, $t1, loop4
 nop
loop4:
 jal loop5
 ori $t2, $ra, 0
loop5:
 nop
 beq $ra, $t2, loop6
 nop
loop6:
 jal loop7
 ori $t3, $ra, 0
loop7:
 nop
 beq $t3, $ra, loop8
 nop
loop8:
 jal loop9
 ori $t4, $ra, 0
loop9:
 nop
 beq $ra, $t4, loop10
 nop
loop10:
 jal loop11
 ori $t5, $ra, 0
loop11:
 nop
 beq $t5, $ra, loop12
 nop
loop12:
 jal loop13
 ori $t6, $ra, 0
loop13:
 nop
 nop
 beq $t6, $ra, loop14
 nop
loop14:
 jal loop15
 ori $t7, $ra, 0
loop15:
 nop
 nop
 beq $ra, $t7, loop16
 nop
loop16:
 ori $t0, $0, 12
