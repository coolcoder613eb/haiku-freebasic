	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCHECKASSIGN@12
_ASTCHECKASSIGN@12:
push ebp
mov ebp, esp
sub esp, 68
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00AE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00B0
mov dword ptr [ebp-36], 24
jmp .L_00EA
.L_00B0:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-36], eax
.L_00EA:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_00B2
mov dword ptr [ebp-40], 24
jmp .L_00EB
.L_00B2:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-40], eax
.L_00EB:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_00B4
mov dword ptr [ebp-44], 24
jmp .L_00EC
.L_00B4:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-44], eax
.L_00EC:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_00B6
mov dword ptr [ebp-48], 24
jmp .L_00ED
.L_00B6:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_00ED:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
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
je .L_00B9
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
je .L_00BB
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCHECKSTRINGOPS@16
test eax, eax
jne .L_00BD
jmp .L_00AF
.L_00BD:
.L_00BC:
.L_00BB:
.L_00BA:
mov dword ptr [ebp-4], -1
jmp .L_00AF
jmp .L_00B8
.L_00B9:
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
je .L_00BE
push dword ptr [ebp+16]
push dword ptr [ebp-32]
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCHECKUDTOPS@20
test eax, eax
jne .L_00C0
jmp .L_00AF
.L_00C0:
.L_00BF:
mov dword ptr [ebp-4], -1
jmp .L_00AF
jmp .L_00B8
.L_00BE:
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
je .L_00C1
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
je .L_00C3
mov dword ptr [ebp-52], 0
lea ebx, [ebp-52]
push ebx
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _HCHECKWSTRINGOPS@20
test eax, eax
jne .L_00C5
jmp .L_00AF
.L_00C5:
.L_00C4:
cmp dword ptr [ebp-52], 0
je .L_00C7
mov dword ptr [ebp-4], -1
jmp .L_00AF
.L_00C7:
.L_00C6:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00C8
mov dword ptr [ebp-56], 24
jmp .L_00EE
.L_00C8:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-56], eax
.L_00EE:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_00CA
mov dword ptr [ebp-60], 24
jmp .L_00EF
.L_00CA:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_00EF:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00CC
mov dword ptr [ebp-64], 24
jmp .L_00F0
.L_00CC:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-64], eax
.L_00F0:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_00CE
mov dword ptr [ebp-68], 24
jmp .L_00F1
.L_00CE:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-68], eax
.L_00F1:
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-16], eax
.L_00C3:
.L_00C2:
jmp .L_00B8
.L_00C1:
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
je .L_00D0
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .L_00D2
mov dword ptr [ebp-4], -1
jmp .L_00AF
.L_00D2:
.L_00D1:
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _HCHECKZSTRINGOPS@16
test eax, eax
jne .L_00D4
jmp .L_00AF
.L_00D4:
.L_00D3:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00D5
mov dword ptr [ebp-52], 24
jmp .L_00F2
.L_00D5:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.L_00F2:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_00D7
mov dword ptr [ebp-56], 24
jmp .L_00F3
.L_00D7:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_00F3:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00D9
mov dword ptr [ebp-60], 24
jmp .L_00F4
.L_00D9:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-60], eax
.L_00F4:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_00DB
mov dword ptr [ebp-64], 24
jmp .L_00F5
.L_00DB:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-64], eax
.L_00F5:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-16], eax
jmp .L_00B8
.L_00D0:
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
je .L_00DD
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCHECKENUMOPS@16
.L_00DD:
.L_00B8:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _HCHECKCONSTANDPOINTEROPS@16
test eax, eax
jne .L_00DF
jmp .L_00AF
.L_00DF:
.L_00DE:
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
je .L_00E1
cmp dword ptr [ebp-32], 2
je .L_00E3
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .L_00E5
push 0
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_00E7
jmp .L_00AF
.L_00E7:
.L_00E6:
.L_00E5:
.L_00E4:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call _ASTCHECKCONV@12
test eax, eax
jne .L_00E9
jmp .L_00AF
.L_00E9:
.L_00E8:
.L_00E3:
.L_00E2:
.L_00E1:
.L_00E0:
mov dword ptr [ebp-4], -1
.L_00AF:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTCHECKASSIGNTOTYPE@16
_ASTCHECKASSIGNTOTYPE@16:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0102:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 0
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTCHECKASSIGN@12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
call _ASTDELTREE@4
.L_0103:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTCHECKBYREFASSIGN@12
_ASTCHECKBYREFASSIGN@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0104:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPECALCMATCH@20
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0105:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTNEWASSIGN@12
_ASTNEWASSIGN@12:
push ebp
mov ebp, esp
sub esp, 96
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0113:
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
je .L_0116
jmp .L_0114
.L_0116:
.L_0115:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0117
mov dword ptr [ebp-56], 24
jmp .L_0190
.L_0117:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-56], eax
.L_0190:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0119
mov dword ptr [ebp-60], 24
jmp .L_0191
.L_0119:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-60], eax
.L_0191:
mov eax, dword ptr [ebp-60]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_011B
mov dword ptr [ebp-64], 24
jmp .L_0192
.L_011B:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-64], ebx
.L_0192:
mov ebx, dword ptr [ebp-64]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_011D
mov dword ptr [ebp-68], 24
jmp .L_0193
.L_011D:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_0193:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .L_0120
mov dword ptr [ebp-80], -1
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-84], eax
jmp .L_0122
.L_0124:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .L_0126
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+8], ecx
jne .L_0128
mov ecx, dword ptr [ebp+16]
and ecx, 64
test ecx, ecx
jne .L_012A
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
call _SYMBCOMPHASCOPYLETOPS@4
mov dword ptr [ebp-80], eax
jmp .L_0129
.L_012A:
mov dword ptr [ebp-80], 0
.L_0129:
.L_0128:
.L_0127:
.L_0126:
.L_0125:
jmp .L_0121
.L_0122:
mov eax, dword ptr [ebp-84]
add eax, 4294967276
test eax, eax
ja .L_0121
mov eax, dword ptr [ebp-84]
jmp dword ptr [_.L_012B+eax*4-80]
_.L_012B:
.int .L_0124
.L_0121:
cmp dword ptr [ebp-80], 0
je .L_012D
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _SYMBFINDSELFBOPOVLPROC@16
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_012F
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .L_0131
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBGETCOMPDEFCTOR@4
test eax, eax
je .L_0133
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTBUILDCTORCALL@8
mov dword ptr [ebp-84], eax
jmp .L_0132
.L_0133:
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-84], eax
.L_0132:
jmp .L_0130
.L_0131:
mov dword ptr [ebp-84], 0
.L_0130:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-44]
call _ASTBUILDCALL@16
push eax
push dword ptr [ebp-84]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_012F:
.L_012E:
cmp dword ptr [ebp-48], 0
je .L_0135
mov dword ptr [ebp-4], 0
jmp .L_0114
.L_0135:
.L_0134:
.L_012D:
.L_012C:
.L_0120:
.L_011F:
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .L_0137
push 0
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_0139
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDCALL@16
mov dword ptr [ebp+12], eax
jmp .L_0138
.L_0139:
cmp dword ptr [ebp-48], 0
je .L_013B
mov dword ptr [ebp-4], 0
jmp .L_0114
.L_013B:
.L_013A:
.L_0138:
.L_0137:
.L_0136:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-28]
and ecx, 480
je .L_013C
mov dword ptr [ebp-72], 24
jmp .L_0194
.L_013C:
mov ecx, dword ptr [ebp-28]
and ecx, 31
mov dword ptr [ebp-72], ecx
.L_0194:
mov ecx, dword ptr [ebp-72]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_013E
mov dword ptr [ebp-76], 24
jmp .L_0195
.L_013E:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-76], ecx
.L_0195:
mov ecx, dword ptr [ebp-76]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
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
je .L_0141
mov ecx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ecx
je .L_0143
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call _HCHECKSTRINGOPS@16
test eax, eax
jne .L_0145
jmp .L_0114
.L_0145:
.L_0144:
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_0143:
.L_0142:
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .L_0147
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_0147:
.L_0146:
jmp .L_0140
.L_0141:
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
je .L_0148
push 0
push dword ptr [ebp-36]
lea ecx, [ebp+12]
push ecx
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call _HCHECKUDTOPS@20
test eax, eax
jne .L_014A
jmp .L_0114
.L_014A:
.L_0149:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 36
jne .L_014C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _TYPEHASCTOR@8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
mov ebx, eax
call _TYPEHASDTOR@8
or ebx, eax
test ebx, ebx
jne .L_014E
mov ebx, dword ptr [ebp+16]
and ebx, 64
push ebx
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_014E:
.L_014D:
.L_014C:
.L_014B:
push dword ptr [ebp+12]
call _ASTSKIPNOCONVCAST@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
je .L_0150
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSHALLOWCOPY@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_0150:
.L_014F:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+12]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .L_0152
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTREMOVENOCONVCAST@4
push eax
call _ASTBUILDCALLRESULTVAR@4
push eax
push dword ptr [ebp+8]
call _HSHALLOWCOPY@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_0152:
.L_0151:
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+12]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0153
mov dword ptr [ebp-80], 24
jmp .L_0196
.L_0153:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.L_0196:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0155
mov dword ptr [ebp-84], 24
jmp .L_0197
.L_0155:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-84], eax
.L_0197:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _ASTSETTYPE@12
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp+12]
call _ASTSETTYPE@12
jmp .L_0140
.L_0148:
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
je .L_0157
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .L_0159
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .L_015B
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLWSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_015B:
.L_015A:
jmp .L_0158
.L_0159:
mov dword ptr [ebp-80], 0
lea eax, [ebp-80]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HCHECKWSTRINGOPS@20
test eax, eax
jne .L_015D
jmp .L_0114
.L_015D:
.L_015C:
cmp dword ptr [ebp-80], 0
je .L_015F
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLWSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_015F:
.L_015E:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0160
mov dword ptr [ebp-84], 24
jmp .L_0198
.L_0160:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.L_0198:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_0162
mov dword ptr [ebp-88], 24
jmp .L_0199
.L_0162:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-88], ebx
.L_0199:
mov ebx, dword ptr [ebp-88]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0164
mov dword ptr [ebp-92], 24
jmp .L_019A
.L_0164:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.L_019A:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0166
mov dword ptr [ebp-96], 24
jmp .L_019B
.L_0166:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-96], eax
.L_019B:
mov eax, dword ptr [ebp-96]
mov dword ptr [ebp-20], eax
.L_0158:
jmp .L_0140
.L_0157:
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
je .L_0168
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jne .L_016A
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_0114
.L_016A:
.L_0169:
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HCHECKZSTRINGOPS@16
test eax, eax
jne .L_016C
jmp .L_0114
.L_016C:
.L_016B:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_016D
mov dword ptr [ebp-80], 24
jmp .L_019C
.L_016D:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.L_019C:
mov eax, dword ptr [ebp-80]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_016F
mov dword ptr [ebp-84], 24
jmp .L_019D
.L_016F:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-84], ebx
.L_019D:
mov ebx, dword ptr [ebp-84]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0171
mov dword ptr [ebp-88], 24
jmp .L_019E
.L_0171:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-88], eax
.L_019E:
mov eax, dword ptr [ebp-88]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0173
mov dword ptr [ebp-92], 24
jmp .L_019F
.L_0173:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-92], eax
.L_019F:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-20], eax
jmp .L_0140
.L_0168:
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
je .L_0175
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call _HCHECKENUMOPS@16
.L_0175:
.L_0140:
mov ebx, dword ptr [ebp+16]
and ebx, 16
test ebx, ebx
jne .L_0177
push dword ptr [ebp-28]
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HCHECKCONSTANDPOINTEROPS@16
test eax, eax
jne .L_0179
jmp .L_0114
.L_0179:
.L_0178:
.L_0177:
.L_0176:
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
je .L_017B
cmp dword ptr [ebp-36], 2
je .L_017D
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .L_017F
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_0180
mov dword ptr [ebp-84], 8
jmp .L_01A0
.L_0180:
mov dword ptr [ebp-84], 0
.L_01A0:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_0183
jmp .L_0114
.L_0183:
.L_0182:
.L_017F:
.L_017E:
mov dword ptr [ebp-80], -1
cmp dword ptr [_ENV+104], 0
jne .L_0185
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
je .L_0187
cmp dword ptr [ebp-16], 14
je .L_0189
mov ebx, dword ptr [_IR+272]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-80], ebx
.L_0189:
.L_0188:
.L_0187:
.L_0186:
.L_0185:
.L_0184:
cmp dword ptr [ebp-80], 0
je .L_018B
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_018C
mov dword ptr [ebp-84], 8
jmp .L_01A1
.L_018C:
mov dword ptr [ebp-84], 0
.L_01A1:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_018F
jmp .L_0114
.L_018F:
.L_018E:
.L_018B:
.L_018A:
.L_017D:
.L_017C:
.L_017B:
.L_017A:
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push 2
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0114:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADASSIGN@4
_ASTLOADASSIGN@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
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
je .L_01B8
mov dword ptr [ebp-4], 0
jmp .L_01B6
.L_01B8:
.L_01B7:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 5
jne .L_01BA
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
push dword ptr [ebp-12]
call _ASTUPDATECONVFD2FS@12
.L_01BA:
.L_01B9:
push dword ptr [ebp-12]
call _ASTLOAD@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-20], eax
cmp dword ptr [_AST+136], 0
je .L_01BC
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call dword ptr [_IR+100]
.L_01BC:
.L_01BB:
push dword ptr [ebp-8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_01B6:
mov eax, dword ptr [ebp-4]
pop ebx
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
_HCHECKSTRINGOPS@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_005E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 2
jne .L_0061
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .L_0060
.L_0061:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_0060:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 4
je .L_0065
.L_0066:
cmp dword ptr [ebp-12], 7
jne .L_0064
.L_0065:
jmp .L_0062
.L_0064:
jmp .L_005F
.L_0067:
.L_0062:
mov dword ptr [ebp-4], -1
.L_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCHECKUDTOPS@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_006B
jmp .L_0069
jmp .L_006A
.L_006B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 9
jne .L_006D
jmp .L_0069
.L_006D:
.L_006C:
.L_006A:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_006F
jmp .L_0069
.L_006F:
.L_006E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+8]
cmp dword ptr [ebx+8], eax
je .L_0071
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .L_0073
jmp .L_0069
.L_0073:
.L_0072:
cmp dword ptr [ebp+24], 0
je .L_0075
jmp .L_0069
jmp .L_0074
.L_0075:
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
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
.L_0074:
.L_0071:
.L_0070:
mov dword ptr [ebp-4], -1
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKWSTRINGOPS@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0078
mov dword ptr [ebp-16], 24
jmp .L_01BF
.L_0078:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-16], eax
.L_01BF:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_007A
mov dword ptr [ebp-20], 24
jmp .L_01C0
.L_007A:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-20], eax
.L_01C0:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 7
jne .L_007D
mov eax, dword ptr [ebp-12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
jmp .L_007C
.L_007D:
mov eax, dword ptr [ebp-8]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
.L_007C:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 0
je .L_007F
mov dword ptr [ebp-4], -1
jmp .L_0077
.L_007F:
.L_007E:
cmp dword ptr [ebp-8], 7
jne .L_0081
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .L_0083
jmp .L_0077
.L_0083:
.L_0082:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
mov eax, dword ptr [_ENV+272]
and eax, 511
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .L_0080
.L_0081:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .L_0085
jmp .L_0077
.L_0085:
.L_0084:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [_ENV+272]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.L_0080:
mov dword ptr [ebp-4], -1
.L_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKZSTRINGOPS@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0086:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0088
mov dword ptr [ebp-8], 24
jmp .L_01C3
.L_0088:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01C3:
cmp dword ptr [ebp-8], 4
jne .L_008B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .L_008D
jmp .L_0087
.L_008D:
.L_008C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
or ebx, 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .L_008A
.L_008B:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .L_008F
jmp .L_0087
.L_008F:
.L_008E:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
or eax, 3
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.L_008A:
mov dword ptr [ebp-4], -1
.L_0087:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCHECKENUMOPS@16:
push ebp
mov ebp, esp
push ebx
.L_0090:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ebx, ecx
je .L_0093
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
je .L_0095
push 0
push 1
push 0
push 5
call _ERRREPORTWARN@16
.L_0095:
.L_0094:
.L_0093:
.L_0092:
.L_0091:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCHECKCONSTANDPOINTEROPS@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0096:
mov dword ptr [ebp-4], 0
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
call _SYMBCHECKCONSTASSIGNTOPLEVEL@24
test eax, eax
jne .L_009A
push 0
push -1
push 181
call _ERRREPORT@12
jmp .L_0097
.L_009A:
.L_0099:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_009C
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_009D
mov dword ptr [ebp-12], 24
jmp .L_01C6
.L_009D:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01C6:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00A0
jmp .L_0097
.L_00A0:
.L_009F:
push dword ptr [ebp+16]
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call _ASTPTRCHECK@16
test eax, eax
jne .L_00A2
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
je .L_00A4
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jle .L_00A6
push 0
push -1
push 181
call _ERRREPORT@12
jmp .L_0097
.L_00A6:
.L_00A5:
.L_00A4:
.L_00A3:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTCHECKCONV@12
test eax, eax
je .L_00A8
push 0
push 1
push 0
push 4
call _ERRREPORTWARN@16
.L_00A8:
.L_00A7:
.L_00A2:
.L_00A1:
jmp .L_009B
.L_009C:
mov eax, dword ptr [ebp+20]
and eax, 480
test eax, eax
je .L_00A9
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00AA
mov dword ptr [ebp-12], 24
jmp .L_01C7
.L_00AA:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01C7:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00AD
jmp .L_0097
.L_00AD:
.L_00AC:
push 0
push 1
push 0
push 5
call _ERRREPORTWARN@16
.L_00A9:
.L_009B:
mov dword ptr [ebp-4], -1
.L_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HSHALLOWCOPY@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0107:
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
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+12]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .L_010A
mov ecx, dword ptr [_ENV+296]
mov eax, ecx
sar eax, 31
sub dword ptr [ebp-24], ecx
sbb dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_010C
cmp dword ptr [ebp-24], 0
jne .L_010C
.L_01CB:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call _ASTHASSIDEFX@4
test eax, eax
je .L_010E
push 0
lea eax, [ebp+8]
push eax
call _ASTREMSIDEFX@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.L_010E:
.L_010D:
push dword ptr [ebp+12]
call _ASTHASSIDEFX@4
test eax, eax
je .L_0110
push 0
lea eax, [ebp+12]
push eax
call _ASTREMSIDEFX@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.L_0110:
.L_010F:
push dword ptr [ebp+8]
call _ASTDELTREE@4
push dword ptr [ebp+12]
call _ASTDELTREE@4
cmp dword ptr [ebp-8], 0
jne .L_0112
call _ASTNEWNOP@0
mov dword ptr [ebp-8], eax
.L_0112:
.L_0111:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0108
.L_010C:
.L_010B:
push 0
push 0
push 2
mov ecx, dword ptr [_ENV+296]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+8]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp+8], eax
push 0
push 0
push 2
mov ecx, dword ptr [_ENV+296]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+12]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp+12], eax
.L_010A:
.L_0109:
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 105
call _ASTNEWMEM@20
mov dword ptr [ebp-4], eax
.L_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
