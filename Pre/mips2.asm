 
 .text
  li $t1, 100               #t1=100
  li $t2, 200               #t2=200
  
  slt $t3, $t1, $t2         #if(t1<t2) t3=1 
  beq $t3, $0, if_1_else    #
  nop
  #do something
  j if_1_end                #jump to end
  nop
  
  if_1_else:
  #do something else
  
  if_1_end:
  li $v0, 10
  syscall


