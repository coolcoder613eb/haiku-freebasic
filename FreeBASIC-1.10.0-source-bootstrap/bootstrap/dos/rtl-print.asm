	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLPRINTMODINIT
_RTLPRINTMODINIT:
.L_009E:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.L_009F:
ret
.balign 16

.globl _RTLPRINTMODEND
_RTLPRINTMODEND:
.L_00A0:
.L_00A1:
ret
.balign 16

.globl _RTLPRINT
_RTLPRINT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .L_00A5
cmp dword ptr [ebp+24], 0
je .L_00A7
push 174
push offset _Lt_0075
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00A6
.L_00A7:
push 160
push offset _Lt_0067
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00A6:
jmp .L_00A4
.L_00A5:
lea eax, [ebp+20]
push eax
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_00A8
mov dword ptr [ebp-20], 24
jmp .L_00F4
.L_00A8:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.L_00F4:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 20
je .L_00AD
.L_00AE:
cmp dword ptr [ebp-24], 10
jne .L_00AC
.L_00AD:
push dword ptr [ebp+20]
push 0
push 17
call _ASTNEWOVLCONV
add esp, 12
mov dword ptr [ebp+20], eax
cmp dword ptr [ebp+20], 0
jne .L_00B0
jmp .L_00A3
.L_00B0:
.L_00AF:
jmp .L_00AA
.L_00AC:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_00B3
push 0
push 0
push dword ptr [ebp+20]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+20], eax
.L_00B3:
.L_00B2:
.L_00B1:
.L_00AA:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-20], eax
jmp .L_00B5
.L_00B7:
cmp dword ptr [ebp+24], 0
je .L_00B9
push 186
push offset _Lt_0081
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00B8
.L_00B9:
push 172
push offset _Lt_0073
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00B8:
jmp .L_00B4
.L_00BA:
cmp dword ptr [ebp+24], 0
je .L_00BC
push 187
push offset _Lt_0082
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BB
.L_00BC:
push 173
push offset _Lt_0074
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00BB:
jmp .L_00B4
.L_00BD:
cmp dword ptr [ebp+24], 0
je .L_00BF
push 175
push offset _Lt_0076
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BE
.L_00BF:
push 161
push offset _Lt_0068
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00BE:
jmp .L_00B4
.L_00C0:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C1
mov dword ptr [ebp-24], 24
jmp .L_00F5
.L_00C1:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.L_00F5:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-28], ebx
jmp .L_00C4
.L_00C6:
cmp dword ptr [ebp+24], 0
je .L_00C8
push 176
push offset _Lt_0077
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00C7
.L_00C8:
push 162
push offset _Lt_0069
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00C7:
jmp .L_00C3
.L_00C9:
cmp dword ptr [ebp+24], 0
je .L_00CB
push 177
push offset _Lt_0078
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00CA
.L_00CB:
push 163
push offset _Lt_006A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00CA:
jmp .L_00C3
.L_00CC:
cmp dword ptr [ebp+24], 0
je .L_00CE
push 178
push offset _Lt_0079
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00CD
.L_00CE:
push 164
push offset _Lt_006B
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00CD:
jmp .L_00C3
.L_00CF:
cmp dword ptr [ebp+24], 0
je .L_00D1
push 179
push offset _Lt_007A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00D0
.L_00D1:
push 165
push offset _Lt_006C
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00D0:
jmp .L_00C3
.L_00D2:
cmp dword ptr [ebp+24], 0
je .L_00D4
push 180
push offset _Lt_007B
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00D3
.L_00D4:
push 166
push offset _Lt_006D
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00D3:
jmp .L_00C3
.L_00D5:
cmp dword ptr [ebp+24], 0
je .L_00D7
push 181
push offset _Lt_007C
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00D6
.L_00D7:
push 167
push offset _Lt_006E
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00D6:
jmp .L_00C3
.L_00D8:
cmp dword ptr [ebp+24], 0
je .L_00DA
push 182
push offset _Lt_007D
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00D9
.L_00DA:
push 168
push offset _Lt_006F
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00D9:
jmp .L_00C3
.L_00DB:
cmp dword ptr [ebp+24], 0
je .L_00DD
push 183
push offset _Lt_007E
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00DC
.L_00DD:
push 169
push offset _Lt_0070
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00DC:
jmp .L_00C3
.L_00C4:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 7
ja .L_00C3
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_00DE+eax*4-4]
_.L_00DE:
.int .L_00C6
.int .L_00C9
.int .L_00CC
.int .L_00CF
.int .L_00D2
.int .L_00D5
.int .L_00D8
.int .L_00DB
.L_00C3:
jmp .L_00B4
.L_00DF:
cmp dword ptr [ebp+24], 0
je .L_00E1
push 184
push offset _Lt_007F
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00E0
.L_00E1:
push 170
push offset _Lt_0071
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00E0:
jmp .L_00B4
.L_00E2:
cmp dword ptr [ebp+24], 0
je .L_00E4
push 185
push offset _Lt_0080
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00E3
.L_00E4:
push 171
push offset _Lt_0072
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00E3:
jmp .L_00B4
.L_00E5:
jmp .L_00A3
jmp .L_00B4
.L_00B5:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 17
ja .L_00E5
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00E6+eax*4-4]
_.L_00E6:
.int .L_00BD
.int .L_00C0
.int .L_00C0
.int .L_00B7
.int .L_00C0
.int .L_00C0
.int .L_00BA
.int .L_00C0
.int .L_00C0
.int .L_00C0
.int .L_00C0
.int .L_00C0
.int .L_00C0
.int .L_00C0
.int .L_00DF
.int .L_00E2
.int .L_00B7
.int .L_00B7
.L_00B4:
.L_00A4:
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
jne .L_00E8
jmp .L_00A3
.L_00E8:
.L_00E7:
cmp dword ptr [ebp+20], 0
je .L_00EA
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EC
jmp .L_00A3
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
mov dword ptr [ebp-16], 0
cmp dword ptr [_ENV+136], 3
jne .L_00EE
or dword ptr [ebp-16], 16
.L_00EE:
cmp dword ptr [ebp+12], 0
je .L_00F0
or dword ptr [ebp-16], 2
jmp .L_00EF
.L_00F0:
cmp dword ptr [ebp+16], 0
jne .L_00F1
or dword ptr [ebp-16], 1
.L_00F1:
.L_00EF:
push -1
push -2147483648
push 0
push 8
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
jne .L_00F3
jmp .L_00A3
.L_00F3:
.L_00F2:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLPRINTSPCTAB
_RTLPRINTSPCTAB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F6:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
je .L_00F9
push 0
call _RTLPRINTER_CB
add esp, 4
.L_00F9:
.L_00F8:
cmp dword ptr [ebp+16], 0
je .L_00FB
push 0
push 189
push offset _Lt_0084
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00FA
.L_00FB:
push 0
push 188
push offset _Lt_0083
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
.L_00FA:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FD
jmp .L_00F7
.L_00FD:
.L_00FC:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FF
jmp .L_00F7
.L_00FF:
.L_00FE:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_00F7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLWRITE
_RTLWRITE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0100:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jne .L_0103
push 190
push offset _Lt_0085
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0102
.L_0103:
lea eax, [ebp+16]
push eax
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 20
je .L_0107
.L_0108:
cmp dword ptr [ebp-20], 10
jne .L_0106
.L_0107:
push dword ptr [ebp+16]
push 0
push 17
call _ASTNEWOVLCONV
add esp, 12
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_010A
jmp .L_0101
.L_010A:
.L_0109:
jmp .L_0104
.L_0106:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_010D
push 0
push 0
push dword ptr [ebp+16]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
.L_010D:
.L_010C:
.L_010B:
.L_0104:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-20], eax
jmp .L_010F
.L_0111:
push 202
push offset _Lt_0091
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_010E
.L_0112:
push 203
push offset _Lt_0092
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_010E
.L_0113:
push 191
push offset _Lt_0086
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_010E
.L_0114:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0115
mov dword ptr [ebp-24], 24
jmp .L_0131
.L_0115:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.L_0131:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-28], ebx
jmp .L_0118
.L_011A:
push 192
push offset _Lt_0087
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_011B:
push 193
push offset _Lt_0088
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_011C:
push 194
push offset _Lt_0089
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_011D:
push 195
push offset _Lt_008A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_011E:
push 196
push offset _Lt_008B
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_011F:
push 197
push offset _Lt_008C
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_0120:
push 198
push offset _Lt_008D
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_0121:
push 199
push offset _Lt_008E
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0117
.L_0118:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 7
ja .L_0117
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_0122+eax*4-4]
_.L_0122:
.int .L_011A
.int .L_011B
.int .L_011C
.int .L_011D
.int .L_011E
.int .L_011F
.int .L_0120
.int .L_0121
.L_0117:
jmp .L_010E
.L_0123:
push 200
push offset _Lt_008F
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_010E
.L_0124:
push 201
push offset _Lt_0090
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_010E
.L_0125:
jmp .L_0101
jmp .L_010E
.L_010F:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 17
ja .L_0125
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0126+eax*4-4]
_.L_0126:
.int .L_0113
.int .L_0114
.int .L_0114
.int .L_0111
.int .L_0114
.int .L_0114
.int .L_0112
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0123
.int .L_0124
.int .L_0111
.int .L_0111
.L_010E:
.L_0102:
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
jne .L_0128
jmp .L_0101
.L_0128:
.L_0127:
cmp dword ptr [ebp+16], 0
je .L_012A
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_012C
jmp .L_0101
.L_012C:
.L_012B:
.L_012A:
.L_0129:
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+12], 0
je .L_012E
or dword ptr [ebp-16], 2
jmp .L_012D
.L_012E:
or dword ptr [ebp-16], 1
.L_012D:
push -1
push -2147483648
push 0
push 8
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
jne .L_0130
jmp .L_0101
.L_0130:
.L_012F:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLPRINTUSINGINIT
_RTLPRINTUSINGINIT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0132:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
je .L_0135
push 213
push offset _Lt_009C
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0134
.L_0135:
push 204
push offset _Lt_0093
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0134:
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
jne .L_0137
jmp .L_0133
.L_0137:
.L_0136:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0133:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLPRINTUSINGEND
_RTLPRINTUSINGEND:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0138:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
je .L_013B
push 0
call _RTLPRINTER_CB
add esp, 4
.L_013B:
.L_013A:
push 0
push 212
push offset _Lt_009B
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
jne .L_013D
jmp .L_0139
.L_013D:
.L_013C:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0139:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLPRINTUSING
_RTLPRINTUSING:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_013E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
je .L_0141
push 0
call _RTLPRINTER_CB
add esp, 4
.L_0141:
.L_0140:
cmp dword ptr [ebp+12], 0
jne .L_0143
jmp .L_013F
.L_0143:
.L_0142:
lea eax, [ebp+12]
push eax
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 20
je .L_0147
.L_0148:
cmp dword ptr [ebp-20], 10
jne .L_0146
.L_0147:
push dword ptr [ebp+12]
push 0
push 16
call _ASTNEWOVLCONV
add esp, 12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_014A
jmp .L_013F
.L_014A:
.L_0149:
.L_0146:
.L_0144:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 18
je .L_014E
.L_014F:
cmp dword ptr [ebp-20], 17
je .L_014E
.L_0150:
cmp dword ptr [ebp-20], 4
jne .L_014D
.L_014E:
push 205
push offset _Lt_0094
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_014B
.L_014D:
cmp dword ptr [ebp-20], 7
jne .L_0151
.L_0152:
push 206
push offset _Lt_0095
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_014B
.L_0151:
cmp dword ptr [ebp-20], 15
jne .L_0153
.L_0154:
push 207
push offset _Lt_0096
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_014B
.L_0153:
cmp dword ptr [ebp-20], 13
je .L_0156
.L_0157:
cmp dword ptr [ebp-20], 8
je .L_0156
.L_0158:
cmp dword ptr [ebp-20], 11
je .L_0156
.L_0159:
cmp dword ptr [ebp-20], 5
je .L_0156
.L_015A:
cmp dword ptr [ebp-20], 2
jne .L_0155
.L_0156:
push 209
push offset _Lt_0098
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_014B
.L_0155:
cmp dword ptr [ebp-20], 14
je .L_015C
.L_015D:
cmp dword ptr [ebp-20], 9
je .L_015C
.L_015E:
cmp dword ptr [ebp-20], 12
je .L_015C
.L_015F:
cmp dword ptr [ebp-20], 6
je .L_015C
.L_0160:
cmp dword ptr [ebp-20], 3
jne .L_015B
.L_015C:
push 210
push offset _Lt_0099
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_014B
.L_015B:
cmp dword ptr [ebp-20], 1
jne .L_0161
.L_0162:
push 211
push offset _Lt_009A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_014B
.L_0161:
push 208
push offset _Lt_0097
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0163:
.L_014B:
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
jne .L_0165
jmp .L_013F
.L_0165:
.L_0164:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0167
jmp .L_013F
.L_0167:
.L_0166:
mov eax, dword ptr [ebp+20]
or eax, dword ptr [ebp+16]
je .L_0169
mov dword ptr [ebp-16], 0
jmp .L_0168
.L_0169:
mov dword ptr [ebp-16], -2147483647
.L_0168:
push -1
push -2147483648
push 0
push 8
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
jne .L_016B
jmp .L_013F
.L_016B:
.L_016A:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_013F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLWIDTHDEV
_RTLWIDTHDEV:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_016C:
mov dword ptr [ebp-4], 0
push 0
call _RTLPRINTER_CB
add esp, 4
push 0
push 290
push offset _Lt_016E
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
jne .L_0170
jmp .L_016D
.L_0170:
.L_016F:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0172
jmp .L_016D
.L_0172:
.L_0171:
cmp dword ptr [ebp+16], 0
jne .L_0174
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
push eax
call _ASTADD
add esp, 4
.L_0174:
.L_0173:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_016D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLPRINTER_CB
_RTLPRINTER_CB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0175:
call _FBRESTARTGETCOUNT
cmp dword ptr [_Lt_0182], eax
je .L_0178
call _FBRESTARTGETCOUNT
mov dword ptr [_Lt_0182], eax
mov dword ptr [_Lt_0183], 0
.L_0178:
.L_0177:
cmp dword ptr [_Lt_0183], 0
jne .L_017A
mov dword ptr [_Lt_0183], -1
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_017E
.L_017F:
cmp dword ptr [ebp-8], 1
jne .L_017D
.L_017E:
push offset _Lt_0180
call _FBADDLIB
add esp, 4
push offset _Lt_0181
call _FBADDLIB
add esp, 4
.L_017D:
.L_017B:
.L_017A:
.L_0179:
mov dword ptr [ebp-4], -1
.L_0176:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0182,4

.section .data
.balign 4
_Lt_0183:
.int 0

.section .text
.balign 16
_fb_ctor__rtlzprint:
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
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0068
.long 0
.int 0
.int -1
.long 0
.int 128
.int 3
.int 523
.int 1
.int -1
.int 0
.int 513
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0069
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 514
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_006A
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 515
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_006B
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 517
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_006C
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 518
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_006D
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_006E
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_006F
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 525
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0070
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 526
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0071
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0072
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 528
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0073
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0074
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 1063
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0075
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 2
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0076
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 128
.int 3
.int 523
.int 1
.int -1
.int 0
.int 513
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0077
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 514
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0078
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 515
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0079
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 517
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_007A
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 518
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_007B
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_007C
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_007D
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 525
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_007E
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 526
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_007F
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0080
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 528
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0081
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0082
.long 0
.int 0
.int -1
.int _RTLPRINTER_CB
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 1063
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0083
.long 0
.int 0
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int 0
.int 520
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0084
.long 0
.int 0
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0085
.long 0
.int 0
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0086
.long 0
.int 0
.int -1
.long 0
.int 128
.int 3
.int 523
.int 1
.int -1
.int 0
.int 513
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0087
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 514
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0088
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 515
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0089
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 517
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_008A
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 518
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_008B
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_008C
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_008D
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 525
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_008E
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 526
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_008F
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 527
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0090
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 528
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0091
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0092
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int -1
.int 0
.int 1063
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0093
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0094
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
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
.skip 208,0
.int _Lt_0095
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 1063
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0096
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
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
.skip 208,0
.int _Lt_0097
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 528
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0098
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0099
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 526
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_009A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 513
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_009B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009C
.long 0
.int 11
.int -1
.int _RTLPRINTER_CB
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.long 0
.skip 280,0
.balign 4
_Lt_0067:	.ascii	"fb_PrintVoid\0"
.balign 4
_Lt_0068:	.ascii	"fb_PrintBool\0"
.balign 4
_Lt_0069:	.ascii	"fb_PrintByte\0"
.balign 4
_Lt_006A:	.ascii	"fb_PrintUByte\0"
.balign 4
_Lt_006B:	.ascii	"fb_PrintShort\0"
.balign 4
_Lt_006C:	.ascii	"fb_PrintUShort\0"
.balign 4
_Lt_006D:	.ascii	"fb_PrintInt\0"
.balign 4
_Lt_006E:	.ascii	"fb_PrintUInt\0"
.balign 4
_Lt_006F:	.ascii	"fb_PrintLongint\0"
.balign 4
_Lt_0070:	.ascii	"fb_PrintULongint\0"
.balign 4
_Lt_0071:	.ascii	"fb_PrintSingle\0"
.balign 4
_Lt_0072:	.ascii	"fb_PrintDouble\0"
.balign 4
_Lt_0073:	.ascii	"fb_PrintString\0"
.balign 4
_Lt_0074:	.ascii	"fb_PrintWstr\0"
.balign 4
_Lt_0075:	.ascii	"fb_LPrintVoid\0"
.balign 4
_Lt_0076:	.ascii	"fb_LPrintBool\0"
.balign 4
_Lt_0077:	.ascii	"fb_LPrintByte\0"
.balign 4
_Lt_0078:	.ascii	"fb_LPrintUByte\0"
.balign 4
_Lt_0079:	.ascii	"fb_LPrintShort\0"
.balign 4
_Lt_007A:	.ascii	"fb_LPrintUShort\0"
.balign 4
_Lt_007B:	.ascii	"fb_LPrintInt\0"
.balign 4
_Lt_007C:	.ascii	"fb_LPrintUInt\0"
.balign 4
_Lt_007D:	.ascii	"fb_LPrintLongint\0"
.balign 4
_Lt_007E:	.ascii	"fb_LPrintULongint\0"
.balign 4
_Lt_007F:	.ascii	"fb_LPrintSingle\0"
.balign 4
_Lt_0080:	.ascii	"fb_LPrintDouble\0"
.balign 4
_Lt_0081:	.ascii	"fb_LPrintString\0"
.balign 4
_Lt_0082:	.ascii	"fb_LPrintWstr\0"
.balign 4
_Lt_0083:	.ascii	"fb_PrintSPC\0"
.balign 4
_Lt_0084:	.ascii	"fb_PrintTab\0"
.balign 4
_Lt_0085:	.ascii	"fb_WriteVoid\0"
.balign 4
_Lt_0086:	.ascii	"fb_WriteBool\0"
.balign 4
_Lt_0087:	.ascii	"fb_WriteByte\0"
.balign 4
_Lt_0088:	.ascii	"fb_WriteUByte\0"
.balign 4
_Lt_0089:	.ascii	"fb_WriteShort\0"
.balign 4
_Lt_008A:	.ascii	"fb_WriteUShort\0"
.balign 4
_Lt_008B:	.ascii	"fb_WriteInt\0"
.balign 4
_Lt_008C:	.ascii	"fb_WriteUInt\0"
.balign 4
_Lt_008D:	.ascii	"fb_WriteLongint\0"
.balign 4
_Lt_008E:	.ascii	"fb_WriteULongint\0"
.balign 4
_Lt_008F:	.ascii	"fb_WriteSingle\0"
.balign 4
_Lt_0090:	.ascii	"fb_WriteDouble\0"
.balign 4
_Lt_0091:	.ascii	"fb_WriteString\0"
.balign 4
_Lt_0092:	.ascii	"fb_WriteWstr\0"
.balign 4
_Lt_0093:	.ascii	"fb_PrintUsingInit\0"
.balign 4
_Lt_0094:	.ascii	"fb_PrintUsingStr\0"
.balign 4
_Lt_0095:	.ascii	"fb_PrintUsingWstr\0"
.balign 4
_Lt_0096:	.ascii	"fb_PrintUsingSingle\0"
.balign 4
_Lt_0097:	.ascii	"fb_PrintUsingDouble\0"
.balign 4
_Lt_0098:	.ascii	"fb_PrintUsingLongint\0"
.balign 4
_Lt_0099:	.ascii	"fb_PrintUsingULongint\0"
.balign 4
_Lt_009A:	.ascii	"fb_PrintUsingBoolean\0"
.balign 4
_Lt_009B:	.ascii	"fb_PrintUsingEnd\0"
.balign 4
_Lt_009C:	.ascii	"fb_LPrintUsingInit\0"
.balign 4
_Lt_016E:	.ascii	"fb_WidthDev\0"
.balign 4
_Lt_0180:	.ascii	"winspool\0"
.balign 4
_Lt_0181:	.ascii	"gdi32\0"

.section .ctors
.int _fb_ctor__rtlzprint
