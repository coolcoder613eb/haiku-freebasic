	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLGFXMODINIT
_RTLGFXMODINIT:
.L_00CB:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.L_00CC:
ret
.balign 16

.globl _RTLGFXMODEND
_RTLGFXMODEND:
.L_00CD:
.L_00CE:
ret
.balign 16

.globl _RTLGFXPSET
_RTLGFXPSET:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00ED:
mov dword ptr [ebp-4], 0
push 0
push 301
push offset _Lt_0067
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F0
jmp .L_00EE
.L_00F0:
.L_00EF:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F2
jmp .L_00EE
.L_00F2:
.L_00F1:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F4
jmp .L_00EE
.L_00F4:
.L_00F3:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F6
jmp .L_00EE
.L_00F6:
.L_00F5:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F8
jmp .L_00EE
.L_00F8:
.L_00F7:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FA
jmp .L_00EE
.L_00FA:
.L_00F9:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_00EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXPOINT
_RTLGFXPOINT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00FB:
mov dword ptr [ebp-4], 0
push 0
push 302
push offset _Lt_0068
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FE
jmp .L_00FC
.L_00FE:
.L_00FD:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0100
jmp .L_00FC
.L_0100:
.L_00FF:
cmp dword ptr [ebp+16], 0
jne .L_0102
push 15
push dword ptr [_Lt_0105+4]
push dword ptr [_Lt_0105]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+16], eax
.L_0102:
.L_0101:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0104
jmp .L_00FC
.L_0104:
.L_0103:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00FC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXLINE
_RTLGFXLINE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0106:
mov dword ptr [ebp-4], 0
push 0
push 303
push offset _Lt_0069
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0109
jmp .L_0107
.L_0109:
.L_0108:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_010B
jmp .L_0107
.L_010B:
.L_010A:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_010D
jmp .L_0107
.L_010D:
.L_010C:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_010F
jmp .L_0107
.L_010F:
.L_010E:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0111
jmp .L_0107
.L_0111:
.L_0110:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0113
jmp .L_0107
.L_0113:
.L_0112:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0115
jmp .L_0107
.L_0115:
.L_0114:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0117
jmp .L_0107
.L_0117:
.L_0116:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0119
jmp .L_0107
.L_0119:
.L_0118:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXCIRCLE
_RTLGFXCIRCLE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_011A:
mov dword ptr [ebp-4], 0
push 0
push 304
push offset _Lt_006A
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_011D
jmp .L_011B
.L_011D:
.L_011C:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_011F
jmp .L_011B
.L_011F:
.L_011E:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0121
jmp .L_011B
.L_0121:
.L_0120:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0123
jmp .L_011B
.L_0123:
.L_0122:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0125
jmp .L_011B
.L_0125:
.L_0124:
cmp dword ptr [ebp+28], 0
jne .L_0127
push 15
push dword ptr [_Lt_0136+4]
push dword ptr [_Lt_0136]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+28], eax
.L_0127:
.L_0126:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0129
jmp .L_011B
.L_0129:
.L_0128:
cmp dword ptr [ebp+32], 0
jne .L_012B
push 15
push dword ptr [_Lt_0136+4]
push dword ptr [_Lt_0136]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+32], eax
.L_012B:
.L_012A:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_012D
jmp .L_011B
.L_012D:
.L_012C:
cmp dword ptr [ebp+36], 0
jne .L_012F
push 15
push dword ptr [_Lt_0137+4]
push dword ptr [_Lt_0137]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+36], eax
.L_012F:
.L_012E:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0131
jmp .L_011B
.L_0131:
.L_0130:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0133
jmp .L_011B
.L_0133:
.L_0132:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0135
jmp .L_011B
.L_0135:
.L_0134:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_011B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXPAINT
_RTLGFXPAINT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0138:
mov dword ptr [ebp-4], 0
push 0
push 305
push offset _Lt_006B
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_013B
jmp .L_0139
.L_013B:
.L_013A:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_013D
jmp .L_0139
.L_013D:
.L_013C:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_013F
jmp .L_0139
.L_013F:
.L_013E:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBISSTRING
add esp, 4
test eax, eax
je .L_0141
mov dword ptr [ebp-12], -1
push -1
push -2147483648
push 0
push 8
push 4294967295
push 4294901760
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0143
jmp .L_0139
.L_0143:
.L_0142:
jmp .L_0140
.L_0141:
mov dword ptr [ebp-12], 0
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0145
jmp .L_0139
.L_0145:
.L_0144:
.L_0140:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0147
jmp .L_0139
.L_0147:
.L_0146:
cmp dword ptr [ebp-12], 0
je .L_0149
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_014B
jmp .L_0139
.L_014B:
.L_014A:
jmp .L_0148
.L_0149:
push -1
push -2147483648
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _SYMBALLOCSTRCONST
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_014D
jmp .L_0139
.L_014D:
.L_014C:
.L_0148:
push -1
push -2147483648
push 0
push 8
cmp dword ptr [ebp-12], 0
je .L_014E
mov dword ptr [ebp-16], 1
jmp .L_0154
.L_014E:
mov dword ptr [ebp-16], 0
.L_0154:
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0151
jmp .L_0139
.L_0151:
.L_0150:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0153
jmp .L_0139
.L_0153:
.L_0152:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0139:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXDRAW
_RTLGFXDRAW:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0155:
mov dword ptr [ebp-4], 0
push 0
push 306
push offset _Lt_006C
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0158
jmp .L_0156
.L_0158:
.L_0157:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_015A
jmp .L_0156
.L_015A:
.L_0159:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0156:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXDRAWSTRING
_RTLGFXDRAWSTRING:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_015B:
mov dword ptr [ebp-4], 0
push 0
push 307
push offset _Lt_006D
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_015E
jmp .L_015C
.L_015E:
.L_015D:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0160
jmp .L_015C
.L_0160:
.L_015F:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0162
jmp .L_015C
.L_0162:
.L_0161:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0164
jmp .L_015C
.L_0164:
.L_0163:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0166
jmp .L_015C
.L_0166:
.L_0165:
cmp dword ptr [ebp+40], 0
je .L_0168
mov eax, dword ptr [ebp+40]
mov dword ptr [ebp+24], eax
.L_0168:
.L_0167:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_016A
jmp .L_015C
.L_016A:
.L_0169:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_016C
jmp .L_015C
.L_016C:
.L_016B:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_016E
jmp .L_015C
.L_016E:
.L_016D:
push -1
push -2147483648
cmp dword ptr [ebp+28], 0
je .L_016F
push dword ptr [ebp+36]
call _HGETPUTTER
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0179
.L_016F:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_0179:
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0172
jmp .L_015C
.L_0172:
.L_0171:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0174
jmp .L_015C
.L_0174:
.L_0173:
cmp dword ptr [ebp+48], 0
jne .L_0176
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+48], eax
.L_0176:
.L_0175:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0178
jmp .L_015C
.L_0178:
.L_0177:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_015C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXVIEW
_RTLGFXVIEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_017A:
mov dword ptr [ebp-4], 0
push 0
push 308
push offset _Lt_006E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_017D
jmp .L_017B
.L_017D:
.L_017C:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_017F
jmp .L_017B
.L_017F:
.L_017E:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0181
jmp .L_017B
.L_0181:
.L_0180:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0183
jmp .L_017B
.L_0183:
.L_0182:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0185
jmp .L_017B
.L_0185:
.L_0184:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0187
jmp .L_017B
.L_0187:
.L_0186:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0189
jmp .L_017B
.L_0189:
.L_0188:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_017B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXWINDOW
_RTLGFXWINDOW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_018A:
mov dword ptr [ebp-4], 0
push 0
push 309
push offset _Lt_006F
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_018D
push 15
push dword ptr [_Lt_0136+4]
push dword ptr [_Lt_0136]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+8], eax
.L_018D:
.L_018C:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_018F
jmp .L_018B
.L_018F:
.L_018E:
cmp dword ptr [ebp+12], 0
jne .L_0191
push 15
push dword ptr [_Lt_0136+4]
push dword ptr [_Lt_0136]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+12], eax
.L_0191:
.L_0190:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0193
jmp .L_018B
.L_0193:
.L_0192:
cmp dword ptr [ebp+16], 0
jne .L_0195
push 15
push dword ptr [_Lt_0136+4]
push dword ptr [_Lt_0136]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+16], eax
.L_0195:
.L_0194:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0197
jmp .L_018B
.L_0197:
.L_0196:
cmp dword ptr [ebp+20], 0
jne .L_0199
push 15
push dword ptr [_Lt_0136+4]
push dword ptr [_Lt_0136]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp+20], eax
.L_0199:
.L_0198:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_019B
jmp .L_018B
.L_019B:
.L_019A:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_019D
jmp .L_018B
.L_019D:
.L_019C:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_018B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXPALETTE
_RTLGFXPALETTE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_019E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
je .L_01A1
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_01A2
mov dword ptr [ebp-24], 24
jmp .L_01B4
.L_01A2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.L_01B4:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_01A5
push 314
push offset _Lt_0074
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01A4
.L_01A5:
push 313
push offset _Lt_0073
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01A4:
jmp .L_01A0
.L_01A1:
push 310
push offset _Lt_0070
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01A0:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01A7
jmp .L_019F
.L_01A7:
.L_01A6:
cmp dword ptr [ebp+12], 0
jne .L_01A9
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_01A9:
.L_01A8:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01AB
jmp .L_019F
.L_01AB:
.L_01AA:
cmp dword ptr [ebp+16], 0
je .L_01AD
mov dword ptr [ebp-20], -1
jmp .L_01AC
.L_01AD:
cmp dword ptr [ebp+24], 0
je .L_01AF
mov dword ptr [ebp-16], 0
jmp .L_01AE
.L_01AF:
mov dword ptr [ebp-16], -1
.L_01AE:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+20], eax
mov dword ptr [ebp-20], 1
.L_01AC:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B1
jmp .L_019F
.L_01B1:
.L_01B0:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B3
jmp .L_019F
.L_01B3:
.L_01B2:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_019F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXPALETTEUSING
_RTLGFXPALETTEUSING:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_01B5:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
je .L_01B8
cmp dword ptr [ebp+12], 0
je .L_01BA
push 316
push offset _Lt_0076
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01B9
.L_01BA:
push 312
push offset _Lt_0072
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01B9:
jmp .L_01B7
.L_01B8:
cmp dword ptr [ebp+12], 0
je .L_01BC
push 315
push offset _Lt_0075
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01BB
.L_01BC:
push 311
push offset _Lt_0071
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01BB:
.L_01B7:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01BE
jmp .L_01B6
.L_01BE:
.L_01BD:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01B6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXPUT
_RTLGFXPUT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01BF:
mov dword ptr [ebp-4], 0
push 0
push 317
push offset _Lt_0077
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C2
jmp .L_01C0
.L_01C2:
.L_01C1:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C4
jmp .L_01C0
.L_01C4:
.L_01C3:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C6
jmp .L_01C0
.L_01C6:
.L_01C5:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01C8
jmp .L_01C0
.L_01C8:
.L_01C7:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CA
jmp .L_01C0
.L_01CA:
.L_01C9:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CC
jmp .L_01C0
.L_01CC:
.L_01CB:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CE
jmp .L_01C0
.L_01CE:
.L_01CD:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D0
jmp .L_01C0
.L_01D0:
.L_01CF:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+56]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D2
jmp .L_01C0
.L_01D2:
.L_01D1:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D4
jmp .L_01C0
.L_01D4:
.L_01D3:
push -1
push -2147483648
push dword ptr [ebp+40]
call _HGETPUTTER
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D6
jmp .L_01C0
.L_01D6:
.L_01D5:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D8
jmp .L_01C0
.L_01D8:
.L_01D7:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01DA
jmp .L_01C0
.L_01DA:
.L_01D9:
push -1
push -2147483648
push dword ptr [ebp+52]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01DC
jmp .L_01C0
.L_01DC:
.L_01DB:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXGET
_RTLGFXGET:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01DD:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [_ENV+136], 0
jne .L_01DF
push 328
push offset _Lt_0078
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01F5
.L_01DF:
push 329
push offset _Lt_0079
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01F5:
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E2
jmp .L_01DE
.L_01E2:
.L_01E1:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E4
jmp .L_01DE
.L_01E4:
.L_01E3:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E6
jmp .L_01DE
.L_01E6:
.L_01E5:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E8
jmp .L_01DE
.L_01E8:
.L_01E7:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01EA
jmp .L_01DE
.L_01EA:
.L_01E9:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01EC
jmp .L_01DE
.L_01EC:
.L_01EB:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01EE
jmp .L_01DE
.L_01EE:
.L_01ED:
cmp dword ptr [ebp+36], 0
je .L_01F0
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01F2
jmp .L_01DE
.L_01F2:
.L_01F1:
jmp .L_01EF
.L_01F0:
push 1
push -2147483648
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01F4
jmp .L_01DE
.L_01F4:
.L_01F3:
.L_01EF:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXSCREENSET
_RTLGFXSCREENSET:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01F6:
mov dword ptr [ebp-4], 0
push 0
push 330
push offset _Lt_007A
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01F9
jmp .L_01F7
.L_01F9:
.L_01F8:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01FB
jmp .L_01F7
.L_01FB:
.L_01FA:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01FD
jmp .L_01F7
.L_01FD:
.L_01FC:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_01FF
jmp .L_01F7
.L_01FF:
.L_01FE:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0201
jmp .L_01F7
.L_0201:
.L_0200:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01F7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXSCREENSETQB
_RTLGFXSCREENSETQB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0202:
mov dword ptr [ebp-4], 0
push 0
push 331
push offset _Lt_007B
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0205
jmp .L_0203
.L_0205:
.L_0204:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0207
jmp .L_0203
.L_0207:
.L_0206:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0209
jmp .L_0203
.L_0209:
.L_0208:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0203:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGFXIMAGECREATE
_RTLGFXIMAGECREATE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_020A:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [_ENV+136], 0
jne .L_020C
push 332
push offset _Lt_00AF
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0218
.L_020C:
push 333
push offset _Lt_00B0
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0218:
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_020F
jmp .L_020B
.L_020F:
.L_020E:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0211
jmp .L_020B
.L_0211:
.L_0210:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0213
jmp .L_020B
.L_0213:
.L_0212:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0215
jmp .L_020B
.L_0215:
.L_0214:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0217
jmp .L_020B
.L_0217:
.L_0216:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_020B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzgfx:
.L_0002:
.L_0003:
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
_HPORTS_CB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00CF:
call _FBRESTARTGETCOUNT
cmp dword ptr [_Lt_0219], eax
je .L_00D2
call _FBRESTARTGETCOUNT
mov dword ptr [_Lt_0219], eax
mov dword ptr [_Lt_021A], 0
.L_00D2:
.L_00D1:
cmp dword ptr [_Lt_021A], 0
jne .L_00D4
mov dword ptr [_Lt_021A], -1
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00D8
.L_00D9:
cmp dword ptr [ebp-8], 1
jne .L_00D7
.L_00D8:
push offset _Lt_00DA
call _FBADDLIB
add esp, 4
.L_00D7:
.L_00D5:
.L_00D4:
.L_00D3:
mov dword ptr [ebp-4], -1
.L_00D0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0219,4

.section .data
.balign 4
_Lt_021A:
.int 0

.section .text
.balign 16
_HGFXLIB_CB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00DB:
mov dword ptr [_ENV+236], -1
mov dword ptr [ebp-4], -1
.L_00DC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGETPUTTER:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00DD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_00E0
.L_00E2:
push 318
push offset _Lt_00C0
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E3:
push 319
push offset _Lt_00C1
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E4:
push 320
push offset _Lt_00C2
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E5:
push 321
push offset _Lt_00C3
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E6:
push 322
push offset _Lt_00C4
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E7:
push 323
push offset _Lt_00C5
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E8:
push 324
push offset _Lt_00C6
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E9:
push 325
push offset _Lt_00C7
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00EA:
push 326
push offset _Lt_00C8
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00EB:
push 327
push offset _Lt_00C9
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00DF
.L_00E0:
cmp dword ptr [ebp-12], 9
ja .L_00EB
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00EC+eax*4]
_.L_00EC:
.int .L_00E2
.int .L_00E3
.int .L_00E4
.int .L_00E5
.int .L_00E6
.int .L_00E7
.int .L_00E8
.int .L_00EA
.int .L_00EB
.int .L_00E9
.L_00DF:
push dword ptr [ebp-8]
call _ASTBUILDPROCADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_00DE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_FUNCDATA:
.int _Lt_0067
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0068
.long 0
.int 12
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0069
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_006A
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_006B
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_006C
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_006D
.long 0
.int 8
.int -1
.int _HGFXLIB_CB
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
.int _Lt_006E
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_006F
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0070
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0071
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
.int 0
.int 1
.int 1067
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0072
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
.int 0
.int 1
.int 1069
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0073
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0074
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0075
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
.int 0
.int 1
.int 43
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0076
.long 0
.int 0
.int -1
.int _HGFXLIB_CB
.int 0
.int 1
.int 45
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0077
.long 0
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0078
.long 0
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0079
.long 0
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_007A
.long 0
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_007B
.long 0
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_007C
.int _Lt_007D
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_007E
.int _Lt_007F
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_007E
.int _Lt_0080
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0081
.int _Lt_0082
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0081
.int _Lt_0083
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0084
.int _Lt_0085
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0086
.int _Lt_0085
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0087
.int _Lt_0088
.int 15
.int -1
.int _HGFXLIB_CB
.int 128
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0089
.int _Lt_008A
.int 15
.int -1
.int _HGFXLIB_CB
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
.int _Lt_008B
.int _Lt_008C
.int 11
.int -1
.int _HPORTS_CB
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
.int _Lt_008D
.int _Lt_008E
.int 11
.int -1
.int _HPORTS_CB
.int 0
.int 1
.int 518
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_008F
.int _Lt_0090
.int 11
.int -1
.int _HPORTS_CB
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
.int _Lt_0091
.int _Lt_0092
.int 11
.int -1
.int _HGFXLIB_CB
.int 128
.int 0
.skip 256,0
.int _Lt_0093
.int _Lt_0094
.int 11
.int 3
.int _HGFXLIB_CB
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
.int _Lt_0095
.int _Lt_0096
.int 0
.int -1
.int _HGFXLIB_CB
.int 128
.int 0
.skip 256,0
.int _Lt_0097
.int _Lt_0098
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_0099
.int _Lt_009A
.int 32
.int -1
.int _HGFXLIB_CB
.int 128
.int 0
.skip 256,0
.int _Lt_009B
.int _Lt_009C
.int 0
.int -1
.int _HGFXLIB_CB
.int 128
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009D
.int _Lt_009E
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
.int _Lt_009F
.int _Lt_00A0
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
.int _Lt_009F
.int _Lt_00A1
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
.int _Lt_00A2
.int _Lt_00A3
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
.int _Lt_00A4
.int _Lt_00A5
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00A6
.int _Lt_00A7
.int 11
.int -1
.int _HGFXLIB_CB
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00A8
.int _Lt_00A9
.int 11
.int -1
.int _HGFXLIB_CB
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00AA
.int _Lt_00AB
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00AA
.int _Lt_00AC
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00AD
.int _Lt_00AE
.int 11
.int -1
.int _HGFXLIB_CB
.int 128
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 240,0
.int _Lt_00AF
.long 0
.int 32
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00B0
.long 0
.int 32
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00B1
.int _Lt_00B2
.int 0
.int -1
.int _HGFXLIB_CB
.int 128
.int 1
.int 1056
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00B3
.int _Lt_00B4
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00B3
.int _Lt_00B5
.int 11
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00B6
.int _Lt_00B7
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00B8
.int _Lt_00B9
.int 11
.int -1
.int _HGFXLIB_CB
.int 128
.int 1
.int 32
.int 1
.int -1
.int 0
.skip 240,0
.int _Lt_00BA
.int _Lt_00BB
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00BA
.int _Lt_00BC
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00BA
.int _Lt_00BD
.int 0
.int -1
.int _HGFXLIB_CB
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
.int _Lt_00BE
.int _Lt_00BF
.int 32
.int -1
.int _HGFXLIB_CB
.int 129
.int 1
.int 1060
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00C0
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C1
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C2
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C3
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C4
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C5
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C6
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C7
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C8
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
.int _Lt_00C9
.long 0
.int 0
.int 3
.int _HGFXLIB_CB
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
_Lt_0067:	.ascii	"fb_GfxPset\0"
.balign 4
_Lt_0068:	.ascii	"fb_GfxPoint\0"
.balign 4
_Lt_0069:	.ascii	"fb_GfxLine\0"
.balign 4
_Lt_006A:	.ascii	"fb_GfxEllipse\0"
.balign 4
_Lt_006B:	.ascii	"fb_GfxPaint\0"
.balign 4
_Lt_006C:	.ascii	"fb_GfxDraw\0"
.balign 4
_Lt_006D:	.ascii	"fb_GfxDrawString\0"
.balign 4
_Lt_006E:	.ascii	"fb_GfxView\0"
.balign 4
_Lt_006F:	.ascii	"fb_GfxWindow\0"
.balign 4
_Lt_0070:	.ascii	"fb_GfxPalette\0"
.balign 4
_Lt_0071:	.ascii	"fb_GfxPaletteUsing\0"
.balign 4
_Lt_0072:	.ascii	"fb_GfxPaletteUsing64\0"
.balign 4
_Lt_0073:	.ascii	"fb_GfxPaletteGet\0"
.balign 4
_Lt_0074:	.ascii	"fb_GfxPaletteGet64\0"
.balign 4
_Lt_0075:	.ascii	"fb_GfxPaletteGetUsing\0"
.balign 4
_Lt_0076:	.ascii	"fb_GfxPaletteGetUsing64\0"
.balign 4
_Lt_0077:	.ascii	"fb_GfxPut\0"
.balign 4
_Lt_0078:	.ascii	"fb_GfxGet\0"
.balign 4
_Lt_0079:	.ascii	"fb_GfxGetQB\0"
.balign 4
_Lt_007A:	.ascii	"fb_GfxScreen\0"
.balign 4
_Lt_007B:	.ascii	"fb_GfxScreenQB\0"
.balign 4
_Lt_007C:	.ascii	"screenres\0"
.balign 4
_Lt_007D:	.ascii	"fb_GfxScreenRes\0"
.balign 4
_Lt_007E:	.ascii	"bload\0"
.balign 4
_Lt_007F:	.ascii	"fb_GfxBload\0"
.balign 4
_Lt_0080:	.ascii	"fb_GfxBloadQB\0"
.balign 4
_Lt_0081:	.ascii	"bsave\0"
.balign 4
_Lt_0082:	.ascii	"fb_GfxBsave\0"
.balign 4
_Lt_0083:	.ascii	"fb_GfxBsaveEx\0"
.balign 4
_Lt_0084:	.ascii	"flip\0"
.balign 4
_Lt_0085:	.ascii	"fb_GfxFlip\0"
.balign 4
_Lt_0086:	.ascii	"screencopy\0"
.balign 4
_Lt_0087:	.ascii	"pointcoord\0"
.balign 4
_Lt_0088:	.ascii	"fb_GfxCursor\0"
.balign 4
_Lt_0089:	.ascii	"pmap\0"
.balign 4
_Lt_008A:	.ascii	"fb_GfxPMap\0"
.balign 4
_Lt_008B:	.ascii	"out\0"
.balign 4
_Lt_008C:	.ascii	"fb_Out\0"
.balign 4
_Lt_008D:	.ascii	"inp\0"
.balign 4
_Lt_008E:	.ascii	"fb_In\0"
.balign 4
_Lt_008F:	.ascii	"wait\0"
.balign 4
_Lt_0090:	.ascii	"fb_Wait\0"
.balign 4
_Lt_0091:	.ascii	"screensync\0"
.balign 4
_Lt_0092:	.ascii	"fb_GfxWaitVSync\0"
.balign 4
_Lt_0093:	.ascii	"screenset\0"
.balign 4
_Lt_0094:	.ascii	"fb_GfxPageSet\0"
.balign 4
_Lt_0095:	.ascii	"screenlock\0"
.balign 4
_Lt_0096:	.ascii	"fb_GfxLock\0"
.balign 4
_Lt_0097:	.ascii	"screenunlock\0"
.balign 4
_Lt_0098:	.ascii	"fb_GfxUnlock\0"
.balign 4
_Lt_0099:	.ascii	"screenptr\0"
.balign 4
_Lt_009A:	.ascii	"fb_GfxScreenPtr\0"
.balign 4
_Lt_009B:	.ascii	"windowtitle\0"
.balign 4
_Lt_009C:	.ascii	"fb_GfxSetWindowTitle\0"
.balign 4
_Lt_009D:	.ascii	"multikey\0"
.balign 4
_Lt_009E:	.ascii	"fb_Multikey\0"
.balign 4
_Lt_009F:	.ascii	"getmouse\0"
.balign 4
_Lt_00A0:	.ascii	"fb_GetMouse\0"
.balign 4
_Lt_00A1:	.ascii	"fb_GetMouse64\0"
.balign 4
_Lt_00A2:	.ascii	"setmouse\0"
.balign 4
_Lt_00A3:	.ascii	"fb_SetMouse\0"
.balign 4
_Lt_00A4:	.ascii	"getjoystick\0"
.balign 4
_Lt_00A5:	.ascii	"fb_GfxGetJoystick\0"
.balign 4
_Lt_00A6:	.ascii	"stick\0"
.balign 4
_Lt_00A7:	.ascii	"fb_GfxStickQB\0"
.balign 4
_Lt_00A8:	.ascii	"strig\0"
.balign 4
_Lt_00A9:	.ascii	"fb_GfxStrigQB\0"
.balign 4
_Lt_00AA:	.ascii	"screeninfo\0"
.balign 4
_Lt_00AB:	.ascii	"fb_GfxScreenInfo32\0"
.balign 4
_Lt_00AC:	.ascii	"fb_GfxScreenInfo64\0"
.balign 4
_Lt_00AD:	.ascii	"screenlist\0"
.balign 4
_Lt_00AE:	.ascii	"fb_GfxScreenList\0"
.balign 4
_Lt_00AF:	.ascii	"fb_GfxImageCreate\0"
.balign 4
_Lt_00B0:	.ascii	"fb_GfxImageCreateQB\0"
.balign 4
_Lt_00B1:	.ascii	"imagedestroy\0"
.balign 4
_Lt_00B2:	.ascii	"fb_GfxImageDestroy\0"
.balign 4
_Lt_00B3:	.ascii	"imageinfo\0"
.balign 4
_Lt_00B4:	.ascii	"fb_GfxImageInfo32\0"
.balign 4
_Lt_00B5:	.ascii	"fb_GfxImageInfo64\0"
.balign 4
_Lt_00B6:	.ascii	"imageconvertrow\0"
.balign 4
_Lt_00B7:	.ascii	"fb_GfxImageConvertRow\0"
.balign 4
_Lt_00B8:	.ascii	"screenevent\0"
.balign 4
_Lt_00B9:	.ascii	"fb_GfxEvent\0"
.balign 4
_Lt_00BA:	.ascii	"screencontrol\0"
.balign 4
_Lt_00BB:	.ascii	"fb_GfxControl_s\0"
.balign 4
_Lt_00BC:	.ascii	"fb_GfxControl_i32\0"
.balign 4
_Lt_00BD:	.ascii	"fb_GfxControl_i64\0"
.balign 4
_Lt_00BE:	.ascii	"screenglproc\0"
.balign 4
_Lt_00BF:	.ascii	"fb_GfxGetGLProcAddress\0"
.balign 4
_Lt_00C0:	.ascii	"fb_hPutTrans\0"
.balign 4
_Lt_00C1:	.ascii	"fb_hPutPSet\0"
.balign 4
_Lt_00C2:	.ascii	"fb_hPutPReset\0"
.balign 4
_Lt_00C3:	.ascii	"fb_hPutAnd\0"
.balign 4
_Lt_00C4:	.ascii	"fb_hPutOr\0"
.balign 4
_Lt_00C5:	.ascii	"fb_hPutXor\0"
.balign 4
_Lt_00C6:	.ascii	"fb_hPutAlpha\0"
.balign 4
_Lt_00C7:	.ascii	"fb_hPutBlend\0"
.balign 4
_Lt_00C8:	.ascii	"fb_hPutAdd\0"
.balign 4
_Lt_00C9:	.ascii	"fb_hPutCustom\0"
.balign 4
_Lt_00DA:	.ascii	"advapi32\0"
.balign 8
_Lt_0105:	.quad	0xC15FFFFFC0000000
.balign 8
_Lt_0136:	.quad	0x0000000000000000
.balign 8
_Lt_0137:	.quad	0x401921FB82C2BD7F

.section .ctors
.int _fb_ctor__rtlzgfx
