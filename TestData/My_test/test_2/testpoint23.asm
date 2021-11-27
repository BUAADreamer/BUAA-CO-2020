.data
.macro push(%d)
 sw %d,0($s4)
 addu $s4,$s4,$s3
.end_macro

.macro pop(%d)
 subu $s4, $s4, $s3
 lw %d, 0($s4)
.end_macro

.text
 ori $s0, $0, 0
 ori $s1, $0, 1
 ori $s2, $0, 2
 ori $s3, $0, 4
 ori $s4, $0, 0
 ori $a0, $0, 7
 jal fib
 addu $t9, $0, $v0
 ori $t0, $0, 0x2333
 ori $t1, $0, 0x2333
 beq $t0, $t1, end
 
  fib:
   push($ra)
   beq $a0, $s0, return
   beq $a0, $s1, return 
   push($a0)
   subu $a0, $a0, $s1
   jal fib
   pop($a0)
   addu $t0, $0, $v0
   push($t0)
   push($a0)
   subu $a0, $a0,$s2
   jal fib
   pop($a0)
   pop($t0)
   addu $v0, $t0,$v0
   pop($ra)
   jr $ra
  return:
   ori $v0, $0, 1
   pop($ra)
   jr $ra
  end:
   nop