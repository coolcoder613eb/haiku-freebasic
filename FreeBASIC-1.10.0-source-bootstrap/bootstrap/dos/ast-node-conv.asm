	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCHECKCONVNONPTRTOPTR
_ASTCHECKCONVNONPTRTOPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00A4
mov dword ptr [ebp-8], 24
jmp .L_00B0
.L_00A4:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00B0:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_00A7
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_00A9
push dword ptr [ebp+16]
call _ASTCONSTEQZERO
add esp, 4
test eax, eax
je .L_00AB
mov dword ptr [ebp-4], 0
jmp .L_00A3
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00AC
mov dword ptr [ebp-12], 24
jmp .L_00B1
.L_00AC:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00B1:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_ENV+296]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
jne .L_00AF
mov dword ptr [ebp-4], 0
jmp .L_00A3
.L_00AF:
.L_00AE:
.L_00A7:
.L_00A6:
push dword ptr [ebp+20]
call _HGETTYPEMISMATCHERRMSG
add esp, 4
mov dword ptr [ebp-4], eax
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTCHECKCONV
_ASTCHECKCONV:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00DD:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_00DF
mov dword ptr [ebp-12], 24
jmp .L_00FA
.L_00DF:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_00FA:
mov ebx, dword ptr [ebp-12]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00E1
mov dword ptr [ebp-16], 24
jmp .L_00FB
.L_00E1:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_00FB:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-24]
je .L_00E4
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_00E5
mov dword ptr [ebp-28], 24
jmp .L_00FD
.L_00E5:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_00FD:
mov ebx, dword ptr [ebp-28]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00E7
mov dword ptr [ebp-32], 24
jmp .L_00FE
.L_00E7:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_00FE:
mov ebx, dword ptr [ebp-32]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-36]
je .L_00EA
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00EA:
.L_00E9:
jmp .L_00DE
.L_00E4:
.L_00E3:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00EB
mov dword ptr [ebp-20], 24
jmp .L_0100
.L_00EB:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0100:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 2
jne .L_00EE
jmp .L_00DE
.L_00EE:
.L_00ED:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKPTR
add esp, 20
test eax, eax
je .L_00F0
jmp .L_00DE
.L_00F0:
.L_00EF:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00F1
mov dword ptr [ebp-24], 24
jmp .L_0101
.L_00F1:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_0101:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .L_00F6
.L_00F7:
cmp dword ptr [ebp-28], 7
jne .L_00F5
.L_00F6:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .L_00F9
jmp .L_00DE
.L_00F9:
.L_00F8:
.L_00F5:
.L_00F3:
mov dword ptr [ebp-4], -1
.L_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTTRYOVLSTRINGCONV
_ASTTRYOVLSTRINGCONV:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_010F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .L_0112
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .L_0114
mov dword ptr [ebp-20], 4
jmp .L_0113
.L_0114:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .L_0115
mov dword ptr [ebp-20], 7
jmp .L_0113
.L_0115:
mov dword ptr [ebp-20], 0
.L_0113:
cmp dword ptr [ebp-20], 0
je .L_0117
push 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push dword ptr [ebp-20]
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0119
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp-20]
cmp ebx, eax
jne .L_011B
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-8]
call _ASTBUILDCALL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .L_0110
.L_011B:
.L_011A:
.L_0119:
.L_0118:
.L_0117:
.L_0116:
.L_0112:
.L_0111:
mov dword ptr [ebp-4], 0
.L_0110:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWCONV
_ASTNEWCONV:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.L_011C:
cmp dword ptr [ebp+24], 0
je .L_011F
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
.L_011F:
.L_011E:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 511
mov eax, dword ptr [ebp+8]
and eax, 511
cmp ebx, eax
jne .L_0121
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .L_0123
mov ebx, dword ptr [ebp-16]
and ebx, 261632
mov eax, dword ptr [ebp+8]
and eax, 261632
cmp ebx, eax
je .L_0125
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_0127
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .L_0126
.L_0127:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], -1
mov ebx, dword ptr [ebp+20]
and ebx, 16
test ebx, ebx
jne .L_0129
mov ebx, dword ptr [_ENV+200]
and ebx, 128
test ebx, ebx
je .L_012B
push 0
push 1
push 0
push 40
call _ERRREPORTWARN
add esp, 16
.L_012B:
.L_012A:
.L_0129:
.L_0128:
.L_0126:
jmp .L_0124
.L_0125:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-8], ebx
.L_0124:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_011D
.L_0123:
.L_0122:
.L_0121:
.L_0120:
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_012C
mov dword ptr [ebp-32], 24
jmp .L_01B5
.L_012C:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_01B5:
cmp dword ptr [ebp-32], 20
jne .L_012F
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0131
mov dword ptr [ebp-48], 0
push 4
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_0133
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_011D
.L_0133:
.L_0132:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .L_0135
push 4
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 36
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
jmp .L_0134
.L_0135:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .L_0136
push 4
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 39
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
.L_0136:
.L_0134:
cmp dword ptr [ebp-48], 0
je .L_0138
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_011D
.L_0138:
.L_0137:
mov eax, dword ptr [ebp+20]
and eax, 2
je .L_013A
lea eax, [ebp+16]
push eax
call _ASTTRYOVLSTRINGCONV
add esp, 4
test eax, eax
je .L_013C
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-16], ecx
.L_013C:
.L_013B:
.L_013A:
.L_0139:
.L_0131:
.L_0130:
.L_012F:
.L_012E:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
lea ecx, [ebp-8]
push ecx
call _ASTTRYOVLOPCASTCONV
add esp, 20
test eax, eax
je .L_013E
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_011D
.L_013E:
.L_013D:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_013F
mov dword ptr [ebp-44], 24
jmp .L_01B6
.L_013F:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-44], eax
.L_01B6:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
jmp .L_0142
.L_0144:
jmp .L_011D
jmp .L_0141
.L_0145:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0146
mov dword ptr [ebp-52], 24
jmp .L_01B7
.L_0146:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.L_01B7:
cmp dword ptr [ebp-52], 20
je .L_0149
jmp .L_011D
.L_0149:
.L_0148:
mov eax, dword ptr [ebp+20]
and eax, 128
test eax, eax
je .L_014B
jmp .L_011D
.L_014B:
.L_014A:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_014D
jmp .L_011D
.L_014D:
.L_014C:
jmp .L_0141
.L_014E:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_014F
mov dword ptr [ebp-52], 24
jmp .L_01B8
.L_014F:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.L_01B8:
cmp dword ptr [ebp-52], 20
jne .L_0152
jmp .L_011D
.L_0152:
.L_0151:
jmp .L_0141
.L_0142:
cmp dword ptr [ebp-48], 20
ja .L_014E
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_0153+eax*4]
_.L_0153:
.int .L_0144
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_0144
.int .L_014E
.int .L_014E
.int .L_0144
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_0144
.int .L_0144
.int .L_014E
.int .L_0145
.L_0141:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0154
mov dword ptr [ebp-36], 24
jmp .L_01B9
.L_0154:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-36], eax
.L_01B9:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+20]
and ecx, 1
je .L_0157
cmp dword ptr [ebp-12], 0
je .L_0159
jmp .L_011D
.L_0159:
.L_0158:
.L_0157:
.L_0156:
mov ecx, dword ptr [ebp+20]
and ecx, 8
test ecx, ecx
jne .L_015B
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKPTR
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_015D
cmp dword ptr [ebp+24], 0
je .L_015F
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax], ecx
.L_015F:
.L_015E:
jmp .L_011D
.L_015D:
.L_015C:
.L_015B:
.L_015A:
mov ecx, dword ptr [ebp+20]
and ecx, 2
je .L_0161
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_0162
mov dword ptr [ebp-44], 24
jmp .L_01BA
.L_0162:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_01BA:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
jmp .L_0165
.L_0167:
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _RTLSTRTOVAL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_011D
jmp .L_0164
.L_0165:
mov eax, dword ptr [ebp-48]
add eax, 4294967292
cmp eax, 14
ja .L_0164
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_0168+eax*4-16]
_.L_0168:
.int .L_0167
.int .L_0164
.int .L_0164
.int .L_0167
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0167
.int .L_0167
.L_0164:
jmp .L_0160
.L_0161:
cmp dword ptr [ebp-12], 2
jne .L_016A
jmp .L_011D
jmp .L_0169
.L_016A:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_016B
mov dword ptr [ebp-44], 24
jmp .L_01BB
.L_016B:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_01BB:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 4
je .L_0170
.L_0171:
cmp dword ptr [ebp-48], 7
jne .L_016F
.L_0170:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .L_0173
jmp .L_011D
.L_0173:
.L_0172:
.L_016F:
.L_016D:
.L_0169:
.L_0160:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_0175
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTCHECKCONST
add esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HCONSTCONV
add esp, 8
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_011D
.L_0175:
.L_0174:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0176
mov dword ptr [ebp-40], 24
jmp .L_01BC
.L_0176:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_01BC:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp dword ptr [ebp-12], ecx
jne .L_0179
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_017A
mov dword ptr [ebp-44], 24
jmp .L_01BD
.L_017A:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_01BD:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
cmp dword ptr [ebp-48], 20
jne .L_017E
.L_017F:
mov dword ptr [ebp-28], 0
jmp .L_017C
.L_017E:
mov ecx, dword ptr [ebp-16]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0182
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-16], eax
jne .L_0184
mov dword ptr [ebp-28], 0
.L_0184:
.L_0183:
jmp .L_0181
.L_0182:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0185
mov dword ptr [ebp-52], 24
jmp .L_01BE
.L_0185:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.L_01BE:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0187
mov dword ptr [ebp-56], 24
jmp .L_01BF
.L_0187:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-56], eax
.L_01BF:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ecx, dword ptr [ebp-60]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ecx+4], ebx
jne .L_018A
mov dword ptr [ebp-28], 0
.L_018A:
.L_0189:
.L_0181:
.L_0180:
.L_017C:
.L_0179:
.L_0178:
mov ebx, dword ptr [_IR+272]
and ebx, 1
test ebx, ebx
je .L_018C
mov ebx, dword ptr [ebp-12]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_018D
mov dword ptr [ebp-44], 24
jmp .L_01C1
.L_018D:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_01C1:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-48]
je .L_0190
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_0191
mov dword ptr [ebp-52], 24
jmp .L_01C3
.L_0191:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_01C3:
mov ecx, dword ptr [ebp-52]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0193
mov dword ptr [ebp-56], 24
jmp .L_01C4
.L_0193:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-56], ecx
.L_01C4:
mov ecx, dword ptr [ebp-56]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], eax
je .L_0196
mov dword ptr [ebp-28], -1
.L_0196:
.L_0195:
.L_0190:
.L_018F:
.L_018C:
.L_018B:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .L_0198
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 0
jne .L_019A
cmp dword ptr [ebp-28], 0
jne .L_019C
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_011D
.L_019C:
.L_019B:
.L_019A:
.L_0199:
.L_0198:
.L_0197:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-16]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_019E
mov dword ptr [ebp-24], 0
lea ebx, [ebp-24]
push ebx
mov dword ptr [ebp-44], 0
lea ebx, [ebp-44]
push ebx
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _SYMBCHECKCONSTASSIGN
add esp, 28
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
je .L_01A1
cmp dword ptr [ebp-24], 0
je .L_01A3
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .L_01A5
push offset _Lt_01A6
push 1
push 0
push dword ptr [ebp-24]
call _ERRREPORTWARN
add esp, 16
.L_01A5:
.L_01A4:
jmp .L_01A2
.L_01A3:
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
jne .L_01A8
mov eax, dword ptr [_ENV+200]
and eax, 128
test eax, eax
je .L_01AA
push 0
push 1
push 0
push 40
call _ERRREPORTWARN
add esp, 16
.L_01AA:
.L_01A9:
.L_01A8:
.L_01A7:
.L_01A2:
.L_01A1:
.L_01A0:
.L_019E:
.L_019D:
cmp dword ptr [_ENV+104], 0
jne .L_01AC
cmp dword ptr [ebp-28], 0
je .L_01AE
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_01AF
mov dword ptr [ebp-44], 24
jmp .L_01C6
.L_01AF:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_01C6:
cmp dword ptr [ebp-44], 16
jne .L_01B2
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_01B3
mov dword ptr [ebp-48], 24
jmp .L_01C7
.L_01B3:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-48], eax
.L_01C7:
mov eax, dword ptr [ebp-48]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
.L_01B2:
.L_01B1:
.L_01AE:
.L_01AD:
.L_01AC:
.L_01AB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWOVLCONV
_ASTNEWOVLCONV:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01D2:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
lea eax, [ebp-8]
push eax
call _ASTTRYOVLOPCASTCONV
add esp, 20
test eax, eax
je .L_01D5
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01D3
.L_01D5:
.L_01D4:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_01D3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTUPDATECONVFD2FS
_ASTUPDATECONVFD2FS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_01D6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
jne .L_01D9
jmp .L_01D7
.L_01D9:
.L_01D8:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_01DA
mov dword ptr [ebp-4], 24
jmp .L_01E0
.L_01DA:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.L_01E0:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, 4
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_01DC
mov dword ptr [ebp-8], 24
jmp .L_01E1
.L_01DC:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_01E1:
cmp dword ptr [ebp-8], 15
jne .L_01DF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
.L_01DF:
.L_01DE:
.L_01D7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADCONV
_ASTLOADCONV:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_01E6
mov dword ptr [ebp-4], 0
jmp .L_01E4
.L_01E6:
.L_01E5:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .L_01E8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_01EA
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
call dword ptr [_IR+224]
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [eax+16]
mov dword ptr [ecx+20], ebx
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call dword ptr [_IR+56]
add esp, 8
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 0
je .L_01EC
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+4], 16
jne .L_01EE
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+4], 15
jne .L_01F0
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+16], 0
jne .L_01F2
push 0
push dword ptr [ebp-16]
push 74
call dword ptr [_IR+96]
add esp, 12
.L_01F2:
.L_01F1:
.L_01F0:
.L_01EF:
.L_01EE:
.L_01ED:
.L_01EC:
.L_01EB:
jmp .L_01E9
.L_01EA:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp-16]
call dword ptr [_IR+252]
add esp, 12
.L_01E9:
.L_01E8:
.L_01E7:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_01E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSKIPCONSTCASTS
_ASTSKIPCONSTCASTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01F3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_01F6
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jne .L_01F8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.L_01F8:
.L_01F7:
.L_01F6:
.L_01F5:
.L_01F4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSKIPNOCONVCAST
_ASTSKIPNOCONVCAST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01F9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_01FC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_01FE
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-4], ebx
.L_01FE:
.L_01FD:
.L_01FC:
.L_01FB:
.L_01FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREMOVENOCONVCAST
_ASTREMOVENOCONVCAST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0201:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_0204
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0206
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
.L_0206:
.L_0205:
.L_0204:
.L_0203:
.L_0202:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSKIPCASTS
_ASTSKIPCASTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0209:
.L_020B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_020C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
jmp .L_020B
.L_020C:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_020A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREMOVECASTS
_ASTREMOVECASTS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_020D:
.L_020F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_0210
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
jmp .L_020F
.L_0210:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_020E:
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
_HCONSTCONV:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.L_005E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .L_0060
mov dword ptr [ebp-8], 24
jmp .L_0211
.L_0060:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0211:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .L_0063
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_0064
mov dword ptr [ebp-16], 24
jmp .L_0212
.L_0064:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_0212:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .L_0067
.L_0069:
mov eax, dword ptr [ebp-4]
and eax, 511
cmp eax, 16
jne .L_006B
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
fstp dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
fld dword ptr [ebp-24]
fstp qword ptr [eax+20]
.L_006B:
.L_006A:
jmp .L_0066
.L_006C:
jmp .L_0066
.L_006D:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
push eax
fldz
fcomip
setnz al
fstp st(0)
mov bl, al
pop eax
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .L_0066
.L_006E:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+20]
sub esp, 4
fistp dword ptr [esp]
mov al, byte ptr [esp]
add esp, 4
movsx ebx, al
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], ecx
jmp .L_0066
.L_006F:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+20]
sub esp, 4
fistp dword ptr [esp]
mov cl, byte ptr [esp]
add esp, 4
movzx eax, cl
mov ebx, 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .L_0066
.L_0070:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
sub esp, 4
fistp word ptr [esp]
pop ebx
movsx ecx, bx
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .L_0066
.L_0071:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+20]
sub esp, 4
fistp dword ptr [esp]
pop ax
add esp, 2
movzx ebx, ax
mov ecx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], ecx
jmp .L_0066
.L_0072:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+20]
sub esp, 4
fistp dword ptr [esp]
pop ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .L_0066
.L_0073:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
sub esp, 8
fistp qword ptr [esp]
pop ebx
add esp, 4
mov ecx, ebx
mov eax, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .L_0066
.L_0074:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+20]
sub esp, 8
fistp qword ptr [esp]
pop ebx
pop eax
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_0066
.L_0075:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+20]
fld qword ptr [_Lt_0213]
fcomip st, st(1)
fstp st(0)
ja .L_0076
mov ebx, dword ptr [ebp+12]
fld qword ptr [_Lt_0215]
fmul qword ptr [ebx+20]
sub esp, 8
fistp qword ptr [esp]
pop eax
pop ebx
shld ebx, eax, 1
shl eax, 1
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
jmp .L_0214
.L_0076:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], ebx
.L_0214:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .L_0066
.L_0067:
cmp dword ptr [ebp-20], 10
ja .L_0066
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0078+eax*4]
_.L_0078:
.int .L_006D
.int .L_006E
.int .L_006F
.int .L_0070
.int .L_0071
.int .L_0072
.int .L_0073
.int .L_0074
.int .L_0075
.int .L_0069
.int .L_006C
.L_0066:
jmp .L_0062
.L_0063:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_007A
mov dword ptr [ebp-12], 24
jmp .L_0216
.L_007A:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0216:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0079
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_007C
mov dword ptr [ebp-16], 24
jmp .L_0217
.L_007C:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0217:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_007F
.L_0081:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+20]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+20]
jmp .L_007E
.L_0082:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+20]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+20]
jmp .L_007E
.L_0083:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
or eax, dword ptr [ebx+24]
cmp eax, 0
setne al
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_007E
.L_0084:
mov ecx, dword ptr [ebp+12]
mov bl, byte ptr [ecx+20]
movsx eax, bl
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_007E
.L_0085:
mov eax, dword ptr [ebp+12]
mov cl, byte ptr [eax+20]
movzx ebx, cl
mov eax, 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_007E
.L_0086:
mov ebx, dword ptr [ebp+12]
mov ax, word ptr [ebx+20]
movsx ecx, ax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_007E
.L_0087:
mov ecx, dword ptr [ebp+12]
mov bx, word ptr [ecx+20]
movzx eax, bx
mov ecx, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_007E
.L_0088:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_007E
.L_0089:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov ecx, eax
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_007E
.L_008A:
jmp .L_007E
.L_008B:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .L_007E
.L_007F:
cmp dword ptr [ebp-20], 10
ja .L_007E
mov esi, dword ptr [ebp-20]
jmp dword ptr [_.L_008C+esi*4]
_.L_008C:
.int .L_0083
.int .L_0084
.int .L_0085
.int .L_0086
.int .L_0087
.int .L_0088
.int .L_0089
.int .L_008A
.int .L_008B
.int .L_0081
.int .L_0082
.L_007E:
jmp .L_0062
.L_0079:
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_008D
mov dword ptr [ebp-16], 24
jmp .L_0218
.L_008D:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-16], esi
.L_0218:
mov esi, dword ptr [ebp-16]
imul esi, 28
mov eax, dword ptr [_SYMB_DTYPETB+esi+20]
mov dword ptr [ebp-20], eax
jmp .L_0090
.L_0092:
mov eax, dword ptr [ebp+12]
fild qword ptr [eax+20]
cmp dword ptr [eax+24], 0
jns .L_0219
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_0219:
mov eax, dword ptr [ebp+12]
fstp qword ptr [eax+20]
jmp .L_008F
.L_0093:
mov eax, dword ptr [ebp+12]
fild qword ptr [eax+20]
cmp dword ptr [eax+24], 0
jns .L_021A
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_021A:
mov eax, dword ptr [ebp+12]
fstp qword ptr [eax+20]
jmp .L_008F
.L_0094:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
or ebx, dword ptr [eax+24]
cmp ebx, 0
setne bl
movzx esi, bl
neg esi
mov eax, esi
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .L_008F
.L_0095:
mov esi, dword ptr [ebp+12]
mov al, byte ptr [esi+20]
movsx ebx, al
mov esi, ebx
sar esi, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], esi
jmp .L_008F
.L_0096:
mov ebx, dword ptr [ebp+12]
mov al, byte ptr [ebx+20]
movzx esi, al
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ebx
jmp .L_008F
.L_0097:
mov esi, dword ptr [ebp+12]
mov bx, word ptr [esi+20]
movsx eax, bx
mov esi, eax
sar esi, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .L_008F
.L_0098:
mov eax, dword ptr [ebp+12]
mov si, word ptr [eax+20]
movzx ebx, si
mov eax, 0
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+20], ebx
mov dword ptr [esi+24], eax
jmp .L_008F
.L_0099:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov esi, eax
mov ebx, esi
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ebx
jmp .L_008F
.L_009A:
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+20]
mov eax, ebx
mov esi, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .L_008F
.L_009B:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], ebx
jmp .L_008F
.L_009C:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .L_008F
.L_0090:
cmp dword ptr [ebp-20], 10
ja .L_008F
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_009D+eax*4]
_.L_009D:
.int .L_0094
.int .L_0095
.int .L_0096
.int .L_0097
.int .L_0098
.int .L_0099
.int .L_009A
.int .L_009B
.int .L_009C
.int .L_0092
.int .L_0093
.L_008F:
.L_0062:
.L_005F:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETTYPEMISMATCHERRMSG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009E:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00A1
mov dword ptr [ebp-4], 28
jmp .L_00A0
.L_00A1:
mov dword ptr [ebp-4], 20
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_00B5
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .L_00B7
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTCHECKCONVNONPTRTOPTR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B3
.L_00B7:
.L_00B6:
jmp .L_00B4
.L_00B5:
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
je .L_00B8
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00B9
mov dword ptr [ebp-8], 24
jmp .L_021B
.L_00B9:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_021B:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_00BC
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 16
jne .L_00BE
push dword ptr [ebp+20]
call _ASTCONSTEQZERO
add esp, 4
test eax, eax
je .L_00C0
jmp .L_00B3
.L_00C0:
.L_00BF:
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00C1
mov dword ptr [ebp-12], 24
jmp .L_021C
.L_00C1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_021C:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_ENV+296]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
jne .L_00C4
jmp .L_00B3
.L_00C4:
.L_00C3:
.L_00BC:
.L_00BB:
push dword ptr [ebp+24]
call _HGETTYPEMISMATCHERRMSG
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00B3
jmp .L_00B4
.L_00B8:
jmp .L_00B3
.L_00B4:
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 20
jne .L_00C6
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .L_00C8
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
je .L_00CA
mov eax, dword ptr [ebp+16]
and eax, 31
test eax, eax
je .L_00CC
mov dword ptr [ebp-4], 300
jmp .L_00B3
.L_00CC:
.L_00CB:
jmp .L_00C9
.L_00CA:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00CE
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00D0
mov dword ptr [ebp-4], 301
jmp .L_00B3
.L_00D0:
.L_00CF:
.L_00CE:
.L_00CD:
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C5:
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
jne .L_00D2
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+8]
cmp dword ptr [ebx+96], 0
je .L_00D4
mov ebx, dword ptr [ebp+8]
and ebx, 31
cmp ebx, 20
je .L_00D6
mov ebx, dword ptr [ebp+8]
and ebx, 31
test ebx, ebx
je .L_00D8
mov dword ptr [ebp-4], 302
jmp .L_00B3
.L_00D8:
.L_00D7:
jmp .L_00D5
.L_00D6:
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00DA
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00DC
mov dword ptr [ebp-4], 303
.L_00DC:
.L_00DB:
.L_00DA:
.L_00D9:
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ASTTRYOVLOPCASTCONV:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0107:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+24]
and eax, 64
test eax, eax
je .L_010A
mov dword ptr [ebp-16], 4
.L_010A:
.L_0109:
push dword ptr [ebp-16]
lea eax, [ebp-12]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_010C
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTBUILDCALL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .L_0108
jmp .L_010B
.L_010C:
cmp dword ptr [ebp-12], 0
je .L_010E
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], -1
jmp .L_0108
.L_010E:
.L_010D:
.L_010B:
mov dword ptr [ebp-4], 0
.L_0108:
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
_Lt_01A6:	.ascii	" in function pointer\0"
.balign 8
_Lt_0213:	.quad	0x4341C37937E08000
.balign 8
_Lt_0215:	.quad	0x3FE0000000000000
