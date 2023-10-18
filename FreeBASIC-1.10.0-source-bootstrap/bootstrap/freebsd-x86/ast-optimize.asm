	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTINCOFFSET
ASTINCOFFSET:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_00FA
.L_00FC:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov dword ptr [ebp-4], -1
jmp .L_00F9
.L_00FD:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ecx+20], ebx
adc dword ptr [ecx+24], eax
mov dword ptr [ebp-4], -1
jmp .L_00F9
.L_00FE:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov dword ptr [ebp-4], -1
jmp .L_00F9
.L_00FF:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .L_0102
.L_0103:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0100
.L_0102:
cmp dword ptr [ebp-12], 2
jne .L_0104
.L_0105:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
.L_0104:
.L_0100:
jmp .L_00F9
.L_0106:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00F9
.L_0107:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jne .L_0109
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0108
.L_0109:
mov dword ptr [ebp-4], 0
.L_0108:
jmp .L_00F9
.L_010A:
mov dword ptr [ebp-4], 0
jmp .L_00F9
.L_00FA:
mov eax, dword ptr [ebp-8]
add eax, 4294967291
cmp eax, 21
ja .L_010A
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_010B+eax*4-20]
.L_010B:
.int .L_0107
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_00FF
.int .L_010A
.int .L_00FC
.int .L_00FD
.int .L_0106
.int .L_00FE
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_0106
.L_00F9:
.L_00F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTOPTASSIGNMENT
ASTOPTASSIGNMENT:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_02C1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_02C4
jmp .L_02C2
.L_02C4:
.L_02C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 2
jne .L_02C7
.L_02C8:
jmp .L_02C5
.L_02C7:
cmp dword ptr [ebp-44], 15
je .L_02CA
.L_02CB:
cmp dword ptr [ebp-44], 13
jne .L_02C9
.L_02CA:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTOPTASSIGNMENT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTOPTASSIGNMENT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
jmp .L_02C2
jmp .L_02C5
.L_02C9:
jmp .L_02C2
.L_02CC:
.L_02C5:
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
je .L_02CD
mov dword ptr [ebp-44], 24
jmp .L_0303
.L_02CD:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0303:
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 17
je .L_02D2
.L_02D3:
cmp dword ptr [ebp-48], 18
je .L_02D2
.L_02D4:
cmp dword ptr [ebp-48], 7
jne .L_02D1
.L_02D2:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HOPTSTRASSIGNMENT
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_02C2
.L_02D1:
.L_02CF:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_02D5
mov dword ptr [ebp-24], 24
jmp .L_0304
.L_02D5:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-24], eax
.L_0304:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_02D8
mov ebx, dword ptr [IR+272]
and ebx, 512
test ebx, ebx
jne .L_02DA
jmp .L_02C2
.L_02DA:
.L_02D9:
jmp .L_02D7
.L_02D8:
mov ebx, dword ptr [IR+272]
and ebx, 8
test ebx, ebx
jne .L_02DC
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_02DE
cmp dword ptr [ebp-20], 1
jne .L_02E0
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_02E1
mov dword ptr [ebp-44], 24
jmp .L_0305
.L_02E1:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0305:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
je .L_02E4
push 0
push 0
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-16]
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_02E4:
.L_02E3:
.L_02E0:
.L_02DF:
.L_02DE:
.L_02DD:
jmp .L_02C2
.L_02DC:
.L_02DB:
.L_02D7:
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_02E5
mov dword ptr [ebp-28], 24
jmp .L_0306
.L_02E5:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0306:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 1
jne .L_02E8
jmp .L_02C2
.L_02E8:
.L_02E7:
push dword ptr [ebp-8]
call ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-12]
call ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
jmp .L_02EA
.L_02EC:
jmp .L_02E9
.L_02ED:
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jle .L_02EF
jmp .L_02C2
.L_02EF:
.L_02EE:
jmp .L_02E9
.L_02F0:
jmp .L_02C2
jmp .L_02E9
.L_02EA:
mov eax, dword ptr [ebp-44]
add eax, 4294967279
cmp eax, 9
ja .L_02F0
mov eax, dword ptr [ebp-44]
jmp dword ptr [.L_02F1+eax*4-68]
.L_02F1:
.int .L_02EC
.int .L_02EC
.int .L_02ED
.int .L_02EC
.int .L_02F0
.int .L_02F0
.int .L_02F0
.int .L_02F0
.int .L_02F0
.int .L_02EC
.L_02E9:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 4
jne .L_02F4
.L_02F5:
jmp .L_02F2
.L_02F4:
cmp dword ptr [ebp-44], 3
jne .L_02F6
.L_02F7:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+20]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_02F9
jmp .L_02C2
.L_02F9:
.L_02F8:
jmp .L_02F2
.L_02F6:
jmp .L_02C2
.L_02FA:
.L_02F2:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_02FB
mov dword ptr [ebp-40], 24
jmp .L_0307
.L_02FB:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.L_0307:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
je .L_02FE
jmp .L_02C2
.L_02FE:
.L_02FD:
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+56]
call ASTSKIPNOCONVCAST
add esp, 4
push eax
push dword ptr [ebp-32]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_0300
jmp .L_02C2
.L_0300:
.L_02FF:
mov eax, dword ptr [ebp-36]
and dword ptr [eax+24], -2
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-12], eax
je .L_0302
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
.L_0302:
.L_0301:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_02C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HOPTSELFASSIGN
HOPTSELFASSIGN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0308:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_030B
jmp .L_0309
.L_030B:
.L_030A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
je .L_030D
jmp .L_0309
.L_030D:
.L_030C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_030F
jmp .L_0309
.L_030F:
.L_030E:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.L_0309:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HOPTSELFCOMPARE
HOPTSELFCOMPARE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0310:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_0313
jmp .L_0311
.L_0313:
.L_0312:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .L_0315
jmp .L_0311
.L_0315:
.L_0314:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_0317
jmp .L_0311
.L_0317:
.L_0316:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-28], ebx
jmp .L_0319
.L_031B:
mov dword ptr [ebp-24], -1
jmp .L_0318
.L_031C:
mov dword ptr [ebp-24], 0
jmp .L_0318
.L_031D:
jmp .L_0311
jmp .L_0318
.L_0319:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967251
cmp ebx, 5
ja .L_031D
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_031E+ebx*4-180]
.L_031E:
.int .L_031B
.int .L_031C
.int .L_031C
.int .L_031C
.int .L_031B
.int .L_031B
.L_0318:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
push 0
push 8
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0311:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTOPTIMIZETREE
ASTOPTIMIZETREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_033D:
inc dword ptr [AST+232]
push dword ptr [ebp+8]
call HOPTASSOCADD
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTASSOCMUL
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTCONSTDISTMUL
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTCONSTACCUM1
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTCONSTACCUM2
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTCONSTREMNEG
add esp, 4
push dword ptr [ebp+8]
call HOPTCONSTIDX
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTTOSHIFT
add esp, 4
push dword ptr [ebp+8]
call HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTNULLOP
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTSELFASSIGN
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HOPTSELFCOMPARE
add esp, 4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [IR+272]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0340
push dword ptr [ebp+8]
call HDOOPTREMCONV
add esp, 4
mov dword ptr [ebp+8], eax
.L_0340:
.L_033F:
mov eax, dword ptr [IR+272]
and eax, 131072
test eax, eax
jne .L_0342
cmp dword ptr [ENV+120], 1
jne .L_0344
push dword ptr [ebp+8]
call HOPTRECIPROCAL
add esp, 4
mov dword ptr [ebp+8], eax
.L_0344:
.L_0343:
.L_0342:
.L_0341:
dec dword ptr [AST+232]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_033E:
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
HOPTCONSTREMNEG:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_005D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0060
push dword ptr [ebp-4]
call HOPTCONSTREMNEG
add esp, 4
.L_0060:
.L_005F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0062
push dword ptr [ebp-8]
call HOPTCONSTREMNEG
add esp, 4
.L_0062:
.L_0061:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0063
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_0347
.L_0063:
mov dword ptr [ebp-16], 0
.L_0347:
cmp dword ptr [ebp-16], 0
je .L_0066
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 4
jne .L_0067
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+20]
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0348
.L_0067:
mov dword ptr [ebp-20], 0
.L_0348:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-20]
je .L_006A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 17
jne .L_006C
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+20], 29
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+60], ebx
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 4
.L_006C:
.L_006B:
.L_006A:
.L_0069:
.L_0066:
.L_0065:
.L_005E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONSTACCUMADDSUB:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_006D:
cmp dword ptr [ebp+8], 0
jne .L_0070
mov dword ptr [ebp-4], 0
jmp .L_006E
.L_0070:
.L_006F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .L_0072
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_006E
.L_0072:
.L_0071:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .L_0075
.L_0076:
cmp dword ptr [ebp-20], 29
jne .L_0074
.L_0075:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-20], 29
jne .L_0078
mov ebx, dword ptr [ebp+16]
neg ebx
mov dword ptr [ebp-24], ebx
jmp .L_0077
.L_0078:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-24], ebx
.L_0077:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_007A
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .L_007C
cmp dword ptr [ebp-24], 0
jge .L_007E
cmp dword ptr [ebp-20], 28
jne .L_0080
mov dword ptr [ebp-20], 29
jmp .L_007F
.L_0080:
mov dword ptr [ebp-20], 28
.L_007F:
.L_007E:
.L_007D:
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_007B
.L_007C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
cmp dword ptr [ebp-24], 0
jge .L_0082
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 54
call ASTNEWUOP
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_0082:
.L_0081:
.L_007B:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMADDSUB
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0079
.L_007A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMADDSUB
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call HCONSTACCUMADDSUB
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_0079:
.L_0074:
.L_0073:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_006E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONSTACCUMMUL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0083:
cmp dword ptr [ebp+8], 0
jne .L_0086
mov dword ptr [ebp-4], 0
jmp .L_0084
.L_0086:
.L_0085:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0087
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_034C
.L_0087:
mov dword ptr [ebp-20], 0
.L_034C:
cmp dword ptr [ebp-20], 0
je .L_008A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_008C
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .L_008E
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 30
call ASTNEWBOP
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_008D
.L_008E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.L_008D:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMMUL
add esp, 8
mov dword ptr [ebp+8], eax
jmp .L_008B
.L_008C:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call HCONSTACCUMMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_008B:
.L_008A:
.L_0089:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0084:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTCONSTACCUM1:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0092
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTCONSTACCUM1
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_0092:
.L_0091:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0094
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTCONSTACCUM1
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_0094:
.L_0093:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0096
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_0098
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 28
je .L_009B
.L_009C:
cmp dword ptr [ebp-20], 29
jne .L_009A
.L_009B:
push 1
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCONSTACCUMADDSUB
add esp, 12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_009E
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_009E:
.L_009D:
jmp .L_0099
.L_009A:
cmp dword ptr [ebp-20], 30
jne .L_009F
.L_00A0:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCONSTACCUMMUL
add esp, 8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_00A2
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00A2:
.L_00A1:
.L_009F:
.L_0099:
.L_0098:
.L_0097:
.L_0096:
.L_0095:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTCONSTACCUM2:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00A3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00A6
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTCONSTACCUM2
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_00A6:
.L_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_00A8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTCONSTACCUM2
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00AA
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
jne .L_00AD
.L_00AE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-24], ebx
jmp .L_00B0
.L_00B2:
jmp .L_00AF
.L_00B3:
push 1
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp+8]
call HCONSTACCUMADDSUB
add esp, 12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_00B5
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00B5:
.L_00B4:
jmp .L_00AF
.L_00B0:
mov eax, dword ptr [ebp-24]
add eax, 4294967289
cmp eax, 11
ja .L_00B3
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_00B6+eax*4-28]
.L_00B6:
.int .L_00B2
.int .L_00B3
.int .L_00B3
.int .L_00B3
.int .L_00B3
.int .L_00B3
.int .L_00B3
.int .L_00B3
.int .L_00B3
.int .L_00B3
.int .L_00B2
.int .L_00B2
.L_00AF:
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-20], 30
jne .L_00B7
.L_00B8:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCONSTACCUMMUL
add esp, 8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .L_00BA
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00BA:
.L_00B9:
.L_00B7:
.L_00AB:
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONSTDISTMUL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BB:
cmp dword ptr [ebp+8], 0
jne .L_00BE
mov dword ptr [ebp-4], 0
jmp .L_00BC
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00BF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_034E
.L_00BF:
mov dword ptr [ebp-20], 0
.L_034E:
cmp dword ptr [ebp-20], 0
je .L_00C2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .L_00C4
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .L_00C6
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 28
call ASTNEWBOP
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_00C5
.L_00C6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.L_00C5:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTDISTMUL
add esp, 8
mov dword ptr [ebp+8], eax
jmp .L_00C3
.L_00C4:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTDISTMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call HCONSTDISTMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_00C3:
.L_00C2:
.L_00C1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTCONSTDISTMUL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00C7:
cmp dword ptr [ebp+8], 0
jne .L_00CA
mov dword ptr [ebp-4], 0
jmp .L_00C8
.L_00CA:
.L_00C9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00CC
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTCONSTDISTMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_00CC:
.L_00CB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_00CE
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTCONSTDISTMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00D0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebx], 16
jne .L_00D2
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 30
jne .L_00D4
mov dword ptr [ebp-8], 0
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HCONSTDISTMUL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-8], 0
je .L_00D6
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTCLONETREE
add esp, 4
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
.L_00CF:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTCONSTIDXMULT:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .L_00D9
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 30
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0350
.L_00D9:
mov dword ptr [ebp-16], 0
.L_0350:
cmp dword ptr [ebp-16], 0
je .L_00DC
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 16
jne .L_00DE
mov ebx, dword ptr [IR+272]
and ebx, 65536
test ebx, ebx
je .L_00E0
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
je .L_00E2
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-32], ebx
jmp .L_00E4
.L_00E6:
mov dword ptr [ebp-4], -1
jmp .L_00E3
.L_00E7:
mov dword ptr [ebp-4], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .L_00E9
mov dword ptr [ebp-4], 0
jmp .L_00E8
.L_00E9:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_00EA
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
jne .L_00EC
mov dword ptr [ebp-4], 0
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E8:
jmp .L_00E3
.L_00ED:
mov dword ptr [ebp-4], 0
jmp .L_00E3
.L_00E4:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 8
ja .L_00ED
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_00EE+eax*4-4]
.L_00EE:
.int .L_00E6
.int .L_00E6
.int .L_00E7
.int .L_00E6
.int .L_00E7
.int .L_00ED
.int .L_00ED
.int .L_00E6
.int .L_00E7
.L_00E3:
cmp dword ptr [ebp-4], 0
je .L_00F0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+56], ecx
push dword ptr [ebp-28]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
.L_00F0:
.L_00EF:
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DF:
.L_00DE:
.L_00DD:
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
je .L_00F1
mov dword ptr [ebp-20], 24
jmp .L_0351
.L_00F1:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.L_0351:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .L_00F3
mov dword ptr [ebp-24], 24
jmp .L_0352
.L_00F3:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_0352:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [ENV+296]
cmp eax, dword ptr [SYMB_DTYPETB+ecx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
je .L_00F6
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
.L_00F6:
.L_00F5:
.L_00D8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTDEREFADDR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_010C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 23
jne .L_0110
.L_0111:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
mov ebx, eax
call ASTGETOFFSETCHILDOFS
add esp, 4
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
sub esi, eax
sbb ecx, edx
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], ecx
jmp .L_010E
.L_0110:
cmp dword ptr [ebp-28], 6
jne .L_0112
.L_0113:
jmp .L_010E
.L_0112:
mov esi, dword ptr [ebp+8]
mov dword ptr [ebp-4], esi
jmp .L_010D
.L_0114:
.L_010E:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 12
test eax, eax
jne .L_0116
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_010D
.L_0116:
.L_0115:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp+8], ecx
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.L_010D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTCONSTIDX:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0117:
cmp dword ptr [ebp+8], 0
jne .L_011A
mov dword ptr [ebp-4], 0
jmp .L_0118
.L_011A:
.L_0119:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_011C
push dword ptr [ebp-8]
call HOPTCONSTIDX
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_011C:
.L_011B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_011E
push dword ptr [ebp-12]
call HOPTCONSTIDX
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_011E:
.L_011D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 18
je .L_0122
.L_0123:
cmp dword ptr [ebp-28], 20
jne .L_0121
.L_0122:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_0125
mov dword ptr [ebp-16], 0
push 1
lea ebx, [ebp-16]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HCONSTACCUMADDSUB
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-16], 0
je .L_0127
push 8
push dword ptr [ebp-16]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .L_0129
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
jmp .L_0128
.L_0129:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+20], eax
adc dword ptr [ecx+24], ebx
.L_0128:
.L_0127:
.L_0126:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 16
jne .L_012B
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .L_012D
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
jmp .L_012C
.L_012D:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+20], eax
adc dword ptr [ecx+24], ebx
.L_012C:
jmp .L_012A
.L_012B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .L_012F
push dword ptr [ebp+8]
call HOPTCONSTIDXMULT
add esp, 4
jmp .L_012E
.L_012F:
push dword ptr [ebp+8]
call HOPTDEREFADDR
add esp, 4
mov dword ptr [ebp+8], eax
.L_012E:
.L_012A:
.L_0125:
.L_0124:
.L_0121:
.L_011F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0118:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTASSOCADD:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0130:
cmp dword ptr [ebp+8], 0
jne .L_0133
mov dword ptr [ebp-4], 0
jmp .L_0131
.L_0133:
.L_0132:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0135
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .L_0138
.L_0139:
cmp dword ptr [ebp-20], 29
jne .L_0137
.L_0138:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .L_013D
.L_013E:
cmp dword ptr [ebp-28], 18
je .L_013D
.L_013F:
cmp dword ptr [ebp-28], 7
jne .L_013C
.L_013D:
jmp .L_013A
.L_013C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .L_0142
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 28
je .L_0145
.L_0146:
cmp dword ptr [ebp-24], 29
jne .L_0144
.L_0145:
cmp dword ptr [ebp-20], 29
jne .L_0148
cmp dword ptr [ebp-24], 29
jne .L_014A
mov dword ptr [ebp-20], 28
jmp .L_0149
.L_014A:
mov dword ptr [ebp-24], 29
.L_0149:
jmp .L_0147
.L_0148:
cmp dword ptr [ebp-24], 29
jne .L_014C
mov dword ptr [ebp-20], 29
mov dword ptr [ebp-24], 28
.L_014C:
.L_014B:
.L_0147:
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
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
.L_0144:
.L_0143:
.L_0142:
.L_0141:
.L_0140:
.L_013A:
.L_0137:
.L_0136:
.L_0135:
.L_0134:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_014E
push dword ptr [ebp-8]
call HOPTASSOCADD
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_014E:
.L_014D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_0150
push dword ptr [ebp-12]
call HOPTASSOCADD
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_0150:
.L_014F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0131:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTASSOCMUL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0151:
cmp dword ptr [ebp+8], 0
jne .L_0154
mov dword ptr [ebp-4], 0
jmp .L_0152
.L_0154:
.L_0153:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0155
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_0359
.L_0155:
mov dword ptr [ebp-20], 0
.L_0359:
cmp dword ptr [ebp-20], 0
je .L_0158
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .L_0159
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_035A
.L_0159:
mov dword ptr [ebp-24], 0
.L_035A:
cmp dword ptr [ebp-24], 0
je .L_015C
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
call ASTNEWBOP
add esp, 20
push eax
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
.L_015C:
.L_015B:
.L_0158:
.L_0157:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_015E
push dword ptr [ebp-8]
call HOPTASSOCMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_015E:
.L_015D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_0160
push dword ptr [ebp-12]
call HOPTASSOCMUL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_0160:
.L_015F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0152:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDIVTOSHIFT_SIGNED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
.L_0161:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
je .L_0164
jmp .L_0162
.L_0164:
.L_0163:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0165
mov dword ptr [ebp-20], 24
jmp .L_035D
.L_0165:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-20], eax
.L_035D:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 7
jne .L_0168
mov ebx, dword ptr [SYMB_DTYPETB+228]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
.L_0168:
.L_0167:
push dword ptr [ebp-4]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 1
jne .L_016A
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
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 1
push dword ptr [ebp-4]
push 0
push dword ptr [ebp-12]
call TYPETOUNSIGNED
add esp, 4
push eax
call ASTNEWCONV
add esp, 20
push eax
push 42
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
push eax
push 0
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
jmp .L_0169
.L_016A:
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
call ASTNEWCONSTI
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
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
push 42
call ASTNEWBOP
add esp, 20
push eax
push 34
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
push eax
push 0
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
.L_0169:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 42
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+60]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
.L_0162:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HTOPOW2:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_016B:
mov dword ptr [ebp-8], 1
.L_0170:
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
jz .L_035E
mov edx, eax
xor eax, eax
.L_035E:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
cmp dword ptr [ebp+12], eax
jne .L_0172
cmp dword ptr [ebp+8], ebx
jne .L_0172
.L_035F:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_016C
.L_0172:
.L_0171:
.L_016E:
inc dword ptr [ebp-8]
.L_016D:
cmp dword ptr [ebp-8], 63
jle .L_0170
.L_016F:
mov dword ptr [ebp-4], 0
.L_016C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTTOSHIFT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0173:
cmp dword ptr [ebp+8], 0
jne .L_0176
jmp .L_0174
.L_0176:
.L_0175:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0178
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 30
je .L_017B
.L_017C:
cmp dword ptr [ebp-12], 32
je .L_017B
.L_017D:
cmp dword ptr [ebp-12], 33
jne .L_017A
.L_017B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_017E
mov dword ptr [ebp-28], 24
jmp .L_0360
.L_017E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0360:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .L_0181
jmp .L_0179
.L_0181:
.L_0180:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_0183
jmp .L_0179
.L_0183:
.L_0182:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .L_0369
cmp dword ptr [ebp-24], 0
je .L_0368
.L_0369:
xor ecx, ecx
.L_0368:
cmp dword ptr [ebp-20], 0
mov ebx, -1
jl .L_036A
jg .L_036B
cmp dword ptr [ebp-24], 0
jb .L_036A
.L_036B:
xor ebx, ebx
.L_036A:
mov dword ptr [ebp-36], ecx
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_0184
mov dword ptr [ebp-32], 24
jmp .L_0361
.L_0184:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0361:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [ebp-40]
or ecx, dword ptr [ebp-36]
je .L_0187
jmp .L_0179
.L_0187:
.L_0186:
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HTOPOW2
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jg .L_0189
jmp .L_0179
.L_0189:
.L_0188:
cmp dword ptr [ebp-12], 30
jne .L_018B
.L_018C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_018D
mov dword ptr [ebp-36], 24
jmp .L_0364
.L_018D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0364:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .L_0190
jmp .L_0179
.L_0190:
.L_018F:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 41
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_018A
.L_018B:
cmp dword ptr [ebp-12], 32
jne .L_0191
.L_0192:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_0193
mov dword ptr [ebp-36], 24
jmp .L_0365
.L_0193:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0365:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .L_0196
jmp .L_0179
.L_0196:
.L_0195:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0197
mov dword ptr [ebp-40], 24
jmp .L_0366
.L_0197:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-40], ecx
.L_0366:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
jne .L_019A
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 42
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .L_0199
.L_019A:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HDIVTOSHIFT_SIGNED
add esp, 8
.L_0199:
jmp .L_018A
.L_0191:
cmp dword ptr [ebp-12], 33
jne .L_019B
.L_019C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .L_019D
mov dword ptr [ebp-36], 24
jmp .L_0367
.L_019D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.L_0367:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_01A0
jmp .L_0179
.L_01A0:
.L_019F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 34
mov eax, dword ptr [ebp-8]
add dword ptr [eax+20], 4294967295
adc dword ptr [eax+24], 4294967295
.L_019B:
.L_018A:
.L_017A:
.L_0179:
.L_0178:
.L_0177:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-4], ecx
cmp dword ptr [ebp-4], 0
je .L_01A2
push dword ptr [ebp-4]
call HOPTTOSHIFT
add esp, 4
.L_01A2:
.L_01A1:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01A4
push dword ptr [ebp-8]
call HOPTTOSHIFT
add esp, 4
.L_01A4:
.L_01A3:
.L_0174:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTCONSTCONV:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_01A5:
cmp dword ptr [ebp+8], 0
jne .L_01A8
mov dword ptr [ebp-4], 0
jmp .L_01A6
.L_01A8:
.L_01A7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .L_01AA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .L_01AC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_01AD
mov dword ptr [ebp-24], 24
jmp .L_036C
.L_01AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_036C:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_01B0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_01B1
mov dword ptr [ebp-28], 24
jmp .L_036D
.L_01B1:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_036D:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_01B4
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .L_01B6
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01B8
cmp dword ptr [ebp-20], 0
jne .L_01B8
.L_036E:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
.L_01B8:
.L_01B7:
.L_01B6:
.L_01B5:
.L_01B4:
.L_01B3:
.L_01B0:
.L_01AF:
.L_01AC:
.L_01AB:
.L_01AA:
.L_01A9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_01A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTNULLOP:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_01B9:
cmp dword ptr [ebp+8], 0
jne .L_01BC
mov dword ptr [ebp-4], 0
jmp .L_01BA
.L_01BC:
.L_01BB:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTNULLOP
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTNULLOP
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_01BE
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
call ASTHASSIDEFX
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-12]
call ASTHASSIDEFX
add esp, 4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_01BF
mov dword ptr [ebp-36], 24
jmp .L_036F
.L_01BF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.L_036F:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .L_01C2
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_01C4
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-40], ecx
jmp .L_01C6
.L_01C8:
cmp dword ptr [ebp-20], 0
jne .L_01CA
cmp dword ptr [ebp-24], 0
jne .L_01CA
.L_0373:
cmp dword ptr [ebp-28], 0
jne .L_01CC
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
jmp .L_01CB
.L_01CC:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 34
.L_01CB:
jmp .L_01C9
.L_01CA:
cmp dword ptr [ebp-20], 0
jne .L_01CD
cmp dword ptr [ebp-24], 1
jne .L_01CD
.L_0374:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
.L_01CD:
.L_01C9:
jmp .L_01C5
.L_01CE:
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .L_0376
cmp dword ptr [ebp-24], 1
je .L_0375
.L_0376:
xor ecx, ecx
.L_0375:
cmp dword ptr [ebp-20], 4294967295
mov ebx, -1
jne .L_0378
cmp dword ptr [ebp-24], 4294967295
je .L_0377
.L_0378:
xor ebx, ebx
.L_0377:
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
and ecx, 480
je .L_01CF
mov dword ptr [ebp-44], 24
jmp .L_0370
.L_01CF:
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0370:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-52]
or ecx, dword ptr [ebp-48]
je .L_01D2
cmp dword ptr [ebp-28], 0
jne .L_01D4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
.L_01D4:
.L_01D3:
.L_01D2:
.L_01D1:
jmp .L_01C5
.L_01D5:
cmp dword ptr [ebp-20], 0
jne .L_01D7
cmp dword ptr [ebp-24], 1
jne .L_01D7
.L_037A:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
.L_01D7:
.L_01D6:
jmp .L_01C5
.L_01D8:
cmp dword ptr [ebp-20], 0
jne .L_01DA
cmp dword ptr [ebp-24], 0
jne .L_01DA
.L_037B:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
.L_01DA:
.L_01D9:
jmp .L_01C5
.L_01DB:
cmp dword ptr [ebp-20], 4294967295
jne .L_01DD
cmp dword ptr [ebp-24], 4294967295
jne .L_01DD
.L_037C:
cmp dword ptr [ebp-28], 0
jne .L_01DF
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
.L_01DF:
.L_01DE:
.L_01DD:
.L_01DC:
jmp .L_01C5
.L_01E0:
cmp dword ptr [ebp-20], 0
jne .L_01E2
cmp dword ptr [ebp-24], 0
jne .L_01E2
.L_037D:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
jmp .L_01E1
.L_01E2:
cmp dword ptr [ebp-20], 4294967295
jne .L_01E3
cmp dword ptr [ebp-24], 4294967295
jne .L_01E3
.L_037E:
cmp dword ptr [ebp-28], 0
jne .L_01E5
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
.L_01E5:
.L_01E4:
.L_01E3:
.L_01E1:
jmp .L_01C5
.L_01E6:
cmp dword ptr [ebp-20], 4294967295
jne .L_01E8
cmp dword ptr [ebp-24], 4294967295
jne .L_01E8
.L_037F:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
jmp .L_01E7
.L_01E8:
cmp dword ptr [ebp-20], 0
jne .L_01E9
cmp dword ptr [ebp-24], 0
jne .L_01E9
.L_0380:
cmp dword ptr [ebp-28], 0
jne .L_01EB
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01BA
.L_01EB:
.L_01EA:
.L_01E9:
.L_01E7:
jmp .L_01C5
.L_01C6:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967268
cmp ecx, 14
ja .L_01C5
mov ecx, dword ptr [ebp-40]
jmp dword ptr [.L_01EC+ecx*4-112]
.L_01EC:
.int .L_01D8
.int .L_01D8
.int .L_01C8
.int .L_01C5
.int .L_01D5
.int .L_01CE
.int .L_01E6
.int .L_01E0
.int .L_01C5
.int .L_01C5
.int .L_01D8
.int .L_01C5
.int .L_01DB
.int .L_01D8
.int .L_01D8
.L_01C5:
jmp .L_01C3
.L_01C4:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx], 16
jne .L_01ED
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], ebx
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .L_01EF
.L_01F1:
cmp dword ptr [ebp-20], 0
jne .L_01F3
cmp dword ptr [ebp-24], 0
jne .L_01F3
.L_0381:
cmp dword ptr [ebp-32], 0
jne .L_01F5
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01BA
.L_01F5:
.L_01F4:
.L_01F3:
.L_01F2:
jmp .L_01EE
.L_01EF:
mov eax, dword ptr [ebp-40]
add eax, 4294967266
cmp eax, 12
ja .L_01EE
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_01F6+eax*4-120]
.L_01F6:
.int .L_01F1
.int .L_01EE
.int .L_01F1
.int .L_01F1
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01F1
.int .L_01F1
.L_01EE:
.L_01ED:
.L_01C3:
.L_01C2:
.L_01C1:
.L_01BE:
.L_01BD:
push dword ptr [ebp+8]
call HOPTCONSTCONV
add esp, 4
mov dword ptr [ebp-4], eax
.L_01BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTLOGIC:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_01F7:
cmp dword ptr [ebp+8], 0
jne .L_01FA
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01F8
.L_01FA:
.L_01F9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_01FC
push dword ptr [ebp-12]
call HOPTLOGIC
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
.L_01FC:
.L_01FB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_01FE
push dword ptr [ebp-16]
call HOPTLOGIC
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
.L_01FE:
.L_01FD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_01FF
mov dword ptr [ebp-32], 24
jmp .L_0382
.L_01FF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0382:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_0202
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_0203
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_0383
.L_0203:
mov dword ptr [ebp-36], 0
.L_0383:
cmp dword ptr [ebp-36], 0
je .L_0206
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .L_0207
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
jmp .L_0384
.L_0207:
mov dword ptr [ebp-40], 0
.L_0384:
cmp dword ptr [ebp-40], 0
je .L_020A
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
jmp .L_0209
.L_020A:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .L_020C
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 38
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
jmp .L_0385
.L_020C:
mov dword ptr [ebp-44], 0
.L_0385:
cmp dword ptr [ebp-44], 0
je .L_020B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_020E
mov dword ptr [ebp-48], 24
jmp .L_0386
.L_020E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_0386:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_0211
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 16
jne .L_0213
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
not dword ptr [ebx+20]
not dword ptr [ebx+24]
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
jmp .L_0212
.L_0213:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebx], 16
jne .L_0214
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+60]
not dword ptr [eax+20]
not dword ptr [eax+24]
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call HOPTLOGIC
add esp, 4
mov dword ptr [ebp+8], eax
.L_0214:
.L_0212:
.L_0211:
.L_0210:
.L_020B:
.L_0209:
jmp .L_0205
.L_0206:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0215
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0216
mov dword ptr [ebp-40], 24
jmp .L_0387
.L_0216:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-40], eax
.L_0387:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .L_0219
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 35
je .L_021C
.L_021D:
cmp dword ptr [ebp-20], 34
je .L_021C
.L_021E:
cmp dword ptr [ebp-20], 38
jne .L_021B
.L_021C:
cmp dword ptr [ebp-20], 34
jne .L_0220
mov dword ptr [ebp-20], 35
jmp .L_021F
.L_0220:
cmp dword ptr [ebp-20], 35
jne .L_0221
mov dword ptr [ebp-20], 34
.L_0221:
.L_021F:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .L_0222
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_0388
.L_0222:
mov dword ptr [ebp-44], 0
.L_0388:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 4
jne .L_0224
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
jmp .L_0389
.L_0224:
mov dword ptr [ebp-48], 0
.L_0389:
mov ebx, dword ptr [ebp-48]
and ebx, dword ptr [ebp-44]
je .L_0227
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
call HOPTLOGIC
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+56]
call HOPTLOGIC
add esp, 4
mov dword ptr [ebp-16], eax
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-20], 38
je .L_0229
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0229:
.L_0228:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .L_0226
.L_0227:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
jne .L_022B
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
jmp .L_038A
.L_022B:
mov dword ptr [ebp-52], 0
.L_038A:
mov eax, dword ptr [ebp-52]
and eax, dword ptr [ebp-68]
je .L_022A
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
call ASTNEWBOP
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
je .L_022E
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_022E:
.L_022D:
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .L_0226
.L_022A:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx], 4
jne .L_0230
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_038C
.L_0230:
mov dword ptr [ebp-56], 0
.L_038C:
mov eax, dword ptr [ebp-56]
and eax, dword ptr [ebp-68]
je .L_022F
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
call ASTNEWBOP
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
je .L_0233
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0233:
.L_0232:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .L_0226
.L_022F:
mov eax, dword ptr [ebp-20]
cmp eax, 38
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .L_0235
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-60], ebx
jmp .L_038E
.L_0235:
mov dword ptr [ebp-60], 0
.L_038E:
mov ebx, dword ptr [ebp-60]
and ebx, dword ptr [ebp-68]
je .L_0234
push dword ptr [ebp+8]
push 52
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+56], ecx
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
jmp .L_0226
.L_0234:
mov ecx, dword ptr [ebp-20]
cmp ecx, 38
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx], 4
jne .L_0238
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-64], ebx
jmp .L_0390
.L_0238:
mov dword ptr [ebp-64], 0
.L_0390:
mov ebx, dword ptr [ebp-64]
and ebx, dword ptr [ebp-68]
je .L_0237
push dword ptr [ebp+8]
push 52
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+60], ecx
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
.L_0237:
.L_0226:
.L_021B:
.L_021A:
.L_0219:
.L_0218:
.L_0215:
.L_0205:
.L_0202:
.L_0201:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.L_01F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOOPTREMCONV:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_023A:
cmp dword ptr [ebp+8], 0
jne .L_023D
mov dword ptr [ebp-4], 0
jmp .L_023B
.L_023D:
.L_023C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_023F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 15
je .L_0243
.L_0244:
cmp dword ptr [ebp-20], 16
jne .L_0242
.L_0243:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .L_0246
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 5
je .L_0248
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 15
je .L_024C
.L_024D:
cmp dword ptr [ebp-24], 16
jne .L_024B
.L_024C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_024E
mov dword ptr [ebp-28], 24
jmp .L_039F
.L_024E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_039F:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
je .L_0253
.L_0254:
cmp dword ptr [ebp-32], 4
jne .L_0252
.L_0253:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .L_0258
.L_0259:
cmp dword ptr [ebp-36], 18
je .L_0258
.L_025A:
cmp dword ptr [ebp-36], 19
je .L_0258
.L_025B:
cmp dword ptr [ebp-36], 20
jne .L_0257
.L_0258:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .L_025C
mov dword ptr [ebp-40], 24
jmp .L_03A0
.L_025C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.L_03A0:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_025F
mov dword ptr [ebp-16], -1
.L_025F:
.L_025E:
.L_0257:
.L_0255:
cmp dword ptr [ebp-16], 0
je .L_0261
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_0261:
.L_0260:
.L_0252:
.L_0250:
.L_024B:
.L_0249:
.L_0248:
.L_0247:
.L_0246:
.L_0245:
.L_0242:
.L_0240:
.L_023F:
.L_023E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HDOOPTREMCONV
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HDOOPTREMCONV
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_023B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTSTRMULTCONCAT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0262:
cmp dword ptr [ebp+16], 0
jne .L_0265
mov dword ptr [ebp-4], 0
jmp .L_0263
.L_0265:
.L_0264:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
je .L_0267
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 3
jne .L_0269
push dword ptr [ebp+20]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+56], 0
.L_0269:
.L_0268:
.L_0267:
.L_0266:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .L_026B
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
je .L_026D
cmp dword ptr [ebp+8], 0
jne .L_026F
cmp dword ptr [ebp+20], 0
jne .L_0271
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0270
.L_0271:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
.L_0270:
jmp .L_026E
.L_026F:
cmp dword ptr [ebp+20], 0
jne .L_0273
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRCONCATASSIGN
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0272
.L_0273:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_0272:
.L_026E:
.L_026D:
.L_026C:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+60], 0
je .L_0275
cmp dword ptr [ebp+20], 0
jne .L_0277
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRCONCATASSIGN
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_0276
.L_0277:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_0276:
.L_0275:
.L_0274:
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
jmp .L_026A
.L_026B:
cmp dword ptr [ebp+8], 0
jne .L_0279
cmp dword ptr [ebp+20], 0
jne .L_027B
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_027A
.L_027B:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
.L_027A:
jmp .L_0278
.L_0279:
cmp dword ptr [ebp+20], 0
jne .L_027D
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRCONCATASSIGN
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .L_027C
.L_027D:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_027C:
.L_0278:
.L_026A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0263:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HISMULTSTRCONCAT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_027E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_0281
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .L_0285
.L_0286:
cmp dword ptr [ebp-12], 18
jne .L_0284
.L_0285:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0288
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
jne .L_028A
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_028A:
.L_0289:
.L_0288:
.L_0287:
jmp .L_0282
.L_0284:
cmp dword ptr [ebp-12], 19
je .L_028C
.L_028D:
cmp dword ptr [ebp-12], 26
jne .L_028B
.L_028C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .L_0291
.L_0292:
cmp dword ptr [ebp-16], 18
jne .L_0290
.L_0291:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0294
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0294:
.L_0293:
.L_0290:
.L_028E:
.L_028B:
.L_0282:
.L_0281:
.L_0280:
.L_027F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTSTRASSIGNMENT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0295:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .L_0298
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
jmp .L_029A
.L_029C:
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push dword ptr [ebp+12]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
je .L_029E
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .L_02A0
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 81920
test eax, eax
jne .L_02A2
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp-20]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.L_02A2:
.L_02A1:
.L_02A0:
.L_029F:
.L_029E:
.L_029D:
jmp .L_0299
.L_02A3:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
je .L_02A5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_02A7
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 17
jne .L_02A9
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+60]
push dword ptr [ebp-20]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
.L_02A9:
.L_02A8:
.L_02A7:
.L_02A6:
.L_02A5:
.L_02A4:
jmp .L_0299
.L_02AA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
jmp .L_02AC
.L_02AE:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
je .L_02B0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .L_02B2
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 17
jne .L_02B4
mov dword ptr [ebp-12], -1
.L_02B4:
.L_02B3:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp-20]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.L_02B2:
.L_02B1:
.L_02B0:
.L_02AF:
jmp .L_02AB
.L_02AC:
mov eax, dword ptr [ebp-28]
add eax, 4294967279
cmp eax, 1
ja .L_02AB
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_02B5+eax*4-68]
.L_02B5:
.int .L_02AE
.int .L_02AE
.L_02AB:
jmp .L_0299
.L_029A:
mov eax, dword ptr [ebp-24]
add eax, 4294967279
cmp eax, 9
ja .L_0299
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_02B6+eax*4-68]
.L_02B6:
.int .L_029C
.int .L_029C
.int .L_02AA
.int .L_02A3
.int .L_0299
.int .L_0299
.int .L_0299
.int .L_0299
.int .L_0299
.int .L_02AA
.L_0299:
.L_0298:
.L_0297:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-8], 0
je .L_02B8
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp+8], ebx
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp+16], ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HISMULTSTRCONCAT
add esp, 8
test eax, eax
je .L_02BA
push dword ptr [ebp-16]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02B9
.L_02BA:
cmp dword ptr [ebp-16], 0
jne .L_02BC
push dword ptr [ebp-12]
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLSTRCONCATASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_02BB
.L_02BC:
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLWSTRCONCATASSIGN
add esp, 8
mov dword ptr [ebp-4], eax
.L_02BB:
.L_02B9:
jmp .L_02B7
.L_02B8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HISMULTSTRCONCAT
add esp, 8
test eax, eax
je .L_02BE
push dword ptr [ebp-16]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02BD
.L_02BE:
cmp dword ptr [ebp-16], 0
jne .L_02C0
push 0
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02C0:
push 0
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLWSTRASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_02BF:
.L_02BD:
.L_02B7:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_0296:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOPTRECIPROCAL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_031F:
cmp dword ptr [ebp+8], 0
jne .L_0322
mov dword ptr [ebp-4], 0
jmp .L_0320
.L_0322:
.L_0321:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0323
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 31
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_03A7
.L_0323:
mov dword ptr [ebp-20], 0
.L_03A7:
cmp dword ptr [ebp-20], 0
je .L_0326
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
jne .L_0328
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .L_0329
mov ebx, dword ptr [ebp-8]
fld qword ptr [ebx+20]
fld qword ptr [Lt_03A9]
fcomip st, st(1)
fstp st(0)
setz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_03A8
.L_0329:
mov dword ptr [ebp-24], 0
.L_03A8:
cmp dword ptr [ebp-24], 0
je .L_032C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_032D
mov dword ptr [ebp-28], 24
jmp .L_03AA
.L_032D:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.L_03AA:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
jmp .L_0330
.L_0332:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .L_0333
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 65
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_03AB
.L_0333:
mov dword ptr [ebp-36], 0
.L_03AB:
cmp dword ptr [ebp-36], 0
je .L_0336
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
call ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
jmp .L_0335
.L_0336:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .L_0337
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
push 67
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp+8], eax
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
.L_0337:
.L_0335:
jmp .L_032F
.L_0330:
cmp dword ptr [ebp-32], 1
ja .L_032F
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_0338+eax*4]
.L_0338:
.int .L_0332
.int .L_0332
.L_032F:
.L_032C:
.L_032B:
.L_0328:
.L_0327:
.L_0326:
.L_0325:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_033A
push dword ptr [ebp-8]
call HOPTRECIPROCAL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_033A:
.L_0339:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_033C
push dword ptr [ebp-12]
call HOPTRECIPROCAL
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_033C:
.L_033B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0320:
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
.balign 8
Lt_03A9:	.quad	0x3FF0000000000000
