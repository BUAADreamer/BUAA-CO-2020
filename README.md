# BUAA-CO-2020
This is My BUAA Computer Orgnization code project files.

## introduction
由于2020年秋季的北航计组实验由于时间冲突的原因只开课开到P7，P8没有开放，笔者很幸运地通关了，在这里还是放一下本菜鸡的代码，纪念一下那些熬夜奋战的时光
北航的计组课程目标是开发支持`MIPS`指令集的CPU

## about Code
### Pre 基础知识学习
主要是`logisim`，`verilog`，`MIPS`以及相关工具（`ISE，Mars`等）的基本使用，为之后的各个Project打基础

### P0 logisim搭建基本电路
利用logisim搭建一些小的元件和状态机，难点主要在状态机搭建，要区分好`Moore`和`Mealy`

### P1 verilog搭建基本电路
P1和P0内容差不多，只是工具变了，主要就是用verilog搭建小元件和状态机，值得一提的是P1课上 **初始化** 一定要注意！！！笔者就是在课上因为没有对一些变量初始化挂了一次。

### P2 MIPS汇编语言
基本就是用MIPS写一些基本的简单算法题，如果有类似快排，二分查找这样的复杂一些的算法题会给参考的C源代码
课上难一些的也就是考**递归**算法翻译题

### P3 logisim单周期CPU开发(8条指令)
课下:利用logisim搭建一个支持`{addu, subu, ori, lw, sw, beq, lui, nop}`指令集的单周期CPU
课上:扩展给定的指令

### P4 Verilog单周期CPU开发(10条指令)
课下:利用Verilog搭建一个支持`{addu, subu, ori, lw, sw, beq, lui, jr,nop,jal}`指令集的单周期CPU
课上:扩展给定的指令

### P5 Verilog简单流水线CPU开发(11条指令)
课下:利用Verilog搭建一个支持`{ addu, subu, ori, lw, sw, beq, lui, j, jal, jr, nop }`指令集的流水线CPU
课上:扩展给定的指令

### P6 Verilog复杂流水线CPU开发(51条指令)
课下:利用Verilog搭建一个支持`{LB、LBU、LH、LHU、LW、SB、SH、SW、ADD、ADDU、SUB、 SUBU、 MULT、 MULTU、 DIV、 DIVU、 SLL、 SRL、 SRA、SLLV、SRLV、SRAV、AND、OR、XOR、NOR、ADDI、ADDIU、ANDI、ORI、XORI、LUI、SLT、SLTI、SLTIU、SLTU、BEQ、BNE、BLEZ、BGTZ、BLTZ、BGEZ、J、JAL、JALR、JR、MFHI、MFLO、MTHI、MTLO}`指令集的流水线CPU
课上:扩展给定的指令

### P7 Verilog处理器系统设计_支持中断异常(54条指令)
课下:在P6的基础上新增`{eret,mfc0,mtc0}`三条中断/异常相关指令，新增异常处理模块，系统桥模块和定时器模块，和原本的CPU组成一个系统。
课上:强测+扩展一条简单的异常中断指令(后者不一定有)



