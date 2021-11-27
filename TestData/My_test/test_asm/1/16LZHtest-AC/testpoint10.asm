.data 
nums: .space 4096

.text
ori $t3, $0, 1234
beq $t3, $t3, loop
nop
ori $t0, $0, 1
loop:
 ori $t0, $0, 5
 ori $t2, $t2, 0123
 ori $t4, $t4, 0123
 beq $t2, $t4, loop2
 nop
 ori $t0, $0, 1
loop2:
 ori $t0, $0, 6
 ori $t1, $t1, 0123
 ori $t5, $t5, 0123
 beq $t5, $t1, loop3
 nop
 ori $t0, $0, 1
loop3:
 ori $t0, $0, 7
 ori $t6, 2333
 ori $t7, 2333
 nop
 beq $t6, $t7, loop4
 nop
 ori $t0, $0, 1
loop4:
 ori $t0, $0, 8
 ori $t1, 244
 ori $t2, 244
 nop
 beq $t2, $t1, loop5
 nop
 ori $t0, $0, 1
loop5:
 ori $t0, $0, 9
 ori $t3, $0, 255
 ori $t4, $0, 255
 nop
 nop
 beq $t3, $t4, loop6
 nop
 ori $t0, $0, 1
loop6:
 ori $t0, $0, 10
 ori $t5, $0, 255
 ori $t6, $0, 255
 nop
 nop
 beq $t6, $t5, loop7
 nop
 ori $t0, $0, 1
loop7:
 ori $t1, 1000
 nop
 nop
 nop
 beq $t1, $t1, end
 nop
 ori $t0, $0, 1
end:
 ori $t0, 11
 
 
 