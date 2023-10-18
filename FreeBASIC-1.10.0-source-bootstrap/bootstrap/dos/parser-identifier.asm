	.intel_syntax noprefix

.section .text
.balign 16

.globl _CIDENTIFIER
_CIDENTIFIER:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00C6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
cmp dword ptr [_PARSER+92], 0
je .L_00C9
mov eax, dword ptr [_PARSER+92]
mov dword ptr [ebp-8], eax
mov dword ptr [_PARSER+92], 0
jmp .L_00C8
.L_00C9:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-8], eax
.L_00C8:
mov eax, dword ptr [_ENV+1040]
and eax, 4
test eax, eax
jne .L_00CB
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00C7
.L_00CB:
.L_00CA:
cmp dword ptr [ebp-8], 0
jne .L_00CD
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_00CF
mov dword ptr [ebp-4], 0
jmp .L_00C7
.L_00CF:
.L_00CE:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _HGLOBALID
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00D1
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_00D3
call _LEXGETTEXT
push eax
push 8
call _ERRREPORTUNDEF
add esp, 8
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp+12]
and eax, 128
test eax, eax
jne .L_00D5
call _HSKIPSYMBOL
.L_00D5:
.L_00D4:
mov dword ptr [ebp-4], 0
jmp .L_00C7
.L_00D1:
.L_00D0:
.L_00CD:
.L_00CC:
mov dword ptr [ebp-12], 0
.L_00D6:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00DA
.L_00DB:
cmp dword ptr [ebp-16], 0
je .L_00DC
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
je .L_00DE
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+156]
mov dword ptr [ebp-16], eax
jmp .L_00DD
.L_00DE:
push dword ptr [ebp-16]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00DC
.L_00DD:
jmp .L_00DB
.L_00DC:
cmp dword ptr [ebp-16], 0
jne .L_00E0
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_00E2
call _LEXGETTEXT
push eax
push 8
call _ERRREPORTUNDEF
add esp, 8
jmp .L_00E1
.L_00E2:
call _HSKIPSYMBOL
.L_00E1:
mov dword ptr [ebp-4], 0
jmp .L_00C7
.L_00E0:
.L_00DF:
.L_00DA:
.L_00D9:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
jmp .L_00E4
.L_00E6:
jmp .L_00E3
.L_00E7:
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_00E9
jmp .L_00D7
.L_00E9:
.L_00E8:
jmp .L_00E3
.L_00EA:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
and ecx, 511
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 20
jne .L_00ED
.L_00EE:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_00F0
jmp .L_00D7
.L_00F0:
.L_00EF:
jmp .L_00EB
.L_00ED:
cmp dword ptr [ebp-24], 10
jne .L_00F1
.L_00F2:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+32]
mov dword ptr [ebp-16], ecx
jmp .L_00EB
.L_00F1:
jmp .L_00D7
.L_00F3:
.L_00EB:
jmp .L_00E3
.L_00F4:
jmp .L_00D7
jmp .L_00E3
.L_00E4:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967288
cmp ecx, 5
ja .L_00F4
mov ecx, dword ptr [ebp-20]
jmp dword ptr [_.L_00F5+ecx*4-32]
_.L_00F5:
.int .L_00E6
.int .L_00E6
.int .L_00E7
.int .L_00E6
.int .L_00F4
.int .L_00EA
.L_00E3:
cmp dword ptr [ebp-12], 0
je .L_00F7
mov ecx, dword ptr [ebp+12]
and ecx, 2
test ecx, ecx
je .L_00F9
push dword ptr [ebp-16]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00FB
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.L_00FB:
.L_00FA:
.L_00F9:
.L_00F8:
.L_00F7:
.L_00F6:
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_00FD
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 8
jne .L_00FF
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0101
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 0
push 0
push 120
call _ERRREPORT
add esp, 12
.L_0101:
.L_0100:
.L_00FF:
.L_00FE:
jmp .L_00D7
.L_00FD:
.L_00FC:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 9
jne .L_0103
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+76], 0
jne .L_0105
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0107
push 0
push 0
push 257
call _ERRREPORT
add esp, 12
.L_0107:
.L_0106:
jmp .L_00D7
.L_0105:
.L_0104:
.L_0103:
.L_0102:
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0109
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax], ecx
.L_0109:
.L_0108:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_010B
.L_010D:
jmp .L_010A
.L_010E:
mov eax, dword ptr [ebp+12]
and eax, 520
test eax, eax
je .L_0110
jmp .L_00D7
.L_0110:
.L_010F:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0112
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.L_0112:
.L_0111:
mov dword ptr [ebp-4], 0
jmp .L_00C7
jmp .L_010A
.L_0113:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_0115
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .L_0117
jmp .L_00D7
.L_0117:
.L_0116:
.L_0115:
.L_0114:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_0119
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.L_0119:
.L_0118:
mov dword ptr [ebp-4], 0
jmp .L_00C7
jmp .L_010A
.L_010B:
cmp dword ptr [ebp-20], 5
ja .L_0113
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_011A+eax*4]
_.L_011A:
.int .L_010D
.int .L_010E
.int .L_010D
.int .L_0113
.int .L_0113
.int .L_010E
.L_010A:
push -1
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp-12]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_011C
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .L_011E
call _LEXGETTEXT
push eax
push 8
call _ERRREPORTUNDEF
add esp, 8
jmp .L_011D
.L_011E:
mov eax, dword ptr [ebp+12]
and eax, 128
test eax, eax
jne .L_0120
call _HSKIPSYMBOL
.L_0120:
.L_011F:
.L_011D:
mov dword ptr [ebp-4], 0
jmp .L_00C7
.L_011C:
.L_011B:
mov eax, dword ptr [ebp+12]
and eax, 32
test eax, eax
je .L_0122
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 10
je .L_0126
.L_0127:
cmp dword ptr [ebp-20], 11
jne .L_0125
.L_0126:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ecx
.L_0128:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-28], eax
.L_012B:
mov eax, dword ptr [ebp-28]
cmp dword ptr [eax], 12
jne .L_012F
push 0
push 0
push 209
call _ERRREPORT
add esp, 12
jmp .L_0129
.L_012F:
.L_012E:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-28], ecx
.L_012D:
cmp dword ptr [ebp-28], 0
jne .L_012B
.L_012C:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-24], eax
.L_012A:
cmp dword ptr [ebp-24], 0
jne .L_0128
.L_0129:
.L_0125:
.L_0123:
.L_0122:
.L_0121:
.L_00D8:
jmp .L_00D6
.L_00D7:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HCHECKDECL
add esp, 16
test eax, eax
jne .L_0131
mov dword ptr [ebp-4], 0
jmp .L_00C7
.L_0131:
.L_0130:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00C7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPARENTID
_CPARENTID:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0134:
mov eax, dword ptr [_ENV+1040]
and eax, 4
test eax, eax
jne .L_0137
mov dword ptr [ebp-4], 0
jmp .L_0135
.L_0137:
.L_0136:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0139
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_013B
lea eax, [ebp-20]
push eax
push 2
call _HGLOBALID
add esp, 8
mov dword ptr [ebp-8], eax
.L_013B:
.L_013A:
.L_0139:
.L_0138:
cmp dword ptr [ebp-20], 0
je .L_013D
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_013D:
.L_013C:
.L_013E:
cmp dword ptr [ebp-8], 0
je .L_013F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-24], eax
jmp .L_0141
.L_0143:
jmp .L_0140
.L_0144:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_0146
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .L_013F
.L_0146:
.L_0145:
jmp .L_0140
.L_0147:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .L_014A
.L_014B:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .L_014D
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .L_013F
.L_014D:
.L_014C:
jmp .L_0148
.L_014A:
cmp dword ptr [ebp-28], 10
jne .L_014E
.L_014F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .L_0148
.L_014E:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_013F
.L_0150:
.L_0148:
jmp .L_0140
.L_0151:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_013F
jmp .L_0140
.L_0141:
mov ebx, dword ptr [ebp-24]
add ebx, 4294967288
cmp ebx, 5
ja .L_0151
mov ebx, dword ptr [ebp-24]
jmp dword ptr [_.L_0152+ebx*4-32]
_.L_0152:
.int .L_0143
.int .L_0143
.int .L_0144
.int .L_0143
.int .L_0151
.int .L_0147
.L_0140:
cmp dword ptr [ebp-16], 0
je .L_0154
mov ebx, dword ptr [ebp+8]
and ebx, 256
test ebx, ebx
jne .L_0156
push dword ptr [ebp-12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0158
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.L_0158:
.L_0157:
.L_0156:
.L_0155:
.L_0154:
.L_0153:
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_015A
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
je .L_015C
jmp .L_013F
.L_015C:
.L_015B:
push 0
push 0
push 120
call _ERRREPORT
add esp, 12
jmp .L_013F
.L_015A:
.L_0159:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .L_015E
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+76], 0
jne .L_0160
push 0
push 0
push 257
call _ERRREPORT
add esp, 12
jmp .L_013F
.L_0160:
.L_015F:
.L_015E:
.L_015D:
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
jne .L_0162
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.L_0162:
.L_0161:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0164
.L_0166:
jmp .L_0163
.L_0167:
mov eax, dword ptr [ebp+8]
and eax, 520
test eax, eax
je .L_0169
jmp .L_013F
.L_0169:
.L_0168:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .L_013F
jmp .L_0163
.L_016A:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_016C
mov eax, dword ptr [ebp+8]
and eax, 8
test eax, eax
je .L_016E
jmp .L_013F
.L_016E:
.L_016D:
.L_016C:
.L_016B:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .L_013F
jmp .L_0163
.L_0164:
cmp dword ptr [ebp-24], 5
ja .L_016A
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_016F+eax*4]
_.L_016F:
.int .L_0166
.int .L_0167
.int .L_0166
.int .L_016A
.int .L_016A
.int .L_0167
.L_0163:
push -1
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp-12]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_013E
.L_013F:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HCHECKDECL
add esp, 16
test eax, eax
jne .L_0171
mov dword ptr [ebp-4], 0
jmp .L_0135
.L_0171:
.L_0170:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCURRENTPARENTID
_CCURRENTPARENTID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0172:
push 0
call _CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0175
jmp .L_0173
.L_0175:
.L_0174:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 8
jne .L_0178
.L_0179:
mov ebx, dword ptr [_SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .L_017B
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
.L_017B:
.L_017A:
jmp .L_0176
.L_0178:
cmp dword ptr [ebp-8], 11
jne .L_017C
.L_017D:
mov ebx, dword ptr [_SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .L_017F
push 0
push 0
push 158
call _ERRREPORT
add esp, 12
.L_017F:
.L_017E:
.L_017C:
.L_0176:
.L_0173:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CIDENTIFIERORUDTMEMBER
_CIDENTIFIERORUDTMEMBER:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0180:
cmp dword ptr [ebp+12], 0
jne .L_0183
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0185
push 664
push dword ptr [ebp+8]
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
jmp .L_0184
.L_0185:
push -1
push 0
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_0187
push 664
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
.L_0187:
.L_0186:
.L_0184:
.L_0183:
.L_0182:
cmp dword ptr [ebp+12], 0
jne .L_018A
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_0181
.L_018A:
.L_0189:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_018C
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0181
.L_018C:
.L_018B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 10
je .L_018E
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0181
.L_018E:
.L_018D:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0190
.L_0192:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0181
jmp .L_018F
.L_0193:
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .L_0195
push -1
push 0
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp+12], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+12], 0
je .L_0197
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0181
.L_0197:
.L_0196:
mov dword ptr [ebp-4], 0
jmp .L_0181
.L_0195:
.L_0194:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0199
.L_019B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0198
.L_019C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0198
.L_019D:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0198
.L_019E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [eax+140]
mov dword ptr [ebp-12], ebx
jmp .L_0198
.L_0199:
mov ebx, dword ptr [ebp-16]
add ebx, 4294966949
cmp ebx, 70
ja .L_0198
mov ebx, dword ptr [ebp-16]
jmp dword ptr [_.L_019F+ebx*4-1388]
_.L_019F:
.int .L_019B
.int .L_019C
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_019D
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_0198
.int .L_019E
.L_0198:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_0181
jmp .L_018F
.L_0190:
cmp dword ptr [ebp-8], 2
ja .L_018F
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_01A0+ebx*4]
_.L_01A0:
.int .L_0192
.int .L_0193
.int .L_0192
.L_018F:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01A2
mov dword ptr [ebp-8], -1
push -1
call _COPERATOR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
je .L_01A4
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0181
.L_01A4:
.L_01A3:
mov dword ptr [ebp-4], 0
jmp .L_0181
.L_01A2:
.L_01A1:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
.L_0181:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
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
call _fb_StrAssign
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
_HSKIPSYMBOL:
push ebp
mov ebp, esp
sub esp, 4
.L_0067:
.L_0069:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_006D
jmp .L_006A
.L_006D:
.L_006C:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_006F
.L_0071:
jmp .L_006E
.L_0072:
jmp .L_006A
jmp .L_006E
.L_006F:
cmp dword ptr [ebp-4], 2
ja .L_0072
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0073+eax*4]
_.L_0073:
.int .L_0071
.int .L_0071
.int .L_0071
.L_006E:
.L_006B:
jmp .L_0069
.L_006A:
.L_0068:
mov esp, ebp
pop ebp
ret
.balign 16
_HGLOBALID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0074:
mov dword ptr [ebp-4], 0
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_0077
push 64
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0076
.L_0077:
cmp dword ptr [_PARSER+52], 0
je .L_0079
jmp .L_0075
.L_0079:
.L_0078:
.L_0076:
mov eax, dword ptr [ebp+8]
and eax, 4
test eax, eax
je .L_007B
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_007D
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
.L_007D:
.L_007C:
.L_007B:
.L_007A:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0081
.L_0082:
cmp dword ptr [ebp-8], 2
jne .L_0080
.L_0081:
jmp .L_007E
.L_0080:
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
je .L_0085
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.L_0085:
.L_0084:
jmp .L_0075
.L_0083:
.L_007E:
lea eax, [_SYMB+98352]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
push -1
push 0
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.L_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETCHAINNAMES:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0086:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.L_0088:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
.L_008B:
lea ebx, [_SYMB+98352]
cmp dword ptr [ebp-16], ebx
je .L_008C
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 16777216
test eax, eax
je .L_008E
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 9
jne .L_0090
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push 8
push offset _Lt_0091
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_008F
.L_0090:
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push 11
push offset _Lt_0093
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
.L_008F:
jmp .L_008D
.L_008E:
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 2
push offset _Lt_0007
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
.L_008D:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+140], 0
jne .L_0098
jmp .L_008C
.L_0098:
.L_0097:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .L_008B
.L_008C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 16777216
test eax, eax
je .L_009A
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 10
push offset _Lt_009B
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0099
.L_009A:
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
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.L_0099:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 0
jne .L_009F
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0089
.L_009F:
.L_009E:
push 0
push 3
push offset _Lt_00A0
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrConcatAssign
add esp, 20
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete
add esp, 4
.L_008A:
jmp .L_0088
.L_0089:
push 0
push -1
lea ebx, [ebp-28]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit
add esp, 20
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0087
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete
add esp, 4
.L_0087:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKDECL:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
je .L_00A4
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .L_00A6
cmp dword ptr [ebp+8], 0
je .L_00A8
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+8], eax
je .L_00AA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [_SYMB+98528]
cmp dword ptr [ebx], eax
je .L_00AC
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
jmp .L_00A5
.L_00A6:
cmp dword ptr [ebp+16], 0
je .L_00AE
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
je .L_00B0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+8], 0
je .L_00B2
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
je .L_00B3
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp+12]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_01A7
.L_00B3:
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebp-12]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_01A7:
cmp dword ptr [ebp-16], 0
je .L_00B6
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call _HGETCHAINNAMES
add esp, 4
push eax
push 6
push offset _Lt_00B7
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
push 0
push 255
call _ERRREPORT
add esp, 12
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_00B6:
.L_00B5:
.L_00B2:
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00A5:
.L_00A4:
.L_00A3:
mov dword ptr [ebp-4], -1
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HISSTRUCTALLOWED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00BA:
mov eax, dword ptr [ebp+12]
and eax, 16
test eax, eax
jne .L_00BD
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 262144
test ebx, ebx
je .L_00BF
mov dword ptr [ebp-4], -1
jmp .L_00BB
.L_00BF:
.L_00BE:
mov ebx, dword ptr [ebp+12]
and ebx, 512
test ebx, ebx
je .L_00C1
mov dword ptr [ebp-4], -1
jmp .L_00BB
.L_00C1:
.L_00C0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 262144
test eax, eax
jne .L_00C3
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00C3:
.L_00C2:
mov eax, dword ptr [ebp+12]
and eax, 64
je .L_00C5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 16384
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_00BB
.L_00C5:
.L_00C4:
mov dword ptr [ebp-4], -1
.L_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0091:	.ascii	"<enum>.\0"
.balign 4
_Lt_0093:	.ascii	"<unknown>.\0"
.balign 4
_Lt_009B:	.ascii	"<unnamed>\0"
.balign 4
_Lt_00A0:	.ascii	", \0"
.balign 4
_Lt_00B7:	.ascii	" for \0"
