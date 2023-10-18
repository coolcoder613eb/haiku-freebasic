	.intel_syntax noprefix

.section .text
.balign 16

.globl CIDENTIFIER
CIDENTIFIER:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
cmp dword ptr [PARSER+92], 0
je .L_00C8
mov eax, dword ptr [PARSER+92]
mov dword ptr [ebp-8], eax
mov dword ptr [PARSER+92], 0
jmp .L_00C7
.L_00C8:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-8], eax
.L_00C7:
mov eax, dword ptr [ENV+1040]
and eax, 4
test eax, eax
jne .L_00CA
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00C6
.L_00CA:
.L_00C9:
cmp dword ptr [ebp-8], 0
jne .L_00CC
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_00CE
mov dword ptr [ebp-4], 0
jmp .L_00C6
.L_00CE:
.L_00CD:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call HGLOBALID
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00D0
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_00D2
call LEXGETTEXT
push eax
push 8
call ERRREPORTUNDEF
add esp, 8
.L_00D2:
.L_00D1:
mov eax, dword ptr [ebp+12]
and eax, 128
test eax, eax
jne .L_00D4
call HSKIPSYMBOL
.L_00D4:
.L_00D3:
mov dword ptr [ebp-4], 0
jmp .L_00C6
.L_00D0:
.L_00CF:
.L_00CC:
.L_00CB:
mov dword ptr [ebp-12], 0
.L_00D5:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00D9
.L_00DA:
cmp dword ptr [ebp-16], 0
je .L_00DB
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_00DD
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+156]
mov dword ptr [ebp-16], eax
jmp .L_00DC
.L_00DD:
push dword ptr [ebp-16]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00DB
.L_00DC:
jmp .L_00DA
.L_00DB:
cmp dword ptr [ebp-16], 0
jne .L_00DF
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_00E1
call LEXGETTEXT
push eax
push 8
call ERRREPORTUNDEF
add esp, 8
jmp .L_00E0
.L_00E1:
call HSKIPSYMBOL
.L_00E0:
mov dword ptr [ebp-4], 0
jmp .L_00C6
.L_00DF:
.L_00DE:
.L_00D9:
.L_00D8:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
jmp .L_00E3
.L_00E5:
jmp .L_00E2
.L_00E6:
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_00E8
jmp .L_00D6
.L_00E8:
.L_00E7:
jmp .L_00E2
.L_00E9:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
and ecx, 511
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 20
jne .L_00EC
.L_00ED:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_00EF
jmp .L_00D6
.L_00EF:
.L_00EE:
jmp .L_00EA
.L_00EC:
cmp dword ptr [ebp-24], 10
jne .L_00F0
.L_00F1:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+32]
mov dword ptr [ebp-16], ecx
jmp .L_00EA
.L_00F0:
jmp .L_00D6
.L_00F2:
.L_00EA:
jmp .L_00E2
.L_00F3:
jmp .L_00D6
jmp .L_00E2
.L_00E3:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967288
cmp ecx, 5
ja .L_00F3
mov ecx, dword ptr [ebp-20]
jmp dword ptr [.L_00F4+ecx*4-32]
.L_00F4:
.int .L_00E5
.int .L_00E5
.int .L_00E6
.int .L_00E5
.int .L_00F3
.int .L_00E9
.L_00E2:
cmp dword ptr [ebp-12], 0
je .L_00F6
mov ecx, dword ptr [ebp+12]
and ecx, 2
test ecx, ecx
je .L_00F8
push dword ptr [ebp-16]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00FA
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.L_00FA:
.L_00F9:
.L_00F8:
.L_00F7:
.L_00F6:
.L_00F5:
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_00FC
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 8
jne .L_00FE
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0100
push 2112
call LEXSKIPTOKEN
add esp, 4
push 0
push 0
push 120
call ERRREPORT
add esp, 12
.L_0100:
.L_00FF:
.L_00FE:
.L_00FD:
jmp .L_00D6
.L_00FC:
.L_00FB:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 9
jne .L_0102
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+76], 0
jne .L_0104
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0106
push 0
push 0
push 257
call ERRREPORT
add esp, 12
.L_0106:
.L_0105:
jmp .L_00D6
.L_0104:
.L_0103:
.L_0102:
.L_0101:
push 2112
call LEXSKIPTOKEN
add esp, 4
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0108
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax], ecx
.L_0108:
.L_0107:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_010A
.L_010C:
jmp .L_0109
.L_010D:
mov eax, dword ptr [ebp+12]
and eax, 520
test eax, eax
je .L_010F
jmp .L_00D6
.L_010F:
.L_010E:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0111
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.L_0111:
.L_0110:
mov dword ptr [ebp-4], 0
jmp .L_00C6
jmp .L_0109
.L_0112:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_0114
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .L_0116
jmp .L_00D6
.L_0116:
.L_0115:
.L_0114:
.L_0113:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0118
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.L_0118:
.L_0117:
mov dword ptr [ebp-4], 0
jmp .L_00C6
jmp .L_0109
.L_010A:
cmp dword ptr [ebp-20], 5
ja .L_0112
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0119+eax*4]
.L_0119:
.int .L_010C
.int .L_010D
.int .L_010C
.int .L_0112
.int .L_0112
.int .L_010D
.L_0109:
push -1
push 0
call LEXGETTEXT
push eax
push dword ptr [ebp-12]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_011B
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_011D
call LEXGETTEXT
push eax
push 8
call ERRREPORTUNDEF
add esp, 8
jmp .L_011C
.L_011D:
mov eax, dword ptr [ebp+12]
and eax, 128
test eax, eax
jne .L_011F
call HSKIPSYMBOL
.L_011F:
.L_011E:
.L_011C:
mov dword ptr [ebp-4], 0
jmp .L_00C6
.L_011B:
.L_011A:
mov eax, dword ptr [ebp+12]
and eax, 32
test eax, eax
je .L_0121
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 10
je .L_0125
.L_0126:
cmp dword ptr [ebp-20], 11
jne .L_0124
.L_0125:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ecx
.L_0127:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-28], eax
.L_012A:
mov eax, dword ptr [ebp-28]
cmp dword ptr [eax], 12
jne .L_012E
push 0
push 0
push 209
call ERRREPORT
add esp, 12
jmp .L_0128
.L_012E:
.L_012D:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-28], ecx
.L_012C:
cmp dword ptr [ebp-28], 0
jne .L_012A
.L_012B:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-24], eax
.L_0129:
cmp dword ptr [ebp-24], 0
jne .L_0127
.L_0128:
.L_0124:
.L_0122:
.L_0121:
.L_0120:
.L_00D7:
jmp .L_00D5
.L_00D6:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HCHECKDECL
add esp, 16
test eax, eax
jne .L_0130
mov dword ptr [ebp-4], 0
jmp .L_00C6
.L_0130:
.L_012F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00C6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPARENTID
CPARENTID:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0133:
mov eax, dword ptr [ENV+1040]
and eax, 4
test eax, eax
jne .L_0136
mov dword ptr [ebp-4], 0
jmp .L_0134
.L_0136:
.L_0135:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0138
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_013A
lea eax, [ebp-20]
push eax
push 2
call HGLOBALID
add esp, 8
mov dword ptr [ebp-8], eax
.L_013A:
.L_0139:
.L_0138:
.L_0137:
cmp dword ptr [ebp-20], 0
je .L_013C
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_013C:
.L_013B:
.L_013D:
cmp dword ptr [ebp-8], 0
je .L_013E
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-24], eax
jmp .L_0140
.L_0142:
jmp .L_013F
.L_0143:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_0145
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .L_013E
.L_0145:
.L_0144:
jmp .L_013F
.L_0146:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .L_0149
.L_014A:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_014C
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .L_013E
.L_014C:
.L_014B:
jmp .L_0147
.L_0149:
cmp dword ptr [ebp-28], 10
jne .L_014D
.L_014E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .L_0147
.L_014D:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_013E
.L_014F:
.L_0147:
jmp .L_013F
.L_0150:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_013E
jmp .L_013F
.L_0140:
mov ebx, dword ptr [ebp-24]
add ebx, 4294967288
cmp ebx, 5
ja .L_0150
mov ebx, dword ptr [ebp-24]
jmp dword ptr [.L_0151+ebx*4-32]
.L_0151:
.int .L_0142
.int .L_0142
.int .L_0143
.int .L_0142
.int .L_0150
.int .L_0146
.L_013F:
cmp dword ptr [ebp-16], 0
je .L_0153
mov ebx, dword ptr [ebp+8]
and ebx, 256
test ebx, ebx
jne .L_0155
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0157
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.L_0157:
.L_0156:
.L_0155:
.L_0154:
.L_0153:
.L_0152:
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_0159
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
je .L_015B
jmp .L_013E
.L_015B:
.L_015A:
push 0
push 0
push 120
call ERRREPORT
add esp, 12
jmp .L_013E
.L_0159:
.L_0158:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .L_015D
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+76], 0
jne .L_015F
push 0
push 0
push 257
call ERRREPORT
add esp, 12
jmp .L_013E
.L_015F:
.L_015E:
.L_015D:
.L_015C:
push 2112
call LEXSKIPTOKEN
add esp, 4
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
jne .L_0161
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.L_0161:
.L_0160:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0163
.L_0165:
jmp .L_0162
.L_0166:
mov eax, dword ptr [ebp+8]
and eax, 520
test eax, eax
je .L_0168
jmp .L_013E
.L_0168:
.L_0167:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .L_013E
jmp .L_0162
.L_0169:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_016B
mov eax, dword ptr [ebp+8]
and eax, 8
test eax, eax
je .L_016D
jmp .L_013E
.L_016D:
.L_016C:
.L_016B:
.L_016A:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .L_013E
jmp .L_0162
.L_0163:
cmp dword ptr [ebp-24], 5
ja .L_0169
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_016E+eax*4]
.L_016E:
.int .L_0165
.int .L_0166
.int .L_0165
.int .L_0169
.int .L_0169
.int .L_0166
.L_0162:
push -1
push 0
call LEXGETTEXT
push eax
push dword ptr [ebp-12]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_013D
.L_013E:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HCHECKDECL
add esp, 16
test eax, eax
jne .L_0170
mov dword ptr [ebp-4], 0
jmp .L_0134
.L_0170:
.L_016F:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0134:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCURRENTPARENTID
CCURRENTPARENTID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0171:
push 0
call CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0174
jmp .L_0172
.L_0174:
.L_0173:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 8
jne .L_0177
.L_0178:
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .L_017A
push 0
push 0
push 131
call ERRREPORT
add esp, 12
.L_017A:
.L_0179:
jmp .L_0175
.L_0177:
cmp dword ptr [ebp-8], 11
jne .L_017B
.L_017C:
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .L_017E
push 0
push 0
push 158
call ERRREPORT
add esp, 12
.L_017E:
.L_017D:
.L_017B:
.L_0175:
.L_0172:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CIDENTIFIERORUDTMEMBER
CIDENTIFIERORUDTMEMBER:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_017F:
cmp dword ptr [ebp+12], 0
jne .L_0182
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0184
push 664
push dword ptr [ebp+8]
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
jmp .L_0183
.L_0184:
push -1
push 0
call LEXGETTEXT
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_0186
push 664
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
.L_0186:
.L_0185:
.L_0183:
.L_0182:
.L_0181:
cmp dword ptr [ebp+12], 0
jne .L_0189
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_0180
.L_0189:
.L_0188:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_018B
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0180
.L_018B:
.L_018A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 10
je .L_018D
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0180
.L_018D:
.L_018C:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_018F
.L_0191:
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0180
jmp .L_018E
.L_0192:
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .L_0194
push -1
push 0
call LEXGETTEXT
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp+12], eax
push 0
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+12], 0
je .L_0196
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0180
.L_0196:
.L_0195:
mov dword ptr [ebp-4], 0
jmp .L_0180
.L_0194:
.L_0193:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0198
.L_019A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0197
.L_019B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0197
.L_019C:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0197
.L_019D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [eax+140]
mov dword ptr [ebp-12], ebx
jmp .L_0197
.L_0198:
mov ebx, dword ptr [ebp-16]
add ebx, 4294966949
cmp ebx, 70
ja .L_0197
mov ebx, dword ptr [ebp-16]
jmp dword ptr [.L_019E+ebx*4-1388]
.L_019E:
.int .L_019A
.int .L_019B
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_019C
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_019D
.L_0197:
push 0
call LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_0180
jmp .L_018E
.L_018F:
cmp dword ptr [ebp-8], 2
ja .L_018E
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_019F+ebx*4]
.L_019F:
.int .L_0191
.int .L_0192
.int .L_0191
.L_018E:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call LEXGETTOKEN
add esp, 4
cmp eax, 91
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01A1
mov dword ptr [ebp-8], -1
push -1
call COPERATOR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
je .L_01A3
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0180
.L_01A3:
.L_01A2:
mov dword ptr [ebp-4], 0
jmp .L_0180
.L_01A1:
.L_01A0:
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
.L_0180:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0012:
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.L_0013:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSKIPSYMBOL:
push ebp
mov ebp, esp
sub esp, 4
.L_0066:
.L_0068:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_006C
jmp .L_0069
.L_006C:
.L_006B:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_006E
.L_0070:
jmp .L_006D
.L_0071:
jmp .L_0069
jmp .L_006D
.L_006E:
cmp dword ptr [ebp-4], 2
ja .L_0071
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0072+eax*4]
.L_0072:
.int .L_0070
.int .L_0070
.int .L_0070
.L_006D:
.L_006A:
jmp .L_0068
.L_0069:
.L_0067:
mov esp, ebp
pop ebp
ret
.balign 16
HGLOBALID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
mov dword ptr [ebp-4], 0
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_0076
push 64
call LEXSKIPTOKEN
add esp, 4
jmp .L_0075
.L_0076:
cmp dword ptr [PARSER+52], 0
je .L_0078
jmp .L_0074
.L_0078:
.L_0077:
.L_0075:
mov eax, dword ptr [ebp+8]
and eax, 4
test eax, eax
je .L_007A
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_007C
push 0
push 0
push 131
call ERRREPORT
add esp, 12
.L_007C:
.L_007B:
.L_007A:
.L_0079:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0080
.L_0081:
cmp dword ptr [ebp-8], 2
jne .L_007F
.L_0080:
jmp .L_007D
.L_007F:
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
je .L_0084
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.L_0084:
.L_0083:
jmp .L_0074
.L_0082:
.L_007D:
lea eax, [SYMB+98352]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
push -1
push 0
call LEXGETTEXT
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.L_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETCHAINNAMES:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0085:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.L_0087:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
.L_008A:
lea ebx, [SYMB+98352]
cmp dword ptr [ebp-16], ebx
je .L_008B
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 16777216
test eax, eax
je .L_008D
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 9
jne .L_008F
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push 8
push offset Lt_0090
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
jmp .L_008E
.L_008F:
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push 11
push offset Lt_0092
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
.L_008E:
jmp .L_008C
.L_008D:
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 2
push offset Lt_0007
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
.L_008C:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+140], 0
jne .L_0097
jmp .L_008B
.L_0097:
.L_0096:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .L_008A
.L_008B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 16777216
test eax, eax
je .L_0099
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 10
push offset Lt_009A
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0098
.L_0099:
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+16]
push -1
lea ebx, [ebp-40]
push ebx
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea ebx, [ebp-52]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
.L_0098:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 0
jne .L_009E
lea ebx, [ebp-40]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0088
.L_009E:
.L_009D:
push 0
push 3
push offset Lt_009F
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrConcatAssign
add esp, 20
lea ebx, [ebp-40]
push ebx
call fb_StrDelete
add esp, 4
.L_0089:
jmp .L_0087
.L_0088:
push 0
push -1
lea ebx, [ebp-28]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrInit
add esp, 20
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0086
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
.L_0086:
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKDECL:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00A0:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
je .L_00A3
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .L_00A5
cmp dword ptr [ebp+8], 0
je .L_00A7
lea eax, [SYMB+98352]
cmp dword ptr [ebp+8], eax
je .L_00A9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [SYMB+98528]
cmp dword ptr [ebx], eax
je .L_00AB
push 0
push 0
push 131
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_00A1
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
jmp .L_00A4
.L_00A5:
cmp dword ptr [ebp+16], 0
je .L_00AD
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
je .L_00AF
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+8], 0
je .L_00B1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp+12], 0
je .L_00B2
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp+12]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_01A6
.L_00B2:
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebp-12]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_01A6:
cmp dword ptr [ebp-16], 0
je .L_00B5
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call HGETCHAINNAMES
add esp, 4
push eax
push 6
push offset Lt_00B6
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
push 0
push 255
call ERRREPORT
add esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_00B5:
.L_00B4:
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AC:
.L_00A4:
.L_00A3:
.L_00A2:
mov dword ptr [ebp-4], -1
.L_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HISSTRUCTALLOWED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B9:
mov eax, dword ptr [ebp+12]
and eax, 16
test eax, eax
jne .L_00BC
mov dword ptr [ebp-4], 0
jmp .L_00BA
.L_00BC:
.L_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 262144
test ebx, ebx
je .L_00BE
mov dword ptr [ebp-4], -1
jmp .L_00BA
.L_00BE:
.L_00BD:
mov ebx, dword ptr [ebp+12]
and ebx, 512
test ebx, ebx
je .L_00C0
mov dword ptr [ebp-4], -1
jmp .L_00BA
.L_00C0:
.L_00BF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 262144
test eax, eax
jne .L_00C2
mov dword ptr [ebp-4], 0
jmp .L_00BA
.L_00C2:
.L_00C1:
mov eax, dword ptr [ebp+12]
and eax, 64
je .L_00C4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 16384
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_00BA
.L_00C4:
.L_00C3:
mov dword ptr [ebp-4], -1
.L_00BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_0090:	.ascii	"<enum>.\0"
.balign 4
Lt_0092:	.ascii	"<unknown>.\0"
.balign 4
Lt_009A:	.ascii	"<unnamed>\0"
.balign 4
Lt_009F:	.ascii	", \0"
.balign 4
Lt_00B6:	.ascii	" for \0"
