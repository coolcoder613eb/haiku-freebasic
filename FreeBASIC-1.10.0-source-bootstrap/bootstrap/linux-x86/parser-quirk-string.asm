	.intel_syntax noprefix

.section .text
.balign 16

.globl CMIDSTMT
CMIDSTMT:
.type CMIDSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
sub esp, 12
push 8192
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_006A
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0069
.L_006A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0069:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006C
jmp .L_0068
.L_006C:
.L_006B:
sub esp, 12
push dword ptr [ebp-8]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .L_006E
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_006E:
.L_006D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0070
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_006F
.L_0070:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_006F:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0072
jmp .L_0068
.L_0072:
.L_0071:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0074
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0076
jmp .L_0068
.L_0076:
.L_0075:
jmp .L_0073
.L_0074:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_0073:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0078
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0077
.L_0078:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0077:
call CASSIGNTOKEN
test eax, eax
jne .L_007A
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
.L_007A:
.L_0079:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_007C
jmp .L_0068
.L_007C:
.L_007B:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRASSIGNMID
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMIDSTMT, .-CMIDSTMT
.cfi_endproc
.balign 16

.globl CLRSETSTMT
CLRSETSTMT:
.type CLRSETSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_007E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp eax, 419
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0081
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 17
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
.L_0081:
.L_0080:
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-36], ebx
jmp .L_0083
.L_0085:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-32]
je .L_0087
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-32], 0
.L_0087:
.L_0086:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_0089
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 20
jne .L_008B
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 0
je .L_008C
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-44], eax
jmp .L_00A6
.L_008C:
mov dword ptr [ebp-44], 0
.L_00A6:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-40], eax
.L_008B:
.L_008A:
.L_0089:
.L_0088:
cmp dword ptr [ebp-40], 0
jne .L_008F
sub esp, 4
push 0
push -1
push 14
call ERRREPORT
add esp, 16
jmp .L_008E
.L_008F:
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
je .L_0091
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_0091:
.L_0090:
.L_008E:
jmp .L_0082
.L_0092:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 17
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_0082
.L_0083:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .L_0092
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_0093+eax*4-16]
.L_0093:
.int .L_0085
.int .L_0092
.int .L_0092
.int .L_0085
.int .L_0092
.int .L_0092
.int .L_0092
.int .L_0092
.int .L_0092
.int .L_0092
.int .L_0092
.int .L_0092
.int .L_0092
.int .L_0085
.int .L_0085
.int .L_0092
.int .L_0085
.L_0082:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_0095
call CASSIGNTOKEN
test eax, eax
jne .L_0097
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
.L_0097:
.L_0096:
.L_0095:
.L_0094:
sub esp, 12
push dword ptr [ebp-16]
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0099
jmp .L_007F
.L_0099:
.L_0098:
sub esp, 12
lea eax, [ebp-12]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 16
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-36], ecx
jmp .L_009B
.L_009D:
jmp .L_009A
.L_009E:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 17
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-12], eax
jmp .L_009A
.L_009B:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .L_009E
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_009F+eax*4-16]
.L_009F:
.int .L_009D
.int .L_009E
.int .L_009E
.int .L_009D
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009D
.int .L_009D
.int .L_009E
.int .L_009D
.L_009A:
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
je .L_00A1
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ecx
je .L_00A3
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_007F
.L_00A3:
.L_00A2:
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
je .L_00A5
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_007F
.L_00A5:
.L_00A4:
sub esp, 8
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
call RTLMEMCOPYCLEAR
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_00A0
.L_00A1:
sub esp, 4
push dword ptr [ebp-32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRLRSET
add esp, 16
mov dword ptr [ebp-4], eax
.L_00A0:
.L_007F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLRSETSTMT, .-CLRSETSTMT
.cfi_endproc
.balign 16

.globl CCVXFUNCT
CCVXFUNCT:
.type CCVXFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_0113:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 426
jne .L_0115
sub esp, 8
push 0
push 301
call HMATCH
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_017D
.L_0115:
mov dword ptr [ebp-12], 0
.L_017D:
cmp dword ptr [ebp-12], 0
je .L_0118
sub esp, 8
push 8
sub esp, 4
call CGTINPARENSONLYEXPR
add esp, 4
push eax
call CCONSTINTEXPR
add esp, 16
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 0
jne .L_011A
cmp dword ptr [ebp-56], 8
jne .L_011A
.L_0184:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
.L_011A:
sub esp, 4
push 0
push dword ptr [ebp-52]
push dword ptr [ebp-56]
call HINTEGERTYPEFROMBITSIZE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 300
call HMATCH
add esp, 16
test eax, eax
jne .L_011C
sub esp, 4
push 0
push 0
push 309
call ERRREPORT
add esp, 16
.L_011C:
.L_011B:
.L_0118:
.L_0117:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_011E
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_011D
.L_011E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_011D:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0120
jmp .L_0114
.L_0120:
.L_011F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0122
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0121
.L_0122:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0121:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-16]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 4
jne .L_0125
.L_0126:
sub esp, 12
push dword ptr [ebp-16]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], -1
jmp .L_0123
.L_0125:
cmp dword ptr [ebp-52], 17
je .L_0128
.L_0129:
cmp dword ptr [ebp-52], 18
je .L_0128
.L_012A:
cmp dword ptr [ebp-52], 7
jne .L_0127
.L_0128:
mov dword ptr [ebp-24], -1
.L_0127:
.L_0123:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-52], eax
jmp .L_012C
.L_012E:
mov dword ptr [ebp-32], 16
mov dword ptr [ebp-28], 0
jmp .L_012B
.L_012F:
mov dword ptr [ebp-32], 15
mov dword ptr [ebp-28], 0
jmp .L_012B
.L_0130:
cmp dword ptr [ebp-8], -2147483648
je .L_0132
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
jmp .L_0131
.L_0132:
mov eax, dword ptr [ENV+1044]
mov dword ptr [ebp-32], eax
.L_0131:
jmp .L_012B
.L_0133:
mov dword ptr [ebp-32], 11
jmp .L_012B
.L_0134:
mov dword ptr [ebp-32], 5
jmp .L_012B
.L_0135:
mov dword ptr [ebp-32], 13
jmp .L_012B
.L_012C:
mov eax, dword ptr [ebp-52]
add eax, 4294966872
cmp eax, 4
ja .L_0135
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_0136+eax*4-1696]
.L_0136:
.int .L_012E
.int .L_012F
.int .L_0130
.int .L_0133
.int .L_0134
.L_012B:
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
je .L_0138
sub esp, 8
mov dword ptr [ebp-52], 0
lea edx, [ebp-52]
push edx
mov edx, dword ptr [ebp-20]
push dword ptr [edx+56]
call HUNESCAPE
add esp, 16
mov dword ptr [ebp-36], eax
sub esp, 8
push 0
push dword ptr [ebp-36]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-40], eax
jmp .L_0137
.L_0138:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
.L_0137:
mov dword ptr [ebp-44], 0
cmp dword ptr [ebp-24], 0
jne .L_013A
mov eax, dword ptr [ebp-32]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_017E
.L_013A:
mov dword ptr [ebp-48], -1
.L_017E:
cmp dword ptr [ebp-48], 0
je .L_013D
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_013E
mov dword ptr [ebp-52], 24
jmp .L_017F
.L_013E:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.L_017F:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [ebp-40], edx
jl .L_0141
cmp dword ptr [ebp-32], 16
jne .L_0143
.L_0144:
sub esp, 4
push 16
sub esp, 4
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVD
add esp, 8
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0142
.L_0143:
cmp dword ptr [ebp-32], 15
jne .L_0145
.L_0146:
sub esp, 4
push 15
sub esp, 4
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVS
add esp, 8
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0142
.L_0145:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0148
mov dword ptr [ebp-56], 24
jmp .L_0180
.L_0148:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.L_0180:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .L_014C
.L_014D:
push 0
push 5
sub esp, 4
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVSHORT
add esp, 8
movsx ebx, ax
mov edx, ebx
sar edx, 31
push edx
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_014A
.L_014C:
cmp dword ptr [ebp-60], 4
jne .L_014E
.L_014F:
push 0
push dword ptr [ebp-32]
sub esp, 4
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVL
add esp, 8
mov edx, eax
mov ebx, edx
sar ebx, 31
push ebx
push edx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_014A
.L_014E:
push 0
push dword ptr [ebp-32]
sub esp, 4
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVLONGINT
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
.L_0150:
.L_014A:
.L_0147:
.L_0142:
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
jmp .L_0140
.L_0141:
cmp dword ptr [ebp-32], 16
jne .L_0152
.L_0153:
sub esp, 8
push 0
sub esp, 12
push 38
push offset Lt_0154
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0151
.L_0152:
cmp dword ptr [ebp-32], 15
jne .L_0155
.L_0156:
sub esp, 8
push 0
sub esp, 12
push 39
push offset Lt_0157
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0151
.L_0155:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0159
mov dword ptr [ebp-56], 24
jmp .L_0181
.L_0159:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.L_0181:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .L_015D
.L_015E:
sub esp, 8
push 0
sub esp, 12
push 41
push offset Lt_015F
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_015B
.L_015D:
cmp dword ptr [ebp-60], 4
jne .L_0160
.L_0161:
sub esp, 8
push 0
sub esp, 12
push 40
push offset Lt_0162
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_015B
.L_0160:
sub esp, 8
push 0
sub esp, 12
push 42
push offset Lt_0164
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
.L_0163:
.L_015B:
.L_0158:
.L_0151:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0166
mov dword ptr [ebp-44], 0
.L_0166:
.L_0165:
.L_0140:
jmp .L_013C
.L_013D:
cmp dword ptr [ebp-32], 16
jne .L_0168
.L_0169:
sub esp, 8
push 0
sub esp, 12
push 43
push offset Lt_016A
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0167
.L_0168:
cmp dword ptr [ebp-32], 15
jne .L_016B
.L_016C:
sub esp, 8
push 0
sub esp, 12
push 44
push offset Lt_016D
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0167
.L_016B:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_016F
mov dword ptr [ebp-52], 24
jmp .L_0182
.L_016F:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0182:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 4
jne .L_0172
sub esp, 8
push 0
sub esp, 12
push 45
push offset Lt_0173
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0171
.L_0172:
sub esp, 8
push 0
sub esp, 12
push 46
push offset Lt_0174
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-44], eax
.L_0171:
.L_016E:
.L_0167:
cmp dword ptr [ebp-44], 0
je .L_0176
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0178
mov dword ptr [ebp-44], 0
.L_0178:
.L_0177:
.L_0176:
.L_0175:
.L_013C:
cmp dword ptr [ebp-44], 0
je .L_017A
sub esp, 12
push 0
push 0
push dword ptr [ebp-44]
push 0
push dword ptr [ebp-32]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-44], eax
.L_017A:
.L_0179:
cmp dword ptr [ebp-44], 0
jne .L_017C
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_017C:
.L_017B:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
.L_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CCVXFUNCT, .-CCVXFUNCT
.cfi_endproc
.balign 16

.globl CMKXFUNCT
CMKXFUNCT:
.type CMKXFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_0188:
sub esp, 12
push 8192
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 432
jne .L_018A
sub esp, 8
push 0
push 301
call HMATCH
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_01BC
.L_018A:
mov dword ptr [ebp-12], 0
.L_01BC:
cmp dword ptr [ebp-12], 0
je .L_018D
sub esp, 8
push 8
sub esp, 4
call CGTINPARENSONLYEXPR
add esp, 4
push eax
call CCONSTINTEXPR
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 0
jne .L_018F
cmp dword ptr [ebp-28], 8
jne .L_018F
.L_01BF:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.L_018F:
sub esp, 4
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call HINTEGERTYPEFROMBITSIZE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 300
call HMATCH
add esp, 16
test eax, eax
jne .L_0191
sub esp, 4
push 0
push 0
push 309
call ERRREPORT
add esp, 16
.L_0191:
.L_0190:
.L_018D:
.L_018C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0193
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0192
.L_0193:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0192:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0195
jmp .L_0189
.L_0195:
.L_0194:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0197
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0196
.L_0197:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0196:
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp-16], 0
je .L_0199
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .L_019B
.L_019D:
sub esp, 8
push 0
sub esp, 12
push 32
push offset Lt_019E
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_019A
.L_019F:
sub esp, 8
push 0
sub esp, 12
push 33
push offset Lt_01A0
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_019A
.L_01A1:
cmp dword ptr [ebp-8], -2147483648
jne .L_01A3
mov eax, dword ptr [ENV+1044]
mov dword ptr [ebp-8], eax
.L_01A3:
.L_01A2:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 8
jne .L_01A5
sub esp, 8
push 0
sub esp, 12
push 34
push offset Lt_01A6
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_01A4
.L_01A5:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_01A7
mov dword ptr [ebp-28], 24
jmp .L_01BD
.L_01A7:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_01BD:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-32], edx
cmp dword ptr [ebp-32], 3
jne .L_01AB
.L_01AC:
sub esp, 8
push 0
sub esp, 12
push 36
push offset Lt_01AD
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_01A9
.L_01AB:
cmp dword ptr [ebp-32], 5
jne .L_01AE
.L_01AF:
sub esp, 8
push 0
sub esp, 12
push 35
push offset Lt_01B0
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_01A9
.L_01AE:
cmp dword ptr [ebp-32], 7
jne .L_01B1
.L_01B2:
sub esp, 8
push 0
sub esp, 12
push 37
push offset Lt_01B3
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
.L_01B1:
.L_01A9:
.L_01A4:
jmp .L_019A
.L_01B4:
sub esp, 8
push 0
sub esp, 12
push 35
push offset Lt_01B0
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_019A
.L_01B5:
sub esp, 8
push 0
sub esp, 12
push 36
push offset Lt_01AD
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_019A
.L_01B6:
sub esp, 8
push 0
sub esp, 12
push 37
push offset Lt_01B3
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_019A
.L_019B:
mov eax, dword ptr [ebp-24]
add eax, 4294966866
cmp eax, 4
ja .L_01B6
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_01B7+eax*4-1720]
.L_01B7:
.int .L_019D
.int .L_019F
.int .L_01A1
.int .L_01B4
.int .L_01B5
.L_019A:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B9
mov dword ptr [ebp-20], 0
.L_01B9:
.L_01B8:
.L_0199:
.L_0198:
cmp dword ptr [ebp-20], 0
jne .L_01BB
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_01BB:
.L_01BA:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0189:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMKXFUNCT, .-CMKXFUNCT
.cfi_endproc
.balign 16

.globl CSTRINGFUNCT
CSTRINGFUNCT:
.type CSTRINGFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_01C0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 423
je .L_01C4
.L_01C5:
cmp dword ptr [ebp+8], 436
jne .L_01C3
.L_01C4:
mov eax, dword ptr [ebp+8]
cmp eax, 436
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
sub esp, 12
cmp dword ptr [ebp-32], 0
je .L_01C6
mov dword ptr [ebp-36], 2048
jmp .L_024A
.L_01C6:
mov dword ptr [ebp-36], 8192
.L_024A:
push dword ptr [ebp-36]
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_01C9
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_01C8
.L_01C9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01C8:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01CB
jmp .L_01C1
.L_01CB:
.L_01CA:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_01CD
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_01CC
.L_01CD:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01CC:
cmp dword ptr [ebp-32], 0
jne .L_01CF
sub esp, 8
mov eax, dword ptr [ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call RTLTOSTR
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_01CE
.L_01CF:
sub esp, 12
push dword ptr [ebp-8]
call RTLTOWSTR
add esp, 16
mov dword ptr [ebp-8], eax
.L_01CE:
cmp dword ptr [ebp-8], 0
jne .L_01D1
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_01D1:
.L_01D0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_01C3:
cmp dword ptr [ebp+8], 437
jne .L_01D2
.L_01D3:
sub esp, 12
push 8192
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_01D5
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_01D4
.L_01D5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01D4:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01D7
jmp .L_01C1
.L_01D7:
.L_01D6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01D9
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_01D8
.L_01D9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01D8:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01DB
jmp .L_01C1
.L_01DB:
.L_01DA:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_01DD
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01DF
jmp .L_01C1
.L_01DF:
.L_01DE:
jmp .L_01DC
.L_01DD:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_01DC:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_01E1
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_01E0
.L_01E1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01E0:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRMID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01E3
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_01E3:
.L_01E2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_01D2:
cmp dword ptr [ebp+8], 369
je .L_01E5
.L_01E6:
cmp dword ptr [ebp+8], 371
jne .L_01E4
.L_01E5:
mov eax, dword ptr [ebp+8]
cmp eax, 371
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
sub esp, 12
cmp dword ptr [ebp-32], 0
je .L_01E7
mov dword ptr [ebp-36], 2048
jmp .L_024B
.L_01E7:
mov dword ptr [ebp-36], 8192
.L_024B:
push dword ptr [ebp-36]
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_01EA
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_01E9
.L_01EA:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01E9:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01EC
jmp .L_01C1
.L_01EC:
.L_01EB:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01EE
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_01ED
.L_01EE:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01ED:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01F0
jmp .L_01C1
.L_01F0:
.L_01EF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_01F2
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_01F1
.L_01F2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01F1:
cmp dword ptr [ebp-32], 0
jne .L_01F4
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRFILL
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_01F3
.L_01F4:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLWSTRFILL
add esp, 16
mov dword ptr [ebp-8], eax
.L_01F3:
cmp dword ptr [ebp-8], 0
jne .L_01F6
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_01F6:
.L_01F5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_01E4:
cmp dword ptr [ebp+8], 421
je .L_01F8
.L_01F9:
cmp dword ptr [ebp+8], 422
jne .L_01F7
.L_01F8:
mov eax, dword ptr [ebp+8]
cmp eax, 422
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
sub esp, 12
cmp dword ptr [ebp-32], 0
je .L_01FA
mov dword ptr [ebp-36], 2048
jmp .L_024C
.L_01FA:
mov dword ptr [ebp-36], 8192
.L_024C:
push dword ptr [ebp-36]
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-32]
call CSTRCHR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_01F7:
cmp dword ptr [ebp+8], 420
jne .L_01FC
.L_01FD:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CSTRASC
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_01FC:
cmp dword ptr [ebp+8], 438
jne .L_01FE
.L_01FF:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0201
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0200
.L_0201:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0200:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0203
jmp .L_01C1
.L_0203:
.L_0202:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0205
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0204
.L_0205:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0204:
sub esp, 8
push 2048
push 372
call HMATCH
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0207
jmp .L_01C1
.L_0207:
.L_0206:
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 0
jne .L_0209
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_020B
sub esp, 8
push 2048
push 372
call HMATCH
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_020D
jmp .L_01C1
.L_020D:
.L_020C:
.L_020B:
.L_020A:
.L_0209:
.L_0208:
cmp dword ptr [ebp-16], 0
jne .L_020F
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_020F:
.L_020E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0211
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0210
.L_0211:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0210:
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRINSTR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0213
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0213:
.L_0212:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_01FE:
cmp dword ptr [ebp+8], 439
jne .L_0214
.L_0215:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0217
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0216
.L_0217:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0216:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0219
jmp .L_01C1
.L_0219:
.L_0218:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_021B
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_021A
.L_021B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_021A:
sub esp, 8
push 2048
push 372
call HMATCH
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_021D
jmp .L_01C1
.L_021D:
.L_021C:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_021F
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0221
jmp .L_01C1
.L_0221:
.L_0220:
jmp .L_021E
.L_021F:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_021E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0223
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0222
.L_0223:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0222:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call RTLSTRINSTRREV
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0225
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0225:
.L_0224:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_0214:
cmp dword ptr [ebp+8], 440
je .L_0227
.L_0228:
cmp dword ptr [ebp+8], 442
je .L_0227
.L_0229:
cmp dword ptr [ebp+8], 441
jne .L_0226
.L_0227:
sub esp, 12
push 8192
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_022B
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_022A
.L_022B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_022A:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_022D
jmp .L_01C1
.L_022D:
.L_022C:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_022F
sub esp, 8
push 2048
push 372
call HMATCH
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0231
jmp .L_01C1
.L_0231:
.L_0230:
jmp .L_022E
.L_022F:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-12], 0
.L_022E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0233
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0232
.L_0233:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0232:
cmp dword ptr [ebp+8], 440
jne .L_0235
.L_0236:
sub esp, 4
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRTRIM
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0234
.L_0235:
cmp dword ptr [ebp+8], 442
jne .L_0237
.L_0238:
sub esp, 4
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRLTRIM
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0234
.L_0237:
cmp dword ptr [ebp+8], 441
jne .L_0239
.L_023A:
sub esp, 4
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRRTRIM
add esp, 16
mov dword ptr [ebp-8], eax
.L_0239:
.L_0234:
cmp dword ptr [ebp-8], 0
jne .L_023C
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_023C:
.L_023B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01C2
.L_0226:
cmp dword ptr [ebp+8], 443
je .L_023E
.L_023F:
cmp dword ptr [ebp+8], 444
jne .L_023D
.L_023E:
sub esp, 12
push 8192
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0241
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0240
.L_0241:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0240:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0243
jmp .L_01C1
.L_0243:
.L_0242:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0245
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0247
jmp .L_01C1
.L_0247:
.L_0246:
jmp .L_0244
.L_0245:
mov dword ptr [ebp-12], 0
.L_0244:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0249
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0248
.L_0249:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0248:
sub esp, 4
mov eax, dword ptr [ebp+8]
cmp eax, 443
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRCASE
add esp, 16
mov dword ptr [ebp-4], eax
.L_023D:
.L_01C2:
.L_01C1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSTRINGFUNCT, .-CSTRINGFUNCT
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
CSTRCHR:
.type CSTRCHR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 228
push ebx
mov dword ptr [ebp-4], 0
.L_00AF:
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
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_00B3
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_00B2
.L_00B3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00B2:
mov dword ptr [ebp-16], 0
.L_00B4:
sub esp, 12
push 12
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp+ebx*4-148], eax
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp+eax*4-148], 0
jne .L_00B8
jmp .L_00B0
.L_00B8:
.L_00B7:
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 32
jl .L_00BA
jmp .L_00B5
.L_00BA:
.L_00B9:
.L_00B6:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_00B4
.L_00B5:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00BC
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00BB
.L_00BC:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00BB:
mov dword ptr [ebp-20], -1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .L_00BE
.L_00C1:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+eax*4-148]
cmp dword ptr [ebx], 16
je .L_00C3
mov dword ptr [ebp-20], 0
jmp .L_00C0
.L_00C3:
.L_00C2:
sub esp, 12
mov ebx, dword ptr [ebp-12]
push dword ptr [ebp+ebx*4-148]
call ASTCONSTEQZERO
add esp, 16
test eax, eax
je .L_00C5
mov dword ptr [ebp-20], 0
jmp .L_00C0
.L_00C5:
.L_00C4:
.L_00BF:
inc dword ptr [ebp-12]
.L_00BE:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .L_00C1
.L_00C0:
cmp dword ptr [ebp-20], 0
je .L_00C7
cmp dword ptr [ebp+8], 0
jne .L_00C9
sub esp, 12
push 0
push 1
push offset Lt_0000
push 417
push offset Lt_0252
call fb_StrAssign
add esp, 32
jmp .L_00C8
.L_00C9:
push 1
push offset Lt_0000
push 417
push offset Lt_0253
call fb_WstrAssignFromA
add esp, 16
.L_00C8:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .L_00CB
.L_00CE:
sub esp, 8
push 12
mov eax, dword ptr [ebp-12]
push dword ptr [ebp+eax*4-148]
call ASTCONSTFLUSHTOINT
add esp, 16
mov ebx, eax
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp+ebx*4-148], 0
cmp dword ptr [ebp+8], 0
jne .L_00D0
mov eax, dword ptr [ebp-8]
mov ebx, eax
sar ebx, 31
cmp ebx, 0
jb .L_00D2
ja .L_0254
cmp eax, 255
jbe .L_00D2
.L_0254:
mov dword ptr [ebp-8], 255
.L_00D2:
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
je .L_00D4
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00D5
push 417
push offset Lt_0252
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea ebx, [ebp-200]
push ebx
call fb_StrConcat
add esp, 28
push eax
push 417
push offset Lt_0252
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-8]
call fb_OCT_i
add esp, 12
push eax
push 12
push offset Lt_0257
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 12
push offset Lt_0257
call fb_StrLen
add esp, 8
push eax
push 1
call fb_CHR
add esp, 16
push eax
push 417
push offset Lt_0252
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 28
push eax
push 417
push offset Lt_0252
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 12
push offset Lt_0257
push 417
push offset Lt_0252
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 28
push eax
push 417
push offset Lt_0252
call fb_StrAssign
add esp, 32
jmp .L_00D3
.L_00D4:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-8]
push 1
call fb_CHR
add esp, 16
push eax
push 417
push offset Lt_0252
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 28
push eax
push 417
push offset Lt_0252
call fb_StrAssign
add esp, 32
.L_00D3:
jmp .L_00CF
.L_00D0:
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
je .L_00DB
sub esp, 4
push 2
push offset Lt_00D5
push offset Lt_0253
call fb_WstrConcatWA
add esp, 12
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset Lt_0253
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-192]
call fb_WstrDelete
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-8]
call fb_OCT_i
add esp, 12
push eax
push 12
push offset Lt_0257
call fb_StrAssign
add esp, 32
sub esp, 4
sub esp, 4
push 12
push offset Lt_0257
call fb_StrLen
add esp, 8
push eax
push 1
call fb_WstrChr
add esp, 12
mov dword ptr [ebp-196], eax
push dword ptr [ebp-196]
push 417
push offset Lt_0253
call fb_WstrConcatAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-196]
call fb_WstrDelete
add esp, 16
sub esp, 4
push 12
push offset Lt_0257
push offset Lt_0253
call fb_WstrConcatWA
add esp, 12
mov dword ptr [ebp-200], eax
push dword ptr [ebp-200]
push 417
push offset Lt_0253
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-200]
call fb_WstrDelete
add esp, 16
jmp .L_00DA
.L_00DB:
sub esp, 4
sub esp, 4
push dword ptr [ebp-8]
push 1
call fb_WstrChr
add esp, 12
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset Lt_0253
call fb_WstrConcatAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-192]
call fb_WstrDelete
add esp, 16
.L_00DA:
.L_00CF:
.L_00CC:
inc dword ptr [ebp-12]
.L_00CB:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .L_00CE
.L_00CD:
cmp dword ptr [ebp+8], 0
jne .L_00E1
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push dword ptr [ebp-16]
push offset Lt_0252
call SYMBALLOCSTRCONST
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_00E0
.L_00E1:
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push dword ptr [ebp-16]
push offset Lt_0253
call SYMBALLOCWSTRCONST
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
.L_00E0:
jmp .L_00C6
.L_00C7:
sub esp, 4
push dword ptr [ebp+8]
lea eax, [ebp-184]
push eax
push dword ptr [ebp-16]
call RTLSTRCHR
add esp, 16
mov dword ptr [ebp-4], eax
.L_00C6:
.L_00B0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSTRCHR, .-CSTRCHR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0257,12
.balign 4
	.lcomm	Lt_0252,417
.balign 4
	.lcomm	Lt_0253,1668

.section .text
.balign 16
CSTRASC:
.type CSTRASC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00E2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_00E5
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_00E4
.L_00E5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00E4:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E7
jmp .L_00E3
.L_00E7:
.L_00E6:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00E9
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00EB
jmp .L_00E3
.L_00EB:
.L_00EA:
jmp .L_00E8
.L_00E9:
mov dword ptr [ebp-12], 0
.L_00E8:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00ED
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00EC
.L_00ED:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00EC:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 4
je .L_00F1
.L_00F2:
cmp dword ptr [ebp-28], 7
jne .L_00F0
.L_00F1:
sub esp, 12
push dword ptr [ebp-8]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-24], eax
.L_00F0:
.L_00EE:
cmp dword ptr [ebp-24], 0
je .L_00F4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ENV+288]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00F6
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
jmp .L_00F5
.L_00F6:
cmp dword ptr [ebp-12], 0
je .L_00F8
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_00FA
sub esp, 8
push 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOINT
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp-16], 0
jg .L_00FC
jl .L_0262
cmp dword ptr [ebp-20], 0
jae .L_00FC
.L_0262:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_00FC:
.L_00FB:
jmp .L_00F9
.L_00FA:
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
.L_00F9:
jmp .L_00F7
.L_00F8:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
.L_00F7:
.L_00F5:
cmp dword ptr [ebp-16], 0
jl .L_00FE
jg .L_0263
cmp dword ptr [ebp-20], 0
jb .L_00FE
.L_0263:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 7
je .L_0100
sub esp, 8
lea edx, [ebp-28]
push edx
mov edx, dword ptr [ebp-24]
push dword ptr [edx+56]
call HUNESCAPE
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0101
mov eax, dword ptr [ebp-28]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_025A
.L_0101:
mov dword ptr [ebp-36], -1
.L_025A:
cmp dword ptr [ebp-36], 0
jne .L_0103
cmp dword ptr [ebp-16], 0
mov eax, -1
jl .L_0265
jg .L_0266
cmp dword ptr [ebp-20], 0
jbe .L_0265
.L_0266:
xor eax, eax
.L_0265:
mov dword ptr [ebp-40], eax
jmp .L_025B
.L_0103:
mov dword ptr [ebp-40], -1
.L_025B:
cmp dword ptr [ebp-40], 0
jne .L_0105
mov edx, dword ptr [ebp-28]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-16], eax
mov ebx, -1
jg .L_0267
jl .L_0268
cmp dword ptr [ebp-20], edx
ja .L_0267
.L_0268:
xor ebx, ebx
.L_0267:
mov dword ptr [ebp-44], ebx
jmp .L_025C
.L_0105:
mov dword ptr [ebp-44], -1
.L_025C:
cmp dword ptr [ebp-44], 0
je .L_0108
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0107
.L_0108:
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
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0107:
jmp .L_00FF
.L_0100:
sub esp, 8
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0109
mov eax, dword ptr [ebp-28]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_025D
.L_0109:
mov dword ptr [ebp-36], -1
.L_025D:
cmp dword ptr [ebp-36], 0
jne .L_010B
cmp dword ptr [ebp-16], 0
mov eax, -1
jl .L_026A
jg .L_026B
cmp dword ptr [ebp-20], 0
jbe .L_026A
.L_026B:
xor eax, eax
.L_026A:
mov dword ptr [ebp-40], eax
jmp .L_025E
.L_010B:
mov dword ptr [ebp-40], -1
.L_025E:
cmp dword ptr [ebp-40], 0
jne .L_010D
mov edx, dword ptr [ebp-28]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-16], eax
mov ebx, -1
jg .L_026C
jl .L_026D
cmp dword ptr [ebp-20], edx
ja .L_026C
.L_026D:
xor ebx, ebx
.L_026C:
mov dword ptr [ebp-44], ebx
jmp .L_025F
.L_010D:
mov dword ptr [ebp-44], -1
.L_025F:
cmp dword ptr [ebp-44], 0
je .L_0110
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010F
.L_0110:
push 0
push 9
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
add ebx, 4294967295
adc eax, 4294967295
mov edx, ebx
sal edx, 2
mov ebx, dword ptr [ebp-32]
add ebx, edx
mov eax, dword ptr [ebx]
mov edx, 0
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_010F:
.L_00FF:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov dword ptr [ebp-8], 0
.L_00FE:
.L_00FD:
.L_00F4:
.L_00F3:
cmp dword ptr [ebp-8], 0
je .L_0112
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRASC
add esp, 16
mov dword ptr [ebp-4], eax
.L_0112:
.L_0111:
.L_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSTRASC, .-CSTRASC
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_00D5:	.ascii	"\33""\0"
.balign 4
Lt_0154:	.ascii	"fb_CVD\0"
.balign 4
Lt_0157:	.ascii	"fb_CVS\0"
.balign 4
Lt_015F:	.ascii	"fb_CVSHORT\0"
.balign 4
Lt_0162:	.ascii	"fb_CVL\0"
.balign 4
Lt_0164:	.ascii	"fb_CVLONGINT\0"
.balign 4
Lt_016A:	.ascii	"fb_CVDFROMLONGINT\0"
.balign 4
Lt_016D:	.ascii	"fb_CVSFROML\0"
.balign 4
Lt_0173:	.ascii	"fb_CVLFROMS\0"
.balign 4
Lt_0174:	.ascii	"fb_CVLONGINTFROMD\0"
.balign 4
Lt_019E:	.ascii	"fb_MKD\0"
.balign 4
Lt_01A0:	.ascii	"fb_MKS\0"
.balign 4
Lt_01A6:	.ascii	"fb_MKI\0"
.balign 4
Lt_01AD:	.ascii	"fb_MKSHORT\0"
.balign 4
Lt_01B0:	.ascii	"fb_MKL\0"
.balign 4
Lt_01B3:	.ascii	"fb_MKLONGINT\0"
