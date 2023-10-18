	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTINCOFFSET
_ASTINCOFFSET:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_00FB
.L_00FD:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov dword ptr [ebp-4], -1
jmp .L_00FA
.L_00FE:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ecx+20], ebx
adc dword ptr [ecx+24], eax
mov dword ptr [ebp-4], -1
jmp .L_00FA
.L_00FF:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov dword ptr [ebp-4], -1
jmp .L_00FA
.L_0100:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .L_0103
.L_0104:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0101
.L_0103:
cmp dword ptr [ebp-12], 2
jne .L_0105
.L_0106:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
.L_0105:
.L_0101:
jmp .L_00FA
.L_0107:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_0108:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jne .L_010A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0109
.L_010A:
mov dword ptr [ebp-4], 0
.L_0109:
jmp .L_00FA
.L_010B:
mov dword ptr [ebp-4], 0
jmp .L_00FA
.L_00FB:
mov eax, dword ptr [ebp-8]
add eax, 4294967291
cmp eax, 21
ja .L_010B
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_010C+eax*4-20]
_.L_010C:
.int .L_0108
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_0100
.int .L_010B
.int .L_00FD
.int .L_00FE
.int .L_0107
.int .L_00FF
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_0107
.L_00FA:
.L_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTOPTASSIGNMENT
_ASTOPTASSIGNMENT:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_02C2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_02C5
jmp .L_02C3
.L_02C5:
.L_02C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 2
jne .L_02C8
.L_02C9:
jmp .L_02C6
.L_02C8:
cmp dword ptr [ebp-44], 15
je .L_02CB
.L_02CC:
cmp dword ptr [ebp-44], 13
jne .L_02CA
.L_02CB:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTOPTASSIGNMENT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTOPTASSIGNMENT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
jmp .L_02C3
jmp .L_02C6
.L_02CA:
jmp .L_02C3
.L_02CD:
.L_02C6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_02CE
mov dword ptr [ebp-44], 24
jmp .L_0304
.L_02CE:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0304:
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 17
je .L_02D3
.L_02D4:
cmp dword ptr [ebp-48], 18
je .L_02D3
.L_02D5:
cmp dword ptr [ebp-48], 7
jne .L_02D2
.L_02D3:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HOPTSTRASSIGNMENT
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_02C3
.L_02D2:
.L_02D0:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_02D6
mov dword ptr [ebp-24], 24
jmp .L_0305
.L_02D6:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-24], eax
.L_0305:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_02D9
mov ebx, dword ptr [_IR+272]
and ebx, 512
test ebx, ebx
jne .L_02DB
jmp .L_02C3
.L_02DB:
.L_02DA:
jmp .L_02D8
.L_02D9:
mov ebx, dword ptr [_IR+272]
and ebx, 8
test ebx, ebx
jne .L_02DD
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_02DF
cmp dword ptr [ebp-20], 1
jne .L_02E1
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_02E2
mov dword ptr [ebp-44], 24
jmp .L_0306
.L_02E2:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0306:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
je .L_02E5
push 0
push 0
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-16]
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_02E5:
.L_02E4:
.L_02E1:
.L_02E0:
.L_02DF:
.L_02DE:
jmp .L_02C3
.L_02DD:
.L_02DC:
.L_02D8:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_02E6
mov dword ptr [ebp-28], 24
jmp .L_0307
.L_02E6:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0307:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
jne .L_02E9
jmp .L_02C3
.L_02E9:
.L_02E8:
push dword ptr [ebp-8]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-12]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
jmp .L_02EB
.L_02ED:
jmp .L_02EA
.L_02EE:
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jle .L_02F0
jmp .L_02C3
.L_02F0:
.L_02EF:
jmp .L_02EA
.L_02F1:
jmp .L_02C3
jmp .L_02EA
.L_02EB:
mov eax, dword ptr [ebp-44]
add eax, 4294967279
cmp eax, 9
ja .L_02F1
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.L_02F2+eax*4-68]
_.L_02F2:
.int .L_02ED
.int .L_02ED
.int .L_02EE
.int .L_02ED
.int .L_02F1
.int .L_02F1
.int .L_02F1
.int .L_02F1
.int .L_02F1
.int .L_02ED
.L_02EA:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 4
jne .L_02F5
.L_02F6:
jmp .L_02F3
.L_02F5:
cmp dword ptr [ebp-44], 3
jne .L_02F7
.L_02F8:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+20]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_02FA
jmp .L_02C3
.L_02FA:
.L_02F9:
jmp .L_02F3
.L_02F7:
jmp .L_02C3
.L_02FB:
.L_02F3:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_02FC
mov dword ptr [ebp-40], 24
jmp .L_0308
.L_02FC:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.L_0308:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
je .L_02FF
jmp .L_02C3
.L_02FF:
.L_02FE:
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+56]
call _ASTSKIPNOCONVCAST
add esp, 4
push eax
push dword ptr [ebp-32]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_0301
jmp .L_02C3
.L_0301:
.L_0300:
mov eax, dword ptr [ebp-36]
and dword ptr [eax+24], -2
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-12], eax
je .L_0303
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
.L_0303:
.L_0302:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_02C3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HOPTSELFASSIGN
_HOPTSELFASSIGN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0309:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_030C
jmp .L_030A
.L_030C:
.L_030B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
je .L_030E
jmp .L_030A
.L_030E:
.L_030D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_0310
jmp .L_030A
.L_0310:
.L_030F:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
call _ASTNEWNOP
mov dword ptr [ebp-4], eax
.L_030A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HOPTSELFCOMPARE
_HOPTSELFCOMPARE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0311:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_0314
jmp .L_0312
.L_0314:
.L_0313:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .L_0316
jmp .L_0312
.L_0316:
.L_0315:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_0318
jmp .L_0312
.L_0318:
.L_0317:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-28], ebx
jmp .L_031A
.L_031C:
mov dword ptr [ebp-24], -1
jmp .L_0319
.L_031D:
mov dword ptr [ebp-24], 0
jmp .L_0319
.L_031E:
jmp .L_0312
jmp .L_0319
.L_031A:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967251
cmp ebx, 5
ja .L_031E
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_031F+ebx*4-180]
_.L_031F:
.int .L_031C
.int .L_031D
.int .L_031D
.int .L_031D
.int .L_031C
.int .L_031C
.L_0319:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
push 0
push 8
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0312:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTOPTIMIZETREE
_ASTOPTIMIZETREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_033E:
inc dword ptr [_AST+232]
push dword ptr [ebp+8]
call _HOPTASSOCADD
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTASSOCMUL
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTDISTMUL
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTACCUM1
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTACCUM2
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTREMNEG
add esp, 4
push dword ptr [ebp+8]
call _HOPTCONSTIDX
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTTOSHIFT
add esp, 4
push dword ptr [ebp+8]
call _HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTNULLOP
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTSELFASSIGN
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTSELFCOMPARE
add esp, 4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [_IR+272]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0341
push dword ptr [ebp+8]
call _HDOOPTREMCONV
add esp, 4
mov dword ptr [ebp+8], eax
.L_0341:
.L_0340:
mov eax, dword ptr [_IR+272]
and eax, 131072
test eax, eax
jne .L_0343
cmp dword ptr [_ENV+120], 1
jne .L_0345
push dword ptr [ebp+8]
call _HOPTRECIPROCAL
add esp, 4
mov dword ptr [ebp+8], eax
.L_0345:
.L_0344:
.L_0343:
.L_0342:
dec dword ptr [_AST+232]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_033F:
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
_HOPTCONSTREMNEG:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_005E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0061
push dword ptr [ebp-4]
call _HOPTCONSTREMNEG
add esp, 4
.L_0061:
.L_0060:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0063
push dword ptr [ebp-8]
call _HOPTCONSTREMNEG
add esp, 4
.L_0063:
.L_0062:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0064
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_0348
.L_0064:
mov dword ptr [ebp-16], 0
.L_0348:
cmp dword ptr [ebp-16], 0
je .L_0067
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 4
jne .L_0068
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+20]
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0349
.L_0068:
mov dword ptr [ebp-20], 0
.L_0349:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-20]
je .L_006B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 17
jne .L_006D
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+20], 29
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+60], ebx
push dword ptr [ebp-4]
call _ASTDELNODE
add esp, 4
.L_006D:
.L_006C:
.L_006B:
.L_006A:
.L_0067:
.L_0066:
.L_005F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCONSTACCUMADDSUB:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_006E:
cmp dword ptr [ebp+8], 0
jne .L_0071
mov dword ptr [ebp-4], 0
jmp .L_006F
.L_0071:
.L_0070:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .L_0073
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_006F
.L_0073:
.L_0072:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .L_0076
.L_0077:
cmp dword ptr [ebp-20], 29
jne .L_0075
.L_0076:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-20], 29
jne .L_0079
mov ebx, dword ptr [ebp+16]
neg ebx
mov dword ptr [ebp-24], ebx
jmp .L_0078
.L_0079:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-24], ebx
.L_0078:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_007B
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .L_007D
cmp dword ptr [ebp-24], 0
jge .L_007F
cmp dword ptr [ebp-20], 28
jne .L_0081
mov dword ptr [ebp-20], 29
jmp .L_0080
.L_0081:
mov dword ptr [ebp-20], 28
.L_0080:
.L_007F:
.L_007E:
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push dword ptr [ebp-20]
call _ASTNEWBOP
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_007C
.L_007D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
cmp dword ptr [ebp-24], 0
jge .L_0083
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 54
call _ASTNEWUOP
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_0083:
.L_0082:
.L_007C:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMADDSUB
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_007A
.L_007B:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMADDSUB
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _HCONSTACCUMADDSUB
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_007A:
.L_0075:
.L_0074:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCONSTACCUMMUL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0084:
cmp dword ptr [ebp+8], 0
jne .L_0087
mov dword ptr [ebp-4], 0
jmp .L_0085
.L_0087:
.L_0086:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0088
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_034D
.L_0088:
mov dword ptr [ebp-20], 0
.L_034D:
cmp dword ptr [ebp-20], 0
je .L_008B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_008D
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .L_008F
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 30
call _ASTNEWBOP
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_008E
.L_008F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.L_008E:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMMUL
add esp, 8
mov dword ptr [ebp+8], eax
jmp .L_008C
.L_008D:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _HCONSTACCUMMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_008C:
.L_008B:
.L_008A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTCONSTACCUM1:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0090:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0093
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HOPTCONSTACCUM1
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_0093:
.L_0092:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0095
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HOPTCONSTACCUM1
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_0095:
.L_0094:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0097
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_0099
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 28
je .L_009C
.L_009D:
cmp dword ptr [ebp-20], 29
jne .L_009B
.L_009C:
push 1
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCONSTACCUMADDSUB
add esp, 12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_009F
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-20]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_009F:
.L_009E:
jmp .L_009A
.L_009B:
cmp dword ptr [ebp-20], 30
jne .L_00A0
.L_00A1:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCONSTACCUMMUL
add esp, 8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_00A3
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00A3:
.L_00A2:
.L_00A0:
.L_009A:
.L_0099:
.L_0098:
.L_0097:
.L_0096:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTCONSTACCUM2:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00A4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00A7
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HOPTCONSTACCUM2
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_00A7:
.L_00A6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_00A9
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HOPTCONSTACCUM2
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00AB
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
jne .L_00AE
.L_00AF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-24], ebx
jmp .L_00B1
.L_00B3:
jmp .L_00B0
.L_00B4:
push 1
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp+8]
call _HCONSTACCUMADDSUB
add esp, 12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_00B6
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00B6:
.L_00B5:
jmp .L_00B0
.L_00B1:
mov eax, dword ptr [ebp-24]
add eax, 4294967289
cmp eax, 11
ja .L_00B4
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_00B7+eax*4-28]
_.L_00B7:
.int .L_00B3
.int .L_00B4
.int .L_00B4
.int .L_00B4
.int .L_00B4
.int .L_00B4
.int .L_00B4
.int .L_00B4
.int .L_00B4
.int .L_00B4
.int .L_00B3
.int .L_00B3
.L_00B0:
jmp .L_00AC
.L_00AE:
cmp dword ptr [ebp-20], 30
jne .L_00B8
.L_00B9:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCONSTACCUMMUL
add esp, 8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_00BB
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00BB:
.L_00BA:
.L_00B8:
.L_00AC:
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCONSTDISTMUL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BC:
cmp dword ptr [ebp+8], 0
jne .L_00BF
mov dword ptr [ebp-4], 0
jmp .L_00BD
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00C0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_034F
.L_00C0:
mov dword ptr [ebp-20], 0
.L_034F:
cmp dword ptr [ebp-20], 0
je .L_00C3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_00C5
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .L_00C7
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 28
call _ASTNEWBOP
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_00C6
.L_00C7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.L_00C6:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTDISTMUL
add esp, 8
mov dword ptr [ebp+8], eax
jmp .L_00C4
.L_00C5:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTDISTMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _HCONSTDISTMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_00C4:
.L_00C3:
.L_00C2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTCONSTDISTMUL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00C8:
cmp dword ptr [ebp+8], 0
jne .L_00CB
mov dword ptr [ebp-4], 0
jmp .L_00C9
.L_00CB:
.L_00CA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00CD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HOPTCONSTDISTMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_00CF
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HOPTCONSTDISTMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_00CF:
.L_00CE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00D1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebx], 16
jne .L_00D3
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 30
jne .L_00D5
mov dword ptr [ebp-8], 0
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HCONSTDISTMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-8], 0
je .L_00D7
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTCLONETREE
add esp, 4
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00D7:
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTCONSTIDXMULT:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .L_00DA
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 30
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0351
.L_00DA:
mov dword ptr [ebp-16], 0
.L_0351:
cmp dword ptr [ebp-16], 0
je .L_00DD
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 16
jne .L_00DF
mov ebx, dword ptr [_IR+272]
and ebx, 65536
test ebx, ebx
je .L_00E1
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 9
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00E3
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-32], ebx
jmp .L_00E5
.L_00E7:
mov dword ptr [ebp-4], -1
jmp .L_00E4
.L_00E8:
mov dword ptr [ebp-4], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .L_00EA
mov dword ptr [ebp-4], 0
jmp .L_00E9
.L_00EA:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_00EB
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
jne .L_00ED
mov dword ptr [ebp-4], 0
.L_00ED:
.L_00EC:
.L_00EB:
.L_00E9:
jmp .L_00E4
.L_00EE:
mov dword ptr [ebp-4], 0
jmp .L_00E4
.L_00E5:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 8
ja .L_00EE
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_00EF+eax*4-4]
_.L_00EF:
.int .L_00E7
.int .L_00E7
.int .L_00E8
.int .L_00E7
.int .L_00E8
.int .L_00EE
.int .L_00EE
.int .L_00E7
.int .L_00E8
.L_00E4:
cmp dword ptr [ebp-4], 0
je .L_00F1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+56], ecx
push dword ptr [ebp-28]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
.L_00F1:
.L_00F0:
.L_00E3:
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DF:
.L_00DE:
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
je .L_00F2
mov dword ptr [ebp-20], 24
jmp .L_0352
.L_00F2:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.L_0352:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .L_00F4
mov dword ptr [ebp-24], 24
jmp .L_0353
.L_00F4:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_0353:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [_ENV+296]
cmp eax, dword ptr [_SYMB_DTYPETB+ecx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
je .L_00F7
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
.L_00F7:
.L_00F6:
.L_00D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTDEREFADDR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_010D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 23
jne .L_0111
.L_0112:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
mov ebx, eax
call _ASTGETOFFSETCHILDOFS
add esp, 4
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
sub esi, eax
sbb ecx, edx
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], ecx
jmp .L_010F
.L_0111:
cmp dword ptr [ebp-28], 6
jne .L_0113
.L_0114:
jmp .L_010F
.L_0113:
mov esi, dword ptr [ebp+8]
mov dword ptr [ebp-4], esi
jmp .L_010E
.L_0115:
.L_010F:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _ASTINCOFFSET
add esp, 12
test eax, eax
jne .L_0117
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_010E
.L_0117:
.L_0116:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp+8], ecx
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _ASTSETTYPE
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.L_010E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTCONSTIDX:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0118:
cmp dword ptr [ebp+8], 0
jne .L_011B
mov dword ptr [ebp-4], 0
jmp .L_0119
.L_011B:
.L_011A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_011D
push dword ptr [ebp-8]
call _HOPTCONSTIDX
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_011D:
.L_011C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_011F
push dword ptr [ebp-12]
call _HOPTCONSTIDX
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_011F:
.L_011E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 18
je .L_0123
.L_0124:
cmp dword ptr [ebp-28], 20
jne .L_0122
.L_0123:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_0126
mov dword ptr [ebp-16], 0
push 1
lea ebx, [ebp-16]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HCONSTACCUMADDSUB
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-16], 0
je .L_0128
push 8
push dword ptr [ebp-16]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .L_012A
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [edx+28]
mov ebx, ecx
sar ebx, 31
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push ebx
push ecx
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
pop ecx
pop ebx
add esp, 8
add dword ptr [eax+20], ecx
adc dword ptr [eax+24], ebx
jmp .L_0129
.L_012A:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+20], eax
adc dword ptr [ecx+24], ebx
.L_0129:
.L_0128:
.L_0127:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 16
jne .L_012C
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .L_012E
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [edx+28]
mov ebx, ecx
sar ebx, 31
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push ebx
push ecx
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
pop ecx
pop ebx
add esp, 8
add dword ptr [eax+20], ecx
adc dword ptr [eax+24], ebx
jmp .L_012D
.L_012E:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+20], eax
adc dword ptr [ecx+24], ebx
.L_012D:
jmp .L_012B
.L_012C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .L_0130
push dword ptr [ebp+8]
call _HOPTCONSTIDXMULT
add esp, 4
jmp .L_012F
.L_0130:
push dword ptr [ebp+8]
call _HOPTDEREFADDR
add esp, 4
mov dword ptr [ebp+8], eax
.L_012F:
.L_012B:
.L_0126:
.L_0125:
.L_0122:
.L_0120:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0119:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTASSOCADD:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0131:
cmp dword ptr [ebp+8], 0
jne .L_0134
mov dword ptr [ebp-4], 0
jmp .L_0132
.L_0134:
.L_0133:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0136
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .L_0139
.L_013A:
cmp dword ptr [ebp-20], 29
jne .L_0138
.L_0139:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .L_013E
.L_013F:
cmp dword ptr [ebp-28], 18
je .L_013E
.L_0140:
cmp dword ptr [ebp-28], 7
jne .L_013D
.L_013E:
jmp .L_013B
.L_013D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .L_0143
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 28
je .L_0146
.L_0147:
cmp dword ptr [ebp-24], 29
jne .L_0145
.L_0146:
cmp dword ptr [ebp-20], 29
jne .L_0149
cmp dword ptr [ebp-24], 29
jne .L_014B
mov dword ptr [ebp-20], 28
jmp .L_014A
.L_014B:
mov dword ptr [ebp-24], 29
.L_014A:
jmp .L_0148
.L_0149:
cmp dword ptr [ebp-24], 29
jne .L_014D
mov dword ptr [ebp-20], 29
mov dword ptr [ebp-24], 28
.L_014D:
.L_014C:
.L_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
push 1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+60]
push 1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
push dword ptr [ebp-24]
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-20]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
.L_0145:
.L_0144:
.L_0143:
.L_0142:
.L_0141:
.L_013B:
.L_0138:
.L_0137:
.L_0136:
.L_0135:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_014F
push dword ptr [ebp-8]
call _HOPTASSOCADD
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_014F:
.L_014E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_0151
push dword ptr [ebp-12]
call _HOPTASSOCADD
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_0151:
.L_0150:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0132:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTASSOCMUL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0152:
cmp dword ptr [ebp+8], 0
jne .L_0155
mov dword ptr [ebp-4], 0
jmp .L_0153
.L_0155:
.L_0154:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0156
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_035A
.L_0156:
mov dword ptr [ebp-20], 0
.L_035A:
cmp dword ptr [ebp-20], 0
je .L_0159
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .L_015A
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_035B
.L_015A:
mov dword ptr [ebp-24], 0
.L_035B:
cmp dword ptr [ebp-24], 0
je .L_015D
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ebx
push 1
push 0
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
push 1
push 0
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
push 30
call _ASTNEWBOP
add esp, 20
push eax
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
.L_015D:
.L_015C:
.L_0159:
.L_0158:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_015F
push dword ptr [ebp-8]
call _HOPTASSOCMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_015F:
.L_015E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_0161
push dword ptr [ebp-12]
call _HOPTASSOCMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_0161:
.L_0160:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0153:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDIVTOSHIFT_SIGNED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
.L_0162:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
je .L_0165
jmp .L_0163
.L_0165:
.L_0164:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0166
mov dword ptr [ebp-20], 24
jmp .L_035E
.L_0166:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-20], eax
.L_035E:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 7
jne .L_0169
mov ebx, dword ptr [_SYMB_DTYPETB+228]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
.L_0169:
.L_0168:
push dword ptr [ebp-4]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 1
jne .L_016B
push 0
push 1
push 1
push 0
push 1
push 0
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
push 0
push 1
push dword ptr [ebp-4]
push 0
push dword ptr [ebp-12]
call _TYPETOUNSIGNED
add esp, 4
push eax
call _ASTNEWCONV
add esp, 20
push eax
push 42
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
push eax
push 0
push dword ptr [ebp-12]
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
jmp .L_016A
.L_016B:
push 0
push 1
push 1
push 0
push 1
push 0
push 0
push 8
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push 1
push 0
push 0
push 8
mov ecx, dword ptr [ebp-16]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
push 42
call _ASTNEWBOP
add esp, 20
push eax
push 34
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
push eax
push 0
push dword ptr [ebp-12]
call _ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
.L_016A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 42
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+60]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
.L_0163:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HTOPOW2:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_016C:
mov dword ptr [ebp-8], 1
.L_0171:
mov ebx, 1
mov eax, 0
push eax
push ebx
mov ecx, dword ptr [ebp-8]
mov eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .L_035F
mov edx, eax
xor eax, eax
.L_035F:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
cmp dword ptr [ebp+12], eax
jne .L_0173
cmp dword ptr [ebp+8], ebx
jne .L_0173
.L_0360:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_016D
.L_0173:
.L_0172:
.L_016F:
inc dword ptr [ebp-8]
.L_016E:
cmp dword ptr [ebp-8], 63
jle .L_0171
.L_0170:
mov dword ptr [ebp-4], 0
.L_016D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTTOSHIFT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0174:
cmp dword ptr [ebp+8], 0
jne .L_0177
jmp .L_0175
.L_0177:
.L_0176:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0179
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 30
je .L_017C
.L_017D:
cmp dword ptr [ebp-12], 32
je .L_017C
.L_017E:
cmp dword ptr [ebp-12], 33
jne .L_017B
.L_017C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_017F
mov dword ptr [ebp-28], 24
jmp .L_0361
.L_017F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0361:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .L_0182
jmp .L_017A
.L_0182:
.L_0181:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_0184
jmp .L_017A
.L_0184:
.L_0183:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .L_036A
cmp dword ptr [ebp-24], 0
je .L_0369
.L_036A:
xor ecx, ecx
.L_0369:
cmp dword ptr [ebp-20], 0
mov ebx, -1
jl .L_036B
jg .L_036C
cmp dword ptr [ebp-24], 0
jb .L_036B
.L_036C:
xor ebx, ebx
.L_036B:
mov dword ptr [ebp-36], ecx
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_0185
mov dword ptr [ebp-32], 24
jmp .L_0362
.L_0185:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0362:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [ebp-40]
or ecx, dword ptr [ebp-36]
je .L_0188
jmp .L_017A
.L_0188:
.L_0187:
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HTOPOW2
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jg .L_018A
jmp .L_017A
.L_018A:
.L_0189:
cmp dword ptr [ebp-12], 30
jne .L_018C
.L_018D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_018E
mov dword ptr [ebp-36], 24
jmp .L_0365
.L_018E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0365:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .L_0191
jmp .L_017A
.L_0191:
.L_0190:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 41
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_018B
.L_018C:
cmp dword ptr [ebp-12], 32
jne .L_0192
.L_0193:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_0194
mov dword ptr [ebp-36], 24
jmp .L_0366
.L_0194:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0366:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .L_0197
jmp .L_017A
.L_0197:
.L_0196:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0198
mov dword ptr [ebp-40], 24
jmp .L_0367
.L_0198:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-40], ecx
.L_0367:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
jne .L_019B
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 42
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_019A
.L_019B:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HDIVTOSHIFT_SIGNED
add esp, 8
.L_019A:
jmp .L_018B
.L_0192:
cmp dword ptr [ebp-12], 33
jne .L_019C
.L_019D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .L_019E
mov dword ptr [ebp-36], 24
jmp .L_0368
.L_019E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.L_0368:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_01A1
jmp .L_017A
.L_01A1:
.L_01A0:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 34
mov eax, dword ptr [ebp-8]
add dword ptr [eax+20], 4294967295
adc dword ptr [eax+24], 4294967295
.L_019C:
.L_018B:
.L_017B:
.L_017A:
.L_0179:
.L_0178:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-4], ecx
cmp dword ptr [ebp-4], 0
je .L_01A3
push dword ptr [ebp-4]
call _HOPTTOSHIFT
add esp, 4
.L_01A3:
.L_01A2:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01A5
push dword ptr [ebp-8]
call _HOPTTOSHIFT
add esp, 4
.L_01A5:
.L_01A4:
.L_0175:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTCONSTCONV:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_01A6:
cmp dword ptr [ebp+8], 0
jne .L_01A9
mov dword ptr [ebp-4], 0
jmp .L_01A7
.L_01A9:
.L_01A8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_01AB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .L_01AD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_01AE
mov dword ptr [ebp-24], 24
jmp .L_036D
.L_01AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_036D:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_01B1
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_01B2
mov dword ptr [ebp-28], 24
jmp .L_036E
.L_01B2:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_036E:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_01B5
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .L_01B7
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01B9
cmp dword ptr [ebp-20], 0
jne .L_01B9
.L_036F:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
.L_01B9:
.L_01B8:
.L_01B7:
.L_01B6:
.L_01B5:
.L_01B4:
.L_01B1:
.L_01B0:
.L_01AD:
.L_01AC:
.L_01AB:
.L_01AA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTNULLOP:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_01BA:
cmp dword ptr [ebp+8], 0
jne .L_01BD
mov dword ptr [ebp-4], 0
jmp .L_01BB
.L_01BD:
.L_01BC:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HOPTNULLOP
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HOPTNULLOP
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_01BF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp-8]
call _ASTHASSIDEFX
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-12]
call _ASTHASSIDEFX
add esp, 4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_01C0
mov dword ptr [ebp-36], 24
jmp .L_0370
.L_01C0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.L_0370:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_01C3
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_01C5
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-40], ecx
jmp .L_01C7
.L_01C9:
cmp dword ptr [ebp-20], 0
jne .L_01CB
cmp dword ptr [ebp-24], 0
jne .L_01CB
.L_0374:
cmp dword ptr [ebp-28], 0
jne .L_01CD
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
jmp .L_01CC
.L_01CD:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 34
.L_01CC:
jmp .L_01CA
.L_01CB:
cmp dword ptr [ebp-20], 0
jne .L_01CE
cmp dword ptr [ebp-24], 1
jne .L_01CE
.L_0375:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
.L_01CE:
.L_01CA:
jmp .L_01C6
.L_01CF:
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .L_0377
cmp dword ptr [ebp-24], 1
je .L_0376
.L_0377:
xor ecx, ecx
.L_0376:
cmp dword ptr [ebp-20], 4294967295
mov ebx, -1
jne .L_0379
cmp dword ptr [ebp-24], 4294967295
je .L_0378
.L_0379:
xor ebx, ebx
.L_0378:
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
and ecx, 480
je .L_01D0
mov dword ptr [ebp-44], 24
jmp .L_0371
.L_01D0:
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0371:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-52]
or ecx, dword ptr [ebp-48]
je .L_01D3
cmp dword ptr [ebp-28], 0
jne .L_01D5
mov ecx, dword ptr [ebp-12]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
.L_01D5:
.L_01D4:
.L_01D3:
.L_01D2:
jmp .L_01C6
.L_01D6:
cmp dword ptr [ebp-20], 0
jne .L_01D8
cmp dword ptr [ebp-24], 1
jne .L_01D8
.L_037B:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
.L_01D8:
.L_01D7:
jmp .L_01C6
.L_01D9:
cmp dword ptr [ebp-20], 0
jne .L_01DB
cmp dword ptr [ebp-24], 0
jne .L_01DB
.L_037C:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
.L_01DB:
.L_01DA:
jmp .L_01C6
.L_01DC:
cmp dword ptr [ebp-20], 4294967295
jne .L_01DE
cmp dword ptr [ebp-24], 4294967295
jne .L_01DE
.L_037D:
cmp dword ptr [ebp-28], 0
jne .L_01E0
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
.L_01E0:
.L_01DF:
.L_01DE:
.L_01DD:
jmp .L_01C6
.L_01E1:
cmp dword ptr [ebp-20], 0
jne .L_01E3
cmp dword ptr [ebp-24], 0
jne .L_01E3
.L_037E:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
jmp .L_01E2
.L_01E3:
cmp dword ptr [ebp-20], 4294967295
jne .L_01E4
cmp dword ptr [ebp-24], 4294967295
jne .L_01E4
.L_037F:
cmp dword ptr [ebp-28], 0
jne .L_01E6
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
.L_01E6:
.L_01E5:
.L_01E4:
.L_01E2:
jmp .L_01C6
.L_01E7:
cmp dword ptr [ebp-20], 4294967295
jne .L_01E9
cmp dword ptr [ebp-24], 4294967295
jne .L_01E9
.L_0380:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
jmp .L_01E8
.L_01E9:
cmp dword ptr [ebp-20], 0
jne .L_01EA
cmp dword ptr [ebp-24], 0
jne .L_01EA
.L_0381:
cmp dword ptr [ebp-28], 0
jne .L_01EC
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BB
.L_01EC:
.L_01EB:
.L_01EA:
.L_01E8:
jmp .L_01C6
.L_01C7:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967268
cmp ecx, 14
ja .L_01C6
mov ecx, dword ptr [ebp-40]
jmp dword ptr [_.L_01ED+ecx*4-112]
_.L_01ED:
.int .L_01D9
.int .L_01D9
.int .L_01C9
.int .L_01C6
.int .L_01D6
.int .L_01CF
.int .L_01E7
.int .L_01E1
.int .L_01C6
.int .L_01C6
.int .L_01D9
.int .L_01C6
.int .L_01DC
.int .L_01D9
.int .L_01D9
.L_01C6:
jmp .L_01C4
.L_01C5:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx], 16
jne .L_01EE
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], ebx
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .L_01F0
.L_01F2:
cmp dword ptr [ebp-20], 0
jne .L_01F4
cmp dword ptr [ebp-24], 0
jne .L_01F4
.L_0382:
cmp dword ptr [ebp-32], 0
jne .L_01F6
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01BB
.L_01F6:
.L_01F5:
.L_01F4:
.L_01F3:
jmp .L_01EF
.L_01F0:
mov eax, dword ptr [ebp-40]
add eax, 4294967266
cmp eax, 12
ja .L_01EF
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_01F7+eax*4-120]
_.L_01F7:
.int .L_01F2
.int .L_01EF
.int .L_01F2
.int .L_01F2
.int .L_01EF
.int .L_01EF
.int .L_01EF
.int .L_01EF
.int .L_01EF
.int .L_01EF
.int .L_01EF
.int .L_01F2
.int .L_01F2
.L_01EF:
.L_01EE:
.L_01C4:
.L_01C3:
.L_01C2:
.L_01BF:
.L_01BE:
push dword ptr [ebp+8]
call _HOPTCONSTCONV
add esp, 4
mov dword ptr [ebp-4], eax
.L_01BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTLOGIC:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_01F8:
cmp dword ptr [ebp+8], 0
jne .L_01FB
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01F9
.L_01FB:
.L_01FA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_01FD
push dword ptr [ebp-12]
call _HOPTLOGIC
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
.L_01FD:
.L_01FC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_01FF
push dword ptr [ebp-16]
call _HOPTLOGIC
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
.L_01FF:
.L_01FE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_0200
mov dword ptr [ebp-32], 24
jmp .L_0383
.L_0200:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0383:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_0203
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_0204
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_0384
.L_0204:
mov dword ptr [ebp-36], 0
.L_0384:
cmp dword ptr [ebp-36], 0
je .L_0207
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .L_0208
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
jmp .L_0385
.L_0208:
mov dword ptr [ebp-40], 0
.L_0385:
cmp dword ptr [ebp-40], 0
je .L_020B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call _HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
jmp .L_020A
.L_020B:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .L_020D
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 38
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
jmp .L_0386
.L_020D:
mov dword ptr [ebp-44], 0
.L_0386:
cmp dword ptr [ebp-44], 0
je .L_020C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_020F
mov dword ptr [ebp-48], 24
jmp .L_0387
.L_020F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_0387:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_0212
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 16
jne .L_0214
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
not dword ptr [ebx+20]
not dword ptr [ebx+24]
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call _HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
jmp .L_0213
.L_0214:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebx], 16
jne .L_0215
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+60]
not dword ptr [eax+20]
not dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call _HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
.L_0215:
.L_0213:
.L_0212:
.L_0211:
.L_020C:
.L_020A:
jmp .L_0206
.L_0207:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0216
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0217
mov dword ptr [ebp-40], 24
jmp .L_0388
.L_0217:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-40], eax
.L_0388:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_021A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 35
je .L_021D
.L_021E:
cmp dword ptr [ebp-20], 34
je .L_021D
.L_021F:
cmp dword ptr [ebp-20], 38
jne .L_021C
.L_021D:
cmp dword ptr [ebp-20], 34
jne .L_0221
mov dword ptr [ebp-20], 35
jmp .L_0220
.L_0221:
cmp dword ptr [ebp-20], 35
jne .L_0222
mov dword ptr [ebp-20], 34
.L_0222:
.L_0220:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .L_0223
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_0389
.L_0223:
mov dword ptr [ebp-44], 0
.L_0389:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 4
jne .L_0225
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
jmp .L_038A
.L_0225:
mov dword ptr [ebp-48], 0
.L_038A:
mov ebx, dword ptr [ebp-48]
and ebx, dword ptr [ebp-44]
je .L_0228
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
call _HOPTLOGIC
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+56]
call _HOPTLOGIC
add esp, 4
mov dword ptr [ebp-16], eax
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-20], 38
je .L_022A
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_022A:
.L_0229:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .L_0227
.L_0228:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
jne .L_022C
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
jmp .L_038B
.L_022C:
mov dword ptr [ebp-52], 0
.L_038B:
mov eax, dword ptr [ebp-52]
and eax, dword ptr [ebp-68]
je .L_022B
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], ebx
push 1
push 0
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+56]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
not ecx
not eax
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
cmp dword ptr [ebp-20], 38
je .L_022F
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_022F:
.L_022E:
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .L_0227
.L_022B:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx], 4
jne .L_0231
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_038D
.L_0231:
mov dword ptr [ebp-56], 0
.L_038D:
mov eax, dword ptr [ebp-56]
and eax, dword ptr [ebp-68]
je .L_0230
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], ecx
push 1
push 0
push dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
push dword ptr [ebp-20]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
not ebx
not eax
mov ecx, dword ptr [ebp-16]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
cmp dword ptr [ebp-20], 38
je .L_0234
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0234:
.L_0233:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .L_0227
.L_0230:
mov eax, dword ptr [ebp-20]
cmp eax, 38
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .L_0236
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-60], ebx
jmp .L_038F
.L_0236:
mov dword ptr [ebp-60], 0
.L_038F:
mov ebx, dword ptr [ebp-60]
and ebx, dword ptr [ebp-68]
je .L_0235
push dword ptr [ebp+8]
push 52
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+56], ecx
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
jmp .L_0227
.L_0235:
mov ecx, dword ptr [ebp-20]
cmp ecx, 38
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx], 4
jne .L_0239
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-64], ebx
jmp .L_0391
.L_0239:
mov dword ptr [ebp-64], 0
.L_0391:
mov ebx, dword ptr [ebp-64]
and ebx, dword ptr [ebp-68]
je .L_0238
push dword ptr [ebp+8]
push 52
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+60], ecx
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
.L_0238:
.L_0227:
.L_021C:
.L_021B:
.L_021A:
.L_0219:
.L_0216:
.L_0206:
.L_0203:
.L_0202:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.L_01F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDOOPTREMCONV:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_023B:
cmp dword ptr [ebp+8], 0
jne .L_023E
mov dword ptr [ebp-4], 0
jmp .L_023C
.L_023E:
.L_023D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0240
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 15
je .L_0244
.L_0245:
cmp dword ptr [ebp-20], 16
jne .L_0243
.L_0244:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .L_0247
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 5
je .L_0249
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 15
je .L_024D
.L_024E:
cmp dword ptr [ebp-24], 16
jne .L_024C
.L_024D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_024F
mov dword ptr [ebp-28], 24
jmp .L_03A0
.L_024F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_03A0:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
je .L_0254
.L_0255:
cmp dword ptr [ebp-32], 4
jne .L_0253
.L_0254:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .L_0259
.L_025A:
cmp dword ptr [ebp-36], 18
je .L_0259
.L_025B:
cmp dword ptr [ebp-36], 19
je .L_0259
.L_025C:
cmp dword ptr [ebp-36], 20
jne .L_0258
.L_0259:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_025D
mov dword ptr [ebp-40], 24
jmp .L_03A1
.L_025D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.L_03A1:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_0260
mov dword ptr [ebp-16], -1
.L_0260:
.L_025F:
.L_0258:
.L_0256:
cmp dword ptr [ebp-16], 0
je .L_0262
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_0262:
.L_0261:
.L_0253:
.L_0251:
.L_024C:
.L_024A:
.L_0249:
.L_0248:
.L_0247:
.L_0246:
.L_0243:
.L_0241:
.L_0240:
.L_023F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HDOOPTREMCONV
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HDOOPTREMCONV
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_023C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTSTRMULTCONCAT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0263:
cmp dword ptr [ebp+16], 0
jne .L_0266
mov dword ptr [ebp-4], 0
jmp .L_0264
.L_0266:
.L_0265:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
je .L_0268
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 3
jne .L_026A
push dword ptr [ebp+20]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+56], 0
.L_026A:
.L_0269:
.L_0268:
.L_0267:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .L_026C
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
je .L_026E
cmp dword ptr [ebp+8], 0
jne .L_0270
cmp dword ptr [ebp+20], 0
jne .L_0272
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0271
.L_0272:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLWSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
.L_0271:
jmp .L_026F
.L_0270:
cmp dword ptr [ebp+20], 0
jne .L_0274
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLSTRCONCATASSIGN
add esp, 12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0273
.L_0274:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_0273:
.L_026F:
.L_026E:
.L_026D:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+60], 0
je .L_0276
cmp dword ptr [ebp+20], 0
jne .L_0278
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLSTRCONCATASSIGN
add esp, 12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0277
.L_0278:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_0277:
.L_0276:
.L_0275:
push dword ptr [ebp+16]
call _ASTDELNODE
add esp, 4
jmp .L_026B
.L_026C:
cmp dword ptr [ebp+8], 0
jne .L_027A
cmp dword ptr [ebp+20], 0
jne .L_027C
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_027B
.L_027C:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLWSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
.L_027B:
jmp .L_0279
.L_027A:
cmp dword ptr [ebp+20], 0
jne .L_027E
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLSTRCONCATASSIGN
add esp, 12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_027D
.L_027E:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_027D:
.L_0279:
.L_026B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0264:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HISMULTSTRCONCAT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_027F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_0282
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .L_0286
.L_0287:
cmp dword ptr [ebp-12], 18
jne .L_0285
.L_0286:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0289
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
jne .L_028B
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_028B:
.L_028A:
.L_0289:
.L_0288:
jmp .L_0283
.L_0285:
cmp dword ptr [ebp-12], 19
je .L_028D
.L_028E:
cmp dword ptr [ebp-12], 26
jne .L_028C
.L_028D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .L_0292
.L_0293:
cmp dword ptr [ebp-16], 18
jne .L_0291
.L_0292:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0295
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0295:
.L_0294:
.L_0291:
.L_028F:
.L_028C:
.L_0283:
.L_0282:
.L_0281:
.L_0280:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTSTRASSIGNMENT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0296:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .L_0299
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
jmp .L_029B
.L_029D:
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push dword ptr [ebp+12]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
je .L_029F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .L_02A1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 81920
test eax, eax
jne .L_02A3
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp-20]
call _ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.L_02A3:
.L_02A2:
.L_02A1:
.L_02A0:
.L_029F:
.L_029E:
jmp .L_029A
.L_02A4:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
je .L_02A6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_02A8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 17
jne .L_02AA
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+60]
push dword ptr [ebp-20]
call _ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
.L_02AA:
.L_02A9:
.L_02A8:
.L_02A7:
.L_02A6:
.L_02A5:
jmp .L_029A
.L_02AB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
jmp .L_02AD
.L_02AF:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
je .L_02B1
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .L_02B3
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 17
jne .L_02B5
mov dword ptr [ebp-12], -1
.L_02B5:
.L_02B4:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp-20]
call _ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.L_02B3:
.L_02B2:
.L_02B1:
.L_02B0:
jmp .L_02AC
.L_02AD:
mov eax, dword ptr [ebp-28]
add eax, 4294967279
cmp eax, 1
ja .L_02AC
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_02B6+eax*4-68]
_.L_02B6:
.int .L_02AF
.int .L_02AF
.L_02AC:
jmp .L_029A
.L_029B:
mov eax, dword ptr [ebp-24]
add eax, 4294967279
cmp eax, 9
ja .L_029A
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_02B7+eax*4-68]
_.L_02B7:
.int .L_029D
.int .L_029D
.int .L_02AB
.int .L_02A4
.int .L_029A
.int .L_029A
.int .L_029A
.int .L_029A
.int .L_029A
.int .L_02AB
.L_029A:
.L_0299:
.L_0298:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-8], 0
je .L_02B9
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp+8], ebx
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp+16], ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HISMULTSTRCONCAT
add esp, 8
test eax, eax
je .L_02BB
push dword ptr [ebp-16]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02BA
.L_02BB:
cmp dword ptr [ebp-16], 0
jne .L_02BD
push dword ptr [ebp-12]
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call _RTLSTRCONCATASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_02BC
.L_02BD:
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call _RTLWSTRCONCATASSIGN
add esp, 8
mov dword ptr [ebp-4], eax
.L_02BC:
.L_02BA:
jmp .L_02B8
.L_02B9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HISMULTSTRCONCAT
add esp, 8
test eax, eax
je .L_02BF
push dword ptr [ebp-16]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02BE
.L_02BF:
cmp dword ptr [ebp-16], 0
jne .L_02C1
push 0
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call _RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02C1:
push 0
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call _RTLWSTRASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_02C0:
.L_02BE:
.L_02B8:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
.L_0297:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTRECIPROCAL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0320:
cmp dword ptr [ebp+8], 0
jne .L_0323
mov dword ptr [ebp-4], 0
jmp .L_0321
.L_0323:
.L_0322:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0324
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 31
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_03A8
.L_0324:
mov dword ptr [ebp-20], 0
.L_03A8:
cmp dword ptr [ebp-20], 0
je .L_0327
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
jne .L_0329
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .L_032A
mov ebx, dword ptr [ebp-8]
fld qword ptr [ebx+20]
fld qword ptr [_Lt_03AA]
fcomip st, st(1)
fstp st(0)
setz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_03A9
.L_032A:
mov dword ptr [ebp-24], 0
.L_03A9:
cmp dword ptr [ebp-24], 0
je .L_032D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_032E
mov dword ptr [ebp-28], 24
jmp .L_03AB
.L_032E:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.L_03AB:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
jmp .L_0331
.L_0333:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .L_0334
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 65
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_03AC
.L_0334:
mov dword ptr [ebp-36], 0
.L_03AC:
cmp dword ptr [ebp-36], 0
je .L_0337
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-12]
mov ecx, 18
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 66
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
jmp .L_0336
.L_0337:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .L_0338
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
push 67
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp+8], eax
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
.L_0338:
.L_0336:
jmp .L_0330
.L_0331:
cmp dword ptr [ebp-32], 1
ja .L_0330
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_0339+eax*4]
_.L_0339:
.int .L_0333
.int .L_0333
.L_0330:
.L_032D:
.L_032C:
.L_0329:
.L_0328:
.L_0327:
.L_0326:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_033B
push dword ptr [ebp-8]
call _HOPTRECIPROCAL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_033B:
.L_033A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_033D
push dword ptr [ebp-12]
call _HOPTRECIPROCAL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_033D:
.L_033C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0321:
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
.balign 8
_Lt_03AA:	.quad	0x3FF0000000000000
