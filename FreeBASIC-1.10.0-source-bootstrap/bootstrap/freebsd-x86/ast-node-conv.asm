	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCHECKCONVNONPTRTOPTR
ASTCHECKCONVNONPTRTOPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00A3
mov dword ptr [ebp-8], 24
jmp .L_00AF
.L_00A3:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00AF:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .L_00A6
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_00A8
push dword ptr [ebp+16]
call ASTCONSTEQZERO
add esp, 4
test eax, eax
je .L_00AA
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00AB
mov dword ptr [ebp-12], 24
jmp .L_00B0
.L_00AB:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00B0:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [ENV+296]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
jne .L_00AE
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00AE:
.L_00AD:
.L_00A6:
.L_00A5:
push dword ptr [ebp+20]
call HGETTYPEMISMATCHERRMSG
add esp, 4
mov dword ptr [ebp-4], eax
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCHECKCONV
ASTCHECKCONV:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00DC:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_00DE
mov dword ptr [ebp-12], 24
jmp .L_00F9
.L_00DE:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_00F9:
mov ebx, dword ptr [ebp-12]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00E0
mov dword ptr [ebp-16], 24
jmp .L_00FA
.L_00E0:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_00FA:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-24]
je .L_00E3
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_00E4
mov dword ptr [ebp-28], 24
jmp .L_00FC
.L_00E4:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_00FC:
mov ebx, dword ptr [ebp-28]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00E6
mov dword ptr [ebp-32], 24
jmp .L_00FD
.L_00E6:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_00FD:
mov ebx, dword ptr [ebp-32]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-36]
je .L_00E9
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00E9:
.L_00E8:
jmp .L_00DD
.L_00E3:
.L_00E2:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00EA
mov dword ptr [ebp-20], 24
jmp .L_00FF
.L_00EA:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00FF:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 2
jne .L_00ED
jmp .L_00DD
.L_00ED:
.L_00EC:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKPTR
add esp, 20
test eax, eax
je .L_00EF
jmp .L_00DD
.L_00EF:
.L_00EE:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00F0
mov dword ptr [ebp-24], 24
jmp .L_0100
.L_00F0:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_0100:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .L_00F5
.L_00F6:
cmp dword ptr [ebp-28], 7
jne .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .L_00F8
jmp .L_00DD
.L_00F8:
.L_00F7:
.L_00F4:
.L_00F2:
mov dword ptr [ebp-4], -1
.L_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTRYOVLSTRINGCONV
ASTTRYOVLSTRINGCONV:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_010E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .L_0111
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .L_0113
mov dword ptr [ebp-20], 4
jmp .L_0112
.L_0113:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .L_0114
mov dword ptr [ebp-20], 7
jmp .L_0112
.L_0114:
mov dword ptr [ebp-20], 0
.L_0112:
cmp dword ptr [ebp-20], 0
je .L_0116
push 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push dword ptr [ebp-20]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0118
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp-20]
cmp ebx, eax
jne .L_011A
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .L_010F
.L_011A:
.L_0119:
.L_0118:
.L_0117:
.L_0116:
.L_0115:
.L_0111:
.L_0110:
mov dword ptr [ebp-4], 0
.L_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONV
ASTNEWCONV:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.L_011B:
cmp dword ptr [ebp+24], 0
je .L_011E
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
.L_011E:
.L_011D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 511
mov eax, dword ptr [ebp+8]
and eax, 511
cmp ebx, eax
jne .L_0120
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .L_0122
mov ebx, dword ptr [ebp-16]
and ebx, 261632
mov eax, dword ptr [ebp+8]
and eax, 261632
cmp ebx, eax
je .L_0124
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_0126
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .L_0125
.L_0126:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call ASTNEWNODE
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
jne .L_0128
mov ebx, dword ptr [ENV+200]
and ebx, 128
test ebx, ebx
je .L_012A
push 0
push 1
push 0
push 40
call ERRREPORTWARN
add esp, 16
.L_012A:
.L_0129:
.L_0128:
.L_0127:
.L_0125:
jmp .L_0123
.L_0124:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-8], ebx
.L_0123:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_011C
.L_0122:
.L_0121:
.L_0120:
.L_011F:
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_012B
mov dword ptr [ebp-32], 24
jmp .L_01B4
.L_012B:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_01B4:
cmp dword ptr [ebp-32], 20
jne .L_012E
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
je .L_0130
mov dword ptr [ebp-48], 0
push 4
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_0132
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_011C
.L_0132:
.L_0131:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .L_0134
push 4
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 36
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
jmp .L_0133
.L_0134:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .L_0135
push 4
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 39
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
.L_0135:
.L_0133:
cmp dword ptr [ebp-48], 0
je .L_0137
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_011C
.L_0137:
.L_0136:
mov eax, dword ptr [ebp+20]
and eax, 2
je .L_0139
lea eax, [ebp+16]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 4
test eax, eax
je .L_013B
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-16], ecx
.L_013B:
.L_013A:
.L_0139:
.L_0138:
.L_0130:
.L_012F:
.L_012E:
.L_012D:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
lea ecx, [ebp-8]
push ecx
call ASTTRYOVLOPCASTCONV
add esp, 20
test eax, eax
je .L_013D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_011C
.L_013D:
.L_013C:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_013E
mov dword ptr [ebp-44], 24
jmp .L_01B5
.L_013E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-44], eax
.L_01B5:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
jmp .L_0141
.L_0143:
jmp .L_011C
jmp .L_0140
.L_0144:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0145
mov dword ptr [ebp-52], 24
jmp .L_01B6
.L_0145:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.L_01B6:
cmp dword ptr [ebp-52], 20
je .L_0148
jmp .L_011C
.L_0148:
.L_0147:
mov eax, dword ptr [ebp+20]
and eax, 128
test eax, eax
je .L_014A
jmp .L_011C
.L_014A:
.L_0149:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_014C
jmp .L_011C
.L_014C:
.L_014B:
jmp .L_0140
.L_014D:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_014E
mov dword ptr [ebp-52], 24
jmp .L_01B7
.L_014E:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.L_01B7:
cmp dword ptr [ebp-52], 20
jne .L_0151
jmp .L_011C
.L_0151:
.L_0150:
jmp .L_0140
.L_0141:
cmp dword ptr [ebp-48], 20
ja .L_014D
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0152+eax*4]
.L_0152:
.int .L_0143
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_0143
.int .L_014D
.int .L_014D
.int .L_0143
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_014D
.int .L_0143
.int .L_0143
.int .L_014D
.int .L_0144
.L_0140:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0153
mov dword ptr [ebp-36], 24
jmp .L_01B8
.L_0153:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-36], eax
.L_01B8:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+20]
and ecx, 1
je .L_0156
cmp dword ptr [ebp-12], 0
je .L_0158
jmp .L_011C
.L_0158:
.L_0157:
.L_0156:
.L_0155:
mov ecx, dword ptr [ebp+20]
and ecx, 8
test ecx, ecx
jne .L_015A
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKPTR
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_015C
cmp dword ptr [ebp+24], 0
je .L_015E
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax], ecx
.L_015E:
.L_015D:
jmp .L_011C
.L_015C:
.L_015B:
.L_015A:
.L_0159:
mov ecx, dword ptr [ebp+20]
and ecx, 2
je .L_0160
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_0161
mov dword ptr [ebp-44], 24
jmp .L_01B9
.L_0161:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_01B9:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
jmp .L_0164
.L_0166:
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call RTLSTRTOVAL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_011C
jmp .L_0163
.L_0164:
mov eax, dword ptr [ebp-48]
add eax, 4294967292
cmp eax, 14
ja .L_0163
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0167+eax*4-16]
.L_0167:
.int .L_0166
.int .L_0163
.int .L_0163
.int .L_0166
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0166
.int .L_0166
.L_0163:
jmp .L_015F
.L_0160:
cmp dword ptr [ebp-12], 2
jne .L_0169
jmp .L_011C
jmp .L_0168
.L_0169:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_016A
mov dword ptr [ebp-44], 24
jmp .L_01BA
.L_016A:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_01BA:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 4
je .L_016F
.L_0170:
cmp dword ptr [ebp-48], 7
jne .L_016E
.L_016F:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .L_0172
jmp .L_011C
.L_0172:
.L_0171:
.L_016E:
.L_016C:
.L_0168:
.L_015F:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_0174
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTCHECKCONST
add esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HCONSTCONV
add esp, 8
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_011C
.L_0174:
.L_0173:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0175
mov dword ptr [ebp-40], 24
jmp .L_01BB
.L_0175:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_01BB:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
cmp dword ptr [ebp-12], ecx
jne .L_0178
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0179
mov dword ptr [ebp-44], 24
jmp .L_01BC
.L_0179:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_01BC:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
cmp dword ptr [ebp-48], 20
jne .L_017D
.L_017E:
mov dword ptr [ebp-28], 0
jmp .L_017B
.L_017D:
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
je .L_0181
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-16], eax
jne .L_0183
mov dword ptr [ebp-28], 0
.L_0183:
.L_0182:
jmp .L_0180
.L_0181:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_0184
mov dword ptr [ebp-52], 24
jmp .L_01BD
.L_0184:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.L_01BD:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0186
mov dword ptr [ebp-56], 24
jmp .L_01BE
.L_0186:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-56], eax
.L_01BE:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ecx, dword ptr [ebp-60]
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ecx+4], ebx
jne .L_0189
mov dword ptr [ebp-28], 0
.L_0189:
.L_0188:
.L_0180:
.L_017F:
.L_017B:
.L_0178:
.L_0177:
mov ebx, dword ptr [IR+272]
and ebx, 1
test ebx, ebx
je .L_018B
mov ebx, dword ptr [ebp-12]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_018C
mov dword ptr [ebp-44], 24
jmp .L_01C0
.L_018C:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_01C0:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-48]
je .L_018F
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_0190
mov dword ptr [ebp-52], 24
jmp .L_01C2
.L_0190:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_01C2:
mov ecx, dword ptr [ebp-52]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0192
mov dword ptr [ebp-56], 24
jmp .L_01C3
.L_0192:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-56], ecx
.L_01C3:
mov ecx, dword ptr [ebp-56]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], eax
je .L_0195
mov dword ptr [ebp-28], -1
.L_0195:
.L_0194:
.L_018F:
.L_018E:
.L_018B:
.L_018A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .L_0197
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 0
jne .L_0199
cmp dword ptr [ebp-28], 0
jne .L_019B
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_011C
.L_019B:
.L_019A:
.L_0199:
.L_0198:
.L_0197:
.L_0196:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call ASTNEWNODE
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
je .L_019D
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
call SYMBCHECKCONSTASSIGN
add esp, 28
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
je .L_01A0
cmp dword ptr [ebp-24], 0
je .L_01A2
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .L_01A4
push offset Lt_01A5
push 1
push 0
push dword ptr [ebp-24]
call ERRREPORTWARN
add esp, 16
.L_01A4:
.L_01A3:
jmp .L_01A1
.L_01A2:
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
jne .L_01A7
mov eax, dword ptr [ENV+200]
and eax, 128
test eax, eax
je .L_01A9
push 0
push 1
push 0
push 40
call ERRREPORTWARN
add esp, 16
.L_01A9:
.L_01A8:
.L_01A7:
.L_01A6:
.L_01A1:
.L_01A0:
.L_019F:
.L_019D:
.L_019C:
cmp dword ptr [ENV+104], 0
jne .L_01AB
cmp dword ptr [ebp-28], 0
je .L_01AD
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_01AE
mov dword ptr [ebp-44], 24
jmp .L_01C5
.L_01AE:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_01C5:
cmp dword ptr [ebp-44], 16
jne .L_01B1
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_01B2
mov dword ptr [ebp-48], 24
jmp .L_01C6
.L_01B2:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-48], eax
.L_01C6:
mov eax, dword ptr [ebp-48]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
.L_01B1:
.L_01B0:
.L_01AD:
.L_01AC:
.L_01AB:
.L_01AA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWOVLCONV
ASTNEWOVLCONV:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01D1:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
lea eax, [ebp-8]
push eax
call ASTTRYOVLOPCASTCONV
add esp, 20
test eax, eax
je .L_01D4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01D2
.L_01D4:
.L_01D3:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_01D2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTUPDATECONVFD2FS
ASTUPDATECONVFD2FS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_01D5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
jne .L_01D8
jmp .L_01D6
.L_01D8:
.L_01D7:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_01D9
mov dword ptr [ebp-4], 24
jmp .L_01DF
.L_01D9:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.L_01DF:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, 4
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_01DB
mov dword ptr [ebp-8], 24
jmp .L_01E0
.L_01DB:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_01E0:
cmp dword ptr [ebp-8], 15
jne .L_01DE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
.L_01DE:
.L_01DD:
.L_01D6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADCONV
ASTLOADCONV:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_01E5
mov dword ptr [ebp-4], 0
jmp .L_01E3
.L_01E5:
.L_01E4:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .L_01E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_01E9
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
call dword ptr [IR+224]
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [eax+16]
mov dword ptr [ecx+20], ebx
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call dword ptr [IR+56]
add esp, 8
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 0
je .L_01EB
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+4], 16
jne .L_01ED
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+4], 15
jne .L_01EF
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+16], 0
jne .L_01F1
push 0
push dword ptr [ebp-16]
push 74
call dword ptr [IR+96]
add esp, 12
.L_01F1:
.L_01F0:
.L_01EF:
.L_01EE:
.L_01ED:
.L_01EC:
.L_01EB:
.L_01EA:
jmp .L_01E8
.L_01E9:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp-16]
call dword ptr [IR+252]
add esp, 12
.L_01E8:
.L_01E7:
.L_01E6:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_01E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSKIPCONSTCASTS
ASTSKIPCONSTCASTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01F2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_01F5
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jne .L_01F7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.L_01F7:
.L_01F6:
.L_01F5:
.L_01F4:
.L_01F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSKIPNOCONVCAST
ASTSKIPNOCONVCAST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01F8:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_01FB
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
je .L_01FD
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-4], ebx
.L_01FD:
.L_01FC:
.L_01FB:
.L_01FA:
.L_01F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREMOVENOCONVCAST
ASTREMOVENOCONVCAST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0200:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_0203
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
je .L_0205
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
.L_0205:
.L_0204:
.L_0203:
.L_0202:
.L_0201:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSKIPCASTS
ASTSKIPCASTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0208:
.L_020A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_020B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
jmp .L_020A
.L_020B:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_0209:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREMOVECASTS
ASTREMOVECASTS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_020C:
.L_020E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_020F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
jmp .L_020E
.L_020F:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_020D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
HCONSTCONV:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.L_005D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .L_005F
mov dword ptr [ebp-8], 24
jmp .L_0210
.L_005F:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0210:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .L_0062
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_0063
mov dword ptr [ebp-16], 24
jmp .L_0211
.L_0063:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_0211:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .L_0066
.L_0068:
mov eax, dword ptr [ebp-4]
and eax, 511
cmp eax, 16
jne .L_006A
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
fstp dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
fld dword ptr [ebp-24]
fstp qword ptr [eax+20]
.L_006A:
.L_0069:
jmp .L_0065
.L_006B:
jmp .L_0065
.L_006C:
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
jmp .L_0065
.L_006D:
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
jmp .L_0065
.L_006E:
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
jmp .L_0065
.L_006F:
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
jmp .L_0065
.L_0070:
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
jmp .L_0065
.L_0071:
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
jmp .L_0065
.L_0072:
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
jmp .L_0065
.L_0073:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+20]
sub esp, 8
fistp qword ptr [esp]
pop ebx
pop eax
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_0065
.L_0074:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+20]
fld qword ptr [Lt_0212]
fcomip st, st(1)
fstp st(0)
ja .L_0075
mov ebx, dword ptr [ebp+12]
fld qword ptr [Lt_0214]
fmul qword ptr [ebx+20]
sub esp, 8
fistp qword ptr [esp]
pop eax
pop ebx
shld ebx, eax, 1
shl eax, 1
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
jmp .L_0213
.L_0075:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], ebx
.L_0213:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .L_0065
.L_0066:
cmp dword ptr [ebp-20], 10
ja .L_0065
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0077+eax*4]
.L_0077:
.int .L_006C
.int .L_006D
.int .L_006E
.int .L_006F
.int .L_0070
.int .L_0071
.int .L_0072
.int .L_0073
.int .L_0074
.int .L_0068
.int .L_006B
.L_0065:
jmp .L_0061
.L_0062:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_0079
mov dword ptr [ebp-12], 24
jmp .L_0215
.L_0079:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0215:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0078
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_007B
mov dword ptr [ebp-16], 24
jmp .L_0216
.L_007B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0216:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_007E
.L_0080:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+20]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+20]
jmp .L_007D
.L_0081:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+20]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+20]
jmp .L_007D
.L_0082:
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
jmp .L_007D
.L_0083:
mov ecx, dword ptr [ebp+12]
mov bl, byte ptr [ecx+20]
movsx eax, bl
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_007D
.L_0084:
mov eax, dword ptr [ebp+12]
mov cl, byte ptr [eax+20]
movzx ebx, cl
mov eax, 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_007D
.L_0085:
mov ebx, dword ptr [ebp+12]
mov ax, word ptr [ebx+20]
movsx ecx, ax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_007D
.L_0086:
mov ecx, dword ptr [ebp+12]
mov bx, word ptr [ecx+20]
movzx eax, bx
mov ecx, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_007D
.L_0087:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_007D
.L_0088:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov ecx, eax
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_007D
.L_0089:
jmp .L_007D
.L_008A:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .L_007D
.L_007E:
cmp dword ptr [ebp-20], 10
ja .L_007D
mov esi, dword ptr [ebp-20]
jmp dword ptr [.L_008B+esi*4]
.L_008B:
.int .L_0082
.int .L_0083
.int .L_0084
.int .L_0085
.int .L_0086
.int .L_0087
.int .L_0088
.int .L_0089
.int .L_008A
.int .L_0080
.int .L_0081
.L_007D:
jmp .L_0061
.L_0078:
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_008C
mov dword ptr [ebp-16], 24
jmp .L_0217
.L_008C:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-16], esi
.L_0217:
mov esi, dword ptr [ebp-16]
imul esi, 28
mov eax, dword ptr [SYMB_DTYPETB+esi+20]
mov dword ptr [ebp-20], eax
jmp .L_008F
.L_0091:
mov eax, dword ptr [ebp+12]
fild qword ptr [eax+20]
cmp dword ptr [eax+24], 0
jns .L_0218
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_0218:
mov eax, dword ptr [ebp+12]
fstp qword ptr [eax+20]
jmp .L_008E
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
jmp .L_008E
.L_0093:
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
jmp .L_008E
.L_0094:
mov esi, dword ptr [ebp+12]
mov al, byte ptr [esi+20]
movsx ebx, al
mov esi, ebx
sar esi, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], esi
jmp .L_008E
.L_0095:
mov ebx, dword ptr [ebp+12]
mov al, byte ptr [ebx+20]
movzx esi, al
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ebx
jmp .L_008E
.L_0096:
mov esi, dword ptr [ebp+12]
mov bx, word ptr [esi+20]
movsx eax, bx
mov esi, eax
sar esi, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .L_008E
.L_0097:
mov eax, dword ptr [ebp+12]
mov si, word ptr [eax+20]
movzx ebx, si
mov eax, 0
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+20], ebx
mov dword ptr [esi+24], eax
jmp .L_008E
.L_0098:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov esi, eax
mov ebx, esi
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ebx
jmp .L_008E
.L_0099:
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+20]
mov eax, ebx
mov esi, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .L_008E
.L_009A:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], ebx
jmp .L_008E
.L_009B:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .L_008E
.L_008F:
cmp dword ptr [ebp-20], 10
ja .L_008E
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_009C+eax*4]
.L_009C:
.int .L_0093
.int .L_0094
.int .L_0095
.int .L_0096
.int .L_0097
.int .L_0098
.int .L_0099
.int .L_009A
.int .L_009B
.int .L_0091
.int .L_0092
.L_008E:
.L_0061:
.L_005E:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETTYPEMISMATCHERRMSG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009D:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00A0
mov dword ptr [ebp-4], 28
jmp .L_009F
.L_00A0:
mov dword ptr [ebp-4], 20
.L_009F:
.L_009E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00B1:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_00B4
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .L_00B6
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTCHECKCONVNONPTRTOPTR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B2
.L_00B6:
.L_00B5:
jmp .L_00B3
.L_00B4:
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
je .L_00B7
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00B8
mov dword ptr [ebp-8], 24
jmp .L_021A
.L_00B8:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_021A:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .L_00BB
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 16
jne .L_00BD
push dword ptr [ebp+20]
call ASTCONSTEQZERO
add esp, 4
test eax, eax
je .L_00BF
jmp .L_00B2
.L_00BF:
.L_00BE:
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00C0
mov dword ptr [ebp-12], 24
jmp .L_021B
.L_00C0:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_021B:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [ENV+296]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
jne .L_00C3
jmp .L_00B2
.L_00C3:
.L_00C2:
.L_00BB:
.L_00BA:
push dword ptr [ebp+24]
call HGETTYPEMISMATCHERRMSG
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00B2
jmp .L_00B3
.L_00B7:
jmp .L_00B2
.L_00B3:
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 20
jne .L_00C5
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .L_00C7
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
je .L_00C9
mov eax, dword ptr [ebp+16]
and eax, 31
test eax, eax
je .L_00CB
mov dword ptr [ebp-4], 300
jmp .L_00B2
.L_00CB:
.L_00CA:
jmp .L_00C8
.L_00C9:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00CD
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00CF
mov dword ptr [ebp-4], 301
jmp .L_00B2
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C4:
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
jne .L_00D1
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+8]
cmp dword ptr [ebx+96], 0
je .L_00D3
mov ebx, dword ptr [ebp+8]
and ebx, 31
cmp ebx, 20
je .L_00D5
mov ebx, dword ptr [ebp+8]
and ebx, 31
test ebx, ebx
je .L_00D7
mov dword ptr [ebp-4], 302
jmp .L_00B2
.L_00D7:
.L_00D6:
jmp .L_00D4
.L_00D5:
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00D9
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_00DB
mov dword ptr [ebp-4], 303
.L_00DB:
.L_00DA:
.L_00D9:
.L_00D8:
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
.L_00B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASTTRYOVLOPCASTCONV:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0106:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+24]
and eax, 64
test eax, eax
je .L_0109
mov dword ptr [ebp-16], 4
.L_0109:
.L_0108:
push dword ptr [ebp-16]
lea eax, [ebp-12]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_010B
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .L_0107
jmp .L_010A
.L_010B:
cmp dword ptr [ebp-12], 0
je .L_010D
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], -1
jmp .L_0107
.L_010D:
.L_010C:
.L_010A:
mov dword ptr [ebp-4], 0
.L_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_01A5:	.ascii	" in function pointer\0"
.balign 8
Lt_0212:	.quad	0x4341C37937E08000
.balign 8
Lt_0214:	.quad	0x3FE0000000000000
