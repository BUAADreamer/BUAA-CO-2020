.text
ori $15 $0 56
ori $16 $0 60
ori $17 $0 84
ori $18 $0 96
ori $19 $0 128
ori $20 $0 12
ori $21 $0 12
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
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
lw $15 0($15)
beq $7 $15 beq_0
addu $5 $7 $22
beq_0:
lw $16 0($16)
beq $17 $16 beq_1
addu $11 $17 $3
beq_1:
lw $17 0($17)
beq $16 $17 beq_2
addu $11 $16 $12
beq_2:
lw $18 0($18)
beq $17 $18 beq_3
addu $5 $17 $16
beq_3:
lw $19 0($19)
beq $13 $19 beq_4
addu $11 $13 $1
beq_4:
lw $20 0($20)
beq $18 $20 beq_5
addu $13 $18 $22
beq_5:
lw $21 0($21)
beq $22 $21 beq_6
addu $1 $22 $19
beq_6:
lw $22 0($22)
beq $17 $22 beq_7
addu $18 $17 $18
beq_7:
lw $23 0($23)
beq $3 $23 beq_8
addu $6 $3 $0
beq_8:
lw $24 0($24)
beq $19 $24 beq_9
addu $9 $19 $10
beq_9:
ori $16 $0 60
ori $17 $0 84
ori $18 $0 96
ori $19 $0 128
ori $20 $0 12
ori $21 $0 12
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
ori $25 $0 56
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
lw $16 0($16)
beq $10 $16 beq_10
addu $17 $10 $1
beq_10:
lw $17 0($17)
beq $1 $17 beq_11
addu $5 $1 $3
beq_11:
lw $18 0($18)
beq $15 $18 beq_12
addu $16 $15 $21
beq_12:
lw $19 0($19)
beq $18 $19 beq_13
addu $0 $18 $16
beq_13:
lw $20 0($20)
beq $7 $20 beq_14
addu $19 $7 $6
beq_14:
lw $21 0($21)
beq $21 $21 beq_15
addu $14 $21 $8
beq_15:
lw $22 0($22)
beq $17 $22 beq_16
addu $8 $17 $22
beq_16:
lw $23 0($23)
beq $11 $23 beq_17
addu $6 $11 $1
beq_17:
lw $24 0($24)
beq $8 $24 beq_18
addu $10 $8 $9
beq_18:
lw $25 0($25)
beq $24 $25 beq_19
addu $14 $24 $19
beq_19:
ori $17 $0 84
ori $18 $0 96
ori $19 $0 128
ori $20 $0 12
ori $21 $0 12
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
ori $25 $0 56
ori $26 $0 60
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
lw $17 0($17)
beq $22 $17 beq_20
addu $25 $22 $16
beq_20:
lw $18 0($18)
beq $7 $18 beq_21
addu $7 $7 $0
beq_21:
lw $19 0($19)
beq $1 $19 beq_22
addu $11 $1 $24
beq_22:
lw $20 0($20)
beq $22 $20 beq_23
addu $11 $22 $26
beq_23:
lw $21 0($21)
beq $9 $21 beq_24
addu $22 $9 $18
beq_24:
lw $22 0($22)
beq $26 $22 beq_25
addu $18 $26 $8
beq_25:
lw $23 0($23)
beq $8 $23 beq_26
addu $6 $8 $7
beq_26:
lw $24 0($24)
beq $16 $24 beq_27
addu $6 $16 $5
beq_27:
lw $25 0($25)
beq $21 $25 beq_28
addu $6 $21 $9
beq_28:
lw $26 0($26)
beq $11 $26 beq_29
addu $7 $11 $20
beq_29:
ori $18 $0 96
ori $19 $0 128
ori $20 $0 12
ori $21 $0 12
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
ori $25 $0 56
ori $26 $0 60
ori $27 $0 84
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
lw $18 0($18)
beq $11 $18 beq_30
addu $4 $11 $2
beq_30:
lw $19 0($19)
beq $6 $19 beq_31
addu $4 $6 $15
beq_31:
lw $20 0($20)
beq $12 $20 beq_32
addu $22 $12 $22
beq_32:
lw $21 0($21)
beq $12 $21 beq_33
addu $8 $12 $22
beq_33:
lw $22 0($22)
beq $20 $22 beq_34
addu $23 $20 $14
beq_34:
lw $23 0($23)
beq $1 $23 beq_35
addu $18 $1 $16
beq_35:
lw $24 0($24)
beq $0 $24 beq_36
addu $3 $0 $26
beq_36:
lw $25 0($25)
beq $24 $25 beq_37
addu $17 $24 $6
beq_37:
lw $26 0($26)
beq $14 $26 beq_38
addu $25 $14 $0
beq_38:
lw $27 0($27)
beq $25 $27 beq_39
addu $10 $25 $7
beq_39:
ori $19 $0 128
ori $20 $0 12
ori $21 $0 12
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
ori $25 $0 56
ori $26 $0 60
ori $27 $0 84
ori $28 $0 96
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
lw $19 0($19)
beq $19 $19 beq_40
addu $18 $19 $0
beq_40:
lw $20 0($20)
beq $4 $20 beq_41
addu $2 $4 $1
beq_41:
lw $21 0($21)
beq $14 $21 beq_42
addu $10 $14 $13
beq_42:
lw $22 0($22)
beq $8 $22 beq_43
addu $18 $8 $22
beq_43:
lw $23 0($23)
beq $3 $23 beq_44
addu $14 $3 $12
beq_44:
lw $24 0($24)
beq $25 $24 beq_45
addu $21 $25 $13
beq_45:
lw $25 0($25)
beq $23 $25 beq_46
addu $12 $23 $19
beq_46:
lw $26 0($26)
beq $8 $26 beq_47
addu $11 $8 $27
beq_47:
lw $27 0($27)
beq $23 $27 beq_48
addu $19 $23 $13
beq_48:
lw $28 0($28)
beq $3 $28 beq_49
addu $4 $3 $1
beq_49:
ori $20 $0 12
ori $21 $0 12
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
ori $25 $0 56
ori $26 $0 60
ori $27 $0 84
ori $28 $0 96
ori $29 $0 128
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
lw $20 0($20)
beq $23 $20 beq_50
addu $8 $23 $16
beq_50:
lw $21 0($21)
beq $15 $21 beq_51
addu $23 $15 $0
beq_51:
lw $22 0($22)
beq $27 $22 beq_52
addu $27 $27 $24
beq_52:
lw $23 0($23)
beq $29 $23 beq_53
addu $19 $29 $5
beq_53:
lw $24 0($24)
beq $25 $24 beq_54
addu $27 $25 $4
beq_54:
lw $25 0($25)
beq $0 $25 beq_55
addu $6 $0 $3
beq_55:
lw $26 0($26)
beq $21 $26 beq_56
addu $4 $21 $11
beq_56:
lw $27 0($27)
beq $8 $27 beq_57
addu $2 $8 $10
beq_57:
lw $28 0($28)
beq $19 $28 beq_58
addu $16 $19 $9
beq_58:
lw $29 0($29)
beq $1 $29 beq_59
addu $19 $1 $29
beq_59:
ori $21 $0 12
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
ori $25 $0 56
ori $26 $0 60
ori $27 $0 84
ori $28 $0 96
ori $29 $0 128
ori $30 $0 12
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
lw $21 0($21)
beq $4 $21 beq_60
addu $6 $4 $7
beq_60:
lw $22 0($22)
beq $4 $22 beq_61
addu $18 $4 $6
beq_61:
lw $23 0($23)
beq $8 $23 beq_62
addu $4 $8 $10
beq_62:
lw $24 0($24)
beq $26 $24 beq_63
addu $21 $26 $16
beq_63:
lw $25 0($25)
beq $2 $25 beq_64
addu $3 $2 $6
beq_64:
lw $26 0($26)
beq $29 $26 beq_65
addu $5 $29 $11
beq_65:
lw $27 0($27)
beq $1 $27 beq_66
addu $9 $1 $4
beq_66:
lw $28 0($28)
beq $3 $28 beq_67
addu $26 $3 $29
beq_67:
lw $29 0($29)
beq $0 $29 beq_68
addu $24 $0 $28
beq_68:
lw $30 0($30)
beq $3 $30 beq_69
addu $7 $3 $23
beq_69:
ori $22 $0 12
ori $23 $0 24
ori $24 $0 56
ori $25 $0 56
ori $26 $0 60
ori $27 $0 84
ori $28 $0 96
ori $29 $0 128
ori $30 $0 12
ori $31 $0 12
sw $23 0($22)
sw $24 0($23)
sw $25 0($24)
sw $26 0($25)
sw $27 0($26)
sw $28 0($27)
sw $29 0($28)
sw $30 0($29)
sw $31 0($30)
lw $22 0($22)
beq $12 $22 beq_70
addu $23 $12 $23
beq_70:
lw $23 0($23)
beq $25 $23 beq_71
addu $5 $25 $29
beq_71:
lw $24 0($24)
beq $30 $24 beq_72
addu $25 $30 $24
beq_72:
lw $25 0($25)
beq $27 $25 beq_73
addu $29 $27 $3
beq_73:
lw $26 0($26)
beq $14 $26 beq_74
addu $30 $14 $7
beq_74:
lw $27 0($27)
beq $23 $27 beq_75
addu $7 $23 $14
beq_75:
lw $28 0($28)
beq $9 $28 beq_76
addu $17 $9 $19
beq_76:
lw $29 0($29)
beq $0 $29 beq_77
addu $9 $0 $28
beq_77:
lw $30 0($30)
beq $9 $30 beq_78
addu $18 $9 $23
beq_78:
lw $31 0($31)
beq $25 $31 beq_79
addu $18 $25 $23
beq_79:
