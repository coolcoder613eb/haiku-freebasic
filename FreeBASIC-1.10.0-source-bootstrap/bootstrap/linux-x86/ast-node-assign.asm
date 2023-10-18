	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCHECKASSIGN
ASTCHECKASSIGN:
.type ASTCHECKASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 80
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00AD:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00AF
mov dword ptr [ebp-36], 24
jmp .L_00E9
.L_00AF:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-36], eax
.L_00E9:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_00B1
mov dword ptr [ebp-40], 24
jmp .L_00EA
.L_00B1:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-40], eax
.L_00EA:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_00B3
mov dword ptr [ebp-44], 24
jmp .L_00EB
.L_00B3:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-44], eax
.L_00EB:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_00B5
mov dword ptr [ebp-48], 24
jmp .L_00EC
.L_00B5:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_00EC:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-28]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00B8
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
je .L_00BA
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCHECKSTRINGOPS
add esp, 16
test eax, eax
jne .L_00BC
jmp .L_00AE
.L_00BC:
.L_00BB:
.L_00BA:
.L_00B9:
mov dword ptr [ebp-4], -1
jmp .L_00AE
jmp .L_00B7
.L_00B8:
mov eax, dword ptr [ebp-12]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00BD
sub esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp-32]
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCHECKUDTOPS
add esp, 32
test eax, eax
jne .L_00BF
jmp .L_00AE
.L_00BF:
.L_00BE:
mov dword ptr [ebp-4], -1
jmp .L_00AE
jmp .L_00B7
.L_00BD:
mov eax, dword ptr [ebp-12]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00C0
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
je .L_00C2
mov dword ptr [ebp-52], 0
sub esp, 12
lea ebx, [ebp-52]
push ebx
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call HCHECKWSTRINGOPS
add esp, 32
test eax, eax
jne .L_00C4
jmp .L_00AE
.L_00C4:
.L_00C3:
cmp dword ptr [ebp-52], 0
je .L_00C6
mov dword ptr [ebp-4], -1
jmp .L_00AE
.L_00C6:
.L_00C5:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00C7
mov dword ptr [ebp-56], 24
jmp .L_00ED
.L_00C7:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-56], eax
.L_00ED:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_00C9
mov dword ptr [ebp-60], 24
jmp .L_00EE
.L_00C9:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_00EE:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00CB
mov dword ptr [ebp-64], 24
jmp .L_00EF
.L_00CB:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-64], eax
.L_00EF:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_00CD
mov dword ptr [ebp-68], 24
jmp .L_00F0
.L_00CD:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-68], eax
.L_00F0:
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-16], eax
.L_00C2:
.L_00C1:
jmp .L_00B7
.L_00C0:
mov eax, dword ptr [ebp-12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00CF
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .L_00D1
mov dword ptr [ebp-4], -1
jmp .L_00AE
.L_00D1:
.L_00D0:
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call HCHECKZSTRINGOPS
add esp, 16
test eax, eax
jne .L_00D3
jmp .L_00AE
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00D4
mov dword ptr [ebp-52], 24
jmp .L_00F1
.L_00D4:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.L_00F1:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_00D6
mov dword ptr [ebp-56], 24
jmp .L_00F2
.L_00D6:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_00F2:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00D8
mov dword ptr [ebp-60], 24
jmp .L_00F3
.L_00D8:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-60], eax
.L_00F3:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_00DA
mov dword ptr [ebp-64], 24
jmp .L_00F4
.L_00DA:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-64], eax
.L_00F4:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-16], eax
jmp .L_00B7
.L_00CF:
mov eax, dword ptr [ebp-12]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00DC
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCHECKENUMOPS
add esp, 16
.L_00DC:
.L_00B7:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call HCHECKCONSTANDPOINTEROPS
add esp, 16
test eax, eax
jne .L_00DE
jmp .L_00AE
.L_00DE:
.L_00DD:
mov eax, dword ptr [ebp-16]
cmp eax, dword ptr [ebp-12]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+8]
cmp esi, dword ptr [ecx+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00E0
cmp dword ptr [ebp-32], 2
je .L_00E2
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .L_00E4
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_00E6
jmp .L_00AE
.L_00E6:
.L_00E5:
.L_00E4:
.L_00E3:
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call ASTCHECKCONV
add esp, 16
test eax, eax
jne .L_00E8
jmp .L_00AE
.L_00E8:
.L_00E7:
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DF:
mov dword ptr [ebp-4], -1
.L_00AE:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTCHECKASSIGN, .-ASTCHECKASSIGN
.cfi_endproc
.balign 16

.globl ASTCHECKASSIGNTOTYPE
ASTCHECKASSIGNTOTYPE:
.type ASTCHECKASSIGNTOTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0101:
sub esp, 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 0
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTCHECKASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
.L_0102:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTCHECKASSIGNTOTYPE, .-ASTCHECKASSIGNTOTYPE
.cfi_endproc
.balign 16

.globl ASTCHECKBYREFASSIGN
ASTCHECKBYREFASSIGN:
.type ASTCHECKBYREFASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0103:
sub esp, 12
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call TYPECALCMATCH
add esp, 32
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0104:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTCHECKBYREFASSIGN, .-ASTCHECKBYREFASSIGN
.cfi_endproc
.balign 16

.globl ASTNEWASSIGN
ASTNEWASSIGN:
.type ASTNEWASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 96
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0112:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0115
jmp .L_0113
.L_0115:
.L_0114:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0116
mov dword ptr [ebp-56], 24
jmp .L_018F
.L_0116:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-56], eax
.L_018F:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0118
mov dword ptr [ebp-60], 24
jmp .L_0190
.L_0118:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-60], eax
.L_0190:
mov eax, dword ptr [ebp-60]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_011A
mov dword ptr [ebp-64], 24
jmp .L_0191
.L_011A:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-64], ebx
.L_0191:
mov ebx, dword ptr [ebp-64]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_011C
mov dword ptr [ebp-68], 24
jmp .L_0192
.L_011C:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_0192:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .L_011F
mov dword ptr [ebp-80], -1
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-84], eax
jmp .L_0121
.L_0123:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .L_0125
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+8], ecx
jne .L_0127
mov ecx, dword ptr [ebp+16]
and ecx, 64
test ecx, ecx
jne .L_0129
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
call SYMBCOMPHASCOPYLETOPS
add esp, 16
mov dword ptr [ebp-80], eax
jmp .L_0128
.L_0129:
mov dword ptr [ebp-80], 0
.L_0128:
.L_0127:
.L_0126:
.L_0125:
.L_0124:
jmp .L_0120
.L_0121:
mov eax, dword ptr [ebp-84]
add eax, 4294967276
test eax, eax
ja .L_0120
mov eax, dword ptr [ebp-84]
jmp dword ptr [.L_012A+eax*4-80]
.L_012A:
.int .L_0123
.L_0120:
cmp dword ptr [ebp-80], 0
je .L_012C
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_012E
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .L_0130
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBGETCOMPDEFCTOR
add esp, 16
test eax, eax
je .L_0132
sub esp, 8
sub esp, 4
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTBUILDCTORCALL
add esp, 16
mov dword ptr [ebp-84], eax
jmp .L_0131
.L_0132:
sub esp, 12
push 0
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 8
push eax
push 107
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-84], eax
.L_0131:
jmp .L_012F
.L_0130:
mov dword ptr [ebp-84], 0
.L_012F:
sub esp, 4
push 0
sub esp, 8
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-44]
call ASTBUILDCALL
add esp, 24
push eax
push dword ptr [ebp-84]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_012E:
.L_012D:
cmp dword ptr [ebp-48], 0
je .L_0134
mov dword ptr [ebp-4], 0
jmp .L_0113
.L_0134:
.L_0133:
.L_012C:
.L_012B:
.L_011F:
.L_011E:
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .L_0136
sub esp, 12
push 0
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call SYMBFINDCASTOVLPROC
add esp, 32
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_0138
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+12], eax
jmp .L_0137
.L_0138:
cmp dword ptr [ebp-48], 0
je .L_013A
mov dword ptr [ebp-4], 0
jmp .L_0113
.L_013A:
.L_0139:
.L_0137:
.L_0136:
.L_0135:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-28]
and ecx, 480
je .L_013B
mov dword ptr [ebp-72], 24
jmp .L_0193
.L_013B:
mov ecx, dword ptr [ebp-28]
and ecx, 31
mov dword ptr [ebp-72], ecx
.L_0193:
mov ecx, dword ptr [ebp-72]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_013D
mov dword ptr [ebp-76], 24
jmp .L_0194
.L_013D:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-76], ecx
.L_0194:
mov ecx, dword ptr [ebp-76]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-36]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0140
mov ecx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ecx
je .L_0142
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call HCHECKSTRINGOPS
add esp, 16
test eax, eax
jne .L_0144
jmp .L_0113
.L_0144:
.L_0143:
sub esp, 4
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0142:
.L_0141:
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .L_0146
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0146:
.L_0145:
jmp .L_013F
.L_0140:
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
je .L_0147
sub esp, 12
push 0
push dword ptr [ebp-36]
lea ecx, [ebp+12]
push ecx
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call HCHECKUDTOPS
add esp, 32
test eax, eax
jne .L_0149
jmp .L_0113
.L_0149:
.L_0148:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 36
jne .L_014B
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call TYPEHASCTOR
add esp, 16
sub esp, 8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
mov ebx, eax
call TYPEHASDTOR
add esp, 16
or ebx, eax
test ebx, ebx
jne .L_014D
mov ebx, dword ptr [ebp+16]
and ebx, 64
push ebx
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 4
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_014D:
.L_014C:
.L_014B:
.L_014A:
sub esp, 12
push dword ptr [ebp+12]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
je .L_014F
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSHALLOWCOPY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_014F:
.L_014E:
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+12]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .L_0151
sub esp, 4
push dword ptr [ebp+16]
sub esp, 4
push dword ptr [ebp+12]
call ASTREMOVENOCONVCAST
add esp, 4
push eax
call ASTBUILDCALLRESULTVAR
add esp, 8
push eax
push dword ptr [ebp+8]
call HSHALLOWCOPY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0151:
.L_0150:
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+12]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0152
mov dword ptr [ebp-80], 24
jmp .L_0195
.L_0152:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.L_0195:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0154
mov dword ptr [ebp-84], 24
jmp .L_0196
.L_0154:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-84], eax
.L_0196:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
sub esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
sub esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp+12]
call ASTSETTYPE
add esp, 16
jmp .L_013F
.L_0147:
mov ebx, dword ptr [ebp-16]
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-20]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0156
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .L_0158
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .L_015A
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLWSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_015A:
.L_0159:
jmp .L_0157
.L_0158:
mov dword ptr [ebp-80], 0
sub esp, 12
lea eax, [ebp-80]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HCHECKWSTRINGOPS
add esp, 32
test eax, eax
jne .L_015C
jmp .L_0113
.L_015C:
.L_015B:
cmp dword ptr [ebp-80], 0
je .L_015E
sub esp, 4
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLWSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_015E:
.L_015D:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_015F
mov dword ptr [ebp-84], 24
jmp .L_0197
.L_015F:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.L_0197:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_0161
mov dword ptr [ebp-88], 24
jmp .L_0198
.L_0161:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-88], ebx
.L_0198:
mov ebx, dword ptr [ebp-88]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0163
mov dword ptr [ebp-92], 24
jmp .L_0199
.L_0163:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.L_0199:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0165
mov dword ptr [ebp-96], 24
jmp .L_019A
.L_0165:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-96], eax
.L_019A:
mov eax, dword ptr [ebp-96]
mov dword ptr [ebp-20], eax
.L_0157:
jmp .L_013F
.L_0156:
mov eax, dword ptr [ebp-16]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0167
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jne .L_0169
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0169:
.L_0168:
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HCHECKZSTRINGOPS
add esp, 16
test eax, eax
jne .L_016B
jmp .L_0113
.L_016B:
.L_016A:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_016C
mov dword ptr [ebp-80], 24
jmp .L_019B
.L_016C:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.L_019B:
mov eax, dword ptr [ebp-80]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_016E
mov dword ptr [ebp-84], 24
jmp .L_019C
.L_016E:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-84], ebx
.L_019C:
mov ebx, dword ptr [ebp-84]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0170
mov dword ptr [ebp-88], 24
jmp .L_019D
.L_0170:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-88], eax
.L_019D:
mov eax, dword ptr [ebp-88]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0172
mov dword ptr [ebp-92], 24
jmp .L_019E
.L_0172:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-92], eax
.L_019E:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-20], eax
jmp .L_013F
.L_0167:
mov eax, dword ptr [ebp-16]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0174
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call HCHECKENUMOPS
add esp, 16
.L_0174:
.L_013F:
mov ebx, dword ptr [ebp+16]
and ebx, 16
test ebx, ebx
jne .L_0176
push dword ptr [ebp-28]
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HCHECKCONSTANDPOINTEROPS
add esp, 16
test eax, eax
jne .L_0178
jmp .L_0113
.L_0178:
.L_0177:
.L_0176:
.L_0175:
mov eax, dword ptr [ebp-20]
cmp eax, dword ptr [ebp-16]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+8]
cmp esi, dword ptr [ecx+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_017A
cmp dword ptr [ebp-36], 2
je .L_017C
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .L_017E
sub esp, 12
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_017F
mov dword ptr [ebp-84], 8
jmp .L_019F
.L_017F:
mov dword ptr [ebp-84], 0
.L_019F:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_0182
jmp .L_0113
.L_0182:
.L_0181:
.L_017E:
.L_017D:
mov dword ptr [ebp-80], -1
cmp dword ptr [ENV+104], 0
jne .L_0184
mov eax, dword ptr [ebp-32]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-36]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0186
cmp dword ptr [ebp-16], 14
je .L_0188
mov ebx, dword ptr [IR+272]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-80], ebx
.L_0188:
.L_0187:
.L_0186:
.L_0185:
.L_0184:
.L_0183:
cmp dword ptr [ebp-80], 0
je .L_018A
sub esp, 12
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_018B
mov dword ptr [ebp-84], 8
jmp .L_01A0
.L_018B:
mov dword ptr [ebp-84], 0
.L_01A0:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_018E
jmp .L_0113
.L_018E:
.L_018D:
.L_018A:
.L_0189:
.L_017C:
.L_017B:
.L_017A:
.L_0179:
sub esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push 2
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0113:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWASSIGN, .-ASTNEWASSIGN
.cfi_endproc
.balign 16

.globl ASTLOADASSIGN
ASTLOADASSIGN:
.type ASTLOADASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01B7
mov dword ptr [ebp-4], 0
jmp .L_01B5
.L_01B7:
.L_01B6:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 5
jne .L_01B9
sub esp, 4
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
push dword ptr [ebp-12]
call ASTUPDATECONVFD2FS
add esp, 16
.L_01B9:
.L_01B8:
sub esp, 12
push dword ptr [ebp-12]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [AST+136], 0
je .L_01BB
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call dword ptr [IR+100]
add esp, 16
.L_01BB:
.L_01BA:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_01B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADASSIGN, .-ASTLOADASSIGN
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
HCHECKSTRINGOPS:
.type HCHECKSTRINGOPS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 2
jne .L_0060
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .L_005F
.L_0060:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_005F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 4
je .L_0064
.L_0065:
cmp dword ptr [ebp-12], 7
jne .L_0063
.L_0064:
jmp .L_0061
.L_0063:
jmp .L_005E
.L_0066:
.L_0061:
mov dword ptr [ebp-4], -1
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKSTRINGOPS, .-HCHECKSTRINGOPS
.cfi_endproc
.balign 16
HCHECKUDTOPS:
.type HCHECKUDTOPS, @function
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
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_006A
jmp .L_0068
jmp .L_0069
.L_006A:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 9
jne .L_006C
jmp .L_0068
.L_006C:
.L_006B:
.L_0069:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_006E
jmp .L_0068
.L_006E:
.L_006D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+8]
cmp dword ptr [ebx+8], eax
je .L_0070
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jne .L_0072
jmp .L_0068
.L_0072:
.L_0071:
cmp dword ptr [ebp+24], 0
je .L_0074
jmp .L_0068
jmp .L_0073
.L_0074:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call ASTNEWCONV
add esp, 32
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
.L_0073:
.L_0070:
.L_006F:
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKUDTOPS, .-HCHECKUDTOPS
.cfi_endproc
.balign 16
HCHECKWSTRINGOPS:
.type HCHECKWSTRINGOPS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0075:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0077
mov dword ptr [ebp-16], 24
jmp .L_01BE
.L_0077:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-16], eax
.L_01BE:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0079
mov dword ptr [ebp-20], 24
jmp .L_01BF
.L_0079:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-20], eax
.L_01BF:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 7
jne .L_007C
mov eax, dword ptr [ebp-12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
jmp .L_007B
.L_007C:
mov eax, dword ptr [ebp-8]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
.L_007B:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 0
je .L_007E
mov dword ptr [ebp-4], -1
jmp .L_0076
.L_007E:
.L_007D:
cmp dword ptr [ebp-8], 7
jne .L_0080
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .L_0082
jmp .L_0076
.L_0082:
.L_0081:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
mov eax, dword ptr [ENV+272]
and eax, 511
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .L_007F
.L_0080:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .L_0084
jmp .L_0076
.L_0084:
.L_0083:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [ENV+272]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.L_007F:
mov dword ptr [ebp-4], -1
.L_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKWSTRINGOPS, .-HCHECKWSTRINGOPS
.cfi_endproc
.balign 16
HCHECKZSTRINGOPS:
.type HCHECKZSTRINGOPS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0085:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0087
mov dword ptr [ebp-8], 24
jmp .L_01C2
.L_0087:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01C2:
cmp dword ptr [ebp-8], 4
jne .L_008A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .L_008C
jmp .L_0086
.L_008C:
.L_008B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
or ebx, 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .L_0089
.L_008A:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .L_008E
jmp .L_0086
.L_008E:
.L_008D:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
or eax, 3
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.L_0089:
mov dword ptr [ebp-4], -1
.L_0086:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKZSTRINGOPS, .-HCHECKZSTRINGOPS
.cfi_endproc
.balign 16
HCHECKENUMOPS:
.type HCHECKENUMOPS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_008F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ebx, ecx
je .L_0092
mov ecx, dword ptr [ebp+12]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+20]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_0094
push 0
push 1
push 0
push 5
call ERRREPORTWARN
add esp, 16
.L_0094:
.L_0093:
.L_0092:
.L_0091:
.L_0090:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKENUMOPS, .-HCHECKENUMOPS
.cfi_endproc
.balign 16
HCHECKCONSTANDPOINTEROPS:
.type HCHECKCONSTANDPOINTEROPS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0095:
mov dword ptr [ebp-4], 0
sub esp, 8
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 32
test eax, eax
jne .L_0099
sub esp, 4
push 0
push -1
push 181
call ERRREPORT
add esp, 16
jmp .L_0096
.L_0099:
.L_0098:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_009B
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_009C
mov dword ptr [ebp-12], 24
jmp .L_01C5
.L_009C:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01C5:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_009F
jmp .L_0096
.L_009F:
.L_009E:
push dword ptr [ebp+16]
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call ASTPTRCHECK
add esp, 16
test eax, eax
jne .L_00A1
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
and ebx, 31
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00A3
sub esp, 8
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jle .L_00A5
sub esp, 4
push 0
push -1
push 181
call ERRREPORT
add esp, 16
jmp .L_0096
.L_00A5:
.L_00A4:
.L_00A3:
.L_00A2:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTCHECKCONV
add esp, 16
test eax, eax
je .L_00A7
push 0
push 1
push 0
push 4
call ERRREPORTWARN
add esp, 16
.L_00A7:
.L_00A6:
.L_00A1:
.L_00A0:
jmp .L_009A
.L_009B:
mov eax, dword ptr [ebp+20]
and eax, 480
test eax, eax
je .L_00A8
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00A9
mov dword ptr [ebp-12], 24
jmp .L_01C6
.L_00A9:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01C6:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00AC
jmp .L_0096
.L_00AC:
.L_00AB:
push 0
push 1
push 0
push 5
call ERRREPORTWARN
add esp, 16
.L_00A8:
.L_009A:
mov dword ptr [ebp-4], -1
.L_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKCONSTANDPOINTEROPS, .-HCHECKCONSTANDPOINTEROPS
.cfi_endproc
.balign 16
HSHALLOWCOPY:
.type HSHALLOWCOPY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0106:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov ecx, dword ptr [ebx+40]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+12]
and ecx, 4194304
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+12]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .L_0109
mov ecx, dword ptr [ENV+296]
mov eax, ecx
sar eax, 31
sub dword ptr [ebp-24], ecx
sbb dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_010B
cmp dword ptr [ebp-24], 0
jne .L_010B
.L_01CA:
mov dword ptr [ebp-8], 0
sub esp, 12
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_010D
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp+8]
push eax
call ASTREMSIDEFX
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.L_010D:
.L_010C:
sub esp, 12
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_010F
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp+12]
push eax
call ASTREMSIDEFX
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.L_010F:
.L_010E:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
cmp dword ptr [ebp-8], 0
jne .L_0111
call ASTNEWNOP
mov dword ptr [ebp-8], eax
.L_0111:
.L_0110:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0107
.L_010B:
.L_010A:
sub esp, 8
push 0
push 0
push 2
mov ecx, dword ptr [ENV+296]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 8
push 0
push 0
push 2
mov ecx, dword ptr [ENV+296]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+12]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp+12], eax
.L_0109:
.L_0108:
sub esp, 12
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 105
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.L_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSHALLOWCOPY, .-HSHALLOWCOPY
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
