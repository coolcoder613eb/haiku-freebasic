	.intel_syntax noprefix

.section .text
.balign 16

.globl CUDTMEMBER
CUDTMEMBER:
.type CUDTMEMBER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00B9:
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp+8]
and eax, 261632
mov dword ptr [ebp-12], eax
.L_00BB:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HMEMBERID
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00BF
mov dword ptr [ebp-4], 0
jmp .L_00BA
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_00C1
.L_00C3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTBUILDCONST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BA
jmp .L_00C0
.L_00C4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp+16], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
je .L_00C6
mov dword ptr [ebp-4], 0
jmp .L_00BA
.L_00C6:
.L_00C5:
jmp .L_00C0
.L_00C7:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
or ebx, dword ptr [eax+28]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jne .L_00C9
sub esp, 12
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+16], eax
.L_00C9:
.L_00C8:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call HFIELDACCESS
add esp, 32
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 0
mov ebx, eax
call LEXGETTOKEN
add esp, 16
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
je .L_00CB
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .L_00BA
.L_00CB:
.L_00CA:
mov dword ptr [ebp-8], 0
jmp .L_00C0
.L_00CC:
sub esp, 12
push dword ptr [ebp+16]
call ASTDELTREE
add esp, 16
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp-16]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 16
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
je .L_00CD
mov dword ptr [ebp-24], 24
jmp .L_00DC
.L_00CD:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_00DC:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 20
jne .L_00D1
.L_00D2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
je .L_00D4
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_00BA
.L_00D4:
.L_00D3:
jmp .L_00CF
.L_00D1:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_00BA
.L_00D5:
.L_00CF:
mov dword ptr [ebp-8], 0
jmp .L_00C0
.L_00D6:
cmp dword ptr [ebp-8], 0
je .L_00D8
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp+16], eax
.L_00D8:
.L_00D7:
sub esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call CMETHODCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BA
jmp .L_00C0
.L_00D9:
sub esp, 12
push 0
push 1
push 0
push offset Lt_00DA
push 21
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-4], 0
jmp .L_00BA
jmp .L_00C0
.L_00C1:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 11
ja .L_00D9
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00DB+eax*4-4]
.L_00DB:
.int .L_00CC
.int .L_00C3
.int .L_00D6
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00C4
.int .L_00D9
.int .L_00D9
.int .L_00C7
.L_00C0:
sub esp, 12
push 2112
call LEXSKIPTOKEN
add esp, 16
.L_00BD:
jmp .L_00BB
.L_00BC:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_00BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CUDTMEMBER, .-CUDTMEMBER
.cfi_endproc
.balign 16

.globl CUDTTYPEMEMBER
CUDTTYPEMEMBER:
.type CUDTTYPEMEMBER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_00E0:
.L_00E2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_00E3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
cmp ebx, 20
je .L_00E5
jmp .L_00E3
.L_00E5:
.L_00E4:
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call HMEMBERID
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00E7
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 10
jne .L_00E9
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx], eax
jmp .L_00E8
.L_00E9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
.L_00E8:
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
jne .L_00EB
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 7
je .L_00EF
.L_00F0:
cmp dword ptr [ebp-8], 4
je .L_00EF
.L_00F1:
cmp dword ptr [ebp-8], 17
je .L_00EF
.L_00F2:
cmp dword ptr [ebp-8], 18
jne .L_00EE
.L_00EF:
mov esi, dword ptr [ebp+20]
mov dword ptr [esi], -1
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+56]
mov esi, dword ptr [ebp+16]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [esi], eax
mov dword ptr [esi+4], ebx
jmp .L_00E3
.L_00EE:
.L_00EC:
.L_00EB:
.L_00EA:
jmp .L_00E6
.L_00E7:
jmp .L_00E3
.L_00E6:
jmp .L_00E2
.L_00E3:
.L_00E1:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CUDTTYPEMEMBER, .-CUDTTYPEMEMBER
.cfi_endproc
.balign 16

.globl CMEMBERACCESS
CMEMBERACCESS:
.type CMEMBERACCESS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F4:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 9
jne .L_00F7
sub esp, 12
push dword ptr [ebp+16]
call ASTBUILDCALLRESULTUDT
add esp, 16
mov dword ptr [ebp+16], eax
.L_00F7:
.L_00F6:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 12
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTMEMBER
add esp, 32
mov dword ptr [ebp-4], eax
.L_00F5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMEMBERACCESS, .-CMEMBERACCESS
.cfi_endproc
.balign 16

.globl CMEMBERDEREF
CMEMBERDEREF:
.type CMEMBERDEREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_010E:
mov dword ptr [ebp-4], 0
.L_0110:
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 400
jne .L_0115
.L_0116:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0118
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
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
je .L_011C
.L_011D:
cmp dword ptr [ebp-28], 23
jne .L_011B
.L_011C:
sub esp, 4
push 0
push -1
push 71
call ERRREPORT
add esp, 16
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .L_0119
.L_011B:
cmp dword ptr [ebp-28], 20
jne .L_011E
.L_011F:
jmp .L_0119
.L_011E:
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.L_0120:
.L_0119:
cmp dword ptr [ENV+176], 0
je .L_0122
sub esp, 12
push dword ptr [ebp+16]
call ASTBUILDPTRCHK
add esp, 16
mov dword ptr [ebp+16], eax
.L_0122:
.L_0121:
call HMULTIDEREF
add dword ptr [ebp-8], eax
sub esp, 12
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTMEMBER
add esp, 32
mov dword ptr [ebp+16], eax
jmp .L_0117
.L_0118:
cmp dword ptr [SYMB+99428], 0
jne .L_0124
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
jmp .L_0111
.L_0124:
.L_0123:
sub esp, 4
lea eax, [ebp-32]
push eax
push dword ptr [ebp+16]
push 77
call SYMBFINDUOPOVLPROC
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0126
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
jmp .L_0111
.L_0126:
.L_0125:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-28]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0128
jmp .L_010F
.L_0128:
.L_0127:
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
call HMULTIDEREF
add dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call CMEMBERACCESS
add esp, 16
mov dword ptr [ebp+16], eax
.L_0117:
cmp dword ptr [ebp+16], 0
jne .L_012A
jmp .L_010F
.L_012A:
.L_0129:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .L_012C
cmp dword ptr [ebp-8], 0
jle .L_012E
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
.L_012E:
.L_012D:
jmp .L_0111
.L_012C:
.L_012B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jle .L_0130
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0132
jmp .L_010F
.L_0132:
.L_0131:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
.L_0130:
.L_012F:
jmp .L_0113
.L_0115:
cmp dword ptr [ebp-24], 91
jne .L_0133
.L_0134:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call HINDEXEXPR
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 93
je .L_0136
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 93
call HSKIPUNTIL
add esp, 16
jmp .L_0135
.L_0136:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0135:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .L_013A
.L_013B:
cmp dword ptr [ebp-28], 18
je .L_013A
.L_013C:
cmp dword ptr [ebp-28], 4
je .L_013A
.L_013D:
cmp dword ptr [ebp-28], 7
jne .L_0139
.L_013A:
sub esp, 4
sub esp, 8
push dword ptr [ebp-20]
call HCHECKINTEGERINDEX
add esp, 12
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSTRINDEXING
add esp, 16
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .L_0137
.L_0139:
cmp dword ptr [ebp-28], 20
jne .L_013E
.L_013F:
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push 23
call SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0141
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push dword ptr [ebp-36]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0143
jmp .L_010F
.L_0143:
.L_0142:
jmp .L_0140
.L_0141:
cmp dword ptr [ebp-32], 0
jne .L_0145
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
.L_0145:
.L_0144:
.L_0140:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_0147
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_0149
sub esp, 4
push 0
push -1
push 265
call ERRREPORT
add esp, 16
jmp .L_010F
.L_0149:
.L_0148:
sub esp, 4
push dword ptr [ebp+16]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+4]
call CMEMBERACCESS
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_014B
jmp .L_010F
.L_014B:
.L_014A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .L_014D
jmp .L_0111
.L_014D:
.L_014C:
.L_0147:
.L_0146:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .L_0137
.L_013E:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0152
.L_0153:
cmp dword ptr [ebp-32], 23
jne .L_0151
.L_0152:
sub esp, 4
push 0
push -1
push 71
call ERRREPORT
add esp, 16
mov dword ptr [ebp+8], 40
mov dword ptr [ebp+12], 0
jmp .L_014F
.L_0151:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
jne .L_0156
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
jmp .L_0111
.L_0156:
.L_0155:
.L_0154:
.L_014F:
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
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .L_0158
cmp dword ptr [ebp-16], 0
jne .L_0158
.L_0168:
sub esp, 4
push 0
push -1
push 71
call ERRREPORT
add esp, 16
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
mov edx, dword ptr [SYMB_DTYPETB+228]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], eax
.L_0158:
.L_0157:
sub esp, 12
push dword ptr [ebp-20]
call HCHECKINTEGERINDEX
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ENV+176], 0
je .L_015A
sub esp, 12
push dword ptr [ebp+16]
call ASTBUILDPTRCHK
add esp, 16
mov dword ptr [ebp+16], eax
.L_015A:
.L_0159:
sub esp, 12
push 1
push 0
sub esp, 8
push 1
push 0
sub esp, 12
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-20]
push 30
call ASTNEWBOP
add esp, 28
push eax
push dword ptr [ebp+16]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+16], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_015C
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
je .L_015E
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_0111
.L_015E:
.L_015D:
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTMEMBER
add esp, 32
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0160
jmp .L_010F
.L_0160:
.L_015F:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .L_0162
jmp .L_0111
.L_0162:
.L_0161:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
mov dword ptr [ebp+8], edx
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov dword ptr [ebp+12], eax
jmp .L_015B
.L_015C:
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp+16], eax
.L_015B:
.L_014E:
.L_0137:
jmp .L_0113
.L_0133:
cmp dword ptr [ebp-24], 46
jne .L_0163
.L_0164:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0166
sub esp, 4
push 0
push -1
push 265
call ERRREPORT
add esp, 16
.L_0166:
.L_0165:
jmp .L_0111
jmp .L_0113
.L_0163:
jmp .L_0111
.L_0167:
.L_0113:
.L_0112:
jmp .L_0110
.L_0111:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMEMBERDEREF, .-CMEMBERDEREF
.cfi_endproc
.balign 16

.globl CFUNCPTRORMEMBERDEREF
CFUNCPTRORMEMBERDEREF:
.type CFUNCPTRORMEMBERDEREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0169:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .L_016C
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_016E
jmp .L_016A
.L_016E:
.L_016D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0170
cmp dword ptr [ebp+8], 54
jne .L_0172
mov dword ptr [ebp+20], -1
.L_0172:
.L_0171:
.L_0170:
.L_016F:
.L_016C:
.L_016B:
cmp dword ptr [ebp+20], 0
jne .L_0174
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_016A
.L_0174:
.L_0173:
cmp dword ptr [ENV+176], 0
je .L_0176
sub esp, 12
push dword ptr [ebp+16]
call ASTBUILDPTRCHK
add esp, 16
mov dword ptr [ebp+16], eax
.L_0176:
.L_0175:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0178
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call CFUNCTIONCALL
add esp, 32
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_017A
jmp .L_016A
.L_017A:
.L_0179:
jmp .L_0177
.L_0178:
mov eax, dword ptr [PARSER+152]
and eax, 4
test eax, eax
jne .L_017C
sub esp, 8
push 0
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call CPROCCALL
add esp, 32
mov dword ptr [ebp+16], eax
jmp .L_017B
.L_017C:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
.L_017B:
.L_0177:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_016A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CFUNCPTRORMEMBERDEREF, .-CFUNCPTRORMEMBERDEREF
.cfi_endproc
.balign 16

.globl _Z11CVARIABLEEXP8FBSYMBOLl
_Z11CVARIABLEEXP8FBSYMBOLl:
.type _Z11CVARIABLEEXP8FBSYMBOLl, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_01A3:
mov dword ptr [ebp-4], 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_01A6
sub esp, 4
push 0
push 0
push 202
call ERRREPORT
add esp, 16
.L_01A6:
.L_01A5:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
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
sub esp, 12
push dword ptr [ebp+8]
call SYMBISARRAY
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-36], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [PARSER+152]
and ebx, 4096
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01A8
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
je .L_01AA
cmp dword ptr [ebp-28], 0
je .L_01AC
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_01AE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
je .L_01B0
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
push 52
push dword ptr [ebp-16]
call ASTSETTYPE
add esp, 16
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-16], eax
jmp .L_01AF
.L_01B0:
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
.L_01AF:
sub esp, 8
sub esp, 4
push dword ptr [ebp-16]
call ASTCLONETREE
add esp, 8
push eax
push dword ptr [ebp+8]
call CDYNAMICARRAYINDEX
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push 1
push 0
sub esp, 4
push 0
push 0
push 8
mov ebx, dword ptr [SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp-16]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 28
push eax
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
jmp .L_01AD
.L_01AE:
sub esp, 12
push dword ptr [ebp+8]
call CFIXEDSIZEARRAYINDEX
add esp, 16
mov dword ptr [ebp-12], eax
.L_01AD:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .L_01B2
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
.L_01B2:
.L_01B1:
jmp .L_01AB
.L_01AC:
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
je .L_01B4
sub esp, 4
push 0
push -1
push 72
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
.L_01B4:
.L_01B3:
.L_01AB:
jmp .L_01A9
.L_01AA:
cmp dword ptr [ebp-28], 0
je .L_01B6
mov dword ptr [ebp-32], 0
.L_01B6:
.L_01B5:
.L_01A9:
jmp .L_01A7
.L_01A8:
cmp dword ptr [ebp-28], 0
je .L_01B8
cmp dword ptr [ebp+12], 0
je .L_01BA
sub esp, 4
push 0
push -1
push 73
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HMAKEARRAYIDX
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_01B9
.L_01BA:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], -1
.L_01B9:
.L_01B8:
.L_01B7:
.L_01A7:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_01BC
cmp dword ptr [ebp-20], 0
je .L_01BE
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_01BD
.L_01BE:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWIDX
add esp, 16
mov dword ptr [ebp-8], eax
.L_01BD:
.L_01BC:
.L_01BB:
cmp dword ptr [ebp-20], 0
je .L_01C0
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-8], eax
.L_01C0:
.L_01BF:
cmp dword ptr [ebp-24], 0
jne .L_01C2
cmp dword ptr [ebp-32], 0
je .L_01C4
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_01C6
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_01C8
sub esp, 4
push 0
push -1
push 265
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01A4
.L_01C8:
.L_01C7:
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
push dword ptr [ebp+12]
sub esp, 8
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 12
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call CUDTMEMBER
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01CA
jmp .L_01A4
.L_01CA:
.L_01C9:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_01CC
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A4
.L_01CC:
.L_01CB:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_01CE
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 54
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
.L_01CE:
.L_01CD:
.L_01C6:
.L_01C5:
.L_01C4:
.L_01C3:
.L_01C2:
.L_01C1:
cmp dword ptr [ebp-32], 0
je .L_01D0
sub esp, 12
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call CFUNCPTRORMEMBERDEREF
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_01CF
.L_01D0:
cmp dword ptr [ebp-36], 0
je .L_01D2
sub esp, 12
push dword ptr [ebp-8]
call ASTNEWNIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
.L_01D2:
.L_01D1:
.L_01CF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _Z11CVARIABLEEXP8FBSYMBOLl, .-_Z11CVARIABLEEXP8FBSYMBOLl
.cfi_endproc
.balign 16

.globl _Z11CVARIABLEEXP10FBSYMCHAINl
_Z11CVARIABLEEXP10FBSYMCHAINl:
.type _Z11CVARIABLEEXP10FBSYMCHAINl, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01DC:
call LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ENV+136], 3
jne .L_01DF
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 1
jne .L_01E1
cmp dword ptr [ebp-12], -2147483648
jne .L_01E3
mov dword ptr [ebp-4], 0
jmp .L_01DD
.L_01E3:
.L_01E2:
.L_01E1:
.L_01E0:
.L_01DF:
.L_01DE:
mov eax, dword ptr [ENV+1040]
and eax, 8388608
test eax, eax
je .L_01E5
cmp dword ptr [ebp-12], -2147483648
jne .L_01E7
sub esp, 8
sub esp, 4
push dword ptr [ebp-8]
call SYMBGETDEFTYPE
add esp, 8
push eax
push dword ptr [ebp+8]
call SYMBFINDVARBYDEFTYPE
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_01E6
.L_01E7:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call SYMBFINDVARBYSUFFIX
add esp, 16
mov dword ptr [ebp-16], eax
.L_01E6:
jmp .L_01E4
.L_01E5:
cmp dword ptr [ebp-12], -2147483648
je .L_01E9
sub esp, 12
push 4096
call LEXCHECKTOKEN
add esp, 16
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
.L_01E9:
.L_01E8:
sub esp, 8
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-16], eax
.L_01E4:
cmp dword ptr [ebp-16], 0
jne .L_01EB
cmp dword ptr [ENV+1084], 0
je .L_01ED
sub esp, 8
push dword ptr [ebp-8]
push 42
call ERRREPORTUNDEF
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_01DD
.L_01ED:
.L_01EC:
cmp dword ptr [ebp+8], 0
je .L_01EF
mov eax, dword ptr [ENV+1040]
and eax, 8388608
test eax, eax
je .L_01F1
sub esp, 8
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_01F3
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [SYMB+98528]
cmp dword ptr [ebx], eax
je .L_01F5
sub esp, 4
push 0
push 0
push 131
call ERRREPORT
add esp, 16
.L_01F5:
.L_01F4:
.L_01F3:
.L_01F2:
.L_01F1:
.L_01F0:
.L_01EF:
.L_01EE:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HVARADDUNDECL
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01F7
mov dword ptr [ebp-4], 0
jmp .L_01DD
.L_01F7:
.L_01F6:
mov eax, dword ptr [PARSER+152]
and eax, 4
test eax, eax
je .L_01F9
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
je .L_01FB
cmp dword ptr [ENV+1084], 0
jne .L_01FD
push 0
push 1
push dword ptr [ebp-8]
push 11
call ERRREPORTWARN
add esp, 16
.L_01FD:
.L_01FC:
.L_01FB:
.L_01FA:
.L_01F9:
.L_01F8:
.L_01EB:
.L_01EA:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 16
mov dword ptr [ebp-4], eax
.L_01DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _Z11CVARIABLEEXP10FBSYMCHAINl, .-_Z11CVARIABLEEXP10FBSYMCHAINl
.cfi_endproc
.balign 16

.globl CWITHVARIABLE
CWITHVARIABLE:
.type CWITHVARIABLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0208:
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+52]
cmp dword ptr [eax+16], 0
je .L_020B
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
.L_020B:
.L_020A:
sub esp, 8
push 0
mov eax, dword ptr [PARSER+52]
push dword ptr [eax+16]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HIMPFIELD
add esp, 32
mov dword ptr [ebp-4], eax
.L_0209:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CWITHVARIABLE, .-CWITHVARIABLE
.cfi_endproc
.balign 16

.globl CVARIABLE
CVARIABLE:
.type CVARIABLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_020C:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0211
.L_0212:
cmp dword ptr [ebp-8], 2
jne .L_0210
.L_0211:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_020D
jmp .L_020E
.L_0210:
cmp dword ptr [PARSER+52], 0
jne .L_0215
mov dword ptr [ebp-4], 0
jmp .L_020D
.L_0215:
.L_0214:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
je .L_0217
mov dword ptr [ebp-4], 0
jmp .L_020D
.L_0217:
.L_0216:
sub esp, 12
push dword ptr [ebp+12]
call CWITHVARIABLE
add esp, 16
mov dword ptr [ebp-4], eax
.L_0213:
.L_020E:
.L_020D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CVARIABLE, .-CVARIABLE
.cfi_endproc
.balign 16

.globl CIMPLICITDATAMEMBER
CIMPLICITDATAMEMBER:
.type CIMPLICITDATAMEMBER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0218:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [PARSER+108]
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
je .L_021B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
.L_021B:
.L_021A:
cmp dword ptr [ebp-8], 0
jne .L_021D
sub esp, 4
push 0
push 0
push 215
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0219
.L_021D:
.L_021C:
cmp dword ptr [ebp+8], 0
jne .L_021F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
.L_021F:
.L_021E:
sub esp, 8
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
push dword ptr [ebp-8]
call HIMPFIELD
add esp, 32
mov dword ptr [ebp-4], eax
.L_0219:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CIMPLICITDATAMEMBER, .-CIMPLICITDATAMEMBER
.cfi_endproc
.balign 16

.globl CVARORDEREF
CVARORDEREF:
.type CVARORDEREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0222:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_0225
mov eax, dword ptr [PARSER+152]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [PARSER+152], 4
jmp .L_0226
.L_0227:
and dword ptr [PARSER+152], -5
.L_0226:
.L_0225:
.L_0224:
mov eax, dword ptr [PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .L_0229
or dword ptr [PARSER+152], 2
jmp .L_0228
.L_0229:
and dword ptr [PARSER+152], -3
.L_0228:
sub esp, 8
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .L_022B
or dword ptr [PARSER+152], 2
jmp .L_022A
.L_022B:
and dword ptr [PARSER+152], -3
.L_022A:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_022D
cmp dword ptr [ebp-8], 0
je .L_022F
or dword ptr [PARSER+152], 4
jmp .L_022E
.L_022F:
and dword ptr [PARSER+152], -5
.L_022E:
.L_022D:
.L_022C:
cmp dword ptr [ebp-16], 0
je .L_0231
mov eax, dword ptr [ebp+8]
and eax, 2
je .L_0233
sub esp, 12
push dword ptr [ebp-16]
call ASTSKIPCASTS
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_0232
.L_0233:
sub esp, 12
push dword ptr [ebp-16]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-20], eax
.L_0232:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .L_0235
.L_0237:
mov dword ptr [ebp-24], 0
jmp .L_0234
.L_0238:
mov ebx, dword ptr [ebp+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0234
.L_0235:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 16
ja .L_0234
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_0239+ebx*4-36]
.L_0239:
.int .L_0238
.int .L_0234
.int .L_0234
.int .L_0234
.int .L_0234
.int .L_0234
.int .L_0234
.int .L_0234
.int .L_0237
.int .L_0237
.int .L_0237
.int .L_0237
.int .L_0234
.int .L_0234
.int .L_0234
.int .L_0234
.int .L_0238
.L_0234:
cmp dword ptr [ebp-24], 0
je .L_023B
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-16], 0
.L_023B:
.L_023A:
.L_0231:
.L_0230:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_0223:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CVARORDEREF, .-CVARORDEREF
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
HINDEXEXPR:
.type HINDEXEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0066:
sub esp, 12
push 0
call CEXPRESSIONWITHNIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0069
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0069:
.L_0068:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HINDEXEXPR, .-HINDEXEXPR
.cfi_endproc
.balign 16
HCHECKINTEGERINDEX:
.type HCHECKINTEGERINDEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_006A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_006C
mov dword ptr [ebp-8], 24
jmp .L_023F
.L_006C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.L_023F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 8
jne .L_0070
.L_0071:
jmp .L_006E
.L_0070:
cmp dword ptr [ebp-12], 24
jne .L_0072
.L_0073:
sub esp, 4
push 0
push -1
push 151
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_006E
.L_0072:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_0076
sub esp, 4
push 0
push -1
push 151
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_0076:
.L_0075:
.L_0074:
.L_006E:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKINTEGERINDEX, .-HCHECKINTEGERINDEX
.cfi_endproc
.balign 16
CFIXEDSIZEARRAYINDEX:
.type CFIXEDSIZEARRAYINDEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0077:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.L_0079:
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp-16], ebx
jl .L_007D
sub esp, 4
push 0
push 0
push 36
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0078
.L_007D:
.L_007C:
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
sub esp, 12
sub esp, 4
call HINDEXEXPR
add esp, 4
push eax
call HCHECKINTEGERINDEX
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ENV+172], 0
je .L_007F
sub esp, 4
sub esp, 12
push 0
push 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 8
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTBUILDBOUNDCHK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0081
sub esp, 4
push 0
push 0
push 92
call ERRREPORT
add esp, 16
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0081:
.L_0080:
.L_007F:
.L_007E:
cmp dword ptr [ebp-8], 0
jne .L_0083
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0082
.L_0083:
sub esp, 12
push 1
push 0
sub esp, 12
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
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
.L_0082:
.L_007B:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_0079
.L_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
cmp dword ptr [ebp-16], ebx
jge .L_0085
sub esp, 4
push 0
push 0
push 36
call ERRREPORT
add esp, 16
.L_0085:
.L_0084:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0078:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CFIXEDSIZEARRAYINDEX, .-CFIXEDSIZEARRAYINDEX
.cfi_endproc
.balign 16
HBUILDFIELD:
.type HBUILDFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0086:
sub esp, 12
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTNEWFIELD
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0087:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBUILDFIELD, .-HBUILDFIELD
.cfi_endproc
.balign 16
HFIELDACCESS:
.type HFIELDACCESS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0088:
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
je .L_008B
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [PARSER+152]
and ebx, 4096
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_008D
cmp dword ptr [ebp+24], 0
je .L_008F
sub esp, 4
push 0
push 0
push 73
call ERRREPORT
add esp, 16
.L_008F:
.L_008E:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 20
push eax
call ASTNEWNIDXARRAY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_008D:
.L_008C:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .L_0091
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_0091:
.L_0090:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0093
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-20], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
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
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-16], 0
sub esp, 12
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_0095
sub esp, 4
push 2
sub esp, 4
lea eax, [ebp+8]
push eax
call ASTREMSIDEFX
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
.L_0095:
.L_0094:
sub esp, 8
sub esp, 4
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call ASTNEWDEREF
add esp, 24
push eax
push dword ptr [ebp+12]
call CDYNAMICARRAYINDEX
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov ebx, dword ptr [SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
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
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 4
push 2
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_0092
.L_0093:
sub esp, 12
push dword ptr [ebp+12]
call CFIXEDSIZEARRAYINDEX
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push dword ptr [eax+68]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 32
mov dword ptr [ebp+8], eax
.L_0092:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .L_0097
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
.L_0097:
.L_0096:
jmp .L_008A
.L_008B:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 32
mov dword ptr [ebp+8], eax
.L_008A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0089:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFIELDACCESS, .-HFIELDACCESS
.cfi_endproc
.balign 16
HMEMBERID:
.type HMEMBERID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0098:
cmp dword ptr [ebp+8], 0
jne .L_009B
sub esp, 4
push 0
push -1
push 265
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0099
.L_009B:
.L_009A:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_009D
.L_009F:
jmp .L_009C
.L_00A0:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0099
jmp .L_009C
.L_009D:
cmp dword ptr [ebp-20], 2
ja .L_00A0
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00A1+eax*4]
.L_00A1:
.int .L_009F
.int .L_009F
.int .L_009F
.L_009C:
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 347
jne .L_00A4
.L_00A5:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETCOMPCTORHEAD
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00A2
.L_00A4:
cmp dword ptr [ebp-20], 348
jne .L_00A6
.L_00A7:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETCOMPDTOR1
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A6:
.L_00A2:
cmp dword ptr [ebp-8], 0
je .L_00A9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_00A9:
.L_00A8:
push -1
push 0
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AB
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push 18
call ERRREPORTUNDEF
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0099
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
jmp .L_00AD
.L_00AF:
sub esp, 12
push dword ptr [ebp-16]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_00B1
sub esp, 4
push 0
push 0
push 202
call ERRREPORT
add esp, 16
.L_00B1:
.L_00B0:
jmp .L_00AC
.L_00B2:
cmp dword ptr [ebp+12], 0
jne .L_00B4
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push 18
call ERRREPORTUNDEF
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0099
.L_00B4:
.L_00B3:
jmp .L_00AC
.L_00B5:
jmp .L_00AC
.L_00B6:
sub esp, 12
push 0
push 1
push 0
push offset Lt_00B7
push 21
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-4], 0
jmp .L_0099
jmp .L_00AC
.L_00AD:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 13
ja .L_00B6
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00B8+eax*4-4]
.L_00B8:
.int .L_00AF
.int .L_00AF
.int .L_00B5
.int .L_00B6
.int .L_00B6
.int .L_00B6
.int .L_00B6
.int .L_00B6
.int .L_00AF
.int .L_00B2
.int .L_00B6
.int .L_00AF
.int .L_00B2
.int .L_00B2
.L_00AC:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMEMBERID, .-HMEMBERID
.cfi_endproc
.balign 16
HSTRINDEXING:
.type HSTRINDEXING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00F8:
sub esp, 12
push dword ptr [ebp+12]
call ASTUPDSTRCONCAT
add esp, 16
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .L_00FB
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
.L_00FB:
.L_00FA:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00FC
mov dword ptr [ebp-8], 24
jmp .L_0242
.L_00FC:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0242:
cmp dword ptr [ebp-8], 17
jne .L_00FF
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDSTRPTR
add esp, 16
mov dword ptr [ebp+12], eax
jmp .L_00FE
.L_00FF:
sub esp, 12
push dword ptr [ebp+12]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+12], eax
.L_00FE:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0100
mov dword ptr [ebp-12], 24
jmp .L_0243
.L_0100:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0243:
cmp dword ptr [ebp-12], 7
jne .L_0103
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+16]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+16], eax
.L_0103:
.L_0102:
cmp dword ptr [ENV+172], 0
je .L_0105
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDPTRCHK
add esp, 16
mov dword ptr [ebp+12], eax
.L_0105:
.L_0104:
sub esp, 12
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0106
mov dword ptr [ebp-16], 24
jmp .L_0244
.L_0106:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0244:
cmp dword ptr [ebp-16], 7
jne .L_0109
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ENV+272]
and ebx, 511
or eax, ebx
mov dword ptr [ebp+8], eax
jmp .L_0108
.L_0109:
mov eax, dword ptr [ebp+8]
and eax, -512
or eax, 3
mov dword ptr [ebp+8], eax
.L_0108:
sub esp, 12
push 0
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
.L_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTRINDEXING, .-HSTRINDEXING
.cfi_endproc
.balign 16
HMULTIDEREF:
.type HMULTIDEREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_010A:
mov dword ptr [ebp-8], 0
.L_010C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 42
jne .L_010D
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [ebp-8]
jmp .L_010C
.L_010D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMULTIDEREF, .-HMULTIDEREF
.cfi_endproc
.balign 16
CDYNAMICARRAYINDEX:
.type CDYNAMICARRAYINDEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 28
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_017D:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.L_017F:
inc dword ptr [ebp-16]
mov ebx, dword ptr [SYMB+99616]
mov eax, ebx
sar eax, 31
mov esi, dword ptr [ebp-16]
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [SYMB+99620]
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
sub esp, 12
sub esp, 4
call HINDEXEXPR
add esp, 4
push eax
call HCHECKINTEGERINDEX
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ENV+172], 0
je .L_0183
sub esp, 4
sub esp, 4
push 0
push 0
push 8
mov ebx, dword ptr [SYMB+99628]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 28
push eax
push 0
push 0
push 8
mov ebx, dword ptr [SYMB+99624]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTBUILDBOUNDCHK
add esp, 16
mov dword ptr [ebp-12], eax
.L_0183:
.L_0182:
cmp dword ptr [ebp-8], 0
jne .L_0185
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0184
.L_0185:
sub esp, 12
push 1
push 0
sub esp, 4
push 0
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 28
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
.L_0184:
.L_0181:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_017F
.L_0180:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_0187
sub esp, 8
mov ebx, dword ptr [ebp-16]
inc ebx
push ebx
push dword ptr [ebp+8]
call SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 16
.L_0187:
.L_0186:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_017E:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CDYNAMICARRAYINDEX, .-CDYNAMICARRAYINDEX
.cfi_endproc
.balign 16
HVARADDUNDECL:
.type HVARADDUNDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_0188:
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
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .L_018C
mov dword ptr [ebp-64], 2
jmp .L_018B
.L_018C:
mov dword ptr [ebp-64], 0
lea ebx, [SYMB+98352]
cmp dword ptr [SYMB+98528], ebx
je .L_018E
mov ebx, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], ebx
jne .L_0190
mov ebx, dword ptr [ebp-64]
and ebx, 57
test ebx, ebx
jne .L_0192
or dword ptr [ebp-64], 2
.L_0192:
.L_0191:
.L_0190:
.L_018F:
.L_018E:
.L_018D:
.L_018B:
cmp dword ptr [ebp+12], -2147483648
jne .L_0194
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp+12], eax
jmp .L_0193
.L_0194:
or dword ptr [ebp-64], 1048576
.L_0193:
mov dword ptr [ebp-68], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
je .L_0196
mov eax, dword ptr [PARSER+152]
and eax, 8
test eax, eax
jne .L_0198
or dword ptr [ebp-68], 2
.L_0198:
.L_0197:
jmp .L_0195
.L_0196:
or dword ptr [ebp-68], 2
.L_0195:
sub esp, 8
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
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_019A
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+8]
push 4
call ERRREPORTEX
add esp, 32
sub esp, 8
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
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-8], eax
jmp .L_0199
.L_019A:
sub esp, 8
push -1
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-68]
and eax, 2
test eax, eax
je .L_019C
sub esp, 12
push dword ptr [ebp-72]
call ASTADDUNSCOPED
add esp, 16
jmp .L_019B
.L_019C:
sub esp, 12
push dword ptr [ebp-72]
call ASTADD
add esp, 16
.L_019B:
.L_0199:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0189:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HVARADDUNDECL, .-HVARADDUNDECL
.cfi_endproc
.balign 16
HMAKEARRAYIDX:
.type HMAKEARRAYIDX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_01A0
sub esp, 12
mov eax, dword ptr [SYMB+99604]
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_019E
.L_01A0:
.L_019F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_01A2
sub esp, 12
push 0
push 8
mov eax, dword ptr [SYMB+99604]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_019E
.L_01A2:
.L_01A1:
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+4]
push dword ptr [ebx]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_019E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAKEARRAYIDX, .-HMAKEARRAYIDX
.cfi_endproc
.balign 16
HIMPFIELD:
.type HIMPFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01FE:
cmp dword ptr [ebp+24], 0
je .L_0201
sub esp, 12
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
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_0200
.L_0201:
sub esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
.L_0200:
sub esp, 12
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call CUDTMEMBER
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0203
mov dword ptr [ebp-4], 0
jmp .L_01FF
.L_0203:
.L_0202:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_0205
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01FF
.L_0205:
.L_0204:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-12], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0207
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_0207:
.L_0206:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call CFUNCPTRORMEMBERDEREF
add esp, 32
mov dword ptr [ebp-4], eax
.L_01FF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HIMPFIELD, .-HIMPFIELD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_00B7:	.ascii	"HMEMBERID\0"
.balign 4
Lt_00DA:	.ascii	"CUDTMEMBER\0"
