	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLGFXMODINIT
RTLGFXMODINIT:
.L_00CA:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.L_00CB:
ret
.balign 16

.globl RTLGFXMODEND
RTLGFXMODEND:
.L_00CC:
.L_00CD:
ret
.balign 16

.globl RTLGFXPSET
RTLGFXPSET:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00EC:
mov dword ptr [ebp-4], 0
push 0
push 301
push offset Lt_0066
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EF
jmp .L_00ED
.L_00EF:
.L_00EE:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F1
jmp .L_00ED
.L_00F1:
.L_00F0:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F3
jmp .L_00ED
.L_00F3:
.L_00F2:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F5
jmp .L_00ED
.L_00F5:
.L_00F4:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F7
jmp .L_00ED
.L_00F7:
.L_00F6:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F9
jmp .L_00ED
.L_00F9:
.L_00F8:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_00ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXPOINT
RTLGFXPOINT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00FA:
mov dword ptr [ebp-4], 0
push 0
push 302
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FD
jmp .L_00FB
.L_00FD:
.L_00FC:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FF
jmp .L_00FB
.L_00FF:
.L_00FE:
cmp dword ptr [ebp+16], 0
jne .L_0101
push 15
push dword ptr [Lt_0104+4]
push dword ptr [Lt_0104]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+16], eax
.L_0101:
.L_0100:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0103
jmp .L_00FB
.L_0103:
.L_0102:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00FB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXLINE
RTLGFXLINE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0105:
mov dword ptr [ebp-4], 0
push 0
push 303
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0108
jmp .L_0106
.L_0108:
.L_0107:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010A
jmp .L_0106
.L_010A:
.L_0109:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010C
jmp .L_0106
.L_010C:
.L_010B:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010E
jmp .L_0106
.L_010E:
.L_010D:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0110
jmp .L_0106
.L_0110:
.L_010F:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0112
jmp .L_0106
.L_0112:
.L_0111:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0114
jmp .L_0106
.L_0114:
.L_0113:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0116
jmp .L_0106
.L_0116:
.L_0115:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0118
jmp .L_0106
.L_0118:
.L_0117:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXCIRCLE
RTLGFXCIRCLE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0119:
mov dword ptr [ebp-4], 0
push 0
push 304
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_011C
jmp .L_011A
.L_011C:
.L_011B:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_011E
jmp .L_011A
.L_011E:
.L_011D:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0120
jmp .L_011A
.L_0120:
.L_011F:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0122
jmp .L_011A
.L_0122:
.L_0121:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0124
jmp .L_011A
.L_0124:
.L_0123:
cmp dword ptr [ebp+28], 0
jne .L_0126
push 15
push dword ptr [Lt_0135+4]
push dword ptr [Lt_0135]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+28], eax
.L_0126:
.L_0125:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0128
jmp .L_011A
.L_0128:
.L_0127:
cmp dword ptr [ebp+32], 0
jne .L_012A
push 15
push dword ptr [Lt_0135+4]
push dword ptr [Lt_0135]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+32], eax
.L_012A:
.L_0129:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_012C
jmp .L_011A
.L_012C:
.L_012B:
cmp dword ptr [ebp+36], 0
jne .L_012E
push 15
push dword ptr [Lt_0136+4]
push dword ptr [Lt_0136]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+36], eax
.L_012E:
.L_012D:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0130
jmp .L_011A
.L_0130:
.L_012F:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0132
jmp .L_011A
.L_0132:
.L_0131:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0134
jmp .L_011A
.L_0134:
.L_0133:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_011A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXPAINT
RTLGFXPAINT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0137:
mov dword ptr [ebp-4], 0
push 0
push 305
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_013A
jmp .L_0138
.L_013A:
.L_0139:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_013C
jmp .L_0138
.L_013C:
.L_013B:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_013E
jmp .L_0138
.L_013E:
.L_013D:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBISSTRING
add esp, 4
test eax, eax
je .L_0140
mov dword ptr [ebp-12], -1
push -1
push -2147483648
push 0
push 8
push 4294967295
push 4294901760
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0142
jmp .L_0138
.L_0142:
.L_0141:
jmp .L_013F
.L_0140:
mov dword ptr [ebp-12], 0
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0144
jmp .L_0138
.L_0144:
.L_0143:
.L_013F:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0146
jmp .L_0138
.L_0146:
.L_0145:
cmp dword ptr [ebp-12], 0
je .L_0148
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_014A
jmp .L_0138
.L_014A:
.L_0149:
jmp .L_0147
.L_0148:
push -1
push -2147483648
push 0
push -2147483648
push 0
push 0
push 0
push offset Lt_0000
call SYMBALLOCSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_014C
jmp .L_0138
.L_014C:
.L_014B:
.L_0147:
push -1
push -2147483648
push 0
push 8
cmp dword ptr [ebp-12], 0
je .L_014D
mov dword ptr [ebp-16], 1
jmp .L_0153
.L_014D:
mov dword ptr [ebp-16], 0
.L_0153:
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0150
jmp .L_0138
.L_0150:
.L_014F:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0152
jmp .L_0138
.L_0152:
.L_0151:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0138:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXDRAW
RTLGFXDRAW:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0154:
mov dword ptr [ebp-4], 0
push 0
push 306
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0157
jmp .L_0155
.L_0157:
.L_0156:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0159
jmp .L_0155
.L_0159:
.L_0158:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0155:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXDRAWSTRING
RTLGFXDRAWSTRING:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_015A:
mov dword ptr [ebp-4], 0
push 0
push 307
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_015D
jmp .L_015B
.L_015D:
.L_015C:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_015F
jmp .L_015B
.L_015F:
.L_015E:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0161
jmp .L_015B
.L_0161:
.L_0160:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0163
jmp .L_015B
.L_0163:
.L_0162:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0165
jmp .L_015B
.L_0165:
.L_0164:
cmp dword ptr [ebp+40], 0
je .L_0167
mov eax, dword ptr [ebp+40]
mov dword ptr [ebp+24], eax
.L_0167:
.L_0166:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0169
jmp .L_015B
.L_0169:
.L_0168:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_016B
jmp .L_015B
.L_016B:
.L_016A:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_016D
jmp .L_015B
.L_016D:
.L_016C:
push -1
push -2147483648
cmp dword ptr [ebp+28], 0
je .L_016E
push dword ptr [ebp+36]
call HGETPUTTER
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0178
.L_016E:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_0178:
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0171
jmp .L_015B
.L_0171:
.L_0170:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0173
jmp .L_015B
.L_0173:
.L_0172:
cmp dword ptr [ebp+48], 0
jne .L_0175
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+48], eax
.L_0175:
.L_0174:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0177
jmp .L_015B
.L_0177:
.L_0176:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_015B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXVIEW
RTLGFXVIEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0179:
mov dword ptr [ebp-4], 0
push 0
push 308
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_017C
jmp .L_017A
.L_017C:
.L_017B:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_017E
jmp .L_017A
.L_017E:
.L_017D:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0180
jmp .L_017A
.L_0180:
.L_017F:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0182
jmp .L_017A
.L_0182:
.L_0181:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0184
jmp .L_017A
.L_0184:
.L_0183:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0186
jmp .L_017A
.L_0186:
.L_0185:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0188
jmp .L_017A
.L_0188:
.L_0187:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_017A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXWINDOW
RTLGFXWINDOW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0189:
mov dword ptr [ebp-4], 0
push 0
push 309
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_018C
push 15
push dword ptr [Lt_0135+4]
push dword ptr [Lt_0135]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+8], eax
.L_018C:
.L_018B:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_018E
jmp .L_018A
.L_018E:
.L_018D:
cmp dword ptr [ebp+12], 0
jne .L_0190
push 15
push dword ptr [Lt_0135+4]
push dword ptr [Lt_0135]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+12], eax
.L_0190:
.L_018F:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0192
jmp .L_018A
.L_0192:
.L_0191:
cmp dword ptr [ebp+16], 0
jne .L_0194
push 15
push dword ptr [Lt_0135+4]
push dword ptr [Lt_0135]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+16], eax
.L_0194:
.L_0193:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0196
jmp .L_018A
.L_0196:
.L_0195:
cmp dword ptr [ebp+20], 0
jne .L_0198
push 15
push dword ptr [Lt_0135+4]
push dword ptr [Lt_0135]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+20], eax
.L_0198:
.L_0197:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_019A
jmp .L_018A
.L_019A:
.L_0199:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_019C
jmp .L_018A
.L_019C:
.L_019B:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_018A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXPALETTE
RTLGFXPALETTE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_019D:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
je .L_01A0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_01A1
mov dword ptr [ebp-24], 24
jmp .L_01B3
.L_01A1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.L_01B3:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_01A4
push 314
push offset Lt_0073
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01A3
.L_01A4:
push 313
push offset Lt_0072
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01A3:
jmp .L_019F
.L_01A0:
push 310
push offset Lt_006F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_019F:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01A6
jmp .L_019E
.L_01A6:
.L_01A5:
cmp dword ptr [ebp+12], 0
jne .L_01A8
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_01A8:
.L_01A7:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01AA
jmp .L_019E
.L_01AA:
.L_01A9:
cmp dword ptr [ebp+16], 0
je .L_01AC
mov dword ptr [ebp-20], -1
jmp .L_01AB
.L_01AC:
cmp dword ptr [ebp+24], 0
je .L_01AE
mov dword ptr [ebp-16], 0
jmp .L_01AD
.L_01AE:
mov dword ptr [ebp-16], -1
.L_01AD:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+20], eax
mov dword ptr [ebp-20], 1
.L_01AB:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B0
jmp .L_019E
.L_01B0:
.L_01AF:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B2
jmp .L_019E
.L_01B2:
.L_01B1:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_019E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXPALETTEUSING
RTLGFXPALETTEUSING:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_01B4:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
je .L_01B7
cmp dword ptr [ebp+12], 0
je .L_01B9
push 316
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01B8
.L_01B9:
push 312
push offset Lt_0071
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01B8:
jmp .L_01B6
.L_01B7:
cmp dword ptr [ebp+12], 0
je .L_01BB
push 315
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01BA
.L_01BB:
push 311
push offset Lt_0070
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01BA:
.L_01B6:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01BD
jmp .L_01B5
.L_01BD:
.L_01BC:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXPUT
RTLGFXPUT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01BE:
mov dword ptr [ebp-4], 0
push 0
push 317
push offset Lt_0076
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C1
jmp .L_01BF
.L_01C1:
.L_01C0:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C3
jmp .L_01BF
.L_01C3:
.L_01C2:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C5
jmp .L_01BF
.L_01C5:
.L_01C4:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C7
jmp .L_01BF
.L_01C7:
.L_01C6:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C9
jmp .L_01BF
.L_01C9:
.L_01C8:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CB
jmp .L_01BF
.L_01CB:
.L_01CA:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CD
jmp .L_01BF
.L_01CD:
.L_01CC:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CF
jmp .L_01BF
.L_01CF:
.L_01CE:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+56]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D1
jmp .L_01BF
.L_01D1:
.L_01D0:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D3
jmp .L_01BF
.L_01D3:
.L_01D2:
push -1
push -2147483648
push dword ptr [ebp+40]
call HGETPUTTER
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D5
jmp .L_01BF
.L_01D5:
.L_01D4:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D7
jmp .L_01BF
.L_01D7:
.L_01D6:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D9
jmp .L_01BF
.L_01D9:
.L_01D8:
push -1
push -2147483648
push dword ptr [ebp+52]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01DB
jmp .L_01BF
.L_01DB:
.L_01DA:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXGET
RTLGFXGET:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01DC:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [ENV+136], 0
jne .L_01DE
push 328
push offset Lt_0077
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01F4
.L_01DE:
push 329
push offset Lt_0078
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01F4:
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E1
jmp .L_01DD
.L_01E1:
.L_01E0:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E3
jmp .L_01DD
.L_01E3:
.L_01E2:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E5
jmp .L_01DD
.L_01E5:
.L_01E4:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E7
jmp .L_01DD
.L_01E7:
.L_01E6:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E9
jmp .L_01DD
.L_01E9:
.L_01E8:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01EB
jmp .L_01DD
.L_01EB:
.L_01EA:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01ED
jmp .L_01DD
.L_01ED:
.L_01EC:
cmp dword ptr [ebp+36], 0
je .L_01EF
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01F1
jmp .L_01DD
.L_01F1:
.L_01F0:
jmp .L_01EE
.L_01EF:
push 1
push -2147483648
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01F3
jmp .L_01DD
.L_01F3:
.L_01F2:
.L_01EE:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXSCREENSET
RTLGFXSCREENSET:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01F5:
mov dword ptr [ebp-4], 0
push 0
push 330
push offset Lt_0079
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01F8
jmp .L_01F6
.L_01F8:
.L_01F7:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01FA
jmp .L_01F6
.L_01FA:
.L_01F9:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01FC
jmp .L_01F6
.L_01FC:
.L_01FB:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01FE
jmp .L_01F6
.L_01FE:
.L_01FD:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0200
jmp .L_01F6
.L_0200:
.L_01FF:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01F6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXSCREENSETQB
RTLGFXSCREENSETQB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0201:
mov dword ptr [ebp-4], 0
push 0
push 331
push offset Lt_007A
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0204
jmp .L_0202
.L_0204:
.L_0203:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0206
jmp .L_0202
.L_0206:
.L_0205:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0208
jmp .L_0202
.L_0208:
.L_0207:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0202:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGFXIMAGECREATE
RTLGFXIMAGECREATE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0209:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [ENV+136], 0
jne .L_020B
push 332
push offset Lt_00AE
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0217
.L_020B:
push 333
push offset Lt_00AF
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0217:
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_020E
jmp .L_020A
.L_020E:
.L_020D:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0210
jmp .L_020A
.L_0210:
.L_020F:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0212
jmp .L_020A
.L_0212:
.L_0211:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0214
jmp .L_020A
.L_0214:
.L_0213:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0216
jmp .L_020A
.L_0216:
.L_0215:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_020A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzgfx:
.L_0002:
.L_0003:
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
HPORTS_CB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00CE:
call FBRESTARTGETCOUNT
cmp dword ptr [Lt_0218], eax
je .L_00D1
call FBRESTARTGETCOUNT
mov dword ptr [Lt_0218], eax
mov dword ptr [Lt_0219], 0
.L_00D1:
.L_00D0:
cmp dword ptr [Lt_0219], 0
jne .L_00D3
mov dword ptr [Lt_0219], -1
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00D7
.L_00D8:
cmp dword ptr [ebp-8], 1
jne .L_00D6
.L_00D7:
push offset Lt_00D9
call FBADDLIB
add esp, 4
.L_00D6:
.L_00D4:
.L_00D3:
.L_00D2:
mov dword ptr [ebp-4], -1
.L_00CF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0218,4

.section .data
.balign 4
Lt_0219:
.int 0

.section .text
.balign 16
HGFXLIB_CB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00DA:
mov dword ptr [ENV+236], -1
mov dword ptr [ebp-4], -1
.L_00DB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HGETPUTTER:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00DC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_00DF
.L_00E1:
push 318
push offset Lt_00BF
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E2:
push 319
push offset Lt_00C0
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E3:
push 320
push offset Lt_00C1
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E4:
push 321
push offset Lt_00C2
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E5:
push 322
push offset Lt_00C3
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E6:
push 323
push offset Lt_00C4
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E7:
push 324
push offset Lt_00C5
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E8:
push 325
push offset Lt_00C6
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00E9:
push 326
push offset Lt_00C7
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00EA:
push 327
push offset Lt_00C8
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DE
.L_00DF:
cmp dword ptr [ebp-12], 9
ja .L_00EA
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00EB+eax*4]
.L_00EB:
.int .L_00E1
.int .L_00E2
.int .L_00E3
.int .L_00E4
.int .L_00E5
.int .L_00E6
.int .L_00E7
.int .L_00E9
.int .L_00EA
.int .L_00E8
.L_00DE:
push dword ptr [ebp-8]
call ASTBUILDPROCADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_00DD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
FUNCDATA:
.int Lt_0066
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 6
.int 32
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 160,0
.int Lt_0067
.long 0
.int 12
.int -1
.int HGFXLIB_CB
.int 0
.int 3
.int 32
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.skip 208,0
.int Lt_0068
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 9
.int 32
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 65535
.int 523
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_0069
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 10
.int 32
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 96,0
.int Lt_006A
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 8
.int 32
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 128,0
.int Lt_006B
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 2
.int 32
.int 1
.int -1
.int 0
.int 529
.int 2
.int 0
.skip 4,0
.skip 224,0
.int Lt_006C
.long 0
.int 8
.int -1
.int HGFXLIB_CB
.int 2
.int 11
.int 32
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.int 32
.int 1
.int 0
.skip 4,0
.skip 80,0
.int Lt_006D
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 7
.int 523
.int 1
.int -1
.int -32768
.int 523
.int 1
.int -1
.int -32768
.int 523
.int 1
.int -1
.int -32768
.int 523
.int 1
.int -1
.int -32768
.int 524
.int 1
.int -1
.int 0
.int 524
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.skip 144,0
.int Lt_006E
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 5
.int 527
.int 1
.int -1
.int 0
.int 527
.int 1
.int -1
.int 0
.int 527
.int 1
.int -1
.int 0
.int 527
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.skip 176,0
.int Lt_006F
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 4
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 192,0
.int Lt_0070
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 1067
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0071
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 1069
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0072
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 4
.int 523
.int 1
.int -1
.int -1
.int 11
.int 2
.int 0
.skip 4,0
.int 11
.int 2
.int 0
.skip 4,0
.int 11
.int 2
.int 0
.skip 4,0
.skip 192,0
.int Lt_0073
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 4
.int 523
.int 1
.int -1
.int -1
.int 13
.int 2
.int 0
.skip 4,0
.int 13
.int 2
.int 0
.skip 4,0
.int 13
.int 2
.int 0
.skip 4,0
.skip 192,0
.int Lt_0074
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 43
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0075
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 45
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0076
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 2
.int 14
.int 32
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int -65536
.int 523
.int 1
.int -1
.int -65536
.int 523
.int 1
.int -1
.int -65536
.int 523
.int 1
.int -1
.int -65536
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.int 32
.int 1
.int -1
.int 0
.int 32
.int 1
.int -1
.int 0
.skip 32,0
.int Lt_0077
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 1026
.int 8
.int 1056
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 512
.int 3
.int 0
.skip 4,0
.skip 128,0
.int Lt_0078
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 514
.int 8
.int 1056
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 3
.int 0
.skip 4,0
.skip 128,0
.int Lt_0079
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 8
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.skip 176,0
.int Lt_007A
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 208,0
.int Lt_007B
.int Lt_007C
.int 11
.int -1
.int HGFXLIB_CB
.int 130
.int 6
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 8
.int 523
.int 1
.int -1
.int 1
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.skip 160,0
.int Lt_007D
.int Lt_007E
.int 11
.int -1
.int HGFXLIB_CB
.int 1026
.int 3
.int 529
.int 2
.int 0
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.int 32
.int 1
.int -1
.int 0
.skip 208,0
.int Lt_007D
.int Lt_007F
.int 11
.int -1
.int HGFXLIB_CB
.int 514
.int 3
.int 529
.int 2
.int 0
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.int 32
.int 1
.int -1
.int 0
.skip 208,0
.int Lt_0080
.int Lt_0081
.int 11
.int -1
.int HGFXLIB_CB
.int 3
.int 4
.int 529
.int 2
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.int 1056
.int 1
.int -1
.int 0
.skip 192,0
.int Lt_0080
.int Lt_0082
.int 11
.int -1
.int HGFXLIB_CB
.int 3
.int 5
.int 529
.int 2
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.int 1056
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 176,0
.int Lt_0083
.int Lt_0084
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int Lt_0085
.int Lt_0084
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int Lt_0086
.int Lt_0087
.int 15
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0088
.int Lt_0089
.int 15
.int -1
.int HGFXLIB_CB
.int 0
.int 2
.int 527
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_008A
.int Lt_008B
.int 11
.int -1
.int HPORTS_CB
.int 2
.int 2
.int 518
.int 1
.int 0
.skip 4,0
.int 515
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_008C
.int Lt_008D
.int 11
.int -1
.int HPORTS_CB
.int 0
.int 1
.int 518
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_008E
.int Lt_008F
.int 11
.int -1
.int HPORTS_CB
.int 2
.int 3
.int 518
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 208,0
.int Lt_0090
.int Lt_0091
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 0
.skip 256,0
.int Lt_0092
.int Lt_0093
.int 11
.int 3
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int Lt_0094
.int Lt_0095
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 0
.skip 256,0
.int Lt_0096
.int Lt_0097
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int Lt_0098
.int Lt_0099
.int 32
.int -1
.int HGFXLIB_CB
.int 128
.int 0
.skip 256,0
.int Lt_009A
.int Lt_009B
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int Lt_009C
.int Lt_009D
.int 11
.int -1
.long 0
.int 128
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_009E
.int Lt_009F
.int 11
.int -1
.long 0
.int 129
.int 5
.int 11
.int 2
.int 0
.int 0
.int 11
.int 2
.int 0
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.skip 176,0
.int Lt_009E
.int Lt_00A0
.int 11
.int -1
.long 0
.int 129
.int 5
.int 13
.int 2
.int 0
.int 0
.int 13
.int 2
.int 0
.int 0
.int 13
.int 2
.int -1
.int 0
.int 13
.int 2
.int -1
.int 0
.int 13
.int 2
.int -1
.int 0
.skip 176,0
.int Lt_00A1
.int Lt_00A2
.int 11
.int -1
.long 0
.int 128
.int 4
.int 523
.int 1
.int -1
.int -2147483648
.int 523
.int 1
.int -1
.int -2147483648
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 192,0
.int Lt_00A3
.int Lt_00A4
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 10
.int 523
.int 1
.int 0
.int 0
.int 8
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.int 15
.int 2
.int -1
.int 0
.skip 96,0
.int Lt_00A5
.int Lt_00A6
.int 11
.int -1
.int HGFXLIB_CB
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_00A7
.int Lt_00A8
.int 11
.int -1
.int HGFXLIB_CB
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_00A9
.int Lt_00AA
.int 0
.int -1
.int HGFXLIB_CB
.int 129
.int 7
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 17
.int 2
.int -1
.int 0
.skip 144,0
.int Lt_00A9
.int Lt_00AB
.int 0
.int -1
.int HGFXLIB_CB
.int 129
.int 7
.int 13
.int 2
.int 0
.skip 4,0
.int 13
.int 2
.int 0
.skip 4,0
.int 13
.int 2
.int -1
.int 0
.int 13
.int 2
.int -1
.int 0
.int 13
.int 2
.int -1
.int 0
.int 13
.int 2
.int -1
.int 0
.int 17
.int 2
.int -1
.int 0
.skip 144,0
.int Lt_00AC
.int Lt_00AD
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 240,0
.int Lt_00AE
.long 0
.int 32
.int -1
.int HGFXLIB_CB
.int 1024
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.skip 176,0
.int Lt_00AF
.long 0
.int 32
.int -1
.int HGFXLIB_CB
.int 128
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.skip 176,0
.int Lt_00B0
.int Lt_00B1
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 1056
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_00B2
.int Lt_00B3
.int 11
.int -1
.int HGFXLIB_CB
.int 129
.int 7
.int 1056
.int 1
.int 0
.skip 4,0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.int 32
.int 2
.int -1
.int 0
.int 11
.int 2
.int -1
.int 0
.skip 144,0
.int Lt_00B2
.int Lt_00B4
.int 11
.int -1
.int HGFXLIB_CB
.int 129
.int 7
.int 1056
.int 1
.int 0
.skip 4,0
.int 13
.int 2
.int 0
.skip 4,0
.int 13
.int 2
.int 0
.skip 4,0
.int 13
.int 2
.int -1
.int 0
.int 13
.int 2
.int -1
.int 0
.int 32
.int 2
.int -1
.int 0
.int 13
.int 2
.int -1
.int 0
.skip 144,0
.int Lt_00B5
.int Lt_00B6
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 6
.int 1056
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 1
.skip 160,0
.int Lt_00B7
.int Lt_00B8
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 32
.int 1
.int -1
.int 0
.skip 240,0
.int Lt_00B9
.int Lt_00BA
.int 0
.int -1
.int HGFXLIB_CB
.int 129
.int 2
.int 523
.int 1
.int 0
.skip 4,0
.int 17
.int 2
.skip 8,0
.skip 224,0
.int Lt_00B9
.int Lt_00BB
.int 0
.int -1
.int HGFXLIB_CB
.int 129
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 11
.int 2
.int -1
.int -2147483648
.int 11
.int 2
.int -1
.int -2147483648
.int 11
.int 2
.int -1
.int -2147483648
.int 11
.int 2
.int -1
.int -2147483648
.skip 176,0
.int Lt_00B9
.int Lt_00BC
.int 0
.int -1
.int HGFXLIB_CB
.int 129
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 13
.int 2
.int 0
.skip 4,0
.int 13
.int 2
.int -1
.int -2147483648
.int 13
.int 2
.int -1
.int -2147483648
.int 13
.int 2
.int -1
.int -2147483648
.skip 176,0
.int Lt_00BD
.int Lt_00BE
.int 32
.int -1
.int HGFXLIB_CB
.int 129
.int 1
.int 1060
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_00BF
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C0
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C1
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C2
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C3
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C4
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C5
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C6
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C7
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.int Lt_00C8
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 4,0
.int 35
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 112,0
.long 0
.skip 280,0
.balign 4
Lt_0066:	.ascii	"fb_GfxPset\0"
.balign 4
Lt_0067:	.ascii	"fb_GfxPoint\0"
.balign 4
Lt_0068:	.ascii	"fb_GfxLine\0"
.balign 4
Lt_0069:	.ascii	"fb_GfxEllipse\0"
.balign 4
Lt_006A:	.ascii	"fb_GfxPaint\0"
.balign 4
Lt_006B:	.ascii	"fb_GfxDraw\0"
.balign 4
Lt_006C:	.ascii	"fb_GfxDrawString\0"
.balign 4
Lt_006D:	.ascii	"fb_GfxView\0"
.balign 4
Lt_006E:	.ascii	"fb_GfxWindow\0"
.balign 4
Lt_006F:	.ascii	"fb_GfxPalette\0"
.balign 4
Lt_0070:	.ascii	"fb_GfxPaletteUsing\0"
.balign 4
Lt_0071:	.ascii	"fb_GfxPaletteUsing64\0"
.balign 4
Lt_0072:	.ascii	"fb_GfxPaletteGet\0"
.balign 4
Lt_0073:	.ascii	"fb_GfxPaletteGet64\0"
.balign 4
Lt_0074:	.ascii	"fb_GfxPaletteGetUsing\0"
.balign 4
Lt_0075:	.ascii	"fb_GfxPaletteGetUsing64\0"
.balign 4
Lt_0076:	.ascii	"fb_GfxPut\0"
.balign 4
Lt_0077:	.ascii	"fb_GfxGet\0"
.balign 4
Lt_0078:	.ascii	"fb_GfxGetQB\0"
.balign 4
Lt_0079:	.ascii	"fb_GfxScreen\0"
.balign 4
Lt_007A:	.ascii	"fb_GfxScreenQB\0"
.balign 4
Lt_007B:	.ascii	"screenres\0"
.balign 4
Lt_007C:	.ascii	"fb_GfxScreenRes\0"
.balign 4
Lt_007D:	.ascii	"bload\0"
.balign 4
Lt_007E:	.ascii	"fb_GfxBload\0"
.balign 4
Lt_007F:	.ascii	"fb_GfxBloadQB\0"
.balign 4
Lt_0080:	.ascii	"bsave\0"
.balign 4
Lt_0081:	.ascii	"fb_GfxBsave\0"
.balign 4
Lt_0082:	.ascii	"fb_GfxBsaveEx\0"
.balign 4
Lt_0083:	.ascii	"flip\0"
.balign 4
Lt_0084:	.ascii	"fb_GfxFlip\0"
.balign 4
Lt_0085:	.ascii	"screencopy\0"
.balign 4
Lt_0086:	.ascii	"pointcoord\0"
.balign 4
Lt_0087:	.ascii	"fb_GfxCursor\0"
.balign 4
Lt_0088:	.ascii	"pmap\0"
.balign 4
Lt_0089:	.ascii	"fb_GfxPMap\0"
.balign 4
Lt_008A:	.ascii	"out\0"
.balign 4
Lt_008B:	.ascii	"fb_Out\0"
.balign 4
Lt_008C:	.ascii	"inp\0"
.balign 4
Lt_008D:	.ascii	"fb_In\0"
.balign 4
Lt_008E:	.ascii	"wait\0"
.balign 4
Lt_008F:	.ascii	"fb_Wait\0"
.balign 4
Lt_0090:	.ascii	"screensync\0"
.balign 4
Lt_0091:	.ascii	"fb_GfxWaitVSync\0"
.balign 4
Lt_0092:	.ascii	"screenset\0"
.balign 4
Lt_0093:	.ascii	"fb_GfxPageSet\0"
.balign 4
Lt_0094:	.ascii	"screenlock\0"
.balign 4
Lt_0095:	.ascii	"fb_GfxLock\0"
.balign 4
Lt_0096:	.ascii	"screenunlock\0"
.balign 4
Lt_0097:	.ascii	"fb_GfxUnlock\0"
.balign 4
Lt_0098:	.ascii	"screenptr\0"
.balign 4
Lt_0099:	.ascii	"fb_GfxScreenPtr\0"
.balign 4
Lt_009A:	.ascii	"windowtitle\0"
.balign 4
Lt_009B:	.ascii	"fb_GfxSetWindowTitle\0"
.balign 4
Lt_009C:	.ascii	"multikey\0"
.balign 4
Lt_009D:	.ascii	"fb_Multikey\0"
.balign 4
Lt_009E:	.ascii	"getmouse\0"
.balign 4
Lt_009F:	.ascii	"fb_GetMouse\0"
.balign 4
Lt_00A0:	.ascii	"fb_GetMouse64\0"
.balign 4
Lt_00A1:	.ascii	"setmouse\0"
.balign 4
Lt_00A2:	.ascii	"fb_SetMouse\0"
.balign 4
Lt_00A3:	.ascii	"getjoystick\0"
.balign 4
Lt_00A4:	.ascii	"fb_GfxGetJoystick\0"
.balign 4
Lt_00A5:	.ascii	"stick\0"
.balign 4
Lt_00A6:	.ascii	"fb_GfxStickQB\0"
.balign 4
Lt_00A7:	.ascii	"strig\0"
.balign 4
Lt_00A8:	.ascii	"fb_GfxStrigQB\0"
.balign 4
Lt_00A9:	.ascii	"screeninfo\0"
.balign 4
Lt_00AA:	.ascii	"fb_GfxScreenInfo32\0"
.balign 4
Lt_00AB:	.ascii	"fb_GfxScreenInfo64\0"
.balign 4
Lt_00AC:	.ascii	"screenlist\0"
.balign 4
Lt_00AD:	.ascii	"fb_GfxScreenList\0"
.balign 4
Lt_00AE:	.ascii	"fb_GfxImageCreate\0"
.balign 4
Lt_00AF:	.ascii	"fb_GfxImageCreateQB\0"
.balign 4
Lt_00B0:	.ascii	"imagedestroy\0"
.balign 4
Lt_00B1:	.ascii	"fb_GfxImageDestroy\0"
.balign 4
Lt_00B2:	.ascii	"imageinfo\0"
.balign 4
Lt_00B3:	.ascii	"fb_GfxImageInfo32\0"
.balign 4
Lt_00B4:	.ascii	"fb_GfxImageInfo64\0"
.balign 4
Lt_00B5:	.ascii	"imageconvertrow\0"
.balign 4
Lt_00B6:	.ascii	"fb_GfxImageConvertRow\0"
.balign 4
Lt_00B7:	.ascii	"screenevent\0"
.balign 4
Lt_00B8:	.ascii	"fb_GfxEvent\0"
.balign 4
Lt_00B9:	.ascii	"screencontrol\0"
.balign 4
Lt_00BA:	.ascii	"fb_GfxControl_s\0"
.balign 4
Lt_00BB:	.ascii	"fb_GfxControl_i32\0"
.balign 4
Lt_00BC:	.ascii	"fb_GfxControl_i64\0"
.balign 4
Lt_00BD:	.ascii	"screenglproc\0"
.balign 4
Lt_00BE:	.ascii	"fb_GfxGetGLProcAddress\0"
.balign 4
Lt_00BF:	.ascii	"fb_hPutTrans\0"
.balign 4
Lt_00C0:	.ascii	"fb_hPutPSet\0"
.balign 4
Lt_00C1:	.ascii	"fb_hPutPReset\0"
.balign 4
Lt_00C2:	.ascii	"fb_hPutAnd\0"
.balign 4
Lt_00C3:	.ascii	"fb_hPutOr\0"
.balign 4
Lt_00C4:	.ascii	"fb_hPutXor\0"
.balign 4
Lt_00C5:	.ascii	"fb_hPutAlpha\0"
.balign 4
Lt_00C6:	.ascii	"fb_hPutBlend\0"
.balign 4
Lt_00C7:	.ascii	"fb_hPutAdd\0"
.balign 4
Lt_00C8:	.ascii	"fb_hPutCustom\0"
.balign 4
Lt_00D9:	.ascii	"advapi32\0"
.balign 8
Lt_0104:	.quad	0xC15FFFFFC0000000
.balign 8
Lt_0135:	.quad	0x0000000000000000
.balign 8
Lt_0136:	.quad	0x401921FB82C2BD7F

.section .ctors
.int fb_ctor__rtlzgfx
