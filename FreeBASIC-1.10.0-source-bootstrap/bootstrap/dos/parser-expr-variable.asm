	.intel_syntax noprefix

.section .text
.balign 16

.globl _CUDTMEMBER
_CUDTMEMBER:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00BA:
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp+8]
and eax, 261632
mov dword ptr [ebp-12], eax
.L_00BC:
push 0
push dword ptr [ebp+12]
call _HMEMBERID
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00C0
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_00C2
.L_00C4:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-16]
call _ASTBUILDCONST
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00BB
jmp .L_00C1
.L_00C5:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp+16], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_00C7
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00C7:
.L_00C6:
jmp .L_00C1
.L_00C8:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
or ebx, dword ptr [eax+28]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jne .L_00CA
push dword ptr [ebp+16]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
.L_00CA:
.L_00C9:
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call _HFIELDACCESS
add esp, 20
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
setne al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
cmp ecx, 25
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00CC
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .L_00BB
.L_00CC:
.L_00CB:
mov dword ptr [ebp-8], 0
jmp .L_00C1
.L_00CD:
push dword ptr [ebp+16]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp-16]
call __Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [eax+28]
mov dword ptr [ebp+8], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00CE
mov dword ptr [ebp-24], 24
jmp .L_00DD
.L_00CE:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_00DD:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 20
jne .L_00D2
.L_00D3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_00D5
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_00BB
.L_00D5:
.L_00D4:
jmp .L_00D0
.L_00D2:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_00BB
.L_00D6:
.L_00D0:
mov dword ptr [ebp-8], 0
jmp .L_00C1
.L_00D7:
cmp dword ptr [ebp-8], 0
je .L_00D9
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+16], eax
.L_00D9:
.L_00D8:
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call _CMETHODCALL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00BB
jmp .L_00C1
.L_00DA:
push 0
push 1
push 0
push offset _Lt_00DB
push 21
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
jmp .L_00BB
jmp .L_00C1
.L_00C2:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 11
ja .L_00DA
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00DC+eax*4-4]
_.L_00DC:
.int .L_00CD
.int .L_00C4
.int .L_00D7
.int .L_00DA
.int .L_00DA
.int .L_00DA
.int .L_00DA
.int .L_00DA
.int .L_00C5
.int .L_00DA
.int .L_00DA
.int .L_00C8
.L_00C1:
push 2112
call _LEXSKIPTOKEN
add esp, 4
.L_00BE:
jmp .L_00BC
.L_00BD:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CUDTTYPEMEMBER
_CUDTTYPEMEMBER:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.L_00E1:
.L_00E3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_00E4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
cmp ebx, 20
je .L_00E6
jmp .L_00E4
.L_00E6:
.L_00E5:
push 64
call _LEXSKIPTOKEN
add esp, 4
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _HMEMBERID
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00E8
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 10
jne .L_00EA
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx], eax
jmp .L_00E9
.L_00EA:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
.L_00E9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+12]
and ecx, 2097152
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov esi, dword ptr [ebp+20]
mov dword ptr [esi], ecx
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 2
jne .L_00EC
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 7
je .L_00F0
.L_00F1:
cmp dword ptr [ebp-8], 4
je .L_00F0
.L_00F2:
cmp dword ptr [ebp-8], 17
je .L_00F0
.L_00F3:
cmp dword ptr [ebp-8], 18
jne .L_00EF
.L_00F0:
mov esi, dword ptr [ebp+20]
mov dword ptr [esi], -1
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+56]
mov esi, dword ptr [ebp+16]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [esi], eax
mov dword ptr [esi+4], ebx
jmp .L_00E4
.L_00EF:
.L_00ED:
.L_00EC:
.L_00EB:
jmp .L_00E7
.L_00E8:
jmp .L_00E4
.L_00E7:
jmp .L_00E3
.L_00E4:
.L_00E2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMEMBERACCESS
_CMEMBERACCESS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00F5:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 9
jne .L_00F8
push dword ptr [ebp+16]
call _ASTBUILDCALLRESULTUDT
add esp, 4
mov dword ptr [ebp+16], eax
.L_00F8:
.L_00F7:
push 0
push -1
push dword ptr [ebp+16]
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-4], eax
.L_00F6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMEMBERDEREF
_CMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_010F:
mov dword ptr [ebp-4], 0
.L_0111:
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 400
jne .L_0116
.L_0117:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0119
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_011D
.L_011E:
cmp dword ptr [ebp-28], 23
jne .L_011C
.L_011D:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .L_011A
.L_011C:
cmp dword ptr [ebp-28], 20
jne .L_011F
.L_0120:
jmp .L_011A
.L_011F:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.L_0121:
.L_011A:
cmp dword ptr [_ENV+176], 0
je .L_0123
push dword ptr [ebp+16]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.L_0123:
.L_0122:
call _HMULTIDEREF
add dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp+16], eax
jmp .L_0118
.L_0119:
cmp dword ptr [_SYMB+99428], 0
jne .L_0125
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .L_0112
.L_0125:
.L_0124:
lea eax, [ebp-32]
push eax
push dword ptr [ebp+16]
push 77
call _SYMBFINDUOPOVLPROC
add esp, 12
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0127
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .L_0112
.L_0127:
.L_0126:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-28]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0129
jmp .L_0110
.L_0129:
.L_0128:
push 64
call _LEXSKIPTOKEN
add esp, 4
call _HMULTIDEREF
add dword ptr [ebp-8], eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+16], eax
.L_0118:
cmp dword ptr [ebp+16], 0
jne .L_012B
jmp .L_0110
.L_012B:
.L_012A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .L_012D
cmp dword ptr [ebp-8], 0
jle .L_012F
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
.L_012F:
.L_012E:
jmp .L_0112
.L_012D:
.L_012C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jle .L_0131
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0133
jmp .L_0110
.L_0133:
.L_0132:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
.L_0131:
.L_0130:
jmp .L_0114
.L_0116:
cmp dword ptr [ebp-24], 91
jne .L_0134
.L_0135:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _HINDEXEXPR
mov dword ptr [ebp-20], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 93
je .L_0137
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 93
call _HSKIPUNTIL
add esp, 16
jmp .L_0136
.L_0137:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0136:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .L_013B
.L_013C:
cmp dword ptr [ebp-28], 18
je .L_013B
.L_013D:
cmp dword ptr [ebp-28], 4
je .L_013B
.L_013E:
cmp dword ptr [ebp-28], 7
jne .L_013A
.L_013B:
push dword ptr [ebp-20]
call _HCHECKINTEGERINDEX
add esp, 4
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRINDEXING
add esp, 12
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .L_0138
.L_013A:
cmp dword ptr [ebp-28], 20
jne .L_013F
.L_0140:
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push 23
call _SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0142
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push dword ptr [ebp-36]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0144
jmp .L_0110
.L_0144:
.L_0143:
jmp .L_0141
.L_0142:
cmp dword ptr [ebp-32], 0
jne .L_0146
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
.L_0146:
.L_0145:
.L_0141:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0148
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_014A
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
jmp .L_0110
.L_014A:
.L_0149:
push dword ptr [ebp+16]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+4]
call _CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_014C
jmp .L_0110
.L_014C:
.L_014B:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .L_014E
jmp .L_0112
.L_014E:
.L_014D:
.L_0148:
.L_0147:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .L_0138
.L_013F:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0153
.L_0154:
cmp dword ptr [ebp-32], 23
jne .L_0152
.L_0153:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 40
mov dword ptr [ebp+12], 0
jmp .L_0150
.L_0152:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
jne .L_0157
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .L_0112
.L_0157:
.L_0156:
.L_0155:
.L_0150:
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .L_0159
cmp dword ptr [ebp-16], 0
jne .L_0159
.L_0169:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
mov edx, dword ptr [_SYMB_DTYPETB+228]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], eax
.L_0159:
.L_0158:
push dword ptr [ebp-20]
call _HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [_ENV+176], 0
je .L_015B
push dword ptr [ebp+16]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.L_015B:
.L_015A:
push 1
push 0
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 30
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp+16]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_015D
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
je .L_015F
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .L_0112
.L_015F:
.L_015E:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0161
jmp .L_0110
.L_0161:
.L_0160:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .L_0163
jmp .L_0112
.L_0163:
.L_0162:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
mov dword ptr [ebp+8], edx
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov dword ptr [ebp+12], eax
jmp .L_015C
.L_015D:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+16], eax
.L_015C:
.L_014F:
.L_0138:
jmp .L_0114
.L_0134:
cmp dword ptr [ebp-24], 46
jne .L_0164
.L_0165:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0167
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
.L_0167:
.L_0166:
jmp .L_0112
jmp .L_0114
.L_0164:
jmp .L_0112
.L_0168:
.L_0114:
.L_0113:
jmp .L_0111
.L_0112:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_0110:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFUNCPTRORMEMBERDEREF
_CFUNCPTRORMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_016A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .L_016D
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_016F
jmp .L_016B
.L_016F:
.L_016E:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0171
cmp dword ptr [ebp+8], 54
jne .L_0173
mov dword ptr [ebp+20], -1
.L_0173:
.L_0172:
.L_0171:
.L_0170:
.L_016D:
.L_016C:
cmp dword ptr [ebp+20], 0
jne .L_0175
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_016B
.L_0175:
.L_0174:
cmp dword ptr [_ENV+176], 0
je .L_0177
push dword ptr [ebp+16]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.L_0177:
.L_0176:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0179
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_017B
jmp .L_016B
.L_017B:
.L_017A:
jmp .L_0178
.L_0179:
mov eax, dword ptr [_PARSER+152]
and eax, 4
test eax, eax
jne .L_017D
push 0
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _CPROCCALL
add esp, 24
mov dword ptr [ebp+16], eax
jmp .L_017C
.L_017D:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
.L_017C:
.L_0178:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_016B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z11CVARIABLEEXP8FBSYMBOLl
__Z11CVARIABLEEXP8FBSYMBOLl:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_01A4:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+8]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_01A7
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.L_01A7:
.L_01A6:
push 4096
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
mov dword ptr [ebp-20], ebx
push dword ptr [ebp+8]
call _SYMBISARRAY
add esp, 4
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-36], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_PARSER+152]
and ebx, 4096
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01A9
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
je .L_01AB
cmp dword ptr [ebp-28], 0
je .L_01AD
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_01AF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
je .L_01B1
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
push 52
push dword ptr [ebp-16]
call _ASTSETTYPE
add esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-16], eax
jmp .L_01B0
.L_01B1:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
.L_01B0:
push dword ptr [ebp-16]
call _ASTCLONETREE
add esp, 4
push eax
push dword ptr [ebp+8]
call _CDYNAMICARRAYINDEX
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp-16]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .L_01AE
.L_01AF:
push dword ptr [ebp+8]
call _CFIXEDSIZEARRAYINDEX
add esp, 4
mov dword ptr [ebp-12], eax
.L_01AE:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_01B3
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
.L_01B3:
.L_01B2:
jmp .L_01AC
.L_01AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 54
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-28]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01B5
push 0
push -1
push 72
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
.L_01B5:
.L_01B4:
.L_01AC:
jmp .L_01AA
.L_01AB:
cmp dword ptr [ebp-28], 0
je .L_01B7
mov dword ptr [ebp-32], 0
.L_01B7:
.L_01B6:
.L_01AA:
jmp .L_01A8
.L_01A9:
cmp dword ptr [ebp-28], 0
je .L_01B9
cmp dword ptr [ebp+12], 0
je .L_01BB
push 0
push -1
push 73
call _ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call _HMAKEARRAYIDX
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_01BA
.L_01BB:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], -1
.L_01BA:
.L_01B9:
.L_01B8:
.L_01A8:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_01BD
cmp dword ptr [ebp-20], 0
je .L_01BF
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_01BE
.L_01BF:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWIDX
add esp, 8
mov dword ptr [ebp-8], eax
.L_01BE:
.L_01BD:
.L_01BC:
cmp dword ptr [ebp-20], 0
je .L_01C1
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
.L_01C1:
.L_01C0:
cmp dword ptr [ebp-24], 0
jne .L_01C3
cmp dword ptr [ebp-32], 0
je .L_01C5
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_01C7
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_01C9
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01A5
.L_01C9:
.L_01C8:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01CB
jmp .L_01A5
.L_01CB:
.L_01CA:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_01CD
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A5
.L_01CD:
.L_01CC:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_01CF
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 54
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
.L_01CF:
.L_01CE:
.L_01C7:
.L_01C6:
.L_01C5:
.L_01C4:
.L_01C3:
.L_01C2:
cmp dword ptr [ebp-32], 0
je .L_01D1
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call _CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_01D0
.L_01D1:
cmp dword ptr [ebp-36], 0
je .L_01D3
push dword ptr [ebp-8]
call _ASTNEWNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
.L_01D3:
.L_01D2:
.L_01D0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z11CVARIABLEEXP10FBSYMCHAINl
__Z11CVARIABLEEXP10FBSYMCHAINl:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01DD:
call _LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+136], 3
jne .L_01E0
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 1
jne .L_01E2
cmp dword ptr [ebp-12], -2147483648
jne .L_01E4
mov dword ptr [ebp-4], 0
jmp .L_01DE
.L_01E4:
.L_01E3:
.L_01E2:
.L_01E1:
.L_01E0:
.L_01DF:
mov eax, dword ptr [_ENV+1040]
and eax, 8388608
test eax, eax
je .L_01E6
cmp dword ptr [ebp-12], -2147483648
jne .L_01E8
push dword ptr [ebp-8]
call _SYMBGETDEFTYPE
add esp, 4
push eax
push dword ptr [ebp+8]
call _SYMBFINDVARBYDEFTYPE
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_01E7
.L_01E8:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _SYMBFINDVARBYSUFFIX
add esp, 8
mov dword ptr [ebp-16], eax
.L_01E7:
jmp .L_01E5
.L_01E6:
cmp dword ptr [ebp-12], -2147483648
je .L_01EA
push 4096
call _LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
.L_01EA:
.L_01E9:
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-16], eax
.L_01E5:
cmp dword ptr [ebp-16], 0
jne .L_01EC
cmp dword ptr [_ENV+1084], 0
je .L_01EE
push dword ptr [ebp-8]
push 42
call _ERRREPORTUNDEF
add esp, 8
mov dword ptr [ebp-4], 0
jmp .L_01DE
.L_01EE:
.L_01ED:
cmp dword ptr [ebp+8], 0
je .L_01F0
mov eax, dword ptr [_ENV+1040]
and eax, 8388608
test eax, eax
je .L_01F2
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_01F4
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [_SYMB+98528]
cmp dword ptr [ebx], eax
je .L_01F6
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
.L_01F6:
.L_01F5:
.L_01F4:
.L_01F3:
.L_01F2:
.L_01F1:
.L_01F0:
.L_01EF:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HVARADDUNDECL
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01F8
mov dword ptr [ebp-4], 0
jmp .L_01DE
.L_01F8:
.L_01F7:
mov eax, dword ptr [_PARSER+152]
and eax, 4
test eax, eax
je .L_01FA
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
je .L_01FC
cmp dword ptr [_ENV+1084], 0
jne .L_01FE
push 0
push 1
push dword ptr [ebp-8]
push 11
call _ERRREPORTWARN
add esp, 16
.L_01FE:
.L_01FD:
.L_01FC:
.L_01FB:
.L_01FA:
.L_01F9:
.L_01EC:
.L_01EB:
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call __Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-4], eax
.L_01DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CWITHVARIABLE
_CWITHVARIABLE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0209:
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [_PARSER+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+52]
cmp dword ptr [eax+16], 0
je .L_020C
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.L_020C:
.L_020B:
push 0
mov eax, dword ptr [_PARSER+52]
push dword ptr [eax+16]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HIMPFIELD
add esp, 24
mov dword ptr [ebp-4], eax
.L_020A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARIABLE
_CVARIABLE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_020D:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0212
.L_0213:
cmp dword ptr [ebp-8], 2
jne .L_0211
.L_0212:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_020E
jmp .L_020F
.L_0211:
cmp dword ptr [_PARSER+52], 0
jne .L_0216
mov dword ptr [ebp-4], 0
jmp .L_020E
.L_0216:
.L_0215:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_0218
mov dword ptr [ebp-4], 0
jmp .L_020E
.L_0218:
.L_0217:
push dword ptr [ebp+12]
call _CWITHVARIABLE
add esp, 4
mov dword ptr [ebp-4], eax
.L_0214:
.L_020F:
.L_020E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CIMPLICITDATAMEMBER
_CIMPLICITDATAMEMBER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0219:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_021C
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
.L_021C:
.L_021B:
cmp dword ptr [ebp-8], 0
jne .L_021E
push 0
push 0
push 215
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_021A
.L_021E:
.L_021D:
cmp dword ptr [ebp+8], 0
jne .L_0220
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
.L_0220:
.L_021F:
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
push dword ptr [ebp-8]
call _HIMPFIELD
add esp, 24
mov dword ptr [ebp-4], eax
.L_021A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARORDEREF
_CVARORDEREF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0223:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_0226
mov eax, dword ptr [_PARSER+152]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [_PARSER+152], 4
jmp .L_0227
.L_0228:
and dword ptr [_PARSER+152], -5
.L_0227:
.L_0226:
.L_0225:
mov eax, dword ptr [_PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .L_022A
or dword ptr [_PARSER+152], 2
jmp .L_0229
.L_022A:
and dword ptr [_PARSER+152], -3
.L_0229:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .L_022C
or dword ptr [_PARSER+152], 2
jmp .L_022B
.L_022C:
and dword ptr [_PARSER+152], -3
.L_022B:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_022E
cmp dword ptr [ebp-8], 0
je .L_0230
or dword ptr [_PARSER+152], 4
jmp .L_022F
.L_0230:
and dword ptr [_PARSER+152], -5
.L_022F:
.L_022E:
.L_022D:
cmp dword ptr [ebp-16], 0
je .L_0232
mov eax, dword ptr [ebp+8]
and eax, 2
je .L_0234
push dword ptr [ebp-16]
call _ASTSKIPCASTS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_0233
.L_0234:
push dword ptr [ebp-16]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-20], eax
.L_0233:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .L_0236
.L_0238:
mov dword ptr [ebp-24], 0
jmp .L_0235
.L_0239:
mov ebx, dword ptr [ebp+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0235
.L_0236:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 16
ja .L_0235
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_023A+ebx*4-36]
_.L_023A:
.int .L_0239
.int .L_0235
.int .L_0235
.int .L_0235
.int .L_0235
.int .L_0235
.int .L_0235
.int .L_0235
.int .L_0238
.int .L_0238
.int .L_0238
.int .L_0238
.int .L_0235
.int .L_0235
.int .L_0235
.int .L_0235
.int .L_0239
.L_0235:
cmp dword ptr [ebp-24], 0
je .L_023C
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-16]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-16], 0
.L_023C:
.L_023B:
.L_0232:
.L_0231:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_0224:
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
_HINDEXEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0067:
push 0
call _CEXPRESSIONWITHNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006A
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_006A:
.L_0069:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKINTEGERINDEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_006D
mov dword ptr [ebp-8], 24
jmp .L_0240
.L_006D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.L_0240:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 8
jne .L_0071
.L_0072:
jmp .L_006F
.L_0071:
cmp dword ptr [ebp-12], 24
jne .L_0073
.L_0074:
push 0
push -1
push 151
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_006F
.L_0073:
push 0
push 0
push dword ptr [ebp+8]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_0077
push 0
push -1
push 151
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_0077:
.L_0076:
.L_0075:
.L_006F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CFIXEDSIZEARRAYINDEX:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0078:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.L_007A:
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp-16], ebx
jl .L_007E
push 0
push 0
push 36
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0079
.L_007E:
.L_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], ebx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], ebx
call _HINDEXEXPR
push eax
call _HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+172], 0
je .L_0080
push 0
push 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
call _ASTBUILDBOUNDCHK
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0082
push 0
push 0
push 92
call _ERRREPORT
add esp, 12
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0082:
.L_0081:
.L_0080:
.L_007F:
cmp dword ptr [ebp-8], 0
jne .L_0084
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0083
.L_0084:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebp-28]
sub ebx, dword ptr [ebp-24]
sbb eax, dword ptr [ebp-20]
add ebx, 1
adc eax, 0
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.L_0083:
.L_007C:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_007A
.L_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
cmp dword ptr [ebp-16], ebx
jge .L_0086
push 0
push 0
push 36
call _ERRREPORT
add esp, 12
.L_0086:
.L_0085:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDFIELD:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0087:
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTNEWFIELD
add esp, 8
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0088:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HFIELDACCESS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0089:
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
je .L_008C
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_PARSER+152]
and ebx, 4096
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_008E
cmp dword ptr [ebp+24], 0
je .L_0090
push 0
push 0
push 73
call _ERRREPORT
add esp, 12
.L_0090:
.L_008F:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
push eax
call _ASTNEWNIDXARRAY
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_008A
.L_008E:
.L_008D:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .L_0092
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_008A
.L_0092:
.L_0091:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0094
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-20], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 24
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
push ebx
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_0096
push 2
lea eax, [ebp+8]
push eax
call _ASTREMSIDEFX
add esp, 4
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.L_0096:
.L_0095:
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+12]
call _CDYNAMICARRAYINDEX
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 24
push dword ptr [ebp+8]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
and eax, 31
mov ebx, dword ptr [ebp+16]
and ebx, 480
add ebx, 64
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 261632
sal ebx, 2
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 32505856
or eax, ebx
push eax
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push 2
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0093
.L_0094:
push dword ptr [ebp+12]
call _CFIXEDSIZEARRAYINDEX
add esp, 4
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push dword ptr [eax+68]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
mov dword ptr [ebp+8], eax
.L_0093:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_0098
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
.L_0098:
.L_0097:
jmp .L_008B
.L_008C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
mov dword ptr [ebp+8], eax
.L_008B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMEMBERID:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
cmp dword ptr [ebp+8], 0
jne .L_009C
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_009A
.L_009C:
.L_009B:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_009E
.L_00A0:
jmp .L_009D
.L_00A1:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_009A
jmp .L_009D
.L_009E:
cmp dword ptr [ebp-20], 2
ja .L_00A1
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00A2+eax*4]
_.L_00A2:
.int .L_00A0
.int .L_00A0
.int .L_00A0
.L_009D:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 347
jne .L_00A5
.L_00A6:
push dword ptr [ebp+8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00A3
.L_00A5:
cmp dword ptr [ebp-20], 348
jne .L_00A7
.L_00A8:
push dword ptr [ebp+8]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-8], eax
.L_00A7:
.L_00A3:
cmp dword ptr [ebp-8], 0
je .L_00AA
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_009A
.L_00AA:
.L_00A9:
push -1
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AC
call _LEXGETTEXT
push eax
push 18
call _ERRREPORTUNDEF
add esp, 8
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_009A
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
jmp .L_00AE
.L_00B0:
push dword ptr [ebp-16]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00B2
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.L_00B2:
.L_00B1:
jmp .L_00AD
.L_00B3:
cmp dword ptr [ebp+12], 0
jne .L_00B5
call _LEXGETTEXT
push eax
push 18
call _ERRREPORTUNDEF
add esp, 8
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_009A
.L_00B5:
.L_00B4:
jmp .L_00AD
.L_00B6:
jmp .L_00AD
.L_00B7:
push 0
push 1
push 0
push offset _Lt_00B8
push 21
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
jmp .L_009A
jmp .L_00AD
.L_00AE:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 13
ja .L_00B7
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00B9+eax*4-4]
_.L_00B9:
.int .L_00B0
.int .L_00B0
.int .L_00B6
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B0
.int .L_00B3
.int .L_00B7
.int .L_00B0
.int .L_00B3
.int .L_00B3
.L_00AD:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSTRINDEXING:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
push dword ptr [ebp+12]
call _ASTUPDSTRCONCAT
add esp, 4
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .L_00FC
push 0
push -1
push 17
call _ERRREPORT
add esp, 12
.L_00FC:
.L_00FB:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00FD
mov dword ptr [ebp-8], 24
jmp .L_0243
.L_00FD:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0243:
cmp dword ptr [ebp-8], 17
jne .L_0100
push dword ptr [ebp+12]
call _ASTBUILDSTRPTR
add esp, 4
mov dword ptr [ebp+12], eax
jmp .L_00FF
.L_0100:
push dword ptr [ebp+12]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+12], eax
.L_00FF:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0101
mov dword ptr [ebp-12], 24
jmp .L_0244
.L_0101:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0244:
cmp dword ptr [ebp-12], 7
jne .L_0104
push 1
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
.L_0104:
.L_0103:
cmp dword ptr [_ENV+172], 0
je .L_0106
push dword ptr [ebp+12]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+12], eax
.L_0106:
.L_0105:
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0107
mov dword ptr [ebp-16], 24
jmp .L_0245
.L_0107:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0245:
cmp dword ptr [ebp-16], 7
jne .L_010A
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [_ENV+272]
and ebx, 511
or eax, ebx
mov dword ptr [ebp+8], eax
jmp .L_0109
.L_010A:
mov eax, dword ptr [ebp+8]
and eax, -512
or eax, 3
mov dword ptr [ebp+8], eax
.L_0109:
push 0
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMULTIDEREF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_010B:
mov dword ptr [ebp-8], 0
.L_010D:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 42
jne .L_010E
push 64
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-8]
jmp .L_010D
.L_010E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_CDYNAMICARRAYINDEX:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_017E:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.L_0180:
inc dword ptr [ebp-16]
mov ebx, dword ptr [_SYMB+99616]
mov eax, ebx
sar eax, 31
mov esi, dword ptr [ebp-16]
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [_SYMB+99620]
push dword ptr [edi+44]
push dword ptr [edi+40]
push ecx
push esi
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop esi
pop ecx
add esp, 8
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], eax
call _HINDEXEXPR
push eax
call _HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+172], 0
je .L_0184
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99628]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99624]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
call _ASTBUILDBOUNDCHK
add esp, 12
mov dword ptr [ebp-12], eax
.L_0184:
.L_0183:
cmp dword ptr [ebp-8], 0
jne .L_0186
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0185
.L_0186:
push 1
push 0
push 0
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.L_0185:
.L_0182:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_0180
.L_0181:
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_0188
mov ebx, dword ptr [ebp-16]
inc ebx
push ebx
push dword ptr [ebp+8]
call _SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 8
.L_0188:
.L_0187:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_017F:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARADDUNDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.L_0189:
lea eax, [ebp-24]
mov dword ptr [ebp-60], eax
lea eax, [ebp-24]
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], 16
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 1
mov dword ptr [ebp-40], 49
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .L_018D
mov dword ptr [ebp-64], 2
jmp .L_018C
.L_018D:
mov dword ptr [ebp-64], 0
lea ebx, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], ebx
je .L_018F
mov ebx, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], ebx
jne .L_0191
mov ebx, dword ptr [ebp-64]
and ebx, 57
test ebx, ebx
jne .L_0193
or dword ptr [ebp-64], 2
.L_0193:
.L_0192:
.L_0191:
.L_0190:
.L_018F:
.L_018E:
.L_018C:
cmp dword ptr [ebp+12], -2147483648
jne .L_0195
push dword ptr [ebp+8]
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp+12], eax
jmp .L_0194
.L_0195:
or dword ptr [ebp-64], 1048576
.L_0194:
mov dword ptr [ebp-68], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
je .L_0197
mov eax, dword ptr [_PARSER+152]
and eax, 8
test eax, eax
jne .L_0199
or dword ptr [ebp-68], 2
.L_0199:
.L_0198:
jmp .L_0196
.L_0197:
or dword ptr [ebp-68], 2
.L_0196:
push dword ptr [ebp-68]
push dword ptr [ebp-64]
lea eax, [ebp-60]
push eax
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_019B
push 0
push 1
push 0
push dword ptr [ebp+8]
push 4
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp-68]
push dword ptr [ebp-64]
lea eax, [ebp-60]
push eax
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
call _SYMBUNIQUELABEL
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
jmp .L_019A
.L_019B:
push -1
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-68]
and eax, 2
test eax, eax
je .L_019D
push dword ptr [ebp-72]
call _ASTADDUNSCOPED
add esp, 4
jmp .L_019C
.L_019D:
push dword ptr [ebp-72]
call _ASTADD
add esp, 4
.L_019C:
.L_019A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_018A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAKEARRAYIDX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_01A1
mov eax, dword ptr [_SYMB+99604]
mov ebx, eax
sar ebx, 31
push ebx
push eax
push 0
push 8
push 0
push 8
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_019F
.L_01A1:
.L_01A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_01A3
push 0
push 8
mov eax, dword ptr [_SYMB+99604]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_019F
.L_01A3:
.L_01A2:
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+4]
push dword ptr [ebx]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_019F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HIMPFIELD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01FF:
cmp dword ptr [ebp+24], 0
je .L_0202
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_0201
.L_0202:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
.L_0201:
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0204
mov dword ptr [ebp-4], 0
jmp .L_0200
.L_0204:
.L_0203:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_0206
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0200
.L_0206:
.L_0205:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0208
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_0208:
.L_0207:
push dword ptr [ebp+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_0200:
mov eax, dword ptr [ebp-4]
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
_Lt_00B8:	.ascii	"HMEMBERID\0"
.balign 4
_Lt_00DB:	.ascii	"CUDTMEMBER\0"
