.text
ori $0 $0 28
ori $1 $0 48
ori $2 $0 76
ori $3 $0 100
ori $4 $0 120
ori $5 $0 128
ori $6 $0 148
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
addu $0 $4 $6
beq $4 $0 beq_0
addu $4 $4 $6
beq_0:
addu $1 $6 $4
beq $6 $1 beq_1
addu $0 $6 $4
beq_1:
addu $2 $2 $7
beq $2 $2 beq_2
addu $0 $2 $7
beq_2:
addu $3 $7 $7
beq $7 $3 beq_3
addu $8 $7 $7
beq_3:
addu $4 $7 $7
beq $7 $4 beq_4
addu $5 $7 $7
beq_4:
addu $5 $6 $1
beq $6 $5 beq_5
addu $9 $6 $1
beq_5:
addu $6 $7 $7
beq $7 $6 beq_6
addu $0 $7 $7
beq_6:
addu $7 $1 $9
beq $1 $7 beq_7
addu $4 $1 $9
beq_7:
addu $8 $4 $3
beq $4 $8 beq_8
addu $5 $4 $3
beq_8:
addu $9 $5 $5
beq $5 $9 beq_9
addu $4 $5 $5
beq_9:
ori $1 $0 48
ori $2 $0 76
ori $3 $0 100
ori $4 $0 120
ori $5 $0 128
ori $6 $0 148
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
addu $1 $0 $8
beq $0 $1 beq_10
addu $10 $0 $8
beq_10:
addu $2 $3 $6
beq $3 $2 beq_11
addu $5 $3 $6
beq_11:
addu $3 $5 $3
beq $5 $3 beq_12
addu $10 $5 $3
beq_12:
addu $4 $8 $9
beq $8 $4 beq_13
addu $5 $8 $9
beq_13:
addu $5 $6 $5
beq $6 $5 beq_14
addu $5 $6 $5
beq_14:
addu $6 $3 $10
beq $3 $6 beq_15
addu $5 $3 $10
beq_15:
addu $7 $7 $6
beq $7 $7 beq_16
addu $1 $7 $6
beq_16:
addu $8 $4 $3
beq $4 $8 beq_17
addu $7 $4 $3
beq_17:
addu $9 $9 $9
beq $9 $9 beq_18
addu $10 $9 $9
beq_18:
addu $10 $1 $1
beq $1 $10 beq_19
addu $10 $1 $1
beq_19:
ori $2 $0 76
ori $3 $0 100
ori $4 $0 120
ori $5 $0 128
ori $6 $0 148
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
addu $2 $10 $6
beq $10 $2 beq_20
addu $2 $10 $6
beq_20:
addu $3 $1 $7
beq $1 $3 beq_21
addu $7 $1 $7
beq_21:
addu $4 $5 $6
beq $5 $4 beq_22
addu $6 $5 $6
beq_22:
addu $5 $3 $11
beq $3 $5 beq_23
addu $1 $3 $11
beq_23:
addu $6 $11 $11
beq $11 $6 beq_24
addu $0 $11 $11
beq_24:
addu $7 $11 $6
beq $11 $7 beq_25
addu $2 $11 $6
beq_25:
addu $8 $7 $8
beq $7 $8 beq_26
addu $11 $7 $8
beq_26:
addu $9 $2 $3
beq $2 $9 beq_27
addu $11 $2 $3
beq_27:
addu $10 $7 $10
beq $7 $10 beq_28
addu $7 $7 $10
beq_28:
addu $11 $11 $11
beq $11 $11 beq_29
addu $5 $11 $11
beq_29:
ori $3 $0 100
ori $4 $0 120
ori $5 $0 128
ori $6 $0 148
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
addu $3 $11 $8
beq $11 $3 beq_30
addu $0 $11 $8
beq_30:
addu $4 $11 $9
beq $11 $4 beq_31
addu $12 $11 $9
beq_31:
addu $5 $9 $12
beq $9 $5 beq_32
addu $0 $9 $12
beq_32:
addu $6 $3 $6
beq $3 $6 beq_33
addu $5 $3 $6
beq_33:
addu $7 $7 $6
beq $7 $7 beq_34
addu $2 $7 $6
beq_34:
addu $8 $8 $4
beq $8 $8 beq_35
addu $2 $8 $4
beq_35:
addu $9 $8 $5
beq $8 $9 beq_36
addu $5 $8 $5
beq_36:
addu $10 $7 $2
beq $7 $10 beq_37
addu $7 $7 $2
beq_37:
addu $11 $10 $2
beq $10 $11 beq_38
addu $0 $10 $2
beq_38:
addu $12 $12 $5
beq $12 $12 beq_39
addu $9 $12 $5
beq_39:
ori $4 $0 120
ori $5 $0 128
ori $6 $0 148
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
addu $4 $2 $2
beq $2 $4 beq_40
addu $2 $2 $2
beq_40:
addu $5 $13 $1
beq $13 $5 beq_41
addu $0 $13 $1
beq_41:
addu $6 $3 $0
beq $3 $6 beq_42
addu $12 $3 $0
beq_42:
addu $7 $1 $4
beq $1 $7 beq_43
addu $13 $1 $4
beq_43:
addu $8 $1 $7
beq $1 $8 beq_44
addu $13 $1 $7
beq_44:
addu $9 $7 $1
beq $7 $9 beq_45
addu $13 $7 $1
beq_45:
addu $10 $12 $3
beq $12 $10 beq_46
addu $5 $12 $3
beq_46:
addu $11 $5 $8
beq $5 $11 beq_47
addu $2 $5 $8
beq_47:
addu $12 $3 $4
beq $3 $12 beq_48
addu $2 $3 $4
beq_48:
addu $13 $9 $7
beq $9 $13 beq_49
addu $9 $9 $7
beq_49:
ori $5 $0 128
ori $6 $0 148
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
addu $5 $5 $14
beq $5 $5 beq_50
addu $8 $5 $14
beq_50:
addu $6 $7 $8
beq $7 $6 beq_51
addu $14 $7 $8
beq_51:
addu $7 $2 $6
beq $2 $7 beq_52
addu $10 $2 $6
beq_52:
addu $8 $12 $0
beq $12 $8 beq_53
addu $14 $12 $0
beq_53:
addu $9 $11 $6
beq $11 $9 beq_54
addu $0 $11 $6
beq_54:
addu $10 $0 $3
beq $0 $10 beq_55
addu $10 $0 $3
beq_55:
addu $11 $8 $2
beq $8 $11 beq_56
addu $5 $8 $2
beq_56:
addu $12 $7 $2
beq $7 $12 beq_57
addu $11 $7 $2
beq_57:
addu $13 $10 $0
beq $10 $13 beq_58
addu $14 $10 $0
beq_58:
addu $14 $12 $9
beq $12 $14 beq_59
addu $11 $12 $9
beq_59:
ori $6 $0 148
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
addu $6 $1 $2
beq $1 $6 beq_60
addu $3 $1 $2
beq_60:
addu $7 $0 $3
beq $0 $7 beq_61
addu $14 $0 $3
beq_61:
addu $8 $9 $15
beq $9 $8 beq_62
addu $5 $9 $15
beq_62:
addu $9 $2 $13
beq $2 $9 beq_63
addu $1 $2 $13
beq_63:
addu $10 $5 $11
beq $5 $10 beq_64
addu $14 $5 $11
beq_64:
addu $11 $4 $15
beq $4 $11 beq_65
addu $1 $4 $15
beq_65:
addu $12 $14 $0
beq $14 $12 beq_66
addu $15 $14 $0
beq_66:
addu $13 $12 $4
beq $12 $13 beq_67
addu $1 $12 $4
beq_67:
addu $14 $7 $8
beq $7 $14 beq_68
addu $15 $7 $8
beq_68:
addu $15 $13 $5
beq $13 $15 beq_69
addu $7 $13 $5
beq_69:
ori $7 $0 152
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
addu $7 $6 $5
beq $6 $7 beq_70
addu $7 $6 $5
beq_70:
addu $8 $3 $7
beq $3 $8 beq_71
addu $12 $3 $7
beq_71:
addu $9 $10 $16
beq $10 $9 beq_72
addu $0 $10 $16
beq_72:
addu $10 $15 $3
beq $15 $10 beq_73
addu $16 $15 $3
beq_73:
addu $11 $5 $5
beq $5 $11 beq_74
addu $1 $5 $5
beq_74:
addu $12 $5 $1
beq $5 $12 beq_75
addu $4 $5 $1
beq_75:
addu $13 $12 $15
beq $12 $13 beq_76
addu $13 $12 $15
beq_76:
addu $14 $0 $9
beq $0 $14 beq_77
addu $9 $0 $9
beq_77:
addu $15 $5 $13
beq $5 $15 beq_78
addu $6 $5 $13
beq_78:
addu $16 $5 $8
beq $5 $16 beq_79
addu $7 $5 $8
beq_79:
ori $8 $0 160
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
addu $8 $16 $11
beq $16 $8 beq_80
addu $13 $16 $11
beq_80:
addu $9 $2 $13
beq $2 $9 beq_81
addu $10 $2 $13
beq_81:
addu $10 $14 $14
beq $14 $10 beq_82
addu $6 $14 $14
beq_82:
addu $11 $9 $13
beq $9 $11 beq_83
addu $8 $9 $13
beq_83:
addu $12 $0 $10
beq $0 $12 beq_84
addu $13 $0 $10
beq_84:
addu $13 $15 $0
beq $15 $13 beq_85
addu $15 $15 $0
beq_85:
addu $14 $14 $7
beq $14 $14 beq_86
addu $0 $14 $7
beq_86:
addu $15 $11 $8
beq $11 $15 beq_87
addu $11 $11 $8
beq_87:
addu $16 $15 $13
beq $15 $16 beq_88
addu $4 $15 $13
beq_88:
addu $17 $14 $1
beq $14 $17 beq_89
addu $4 $14 $1
beq_89:
ori $9 $0 176
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
addu $9 $5 $16
beq $5 $9 beq_90
addu $6 $5 $16
beq_90:
addu $10 $13 $4
beq $13 $10 beq_91
addu $1 $13 $4
beq_91:
addu $11 $18 $8
beq $18 $11 beq_92
addu $3 $18 $8
beq_92:
addu $12 $2 $18
beq $2 $12 beq_93
addu $1 $2 $18
beq_93:
addu $13 $9 $1
beq $9 $13 beq_94
addu $7 $9 $1
beq_94:
addu $14 $8 $2
beq $8 $14 beq_95
addu $6 $8 $2
beq_95:
addu $15 $7 $2
beq $7 $15 beq_96
addu $14 $7 $2
beq_96:
addu $16 $16 $1
beq $16 $16 beq_97
addu $13 $16 $1
beq_97:
addu $17 $4 $11
beq $4 $17 beq_98
addu $3 $4 $11
beq_98:
addu $18 $17 $16
beq $17 $18 beq_99
addu $14 $17 $16
beq_99:
ori $10 $0 28
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
addu $10 $12 $17
beq $12 $10 beq_100
addu $9 $12 $17
beq_100:
addu $11 $12 $5
beq $12 $11 beq_101
addu $13 $12 $5
beq_101:
addu $12 $0 $14
beq $0 $12 beq_102
addu $13 $0 $14
beq_102:
addu $13 $11 $15
beq $11 $13 beq_103
addu $8 $11 $15
beq_103:
addu $14 $19 $18
beq $19 $14 beq_104
addu $9 $19 $18
beq_104:
addu $15 $0 $4
beq $0 $15 beq_105
addu $17 $0 $4
beq_105:
addu $16 $14 $15
beq $14 $16 beq_106
addu $3 $14 $15
beq_106:
addu $17 $10 $9
beq $10 $17 beq_107
addu $5 $10 $9
beq_107:
addu $18 $3 $18
beq $3 $18 beq_108
addu $6 $3 $18
beq_108:
addu $19 $2 $10
beq $2 $19 beq_109
addu $11 $2 $10
beq_109:
ori $11 $0 48
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
addu $11 $0 $20
beq $0 $11 beq_110
addu $3 $0 $20
beq_110:
addu $12 $18 $9
beq $18 $12 beq_111
addu $0 $18 $9
beq_111:
addu $13 $12 $1
beq $12 $13 beq_112
addu $8 $12 $1
beq_112:
addu $14 $4 $4
beq $4 $14 beq_113
addu $19 $4 $4
beq_113:
addu $15 $12 $14
beq $12 $15 beq_114
addu $3 $12 $14
beq_114:
addu $16 $19 $6
beq $19 $16 beq_115
addu $3 $19 $6
beq_115:
addu $17 $20 $13
beq $20 $17 beq_116
addu $20 $20 $13
beq_116:
addu $18 $19 $19
beq $19 $18 beq_117
addu $17 $19 $19
beq_117:
addu $19 $10 $3
beq $10 $19 beq_118
addu $14 $10 $3
beq_118:
addu $20 $5 $11
beq $5 $20 beq_119
addu $19 $5 $11
beq_119:
ori $12 $0 76
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
addu $12 $6 $7
beq $6 $12 beq_120
addu $2 $6 $7
beq_120:
addu $13 $20 $21
beq $20 $13 beq_121
addu $5 $20 $21
beq_121:
addu $14 $0 $0
beq $0 $14 beq_122
addu $18 $0 $0
beq_122:
addu $15 $7 $4
beq $7 $15 beq_123
addu $3 $7 $4
beq_123:
addu $16 $16 $7
beq $16 $16 beq_124
addu $18 $16 $7
beq_124:
addu $17 $3 $14
beq $3 $17 beq_125
addu $2 $3 $14
beq_125:
addu $18 $2 $17
beq $2 $18 beq_126
addu $15 $2 $17
beq_126:
addu $19 $8 $3
beq $8 $19 beq_127
addu $15 $8 $3
beq_127:
addu $20 $11 $19
beq $11 $20 beq_128
addu $14 $11 $19
beq_128:
addu $21 $19 $3
beq $19 $21 beq_129
addu $5 $19 $3
beq_129:
ori $13 $0 100
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
addu $13 $5 $16
beq $5 $13 beq_130
addu $9 $5 $16
beq_130:
addu $14 $17 $6
beq $17 $14 beq_131
addu $11 $17 $6
beq_131:
addu $15 $5 $6
beq $5 $15 beq_132
addu $13 $5 $6
beq_132:
addu $16 $7 $20
beq $7 $16 beq_133
addu $11 $7 $20
beq_133:
addu $17 $20 $0
beq $20 $17 beq_134
addu $10 $20 $0
beq_134:
addu $18 $14 $6
beq $14 $18 beq_135
addu $19 $14 $6
beq_135:
addu $19 $15 $7
beq $15 $19 beq_136
addu $3 $15 $7
beq_136:
addu $20 $16 $6
beq $16 $20 beq_137
addu $16 $16 $6
beq_137:
addu $21 $13 $2
beq $13 $21 beq_138
addu $15 $13 $2
beq_138:
addu $22 $0 $16
beq $0 $22 beq_139
addu $6 $0 $16
beq_139:
ori $14 $0 120
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
addu $14 $10 $3
beq $10 $14 beq_140
addu $11 $10 $3
beq_140:
addu $15 $19 $23
beq $19 $15 beq_141
addu $17 $19 $23
beq_141:
addu $16 $12 $23
beq $12 $16 beq_142
addu $5 $12 $23
beq_142:
addu $17 $20 $15
beq $20 $17 beq_143
addu $2 $20 $15
beq_143:
addu $18 $1 $17
beq $1 $18 beq_144
addu $15 $1 $17
beq_144:
addu $19 $6 $10
beq $6 $19 beq_145
addu $6 $6 $10
beq_145:
addu $20 $21 $13
beq $21 $20 beq_146
addu $16 $21 $13
beq_146:
addu $21 $18 $2
beq $18 $21 beq_147
addu $11 $18 $2
beq_147:
addu $22 $21 $1
beq $21 $22 beq_148
addu $16 $21 $1
beq_148:
addu $23 $5 $3
beq $5 $23 beq_149
addu $20 $5 $3
beq_149:
ori $15 $0 128
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
addu $15 $24 $21
beq $24 $15 beq_150
addu $11 $24 $21
beq_150:
addu $16 $11 $16
beq $11 $16 beq_151
addu $10 $11 $16
beq_151:
addu $17 $23 $19
beq $23 $17 beq_152
addu $18 $23 $19
beq_152:
addu $18 $9 $12
beq $9 $18 beq_153
addu $6 $9 $12
beq_153:
addu $19 $15 $13
beq $15 $19 beq_154
addu $4 $15 $13
beq_154:
addu $20 $7 $8
beq $7 $20 beq_155
addu $7 $7 $8
beq_155:
addu $21 $23 $8
beq $23 $21 beq_156
addu $4 $23 $8
beq_156:
addu $22 $12 $5
beq $12 $22 beq_157
addu $6 $12 $5
beq_157:
addu $23 $6 $4
beq $6 $23 beq_158
addu $22 $6 $4
beq_158:
addu $24 $13 $23
beq $13 $24 beq_159
addu $18 $13 $23
beq_159:
ori $16 $0 148
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
ori $25 $0 128
addu $16 $4 $5
beq $4 $16 beq_160
addu $7 $4 $5
beq_160:
addu $17 $23 $18
beq $23 $17 beq_161
addu $5 $23 $18
beq_161:
addu $18 $8 $18
beq $8 $18 beq_162
addu $0 $8 $18
beq_162:
addu $19 $19 $1
beq $19 $19 beq_163
addu $9 $19 $1
beq_163:
addu $20 $22 $15
beq $22 $20 beq_164
addu $7 $22 $15
beq_164:
addu $21 $4 $21
beq $4 $21 beq_165
addu $25 $4 $21
beq_165:
addu $22 $21 $19
beq $21 $22 beq_166
addu $18 $21 $19
beq_166:
addu $23 $25 $5
beq $25 $23 beq_167
addu $23 $25 $5
beq_167:
addu $24 $16 $3
beq $16 $24 beq_168
addu $20 $16 $3
beq_168:
addu $25 $5 $24
beq $5 $25 beq_169
addu $2 $5 $24
beq_169:
ori $17 $0 152
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
ori $25 $0 128
ori $26 $0 148
addu $17 $25 $23
beq $25 $17 beq_170
addu $19 $25 $23
beq_170:
addu $18 $19 $0
beq $19 $18 beq_171
addu $4 $19 $0
beq_171:
addu $19 $17 $4
beq $17 $19 beq_172
addu $11 $17 $4
beq_172:
addu $20 $14 $11
beq $14 $20 beq_173
addu $4 $14 $11
beq_173:
addu $21 $3 $15
beq $3 $21 beq_174
addu $23 $3 $15
beq_174:
addu $22 $23 $4
beq $23 $22 beq_175
addu $8 $23 $4
beq_175:
addu $23 $8 $25
beq $8 $23 beq_176
addu $19 $8 $25
beq_176:
addu $24 $20 $23
beq $20 $24 beq_177
addu $13 $20 $23
beq_177:
addu $25 $1 $17
beq $1 $25 beq_178
addu $10 $1 $17
beq_178:
addu $26 $0 $26
beq $0 $26 beq_179
addu $14 $0 $26
beq_179:
ori $18 $0 160
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
ori $25 $0 128
ori $26 $0 148
ori $27 $0 152
addu $18 $11 $23
beq $11 $18 beq_180
addu $4 $11 $23
beq_180:
addu $19 $20 $1
beq $20 $19 beq_181
addu $19 $20 $1
beq_181:
addu $20 $20 $21
beq $20 $20 beq_182
addu $24 $20 $21
beq_182:
addu $21 $20 $13
beq $20 $21 beq_183
addu $20 $20 $13
beq_183:
addu $22 $21 $14
beq $21 $22 beq_184
addu $4 $21 $14
beq_184:
addu $23 $8 $18
beq $8 $23 beq_185
addu $27 $8 $18
beq_185:
addu $24 $3 $9
beq $3 $24 beq_186
addu $15 $3 $9
beq_186:
addu $25 $10 $12
beq $10 $25 beq_187
addu $2 $10 $12
beq_187:
addu $26 $13 $22
beq $13 $26 beq_188
addu $4 $13 $22
beq_188:
addu $27 $7 $16
beq $7 $27 beq_189
addu $7 $7 $16
beq_189:
ori $19 $0 176
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
ori $25 $0 128
ori $26 $0 148
ori $27 $0 152
ori $28 $0 160
addu $19 $1 $11
beq $1 $19 beq_190
addu $4 $1 $11
beq_190:
addu $20 $16 $9
beq $16 $20 beq_191
addu $17 $16 $9
beq_191:
addu $21 $6 $22
beq $6 $21 beq_192
addu $4 $6 $22
beq_192:
addu $22 $14 $26
beq $14 $22 beq_193
addu $22 $14 $26
beq_193:
addu $23 $19 $1
beq $19 $23 beq_194
addu $28 $19 $1
beq_194:
addu $24 $13 $11
beq $13 $24 beq_195
addu $26 $13 $11
beq_195:
addu $25 $18 $20
beq $18 $25 beq_196
addu $12 $18 $20
beq_196:
addu $26 $6 $12
beq $6 $26 beq_197
addu $17 $6 $12
beq_197:
addu $27 $25 $25
beq $25 $27 beq_198
addu $10 $25 $25
beq_198:
addu $28 $22 $13
beq $22 $28 beq_199
addu $4 $22 $13
beq_199:
ori $20 $0 28
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
ori $25 $0 128
ori $26 $0 148
ori $27 $0 152
ori $28 $0 160
ori $29 $0 176
addu $20 $23 $17
beq $23 $20 beq_200
addu $23 $23 $17
beq_200:
addu $21 $0 $3
beq $0 $21 beq_201
addu $16 $0 $3
beq_201:
addu $22 $17 $11
beq $17 $22 beq_202
addu $25 $17 $11
beq_202:
addu $23 $22 $10
beq $22 $23 beq_203
addu $14 $22 $10
beq_203:
addu $24 $25 $16
beq $25 $24 beq_204
addu $21 $25 $16
beq_204:
addu $25 $5 $0
beq $5 $25 beq_205
addu $23 $5 $0
beq_205:
addu $26 $3 $0
beq $3 $26 beq_206
addu $14 $3 $0
beq_206:
addu $27 $8 $11
beq $8 $27 beq_207
addu $1 $8 $11
beq_207:
addu $28 $23 $8
beq $23 $28 beq_208
addu $13 $23 $8
beq_208:
addu $29 $16 $2
beq $16 $29 beq_209
addu $1 $16 $2
beq_209:
ori $21 $0 48
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
ori $25 $0 128
ori $26 $0 148
ori $27 $0 152
ori $28 $0 160
ori $29 $0 176
ori $30 $0 28
addu $21 $10 $14
beq $10 $21 beq_210
addu $23 $10 $14
beq_210:
addu $22 $22 $19
beq $22 $22 beq_211
addu $13 $22 $19
beq_211:
addu $23 $19 $26
beq $19 $23 beq_212
addu $16 $19 $26
beq_212:
addu $24 $5 $25
beq $5 $24 beq_213
addu $6 $5 $25
beq_213:
addu $25 $5 $2
beq $5 $25 beq_214
addu $27 $5 $2
beq_214:
addu $26 $15 $26
beq $15 $26 beq_215
addu $22 $15 $26
beq_215:
addu $27 $3 $2
beq $3 $27 beq_216
addu $3 $3 $2
beq_216:
addu $28 $11 $28
beq $11 $28 beq_217
addu $22 $11 $28
beq_217:
addu $29 $24 $5
beq $24 $29 beq_218
addu $0 $24 $5
beq_218:
addu $30 $16 $17
beq $16 $30 beq_219
addu $11 $16 $17
beq_219:
ori $22 $0 76
ori $23 $0 100
ori $24 $0 120
ori $25 $0 128
ori $26 $0 148
ori $27 $0 152
ori $28 $0 160
ori $29 $0 176
ori $30 $0 28
ori $31 $0 48
addu $22 $12 $17
beq $12 $22 beq_220
addu $12 $12 $17
beq_220:
addu $23 $27 $18
beq $27 $23 beq_221
addu $5 $27 $18
beq_221:
addu $24 $2 $17
beq $2 $24 beq_222
addu $31 $2 $17
beq_222:
addu $25 $20 $19
beq $20 $25 beq_223
addu $7 $20 $19
beq_223:
addu $26 $0 $20
beq $0 $26 beq_224
addu $10 $0 $20
beq_224:
addu $27 $5 $2
beq $5 $27 beq_225
addu $26 $5 $2
beq_225:
addu $28 $13 $22
beq $13 $28 beq_226
addu $18 $13 $22
beq_226:
addu $29 $15 $20
beq $15 $29 beq_227
addu $4 $15 $20
beq_227:
addu $30 $6 $1
beq $6 $30 beq_228
addu $1 $6 $1
beq_228:
addu $31 $12 $16
beq $12 $31 beq_229
addu $21 $12 $16
beq_229:
