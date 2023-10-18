	.intel_syntax noprefix

.section .text
.balign 16

.globl _CMIDSTMT@0
_CMIDSTMT@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-4], 0
push 8192
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_006B
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_006A
.L_006B:
push 0
call _LEXSKIPTOKEN@4
.L_006A:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
jmp .L_0069
.L_006D:
.L_006C:
push dword ptr [ebp-8]
call _ASTISCONSTANT@4
test eax, eax
je .L_006F
push 0
push -1
push 119
call _ERRREPORT@12
.L_006F:
.L_006E:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0071
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0070
.L_0071:
push 0
call _LEXSKIPTOKEN@4
.L_0070:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0073
jmp .L_0069
.L_0073:
.L_0072:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0075
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0077
jmp .L_0069
.L_0077:
.L_0076:
jmp .L_0074
.L_0075:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_0074:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0079
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0078
.L_0079:
push 0
call _LEXSKIPTOKEN@4
.L_0078:
call _CASSIGNTOKEN@0
test eax, eax
jne .L_007B
push 0
push 0
push 10
call _ERRREPORT@12
.L_007B:
.L_007A:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_007D
jmp .L_0069
.L_007D:
.L_007C:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRASSIGNMID@16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLRSETSTMT@4
_CLRSETSTMT@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp eax, 419
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
push 2048
call _LEXSKIPTOKEN@4
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0082
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push -2147483648
push 0
push 0
push 0
push 17
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
.L_0082:
.L_0081:
lea eax, [ebp-8]
push eax
call _ASTTRYOVLSTRINGCONV@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-36], ebx
jmp .L_0084
.L_0086:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-32]
je .L_0088
push 0
push 0
push 24
call _ERRREPORT@12
mov dword ptr [ebp-32], 0
.L_0088:
.L_0087:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_008A
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 20
jne .L_008C
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+64], 0
je .L_008D
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-44], eax
jmp .L_00A7
.L_008D:
mov dword ptr [ebp-44], 0
.L_00A7:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-40], eax
.L_008C:
.L_008B:
.L_008A:
.L_0089:
cmp dword ptr [ebp-40], 0
jne .L_0090
push 0
push -1
push 14
call _ERRREPORT@12
jmp .L_008F
.L_0090:
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+4]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0092
push 0
push -1
push 119
call _ERRREPORT@12
.L_0092:
.L_0091:
.L_008F:
jmp .L_0083
.L_0093:
push 0
push 0
push 24
call _ERRREPORT@12
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 17
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
jmp .L_0083
.L_0084:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .L_0093
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_0094+eax*4-16]
_.L_0094:
.int .L_0086
.int .L_0093
.int .L_0093
.int .L_0086
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0086
.int .L_0086
.int .L_0093
.int .L_0086
.L_0083:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_0096
call _CASSIGNTOKEN@0
test eax, eax
jne .L_0098
push 0
push 0
push 16
call _ERRREPORT@12
.L_0098:
.L_0097:
.L_0096:
.L_0095:
push dword ptr [ebp-16]
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_009A
jmp .L_0080
.L_009A:
.L_0099:
lea eax, [ebp-12]
push eax
call _ASTTRYOVLSTRINGCONV@4
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-36], ecx
jmp .L_009C
.L_009E:
jmp .L_009B
.L_009F:
push 0
push 0
push 24
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 17
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-12], eax
jmp .L_009B
.L_009C:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .L_009F
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_00A0+eax*4-16]
_.L_00A0:
.int .L_009E
.int .L_009F
.int .L_009F
.int .L_009E
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009E
.int .L_009E
.int .L_009F
.int .L_009E
.L_009B:
mov eax, dword ptr [ebp-16]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-20]
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_00A2
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ecx
je .L_00A4
push 0
push 0
push 24
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
push dword ptr [ebp-8]
call _ASTDELTREE@4
mov dword ptr [ebp-4], -1
jmp .L_0080
.L_00A4:
.L_00A3:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
cmp dword ptr [ebp-24], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_00A6
push 0
push 0
push 14
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
push dword ptr [ebp-8]
call _ASTDELTREE@4
mov dword ptr [ebp-4], -1
jmp .L_0080
.L_00A6:
.L_00A5:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+44]
push dword ptr [eax+40]
push dword ptr [ebp-8]
call _RTLMEMCOPYCLEAR@24
mov dword ptr [ebp-4], eax
jmp .L_00A1
.L_00A2:
push dword ptr [ebp-32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRLRSET@12
mov dword ptr [ebp-4], eax
.L_00A1:
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CCVXFUNCT@4
_CCVXFUNCT@4:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.L_0114:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 426
jne .L_0116
push 0
push 301
call _HMATCH@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_017E
.L_0116:
mov dword ptr [ebp-12], 0
.L_017E:
cmp dword ptr [ebp-12], 0
je .L_0119
push 8
call _CGTINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 0
jne .L_011B
cmp dword ptr [ebp-56], 8
jne .L_011B
.L_0185:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
.L_011B:
push 0
push dword ptr [ebp-52]
push dword ptr [ebp-56]
call _HINTEGERTYPEFROMBITSIZE@12
mov dword ptr [ebp-8], eax
push 0
push 300
call _HMATCH@8
test eax, eax
jne .L_011D
push 0
push 0
push 309
call _ERRREPORT@12
.L_011D:
.L_011C:
.L_0119:
.L_0118:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_011F
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_011E
.L_011F:
push 0
call _LEXSKIPTOKEN@4
.L_011E:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0121
jmp .L_0115
.L_0121:
.L_0120:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0123
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0122
.L_0123:
push 0
call _LEXSKIPTOKEN@4
.L_0122:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-16]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 4
jne .L_0126
.L_0127:
push dword ptr [ebp-16]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], -1
jmp .L_0124
.L_0126:
cmp dword ptr [ebp-52], 17
je .L_0129
.L_012A:
cmp dword ptr [ebp-52], 18
je .L_0129
.L_012B:
cmp dword ptr [ebp-52], 7
jne .L_0128
.L_0129:
mov dword ptr [ebp-24], -1
.L_0128:
.L_0124:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-52], eax
jmp .L_012D
.L_012F:
mov dword ptr [ebp-32], 16
mov dword ptr [ebp-28], 0
jmp .L_012C
.L_0130:
mov dword ptr [ebp-32], 15
mov dword ptr [ebp-28], 0
jmp .L_012C
.L_0131:
cmp dword ptr [ebp-8], -2147483648
je .L_0133
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
jmp .L_0132
.L_0133:
mov eax, dword ptr [_ENV+1044]
mov dword ptr [ebp-32], eax
.L_0132:
jmp .L_012C
.L_0134:
mov dword ptr [ebp-32], 11
jmp .L_012C
.L_0135:
mov dword ptr [ebp-32], 5
jmp .L_012C
.L_0136:
mov dword ptr [ebp-32], 13
jmp .L_012C
.L_012D:
mov eax, dword ptr [ebp-52]
add eax, 4294966872
cmp eax, 4
ja .L_0136
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.L_0137+eax*4-1696]
_.L_0137:
.int .L_012F
.int .L_0130
.int .L_0131
.int .L_0134
.int .L_0135
.L_012C:
mov eax, dword ptr [ebp-28]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_0139
mov dword ptr [ebp-52], 0
lea edx, [ebp-52]
push edx
mov edx, dword ptr [ebp-20]
push dword ptr [edx+56]
call _HUNESCAPE@8
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
call _fb_StrLen@8
mov dword ptr [ebp-40], eax
jmp .L_0138
.L_0139:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
.L_0138:
mov dword ptr [ebp-44], 0
cmp dword ptr [ebp-24], 0
jne .L_013B
mov eax, dword ptr [ebp-32]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_017F
.L_013B:
mov dword ptr [ebp-48], -1
.L_017F:
cmp dword ptr [ebp-48], 0
je .L_013E
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_013F
mov dword ptr [ebp-52], 24
jmp .L_0180
.L_013F:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0180:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [ebp-40], edx
jl .L_0142
cmp dword ptr [ebp-32], 16
jne .L_0144
.L_0145:
push 16
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_CVD@4
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-44], eax
jmp .L_0143
.L_0144:
cmp dword ptr [ebp-32], 15
jne .L_0146
.L_0147:
push 15
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_CVS@4
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-44], eax
jmp .L_0143
.L_0146:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0149
mov dword ptr [ebp-56], 24
jmp .L_0181
.L_0149:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.L_0181:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .L_014D
.L_014E:
push 0
push 5
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_CVSHORT@4
movsx ebx, ax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-44], eax
jmp .L_014B
.L_014D:
cmp dword ptr [ebp-60], 4
jne .L_014F
.L_0150:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_CVL@4
mov edx, eax
mov ebx, edx
sar ebx, 31
push ebx
push edx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-44], eax
jmp .L_014B
.L_014F:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_CVLONGINT@4
push edx
push eax
call _ASTNEWCONSTI@16
mov dword ptr [ebp-44], eax
.L_0151:
.L_014B:
.L_0148:
.L_0143:
push dword ptr [ebp-16]
call _ASTDELNODE@4
jmp .L_0141
.L_0142:
cmp dword ptr [ebp-32], 16
jne .L_0153
.L_0154:
push 0
push 38
push offset _Lt_0155
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
jmp .L_0152
.L_0153:
cmp dword ptr [ebp-32], 15
jne .L_0156
.L_0157:
push 0
push 39
push offset _Lt_0158
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
jmp .L_0152
.L_0156:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_015A
mov dword ptr [ebp-56], 24
jmp .L_0182
.L_015A:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.L_0182:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .L_015E
.L_015F:
push 0
push 41
push offset _Lt_0160
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
jmp .L_015C
.L_015E:
cmp dword ptr [ebp-60], 4
jne .L_0161
.L_0162:
push 0
push 40
push offset _Lt_0163
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
jmp .L_015C
.L_0161:
push 0
push 42
push offset _Lt_0165
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
.L_0164:
.L_015C:
.L_0159:
.L_0152:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call _ASTNEWARG@16
test eax, eax
jne .L_0167
mov dword ptr [ebp-44], 0
.L_0167:
.L_0166:
.L_0141:
jmp .L_013D
.L_013E:
cmp dword ptr [ebp-32], 16
jne .L_0169
.L_016A:
push 0
push 43
push offset _Lt_016B
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
jmp .L_0168
.L_0169:
cmp dword ptr [ebp-32], 15
jne .L_016C
.L_016D:
push 0
push 44
push offset _Lt_016E
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
jmp .L_0168
.L_016C:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0170
mov dword ptr [ebp-52], 24
jmp .L_0183
.L_0170:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0183:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .L_0173
push 0
push 45
push offset _Lt_0174
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
jmp .L_0172
.L_0173:
push 0
push 46
push offset _Lt_0175
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-44], eax
.L_0172:
.L_016F:
.L_0168:
cmp dword ptr [ebp-44], 0
je .L_0177
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call _ASTNEWARG@16
test eax, eax
jne .L_0179
mov dword ptr [ebp-44], 0
.L_0179:
.L_0178:
.L_0177:
.L_0176:
.L_013D:
cmp dword ptr [ebp-44], 0
je .L_017B
push 0
push 0
push dword ptr [ebp-44]
push 0
push dword ptr [ebp-32]
call _ASTNEWCONV@20
mov dword ptr [ebp-44], eax
.L_017B:
.L_017A:
cmp dword ptr [ebp-44], 0
jne .L_017D
push 0
push 0
push 24
call _ERRREPORT@12
.L_017D:
.L_017C:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
.L_0115:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CMKXFUNCT@4
_CMKXFUNCT@4:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_0189:
push 8192
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 432
jne .L_018B
push 0
push 301
call _HMATCH@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_01BD
.L_018B:
mov dword ptr [ebp-12], 0
.L_01BD:
cmp dword ptr [ebp-12], 0
je .L_018E
push 8
call _CGTINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 0
jne .L_0190
cmp dword ptr [ebp-28], 8
jne .L_0190
.L_01C0:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.L_0190:
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _HINTEGERTYPEFROMBITSIZE@12
mov dword ptr [ebp-8], eax
push 0
push 300
call _HMATCH@8
test eax, eax
jne .L_0192
push 0
push 0
push 309
call _ERRREPORT@12
.L_0192:
.L_0191:
.L_018E:
.L_018D:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0194
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0193
.L_0194:
push 0
call _LEXSKIPTOKEN@4
.L_0193:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0196
jmp .L_018A
.L_0196:
.L_0195:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0198
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0197
.L_0198:
push 0
call _LEXSKIPTOKEN@4
.L_0197:
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp-16], 0
je .L_019A
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .L_019C
.L_019E:
push 0
push 32
push offset _Lt_019F
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_019B
.L_01A0:
push 0
push 33
push offset _Lt_01A1
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_019B
.L_01A2:
cmp dword ptr [ebp-8], -2147483648
jne .L_01A4
mov eax, dword ptr [_ENV+1044]
mov dword ptr [ebp-8], eax
.L_01A4:
.L_01A3:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 8
jne .L_01A6
push 0
push 34
push offset _Lt_01A7
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_01A5
.L_01A6:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_01A8
mov dword ptr [ebp-28], 24
jmp .L_01BE
.L_01A8:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_01BE:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-32], edx
cmp dword ptr [ebp-32], 3
jne .L_01AC
.L_01AD:
push 0
push 36
push offset _Lt_01AE
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_01AA
.L_01AC:
cmp dword ptr [ebp-32], 5
jne .L_01AF
.L_01B0:
push 0
push 35
push offset _Lt_01B1
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_01AA
.L_01AF:
cmp dword ptr [ebp-32], 7
jne .L_01B2
.L_01B3:
push 0
push 37
push offset _Lt_01B4
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
.L_01B2:
.L_01AA:
.L_01A5:
jmp .L_019B
.L_01B5:
push 0
push 35
push offset _Lt_01B1
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_019B
.L_01B6:
push 0
push 36
push offset _Lt_01AE
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_019B
.L_01B7:
push 0
push 37
push offset _Lt_01B4
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-20], eax
jmp .L_019B
.L_019C:
mov eax, dword ptr [ebp-24]
add eax, 4294966866
cmp eax, 4
ja .L_01B7
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_01B8+eax*4-1720]
_.L_01B8:
.int .L_019E
.int .L_01A0
.int .L_01A2
.int .L_01B5
.int .L_01B6
.L_019B:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWARG@16
test eax, eax
jne .L_01BA
mov dword ptr [ebp-20], 0
.L_01BA:
.L_01B9:
.L_019A:
.L_0199:
cmp dword ptr [ebp-20], 0
jne .L_01BC
push 0
push 0
push 24
call _ERRREPORT@12
.L_01BC:
.L_01BB:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_018A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CSTRINGFUNCT@4
_CSTRINGFUNCT@4:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.L_01C1:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 423
je .L_01C5
.L_01C6:
cmp dword ptr [ebp+8], 436
jne .L_01C4
.L_01C5:
mov eax, dword ptr [ebp+8]
cmp eax, 436
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_01C7
mov dword ptr [ebp-36], 2048
jmp .L_024B
.L_01C7:
mov dword ptr [ebp-36], 8192
.L_024B:
push dword ptr [ebp-36]
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_01CA
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_01C9
.L_01CA:
push 0
call _LEXSKIPTOKEN@4
.L_01C9:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01CC
jmp .L_01C2
.L_01CC:
.L_01CB:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_01CE
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_01CD
.L_01CE:
push 0
call _LEXSKIPTOKEN@4
.L_01CD:
cmp dword ptr [ebp-32], 0
jne .L_01D0
mov eax, dword ptr [_ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call _RTLTOSTR@8
mov dword ptr [ebp-8], eax
jmp .L_01CF
.L_01D0:
push dword ptr [ebp-8]
call _RTLTOWSTR@4
mov dword ptr [ebp-8], eax
.L_01CF:
cmp dword ptr [ebp-8], 0
jne .L_01D2
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_01D2:
.L_01D1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_01C4:
cmp dword ptr [ebp+8], 437
jne .L_01D3
.L_01D4:
push 8192
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_01D6
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_01D5
.L_01D6:
push 0
call _LEXSKIPTOKEN@4
.L_01D5:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01D8
jmp .L_01C2
.L_01D8:
.L_01D7:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_01DA
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_01D9
.L_01DA:
push 0
call _LEXSKIPTOKEN@4
.L_01D9:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01DC
jmp .L_01C2
.L_01DC:
.L_01DB:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_01DE
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01E0
jmp .L_01C2
.L_01E0:
.L_01DF:
jmp .L_01DD
.L_01DE:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_01DD:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_01E2
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_01E1
.L_01E2:
push 0
call _LEXSKIPTOKEN@4
.L_01E1:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRMID@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01E4
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_01E4:
.L_01E3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_01D3:
cmp dword ptr [ebp+8], 369
je .L_01E6
.L_01E7:
cmp dword ptr [ebp+8], 371
jne .L_01E5
.L_01E6:
mov eax, dword ptr [ebp+8]
cmp eax, 371
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_01E8
mov dword ptr [ebp-36], 2048
jmp .L_024C
.L_01E8:
mov dword ptr [ebp-36], 8192
.L_024C:
push dword ptr [ebp-36]
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_01EB
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_01EA
.L_01EB:
push 0
call _LEXSKIPTOKEN@4
.L_01EA:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01ED
jmp .L_01C2
.L_01ED:
.L_01EC:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_01EF
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_01EE
.L_01EF:
push 0
call _LEXSKIPTOKEN@4
.L_01EE:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01F1
jmp .L_01C2
.L_01F1:
.L_01F0:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_01F3
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_01F2
.L_01F3:
push 0
call _LEXSKIPTOKEN@4
.L_01F2:
cmp dword ptr [ebp-32], 0
jne .L_01F5
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRFILL@8
mov dword ptr [ebp-8], eax
jmp .L_01F4
.L_01F5:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLWSTRFILL@8
mov dword ptr [ebp-8], eax
.L_01F4:
cmp dword ptr [ebp-8], 0
jne .L_01F7
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_01F7:
.L_01F6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_01E5:
cmp dword ptr [ebp+8], 421
je .L_01F9
.L_01FA:
cmp dword ptr [ebp+8], 422
jne .L_01F8
.L_01F9:
mov eax, dword ptr [ebp+8]
cmp eax, 422
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_01FB
mov dword ptr [ebp-36], 2048
jmp .L_024D
.L_01FB:
mov dword ptr [ebp-36], 8192
.L_024D:
push dword ptr [ebp-36]
call _LEXSKIPTOKEN@4
push dword ptr [ebp-32]
call _CSTRCHR@4
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_01F8:
cmp dword ptr [ebp+8], 420
jne .L_01FD
.L_01FE:
push 2048
call _LEXSKIPTOKEN@4
call _CSTRASC@0
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_01FD:
cmp dword ptr [ebp+8], 438
jne .L_01FF
.L_0200:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0202
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0201
.L_0202:
push 0
call _LEXSKIPTOKEN@4
.L_0201:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0204
jmp .L_01C2
.L_0204:
.L_0203:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0206
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0205
.L_0206:
push 0
call _LEXSKIPTOKEN@4
.L_0205:
push 2048
push 372
call _HMATCH@8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0208
jmp .L_01C2
.L_0208:
.L_0207:
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 0
jne .L_020A
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_020C
push 2048
push 372
call _HMATCH@8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_020E
jmp .L_01C2
.L_020E:
.L_020D:
.L_020C:
.L_020B:
.L_020A:
.L_0209:
cmp dword ptr [ebp-16], 0
jne .L_0210
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0210:
.L_020F:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0212
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0211
.L_0212:
push 0
call _LEXSKIPTOKEN@4
.L_0211:
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRINSTR@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0214
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0214:
.L_0213:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_01FF:
cmp dword ptr [ebp+8], 439
jne .L_0215
.L_0216:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0218
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0217
.L_0218:
push 0
call _LEXSKIPTOKEN@4
.L_0217:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_021A
jmp .L_01C2
.L_021A:
.L_0219:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_021C
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_021B
.L_021C:
push 0
call _LEXSKIPTOKEN@4
.L_021B:
push 2048
push 372
call _HMATCH@8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_021E
jmp .L_01C2
.L_021E:
.L_021D:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0220
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0222
jmp .L_01C2
.L_0222:
.L_0221:
jmp .L_021F
.L_0220:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_021F:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0224
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0223
.L_0224:
push 0
call _LEXSKIPTOKEN@4
.L_0223:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _RTLSTRINSTRREV@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0226
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0226:
.L_0225:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_0215:
cmp dword ptr [ebp+8], 440
je .L_0228
.L_0229:
cmp dword ptr [ebp+8], 442
je .L_0228
.L_022A:
cmp dword ptr [ebp+8], 441
jne .L_0227
.L_0228:
push 8192
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_022C
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_022B
.L_022C:
push 0
call _LEXSKIPTOKEN@4
.L_022B:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_022E
jmp .L_01C2
.L_022E:
.L_022D:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0230
push 2048
push 372
call _HMATCH@8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0232
jmp .L_01C2
.L_0232:
.L_0231:
jmp .L_022F
.L_0230:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-12], 0
.L_022F:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0234
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0233
.L_0234:
push 0
call _LEXSKIPTOKEN@4
.L_0233:
cmp dword ptr [ebp+8], 440
jne .L_0236
.L_0237:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRTRIM@12
mov dword ptr [ebp-8], eax
jmp .L_0235
.L_0236:
cmp dword ptr [ebp+8], 442
jne .L_0238
.L_0239:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRLTRIM@12
mov dword ptr [ebp-8], eax
jmp .L_0235
.L_0238:
cmp dword ptr [ebp+8], 441
jne .L_023A
.L_023B:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRRTRIM@12
mov dword ptr [ebp-8], eax
.L_023A:
.L_0235:
cmp dword ptr [ebp-8], 0
jne .L_023D
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_023D:
.L_023C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C3
.L_0227:
cmp dword ptr [ebp+8], 443
je .L_023F
.L_0240:
cmp dword ptr [ebp+8], 444
jne .L_023E
.L_023F:
push 8192
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0242
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0241
.L_0242:
push 0
call _LEXSKIPTOKEN@4
.L_0241:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0244
jmp .L_01C2
.L_0244:
.L_0243:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0246
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0248
jmp .L_01C2
.L_0248:
.L_0247:
jmp .L_0245
.L_0246:
mov dword ptr [ebp-12], 0
.L_0245:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_024A
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0249
.L_024A:
push 0
call _LEXSKIPTOKEN@4
.L_0249:
mov eax, dword ptr [ebp+8]
cmp eax, 443
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRCASE@12
mov dword ptr [ebp-4], eax
.L_023E:
.L_01C3:
.L_01C2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
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
call _fb_StrAssign@20
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
_CSTRCHR@4:
push ebp
mov ebp, esp
sub esp, 224
push ebx
mov dword ptr [ebp-4], 0
.L_00B0:
lea eax, [ebp-148]
mov dword ptr [ebp-184], eax
lea eax, [ebp-148]
mov dword ptr [ebp-180], eax
mov dword ptr [ebp-176], 128
mov dword ptr [ebp-172], 4
mov dword ptr [ebp-168], 1
mov dword ptr [ebp-164], 49
mov dword ptr [ebp-160], 32
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 31
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_00B4
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_00B3
.L_00B4:
push 0
call _LEXSKIPTOKEN@4
.L_00B3:
mov dword ptr [ebp-16], 0
.L_00B5:
push 12
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp+ebx*4-148], eax
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp+eax*4-148], 0
jne .L_00B9
jmp .L_00B1
.L_00B9:
.L_00B8:
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 32
jl .L_00BB
jmp .L_00B6
.L_00BB:
.L_00BA:
.L_00B7:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_00B5
.L_00B6:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00BD
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00BC
.L_00BD:
push 0
call _LEXSKIPTOKEN@4
.L_00BC:
mov dword ptr [ebp-20], -1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .L_00BF
.L_00C2:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+eax*4-148]
cmp dword ptr [ebx], 16
je .L_00C4
mov dword ptr [ebp-20], 0
jmp .L_00C1
.L_00C4:
.L_00C3:
mov ebx, dword ptr [ebp-12]
push dword ptr [ebp+ebx*4-148]
call _ASTCONSTEQZERO@4
test eax, eax
je .L_00C6
mov dword ptr [ebp-20], 0
jmp .L_00C1
.L_00C6:
.L_00C5:
.L_00C0:
inc dword ptr [ebp-12]
.L_00BF:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .L_00C2
.L_00C1:
cmp dword ptr [ebp-20], 0
je .L_00C8
cmp dword ptr [ebp+8], 0
jne .L_00CA
push 0
push 1
push offset _Lt_0000
push 417
push offset _Lt_0253
call _fb_StrAssign@20
jmp .L_00C9
.L_00CA:
push 1
push offset _Lt_0000
push 417
push offset _Lt_0254
call _fb_WstrAssignFromA@16
.L_00C9:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .L_00CC
.L_00CF:
push 12
mov eax, dword ptr [ebp-12]
push dword ptr [ebp+eax*4-148]
call _ASTCONSTFLUSHTOINT@8
mov ebx, eax
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp+ebx*4-148], 0
cmp dword ptr [ebp+8], 0
jne .L_00D1
mov eax, dword ptr [ebp-8]
mov ebx, eax
sar ebx, 31
cmp ebx, 0
jb .L_00D3
ja .L_0255
cmp eax, 255
jbe .L_00D3
.L_0255:
mov dword ptr [ebp-8], 255
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp-8]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 127
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00D5
push 0
push -1
push 2
push offset _Lt_00D6
push 417
push offset _Lt_0253
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea ebx, [ebp-200]
push ebx
call _fb_StrConcat@20
push eax
push 417
push offset _Lt_0253
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp-8]
call _fb_OCT_i@4
push eax
push 12
push offset _Lt_0258
call _fb_StrAssign@20
push 0
push -1
push -1
push 12
push offset _Lt_0258
call _fb_StrLen@8
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push 417
push offset _Lt_0253
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat@20
push eax
push 417
push offset _Lt_0253
call _fb_StrAssign@20
push 0
push -1
push 12
push offset _Lt_0258
push 417
push offset _Lt_0253
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat@20
push eax
push 417
push offset _Lt_0253
call _fb_StrAssign@20
jmp .L_00D4
.L_00D5:
push 0
push -1
push -1
push dword ptr [ebp-8]
push 1
call _fb_CHR
add esp, 8
push eax
push 417
push offset _Lt_0253
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat@20
push eax
push 417
push offset _Lt_0253
call _fb_StrAssign@20
.L_00D4:
jmp .L_00D0
.L_00D1:
mov eax, dword ptr [ebp-8]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 127
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00DC
push 2
push offset _Lt_00D6
push offset _Lt_0254
call _fb_WstrConcatWA@12
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset _Lt_0254
call _fb_WstrAssign@12
push dword ptr [ebp-192]
call _fb_WstrDelete@4
push 0
push -1
push dword ptr [ebp-8]
call _fb_OCT_i@4
push eax
push 12
push offset _Lt_0258
call _fb_StrAssign@20
push 12
push offset _Lt_0258
call _fb_StrLen@8
push eax
push 1
call _fb_WstrChr
add esp, 8
mov dword ptr [ebp-196], eax
push dword ptr [ebp-196]
push 417
push offset _Lt_0254
call _fb_WstrConcatAssign@12
push dword ptr [ebp-196]
call _fb_WstrDelete@4
push 12
push offset _Lt_0258
push offset _Lt_0254
call _fb_WstrConcatWA@12
mov dword ptr [ebp-200], eax
push dword ptr [ebp-200]
push 417
push offset _Lt_0254
call _fb_WstrAssign@12
push dword ptr [ebp-200]
call _fb_WstrDelete@4
jmp .L_00DB
.L_00DC:
push dword ptr [ebp-8]
push 1
call _fb_WstrChr
add esp, 8
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset _Lt_0254
call _fb_WstrConcatAssign@12
push dword ptr [ebp-192]
call _fb_WstrDelete@4
.L_00DB:
.L_00D0:
.L_00CD:
inc dword ptr [ebp-12]
.L_00CC:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .L_00CF
.L_00CE:
cmp dword ptr [ebp+8], 0
jne .L_00E2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
push offset _Lt_0253
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
jmp .L_00E1
.L_00E2:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
push offset _Lt_0254
call _SYMBALLOCWSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
.L_00E1:
jmp .L_00C7
.L_00C8:
push dword ptr [ebp+8]
lea eax, [ebp-184]
push eax
push dword ptr [ebp-16]
call _RTLSTRCHR@12
mov dword ptr [ebp-4], eax
.L_00C7:
.L_00B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0258,12
.balign 4
	.lcomm	_Lt_0253,417
.balign 4
	.lcomm	_Lt_0254,834

.section .text
.balign 16
_CSTRASC@0:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_00E3:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_00E6
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_00E5
.L_00E6:
push 0
call _LEXSKIPTOKEN@4
.L_00E5:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E8
jmp .L_00E4
.L_00E8:
.L_00E7:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00EA
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00EC
jmp .L_00E4
.L_00EC:
.L_00EB:
jmp .L_00E9
.L_00EA:
mov dword ptr [ebp-12], 0
.L_00E9:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00EE
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00ED
.L_00EE:
push 0
call _LEXSKIPTOKEN@4
.L_00ED:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 4
je .L_00F2
.L_00F3:
cmp dword ptr [ebp-28], 7
jne .L_00F1
.L_00F2:
push dword ptr [ebp-8]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-24], eax
.L_00F1:
.L_00EF:
cmp dword ptr [ebp-24], 0
je .L_00F5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_ENV+288]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00F7
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
jmp .L_00F6
.L_00F7:
cmp dword ptr [ebp-12], 0
je .L_00F9
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_00FB
push 8
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp-16], 0
jg .L_00FD
jl .L_0263
cmp dword ptr [ebp-20], 0
jae .L_00FD
.L_0263:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_00FD:
.L_00FC:
jmp .L_00FA
.L_00FB:
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
.L_00FA:
jmp .L_00F8
.L_00F9:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
.L_00F8:
.L_00F6:
cmp dword ptr [ebp-16], 0
jl .L_00FF
jg .L_0264
cmp dword ptr [ebp-20], 0
jb .L_00FF
.L_0264:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 7
je .L_0101
lea edx, [ebp-28]
push edx
mov edx, dword ptr [ebp-24]
push dword ptr [edx+56]
call _HUNESCAPE@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0102
mov eax, dword ptr [ebp-28]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_025B
.L_0102:
mov dword ptr [ebp-36], -1
.L_025B:
cmp dword ptr [ebp-36], 0
jne .L_0104
cmp dword ptr [ebp-16], 0
mov eax, -1
jl .L_0266
jg .L_0267
cmp dword ptr [ebp-20], 0
jbe .L_0266
.L_0267:
xor eax, eax
.L_0266:
mov dword ptr [ebp-40], eax
jmp .L_025C
.L_0104:
mov dword ptr [ebp-40], -1
.L_025C:
cmp dword ptr [ebp-40], 0
jne .L_0106
mov edx, dword ptr [ebp-28]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-16], eax
mov ebx, -1
jg .L_0268
jl .L_0269
cmp dword ptr [ebp-20], edx
ja .L_0268
.L_0269:
xor ebx, ebx
.L_0268:
mov dword ptr [ebp-44], ebx
jmp .L_025D
.L_0106:
mov dword ptr [ebp-44], -1
.L_025D:
cmp dword ptr [ebp-44], 0
je .L_0109
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_0108
.L_0109:
push 0
push 9
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
add ebx, 4294967295
adc eax, 4294967295
mov edx, ebx
mov ebx, dword ptr [ebp-32]
add ebx, edx
movzx eax, byte ptr [ebx]
mov edx, 0
push edx
push eax
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_0108:
jmp .L_0100
.L_0101:
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _HUNESCAPEW@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_010A
mov eax, dword ptr [ebp-28]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_025E
.L_010A:
mov dword ptr [ebp-36], -1
.L_025E:
cmp dword ptr [ebp-36], 0
jne .L_010C
cmp dword ptr [ebp-16], 0
mov eax, -1
jl .L_026B
jg .L_026C
cmp dword ptr [ebp-20], 0
jbe .L_026B
.L_026C:
xor eax, eax
.L_026B:
mov dword ptr [ebp-40], eax
jmp .L_025F
.L_010C:
mov dword ptr [ebp-40], -1
.L_025F:
cmp dword ptr [ebp-40], 0
jne .L_010E
mov edx, dword ptr [ebp-28]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-16], eax
mov ebx, -1
jg .L_026D
jl .L_026E
cmp dword ptr [ebp-20], edx
ja .L_026D
.L_026E:
xor ebx, ebx
.L_026D:
mov dword ptr [ebp-44], ebx
jmp .L_0260
.L_010E:
mov dword ptr [ebp-44], -1
.L_0260:
cmp dword ptr [ebp-44], 0
je .L_0111
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_0110
.L_0111:
push 0
push 9
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
add ebx, 4294967295
adc eax, 4294967295
mov edx, ebx
sal edx, 1
mov ebx, dword ptr [ebp-32]
add ebx, edx
movzx eax, word ptr [ebx]
mov edx, 0
push edx
push eax
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_0110:
.L_0100:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov dword ptr [ebp-8], 0
.L_00FF:
.L_00FE:
.L_00F5:
.L_00F4:
cmp dword ptr [ebp-8], 0
je .L_0113
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRASC@8
mov dword ptr [ebp-4], eax
.L_0113:
.L_0112:
.L_00E4:
mov eax, dword ptr [ebp-4]
pop ebx
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
_Lt_00D6:	.ascii	"\33""\0"
.balign 4
_Lt_0155:	.ascii	"fb_CVD\0"
.balign 4
_Lt_0158:	.ascii	"fb_CVS\0"
.balign 4
_Lt_0160:	.ascii	"fb_CVSHORT\0"
.balign 4
_Lt_0163:	.ascii	"fb_CVL\0"
.balign 4
_Lt_0165:	.ascii	"fb_CVLONGINT\0"
.balign 4
_Lt_016B:	.ascii	"fb_CVDFROMLONGINT\0"
.balign 4
_Lt_016E:	.ascii	"fb_CVSFROML\0"
.balign 4
_Lt_0174:	.ascii	"fb_CVLFROMS\0"
.balign 4
_Lt_0175:	.ascii	"fb_CVLONGINTFROMD\0"
.balign 4
_Lt_019F:	.ascii	"fb_MKD\0"
.balign 4
_Lt_01A1:	.ascii	"fb_MKS\0"
.balign 4
_Lt_01A7:	.ascii	"fb_MKI\0"
.balign 4
_Lt_01AE:	.ascii	"fb_MKSHORT\0"
.balign 4
_Lt_01B1:	.ascii	"fb_MKL\0"
.balign 4
_Lt_01B4:	.ascii	"fb_MKLONGINT\0"
