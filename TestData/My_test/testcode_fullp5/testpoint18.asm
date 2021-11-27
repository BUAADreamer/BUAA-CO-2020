.text
ori $0 $0 4
ori $1 $0 40
ori $2 $0 72
ori $3 $0 72
ori $4 $0 108
ori $5 $0 140
ori $6 $0 160
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
addu $0 $9 $1
beq $0 $1 beq_0
addu $5 $9 $1
beq_0:
addu $1 $5 $5
beq $1 $5 beq_1
addu $9 $5 $5
beq_1:
addu $2 $6 $6
beq $2 $6 beq_2
addu $4 $6 $6
beq_2:
addu $3 $0 $1
beq $3 $1 beq_3
addu $3 $0 $1
beq_3:
addu $4 $7 $0
beq $4 $0 beq_4
addu $9 $7 $0
beq_4:
addu $5 $3 $1
beq $5 $1 beq_5
addu $0 $3 $1
beq_5:
addu $6 $9 $1
beq $6 $1 beq_6
addu $4 $9 $1
beq_6:
addu $7 $9 $7
beq $7 $7 beq_7
addu $7 $9 $7
beq_7:
addu $8 $9 $3
beq $8 $3 beq_8
addu $3 $9 $3
beq_8:
addu $9 $2 $7
beq $9 $7 beq_9
addu $7 $2 $7
beq_9:
ori $1 $0 40
ori $2 $0 72
ori $3 $0 72
ori $4 $0 108
ori $5 $0 140
ori $6 $0 160
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
addu $1 $1 $9
beq $1 $9 beq_10
addu $3 $1 $9
beq_10:
addu $2 $10 $1
beq $2 $1 beq_11
addu $7 $10 $1
beq_11:
addu $3 $6 $3
beq $3 $3 beq_12
addu $9 $6 $3
beq_12:
addu $4 $1 $8
beq $4 $8 beq_13
addu $3 $1 $8
beq_13:
addu $5 $6 $1
beq $5 $1 beq_14
addu $0 $6 $1
beq_14:
addu $6 $3 $6
beq $6 $6 beq_15
addu $8 $3 $6
beq_15:
addu $7 $6 $6
beq $7 $6 beq_16
addu $0 $6 $6
beq_16:
addu $8 $9 $1
beq $8 $1 beq_17
addu $7 $9 $1
beq_17:
addu $9 $9 $8
beq $9 $8 beq_18
addu $9 $9 $8
beq_18:
addu $10 $3 $7
beq $10 $7 beq_19
addu $2 $3 $7
beq_19:
ori $2 $0 72
ori $3 $0 72
ori $4 $0 108
ori $5 $0 140
ori $6 $0 160
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
addu $2 $9 $4
beq $2 $4 beq_20
addu $7 $9 $4
beq_20:
addu $3 $4 $6
beq $3 $6 beq_21
addu $8 $4 $6
beq_21:
addu $4 $11 $3
beq $4 $3 beq_22
addu $7 $11 $3
beq_22:
addu $5 $5 $4
beq $5 $4 beq_23
addu $10 $5 $4
beq_23:
addu $6 $5 $7
beq $6 $7 beq_24
addu $1 $5 $7
beq_24:
addu $7 $1 $4
beq $7 $4 beq_25
addu $8 $1 $4
beq_25:
addu $8 $2 $1
beq $8 $1 beq_26
addu $8 $2 $1
beq_26:
addu $9 $7 $7
beq $9 $7 beq_27
addu $2 $7 $7
beq_27:
addu $10 $8 $3
beq $10 $3 beq_28
addu $9 $8 $3
beq_28:
addu $11 $8 $5
beq $11 $5 beq_29
addu $7 $8 $5
beq_29:
ori $3 $0 72
ori $4 $0 108
ori $5 $0 140
ori $6 $0 160
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
addu $3 $11 $0
beq $3 $0 beq_30
addu $1 $11 $0
beq_30:
addu $4 $8 $10
beq $4 $10 beq_31
addu $12 $8 $10
beq_31:
addu $5 $11 $9
beq $5 $9 beq_32
addu $12 $11 $9
beq_32:
addu $6 $2 $5
beq $6 $5 beq_33
addu $8 $2 $5
beq_33:
addu $7 $9 $11
beq $7 $11 beq_34
addu $6 $9 $11
beq_34:
addu $8 $6 $3
beq $8 $3 beq_35
addu $8 $6 $3
beq_35:
addu $9 $5 $2
beq $9 $2 beq_36
addu $4 $5 $2
beq_36:
addu $10 $8 $5
beq $10 $5 beq_37
addu $2 $8 $5
beq_37:
addu $11 $2 $11
beq $11 $11 beq_38
addu $3 $2 $11
beq_38:
addu $12 $6 $0
beq $12 $0 beq_39
addu $7 $6 $0
beq_39:
ori $4 $0 108
ori $5 $0 140
ori $6 $0 160
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
addu $4 $10 $7
beq $4 $7 beq_40
addu $10 $10 $7
beq_40:
addu $5 $4 $0
beq $5 $0 beq_41
addu $10 $4 $0
beq_41:
addu $6 $0 $12
beq $6 $12 beq_42
addu $6 $0 $12
beq_42:
addu $7 $2 $9
beq $7 $9 beq_43
addu $1 $2 $9
beq_43:
addu $8 $10 $6
beq $8 $6 beq_44
addu $9 $10 $6
beq_44:
addu $9 $5 $1
beq $9 $1 beq_45
addu $1 $5 $1
beq_45:
addu $10 $7 $4
beq $10 $4 beq_46
addu $8 $7 $4
beq_46:
addu $11 $5 $5
beq $11 $5 beq_47
addu $8 $5 $5
beq_47:
addu $12 $5 $13
beq $12 $13 beq_48
addu $0 $5 $13
beq_48:
addu $13 $5 $13
beq $13 $13 beq_49
addu $4 $5 $13
beq_49:
ori $5 $0 140
ori $6 $0 160
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
addu $5 $14 $6
beq $5 $6 beq_50
addu $0 $14 $6
beq_50:
addu $6 $10 $2
beq $6 $2 beq_51
addu $14 $10 $2
beq_51:
addu $7 $0 $10
beq $7 $10 beq_52
addu $12 $0 $10
beq_52:
addu $8 $5 $8
beq $8 $8 beq_53
addu $7 $5 $8
beq_53:
addu $9 $1 $9
beq $9 $9 beq_54
addu $7 $1 $9
beq_54:
addu $10 $3 $13
beq $10 $13 beq_55
addu $9 $3 $13
beq_55:
addu $11 $7 $10
beq $11 $10 beq_56
addu $8 $7 $10
beq_56:
addu $12 $4 $3
beq $12 $3 beq_57
addu $13 $4 $3
beq_57:
addu $13 $14 $2
beq $13 $2 beq_58
addu $9 $14 $2
beq_58:
addu $14 $4 $9
beq $14 $9 beq_59
addu $4 $4 $9
beq_59:
ori $6 $0 160
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
addu $6 $7 $4
beq $6 $4 beq_60
addu $4 $7 $4
beq_60:
addu $7 $12 $6
beq $7 $6 beq_61
addu $14 $12 $6
beq_61:
addu $8 $5 $12
beq $8 $12 beq_62
addu $8 $5 $12
beq_62:
addu $9 $6 $11
beq $9 $11 beq_63
addu $4 $6 $11
beq_63:
addu $10 $15 $6
beq $10 $6 beq_64
addu $6 $15 $6
beq_64:
addu $11 $15 $2
beq $11 $2 beq_65
addu $15 $15 $2
beq_65:
addu $12 $9 $1
beq $12 $1 beq_66
addu $13 $9 $1
beq_66:
addu $13 $3 $2
beq $13 $2 beq_67
addu $4 $3 $2
beq_67:
addu $14 $7 $8
beq $14 $8 beq_68
addu $8 $7 $8
beq_68:
addu $15 $3 $1
beq $15 $1 beq_69
addu $12 $3 $1
beq_69:
ori $7 $0 160
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
addu $7 $3 $5
beq $7 $5 beq_70
addu $6 $3 $5
beq_70:
addu $8 $4 $6
beq $8 $6 beq_71
addu $1 $4 $6
beq_71:
addu $9 $15 $11
beq $9 $11 beq_72
addu $16 $15 $11
beq_72:
addu $10 $1 $3
beq $10 $3 beq_73
addu $7 $1 $3
beq_73:
addu $11 $6 $15
beq $11 $15 beq_74
addu $7 $6 $15
beq_74:
addu $12 $14 $14
beq $12 $14 beq_75
addu $8 $14 $14
beq_75:
addu $13 $14 $7
beq $13 $7 beq_76
addu $4 $14 $7
beq_76:
addu $14 $3 $2
beq $14 $2 beq_77
addu $8 $3 $2
beq_77:
addu $15 $2 $16
beq $15 $16 beq_78
addu $8 $2 $16
beq_78:
addu $16 $2 $1
beq $16 $1 beq_79
addu $14 $2 $1
beq_79:
ori $8 $0 192
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
addu $8 $14 $16
beq $8 $16 beq_80
addu $10 $14 $16
beq_80:
addu $9 $3 $5
beq $9 $5 beq_81
addu $0 $3 $5
beq_81:
addu $10 $9 $9
beq $10 $9 beq_82
addu $16 $9 $9
beq_82:
addu $11 $5 $4
beq $11 $4 beq_83
addu $15 $5 $4
beq_83:
addu $12 $10 $10
beq $12 $10 beq_84
addu $1 $10 $10
beq_84:
addu $13 $4 $10
beq $13 $10 beq_85
addu $14 $4 $10
beq_85:
addu $14 $0 $2
beq $14 $2 beq_86
addu $17 $0 $2
beq_86:
addu $15 $3 $17
beq $15 $17 beq_87
addu $7 $3 $17
beq_87:
addu $16 $9 $16
beq $16 $16 beq_88
addu $9 $9 $16
beq_88:
addu $17 $7 $3
beq $17 $3 beq_89
addu $4 $7 $3
beq_89:
ori $9 $0 220
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
addu $9 $6 $8
beq $9 $8 beq_90
addu $17 $6 $8
beq_90:
addu $10 $10 $16
beq $10 $16 beq_91
addu $18 $10 $16
beq_91:
addu $11 $9 $2
beq $11 $2 beq_92
addu $5 $9 $2
beq_92:
addu $12 $14 $1
beq $12 $1 beq_93
addu $3 $14 $1
beq_93:
addu $13 $12 $17
beq $13 $17 beq_94
addu $16 $12 $17
beq_94:
addu $14 $14 $7
beq $14 $7 beq_95
addu $15 $14 $7
beq_95:
addu $15 $4 $16
beq $15 $16 beq_96
addu $0 $4 $16
beq_96:
addu $16 $14 $10
beq $16 $10 beq_97
addu $9 $14 $10
beq_97:
addu $17 $15 $13
beq $17 $13 beq_98
addu $3 $15 $13
beq_98:
addu $18 $5 $9
beq $18 $9 beq_99
addu $16 $5 $9
beq_99:
ori $10 $0 4
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
addu $10 $14 $6
beq $10 $6 beq_100
addu $9 $14 $6
beq_100:
addu $11 $1 $12
beq $11 $12 beq_101
addu $10 $1 $12
beq_101:
addu $12 $15 $7
beq $12 $7 beq_102
addu $13 $15 $7
beq_102:
addu $13 $14 $11
beq $13 $11 beq_103
addu $8 $14 $11
beq_103:
addu $14 $18 $7
beq $14 $7 beq_104
addu $7 $18 $7
beq_104:
addu $15 $14 $18
beq $15 $18 beq_105
addu $9 $14 $18
beq_105:
addu $16 $0 $16
beq $16 $16 beq_106
addu $6 $0 $16
beq_106:
addu $17 $19 $16
beq $17 $16 beq_107
addu $13 $19 $16
beq_107:
addu $18 $13 $12
beq $18 $12 beq_108
addu $4 $13 $12
beq_108:
addu $19 $17 $4
beq $19 $4 beq_109
addu $17 $17 $4
beq_109:
ori $11 $0 40
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
addu $11 $3 $3
beq $11 $3 beq_110
addu $10 $3 $3
beq_110:
addu $12 $7 $20
beq $12 $20 beq_111
addu $19 $7 $20
beq_111:
addu $13 $19 $16
beq $13 $16 beq_112
addu $12 $19 $16
beq_112:
addu $14 $2 $5
beq $14 $5 beq_113
addu $18 $2 $5
beq_113:
addu $15 $3 $6
beq $15 $6 beq_114
addu $3 $3 $6
beq_114:
addu $16 $0 $14
beq $16 $14 beq_115
addu $16 $0 $14
beq_115:
addu $17 $16 $12
beq $17 $12 beq_116
addu $9 $16 $12
beq_116:
addu $18 $14 $17
beq $18 $17 beq_117
addu $12 $14 $17
beq_117:
addu $19 $5 $10
beq $19 $10 beq_118
addu $7 $5 $10
beq_118:
addu $20 $7 $5
beq $20 $5 beq_119
addu $15 $7 $5
beq_119:
ori $12 $0 72
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
addu $12 $4 $6
beq $12 $6 beq_120
addu $21 $4 $6
beq_120:
addu $13 $2 $6
beq $13 $6 beq_121
addu $12 $2 $6
beq_121:
addu $14 $9 $13
beq $14 $13 beq_122
addu $19 $9 $13
beq_122:
addu $15 $4 $9
beq $15 $9 beq_123
addu $10 $4 $9
beq_123:
addu $16 $4 $12
beq $16 $12 beq_124
addu $8 $4 $12
beq_124:
addu $17 $11 $20
beq $17 $20 beq_125
addu $5 $11 $20
beq_125:
addu $18 $20 $13
beq $18 $13 beq_126
addu $11 $20 $13
beq_126:
addu $19 $13 $20
beq $19 $20 beq_127
addu $12 $13 $20
beq_127:
addu $20 $1 $2
beq $20 $2 beq_128
addu $3 $1 $2
beq_128:
addu $21 $19 $3
beq $21 $3 beq_129
addu $17 $19 $3
beq_129:
ori $13 $0 72
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
addu $13 $18 $15
beq $13 $15 beq_130
addu $15 $18 $15
beq_130:
addu $14 $3 $9
beq $14 $9 beq_131
addu $7 $3 $9
beq_131:
addu $15 $1 $21
beq $15 $21 beq_132
addu $0 $1 $21
beq_132:
addu $16 $8 $4
beq $16 $4 beq_133
addu $18 $8 $4
beq_133:
addu $17 $1 $1
beq $17 $1 beq_134
addu $21 $1 $1
beq_134:
addu $18 $15 $22
beq $18 $22 beq_135
addu $7 $15 $22
beq_135:
addu $19 $14 $9
beq $19 $9 beq_136
addu $2 $14 $9
beq_136:
addu $20 $2 $6
beq $20 $6 beq_137
addu $12 $2 $6
beq_137:
addu $21 $8 $20
beq $21 $20 beq_138
addu $21 $8 $20
beq_138:
addu $22 $3 $6
beq $22 $6 beq_139
addu $13 $3 $6
beq_139:
ori $14 $0 108
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
addu $14 $23 $10
beq $14 $10 beq_140
addu $14 $23 $10
beq_140:
addu $15 $17 $13
beq $15 $13 beq_141
addu $18 $17 $13
beq_141:
addu $16 $21 $1
beq $16 $1 beq_142
addu $19 $21 $1
beq_142:
addu $17 $4 $0
beq $17 $0 beq_143
addu $23 $4 $0
beq_143:
addu $18 $14 $6
beq $18 $6 beq_144
addu $5 $14 $6
beq_144:
addu $19 $6 $21
beq $19 $21 beq_145
addu $2 $6 $21
beq_145:
addu $20 $4 $19
beq $20 $19 beq_146
addu $14 $4 $19
beq_146:
addu $21 $21 $21
beq $21 $21 beq_147
addu $20 $21 $21
beq_147:
addu $22 $22 $6
beq $22 $6 beq_148
addu $18 $22 $6
beq_148:
addu $23 $2 $4
beq $23 $4 beq_149
addu $12 $2 $4
beq_149:
ori $15 $0 140
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
addu $15 $15 $0
beq $15 $0 beq_150
addu $9 $15 $0
beq_150:
addu $16 $1 $6
beq $16 $6 beq_151
addu $13 $1 $6
beq_151:
addu $17 $9 $23
beq $17 $23 beq_152
addu $20 $9 $23
beq_152:
addu $18 $20 $15
beq $18 $15 beq_153
addu $15 $20 $15
beq_153:
addu $19 $2 $7
beq $19 $7 beq_154
addu $3 $2 $7
beq_154:
addu $20 $17 $3
beq $20 $3 beq_155
addu $18 $17 $3
beq_155:
addu $21 $17 $20
beq $21 $20 beq_156
addu $17 $17 $20
beq_156:
addu $22 $10 $24
beq $22 $24 beq_157
addu $5 $10 $24
beq_157:
addu $23 $1 $18
beq $23 $18 beq_158
addu $22 $1 $18
beq_158:
addu $24 $19 $18
beq $24 $18 beq_159
addu $9 $19 $18
beq_159:
ori $16 $0 160
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
ori $25 $0 140
addu $16 $12 $25
beq $16 $25 beq_160
addu $4 $12 $25
beq_160:
addu $17 $24 $17
beq $17 $17 beq_161
addu $15 $24 $17
beq_161:
addu $18 $23 $21
beq $18 $21 beq_162
addu $1 $23 $21
beq_162:
addu $19 $17 $14
beq $19 $14 beq_163
addu $6 $17 $14
beq_163:
addu $20 $8 $7
beq $20 $7 beq_164
addu $10 $8 $7
beq_164:
addu $21 $3 $24
beq $21 $24 beq_165
addu $16 $3 $24
beq_165:
addu $22 $9 $24
beq $22 $24 beq_166
addu $1 $9 $24
beq_166:
addu $23 $5 $10
beq $23 $10 beq_167
addu $2 $5 $10
beq_167:
addu $24 $3 $17
beq $24 $17 beq_168
addu $17 $3 $17
beq_168:
addu $25 $5 $14
beq $25 $14 beq_169
addu $23 $5 $14
beq_169:
ori $17 $0 160
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
ori $25 $0 140
ori $26 $0 160
addu $17 $19 $17
beq $17 $17 beq_170
addu $15 $19 $17
beq_170:
addu $18 $6 $7
beq $18 $7 beq_171
addu $12 $6 $7
beq_171:
addu $19 $19 $14
beq $19 $14 beq_172
addu $22 $19 $14
beq_172:
addu $20 $13 $2
beq $20 $2 beq_173
addu $21 $13 $2
beq_173:
addu $21 $7 $23
beq $21 $23 beq_174
addu $23 $7 $23
beq_174:
addu $22 $25 $19
beq $22 $19 beq_175
addu $26 $25 $19
beq_175:
addu $23 $4 $12
beq $23 $12 beq_176
addu $12 $4 $12
beq_176:
addu $24 $5 $4
beq $24 $4 beq_177
addu $21 $5 $4
beq_177:
addu $25 $15 $5
beq $25 $5 beq_178
addu $10 $15 $5
beq_178:
addu $26 $16 $11
beq $26 $11 beq_179
addu $4 $16 $11
beq_179:
ori $18 $0 192
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
ori $25 $0 140
ori $26 $0 160
ori $27 $0 160
addu $18 $16 $24
beq $18 $24 beq_180
addu $9 $16 $24
beq_180:
addu $19 $8 $22
beq $19 $22 beq_181
addu $7 $8 $22
beq_181:
addu $20 $0 $9
beq $20 $9 beq_182
addu $20 $0 $9
beq_182:
addu $21 $25 $23
beq $21 $23 beq_183
addu $26 $25 $23
beq_183:
addu $22 $21 $27
beq $22 $27 beq_184
addu $27 $21 $27
beq_184:
addu $23 $11 $3
beq $23 $3 beq_185
addu $4 $11 $3
beq_185:
addu $24 $2 $17
beq $24 $17 beq_186
addu $18 $2 $17
beq_186:
addu $25 $24 $1
beq $25 $1 beq_187
addu $6 $24 $1
beq_187:
addu $26 $3 $18
beq $26 $18 beq_188
addu $14 $3 $18
beq_188:
addu $27 $23 $15
beq $27 $15 beq_189
addu $16 $23 $15
beq_189:
ori $19 $0 220
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
ori $25 $0 140
ori $26 $0 160
ori $27 $0 160
ori $28 $0 192
addu $19 $18 $20
beq $19 $20 beq_190
addu $22 $18 $20
beq_190:
addu $20 $9 $24
beq $20 $24 beq_191
addu $10 $9 $24
beq_191:
addu $21 $4 $4
beq $21 $4 beq_192
addu $28 $4 $4
beq_192:
addu $22 $19 $1
beq $22 $1 beq_193
addu $11 $19 $1
beq_193:
addu $23 $11 $10
beq $23 $10 beq_194
addu $5 $11 $10
beq_194:
addu $24 $12 $12
beq $24 $12 beq_195
addu $1 $12 $12
beq_195:
addu $25 $21 $0
beq $25 $0 beq_196
addu $22 $21 $0
beq_196:
addu $26 $6 $11
beq $26 $11 beq_197
addu $21 $6 $11
beq_197:
addu $27 $5 $11
beq $27 $11 beq_198
addu $6 $5 $11
beq_198:
addu $28 $11 $20
beq $28 $20 beq_199
addu $11 $11 $20
beq_199:
ori $20 $0 4
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
ori $25 $0 140
ori $26 $0 160
ori $27 $0 160
ori $28 $0 192
ori $29 $0 220
addu $20 $24 $27
beq $20 $27 beq_200
addu $15 $24 $27
beq_200:
addu $21 $28 $15
beq $21 $15 beq_201
addu $26 $28 $15
beq_201:
addu $22 $28 $8
beq $22 $8 beq_202
addu $2 $28 $8
beq_202:
addu $23 $21 $3
beq $23 $3 beq_203
addu $24 $21 $3
beq_203:
addu $24 $6 $8
beq $24 $8 beq_204
addu $2 $6 $8
beq_204:
addu $25 $6 $6
beq $25 $6 beq_205
addu $11 $6 $6
beq_205:
addu $26 $25 $27
beq $26 $27 beq_206
addu $1 $25 $27
beq_206:
addu $27 $21 $21
beq $27 $21 beq_207
addu $3 $21 $21
beq_207:
addu $28 $2 $17
beq $28 $17 beq_208
addu $2 $2 $17
beq_208:
addu $29 $26 $7
beq $29 $7 beq_209
addu $8 $26 $7
beq_209:
ori $21 $0 40
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
ori $25 $0 140
ori $26 $0 160
ori $27 $0 160
ori $28 $0 192
ori $29 $0 220
ori $30 $0 4
addu $21 $22 $15
beq $21 $15 beq_210
addu $14 $22 $15
beq_210:
addu $22 $26 $3
beq $22 $3 beq_211
addu $15 $26 $3
beq_211:
addu $23 $0 $22
beq $23 $22 beq_212
addu $14 $0 $22
beq_212:
addu $24 $0 $8
beq $24 $8 beq_213
addu $23 $0 $8
beq_213:
addu $25 $28 $6
beq $25 $6 beq_214
addu $10 $28 $6
beq_214:
addu $26 $19 $8
beq $26 $8 beq_215
addu $29 $19 $8
beq_215:
addu $27 $24 $19
beq $27 $19 beq_216
addu $13 $24 $19
beq_216:
addu $28 $3 $10
beq $28 $10 beq_217
addu $29 $3 $10
beq_217:
addu $29 $22 $28
beq $29 $28 beq_218
addu $11 $22 $28
beq_218:
addu $30 $8 $23
beq $30 $23 beq_219
addu $22 $8 $23
beq_219:
ori $22 $0 72
ori $23 $0 72
ori $24 $0 108
ori $25 $0 140
ori $26 $0 160
ori $27 $0 160
ori $28 $0 192
ori $29 $0 220
ori $30 $0 4
ori $31 $0 40
addu $22 $31 $12
beq $22 $12 beq_220
addu $18 $31 $12
beq_220:
addu $23 $0 $24
beq $23 $24 beq_221
addu $22 $0 $24
beq_221:
addu $24 $4 $22
beq $24 $22 beq_222
addu $30 $4 $22
beq_222:
addu $25 $11 $24
beq $25 $24 beq_223
addu $12 $11 $24
beq_223:
addu $26 $11 $24
beq $26 $24 beq_224
addu $18 $11 $24
beq_224:
addu $27 $13 $11
beq $27 $11 beq_225
addu $20 $13 $11
beq_225:
addu $28 $28 $14
beq $28 $14 beq_226
addu $25 $28 $14
beq_226:
addu $29 $23 $29
beq $29 $29 beq_227
addu $7 $23 $29
beq_227:
addu $30 $6 $8
beq $30 $8 beq_228
addu $8 $6 $8
beq_228:
addu $31 $21 $26
beq $31 $26 beq_229
addu $17 $21 $26
beq_229:
