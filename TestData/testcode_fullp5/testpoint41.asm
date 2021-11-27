.text
ori $15 $0 84
ori $16 $0 100
ori $17 $0 100
ori $18 $0 128
ori $19 $0 152
ori $20 $0 20
ori $21 $0 20
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
lw $15 0($0)
beq $15 $9 beq_0
addu $10 $0 $9
beq_0:
lw $16 0($0)
beq $16 $18 beq_1
addu $6 $4 $18
beq_1:
lw $17 0($0)
beq $17 $9 beq_2
addu $16 $5 $9
beq_2:
lw $18 0($0)
beq $18 $15 beq_3
addu $0 $17 $15
beq_3:
lw $19 0($0)
beq $19 $12 beq_4
addu $19 $18 $12
beq_4:
lw $20 0($0)
beq $20 $1 beq_5
addu $12 $2 $1
beq_5:
lw $21 0($0)
beq $21 $11 beq_6
addu $10 $19 $11
beq_6:
lw $22 0($0)
beq $22 $20 beq_7
addu $5 $3 $20
beq_7:
lw $23 0($0)
beq $23 $1 beq_8
addu $10 $3 $1
beq_8:
lw $24 0($0)
beq $24 $5 beq_9
addu $3 $9 $5
beq_9:
ori $16 $0 100
ori $17 $0 100
ori $18 $0 128
ori $19 $0 152
ori $20 $0 20
ori $21 $0 20
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
ori $25 $0 84
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
lw $16 0($0)
beq $16 $5 beq_10
addu $1 $22 $5
beq_10:
lw $17 0($0)
beq $17 $17 beq_11
addu $14 $11 $17
beq_11:
lw $18 0($0)
beq $18 $8 beq_12
addu $17 $15 $8
beq_12:
lw $19 0($0)
beq $19 $24 beq_13
addu $10 $16 $24
beq_13:
lw $20 0($0)
beq $20 $6 beq_14
addu $19 $17 $6
beq_14:
lw $21 0($0)
beq $21 $24 beq_15
addu $7 $23 $24
beq_15:
lw $22 0($0)
beq $22 $24 beq_16
addu $14 $25 $24
beq_16:
lw $23 0($0)
beq $23 $20 beq_17
addu $2 $12 $20
beq_17:
lw $24 0($0)
beq $24 $11 beq_18
addu $23 $12 $11
beq_18:
lw $25 0($0)
beq $25 $8 beq_19
addu $13 $8 $8
beq_19:
ori $17 $0 100
ori $18 $0 128
ori $19 $0 152
ori $20 $0 20
ori $21 $0 20
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
ori $25 $0 84
ori $26 $0 100
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
sw $27 0($26)
lw $17 0($0)
beq $17 $0 beq_20
addu $8 $15 $0
beq_20:
lw $18 0($0)
beq $18 $6 beq_21
addu $18 $21 $6
beq_21:
lw $19 0($0)
beq $19 $7 beq_22
addu $26 $24 $7
beq_22:
lw $20 0($0)
beq $20 $9 beq_23
addu $17 $3 $9
beq_23:
lw $21 0($0)
beq $21 $25 beq_24
addu $0 $3 $25
beq_24:
lw $22 0($0)
beq $22 $24 beq_25
addu $19 $17 $24
beq_25:
lw $23 0($0)
beq $23 $0 beq_26
addu $1 $3 $0
beq_26:
lw $24 0($0)
beq $24 $0 beq_27
addu $0 $2 $0
beq_27:
lw $25 0($0)
beq $25 $7 beq_28
addu $9 $26 $7
beq_28:
lw $26 0($0)
beq $26 $19 beq_29
addu $2 $3 $19
beq_29:
ori $18 $0 128
ori $19 $0 152
ori $20 $0 20
ori $21 $0 20
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
ori $25 $0 84
ori $26 $0 100
ori $27 $0 100
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
sw $27 0($26)
sw $28 0($27)
lw $18 0($0)
beq $18 $17 beq_30
addu $16 $23 $17
beq_30:
lw $19 0($0)
beq $19 $4 beq_31
addu $20 $18 $4
beq_31:
lw $20 0($0)
beq $20 $27 beq_32
addu $23 $8 $27
beq_32:
lw $21 0($0)
beq $21 $17 beq_33
addu $0 $23 $17
beq_33:
lw $22 0($0)
beq $22 $14 beq_34
addu $25 $17 $14
beq_34:
lw $23 0($0)
beq $23 $27 beq_35
addu $25 $0 $27
beq_35:
lw $24 0($0)
beq $24 $6 beq_36
addu $21 $11 $6
beq_36:
lw $25 0($0)
beq $25 $10 beq_37
addu $16 $23 $10
beq_37:
lw $26 0($0)
beq $26 $16 beq_38
addu $17 $5 $16
beq_38:
lw $27 0($0)
beq $27 $14 beq_39
addu $6 $20 $14
beq_39:
ori $19 $0 152
ori $20 $0 20
ori $21 $0 20
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
ori $25 $0 84
ori $26 $0 100
ori $27 $0 100
ori $28 $0 128
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
sw $27 0($26)
sw $28 0($27)
sw $29 0($28)
lw $19 0($0)
beq $19 $22 beq_40
addu $4 $9 $22
beq_40:
lw $20 0($0)
beq $20 $12 beq_41
addu $12 $5 $12
beq_41:
lw $21 0($0)
beq $21 $2 beq_42
addu $10 $27 $2
beq_42:
lw $22 0($0)
beq $22 $22 beq_43
addu $25 $26 $22
beq_43:
lw $23 0($0)
beq $23 $1 beq_44
addu $20 $16 $1
beq_44:
lw $24 0($0)
beq $24 $17 beq_45
addu $17 $25 $17
beq_45:
lw $25 0($0)
beq $25 $26 beq_46
addu $23 $10 $26
beq_46:
lw $26 0($0)
beq $26 $20 beq_47
addu $1 $8 $20
beq_47:
lw $27 0($0)
beq $27 $14 beq_48
addu $16 $9 $14
beq_48:
lw $28 0($0)
beq $28 $1 beq_49
addu $24 $16 $1
beq_49:
ori $20 $0 20
ori $21 $0 20
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
ori $25 $0 84
ori $26 $0 100
ori $27 $0 100
ori $28 $0 128
ori $29 $0 152
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
sw $27 0($26)
sw $28 0($27)
sw $29 0($28)
sw $30 0($29)
lw $20 0($0)
beq $20 $28 beq_50
addu $14 $12 $28
beq_50:
lw $21 0($0)
beq $21 $18 beq_51
addu $23 $21 $18
beq_51:
lw $22 0($0)
beq $22 $24 beq_52
addu $18 $28 $24
beq_52:
lw $23 0($0)
beq $23 $0 beq_53
addu $25 $3 $0
beq_53:
lw $24 0($0)
beq $24 $8 beq_54
addu $0 $13 $8
beq_54:
lw $25 0($0)
beq $25 $14 beq_55
addu $11 $13 $14
beq_55:
lw $26 0($0)
beq $26 $17 beq_56
addu $7 $28 $17
beq_56:
lw $27 0($0)
beq $27 $26 beq_57
addu $21 $10 $26
beq_57:
lw $28 0($0)
beq $28 $0 beq_58
addu $21 $2 $0
beq_58:
lw $29 0($0)
beq $29 $26 beq_59
addu $2 $15 $26
beq_59:
ori $21 $0 20
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
ori $25 $0 84
ori $26 $0 100
ori $27 $0 100
ori $28 $0 128
ori $29 $0 152
ori $30 $0 20
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
sw $27 0($26)
sw $28 0($27)
sw $29 0($28)
sw $30 0($29)
sw $31 0($30)
lw $21 0($0)
beq $21 $11 beq_60
addu $23 $11 $11
beq_60:
lw $22 0($0)
beq $22 $12 beq_61
addu $5 $18 $12
beq_61:
lw $23 0($0)
beq $23 $25 beq_62
addu $16 $12 $25
beq_62:
lw $24 0($0)
beq $24 $17 beq_63
addu $8 $22 $17
beq_63:
lw $25 0($0)
beq $25 $10 beq_64
addu $15 $11 $10
beq_64:
lw $26 0($0)
beq $26 $28 beq_65
addu $19 $24 $28
beq_65:
lw $27 0($0)
beq $27 $16 beq_66
addu $21 $29 $16
beq_66:
lw $28 0($0)
beq $28 $4 beq_67
addu $28 $14 $4
beq_67:
lw $29 0($0)
beq $29 $19 beq_68
addu $26 $15 $19
beq_68:
lw $30 0($0)
beq $30 $4 beq_69
addu $10 $17 $4
beq_69:
ori $22 $0 36
ori $23 $0 44
ori $24 $0 52
ori $25 $0 84
ori $26 $0 100
ori $27 $0 100
ori $28 $0 128
ori $29 $0 152
ori $30 $0 20
ori $31 $0 20
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
sw $27 0($26)
sw $28 0($27)
sw $29 0($28)
sw $30 0($29)
sw $31 0($30)
lw $22 0($0)
beq $22 $11 beq_70
addu $17 $17 $11
beq_70:
lw $23 0($0)
beq $23 $12 beq_71
addu $30 $23 $12
beq_71:
lw $24 0($0)
beq $24 $25 beq_72
addu $26 $16 $25
beq_72:
lw $25 0($0)
beq $25 $5 beq_73
addu $8 $26 $5
beq_73:
lw $26 0($0)
beq $26 $16 beq_74
addu $0 $21 $16
beq_74:
lw $27 0($0)
beq $27 $10 beq_75
addu $30 $28 $10
beq_75:
lw $28 0($0)
beq $28 $5 beq_76
addu $15 $26 $5
beq_76:
lw $29 0($0)
beq $29 $7 beq_77
addu $28 $27 $7
beq_77:
lw $30 0($0)
beq $30 $10 beq_78
addu $4 $26 $10
beq_78:
lw $31 0($0)
beq $31 $15 beq_79
addu $29 $22 $15
beq_79:
