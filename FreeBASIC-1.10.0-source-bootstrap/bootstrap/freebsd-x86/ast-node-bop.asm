	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWBOP
ASTNEWBOP:
push ebp
mov ebp, esp
sub esp, 148
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_01AA:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset SYMB
add ebx, eax
cmp dword ptr [ebx+99120], 0
je .L_01AD
lea ebx, [ebp-128]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDBOPOVLPROC
add esp, 16
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 0
je .L_01AF
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-124]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01AB
jmp .L_01AE
.L_01AF:
cmp dword ptr [ebp-128], 0
je .L_01B1
mov dword ptr [ebp-4], 0
jmp .L_01AB
.L_01B1:
.L_01B0:
.L_01AE:
.L_01AD:
.L_01AC:
mov dword ptr [ebp-56], 0
cmp dword ptr [ebp+8], 44
jne .L_01B3
.L_01B4:
lea eax, [ebp+16]
push eax
lea eax, [ebp+12]
push eax
call HTOSTR
add esp, 8
mov dword ptr [ebp+8], 28
jmp .L_01B2
.L_01B3:
cmp dword ptr [ebp+8], 51
jne .L_01B5
.L_01B6:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call RTLOOPISTYPEOF
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_01B5:
.L_01B2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01B7
mov dword ptr [ebp-72], 24
jmp .L_034E
.L_01B7:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-72], eax
.L_034E:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_01B9
mov dword ptr [ebp-76], 24
jmp .L_034F
.L_01B9:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-76], ebx
.L_034F:
mov ebx, dword ptr [ebp-76]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-68], -1
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01BB
mov dword ptr [ebp-80], 24
jmp .L_0350
.L_01BB:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-80], eax
.L_0350:
mov eax, dword ptr [ebp-80]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01BD
mov dword ptr [ebp-84], 24
jmp .L_0351
.L_01BD:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.L_0351:
mov eax, dword ptr [ebp-84]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .L_01C0
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
je .L_01C2
jmp .L_01AB
.L_01C2:
.L_01C1:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01C3
mov dword ptr [ebp-128], 24
jmp .L_0353
.L_01C3:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_0353:
cmp dword ptr [ebp-128], 20
jne .L_01C6
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCONVERTUDT_L
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01AB
jmp .L_01C5
.L_01C6:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCONVERTUDT_R
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_01C5:
.L_01C0:
.L_01BF:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .L_01C8
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
je .L_01CA
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HDOPOINTERARITH
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01AB
jmp .L_01C9
.L_01CA:
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HCHECKPOINTER
add esp, 12
test eax, eax
jne .L_01CC
jmp .L_01AB
.L_01CC:
.L_01CB:
.L_01C9:
jmp .L_01C7
.L_01C8:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .L_01CD
mov eax, dword ptr [ebp+24]
and eax, 4
test eax, eax
je .L_01CF
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HDOPOINTERARITH
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01AB
jmp .L_01CE
.L_01CF:
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call HCHECKPOINTER
add esp, 12
test eax, eax
jne .L_01D1
jmp .L_01AB
.L_01D1:
.L_01D0:
.L_01CE:
.L_01CD:
.L_01C7:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01D2
mov dword ptr [ebp-88], 24
jmp .L_0354
.L_01D2:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-88], eax
.L_0354:
cmp dword ptr [ebp-88], 10
jne .L_01D5
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 8
call HCONVOPERAND
add esp, 16
.L_01D5:
.L_01D4:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01D6
mov dword ptr [ebp-92], 24
jmp .L_0355
.L_01D6:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.L_0355:
cmp dword ptr [ebp-92], 10
jne .L_01D9
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 8
call HCONVOPERAND
add esp, 16
.L_01D9:
.L_01D8:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01DA
mov dword ptr [ebp-96], 24
jmp .L_0356
.L_01DA:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-96], eax
.L_0356:
mov eax, dword ptr [ebp-96]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01DC
mov dword ptr [ebp-100], 24
jmp .L_0357
.L_01DC:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-100], eax
.L_0357:
mov eax, dword ptr [ebp-100]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-124]
je .L_01DF
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
.L_01DF:
.L_01DE:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01E0
mov dword ptr [ebp-104], 24
jmp .L_0359
.L_01E0:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-104], eax
.L_0359:
mov eax, dword ptr [ebp-104]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01E2
mov dword ptr [ebp-108], 24
jmp .L_035A
.L_01E2:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-108], eax
.L_035A:
mov eax, dword ptr [ebp-108]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .L_01E5
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .L_01E7
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01E8
mov dword ptr [ebp-128], 24
jmp .L_035C
.L_01E8:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_035C:
cmp dword ptr [ebp-128], 7
jne .L_01EB
mov ebx, dword ptr [ebp-36]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_01EC
mov dword ptr [ebp-132], 24
jmp .L_035D
.L_01EC:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-132], ebx
.L_035D:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
jmp .L_01EA
.L_01EB:
mov ebx, dword ptr [ebp-32]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01EE
mov dword ptr [ebp-132], 24
jmp .L_035F
.L_01EE:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-132], ebx
.L_035F:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
.L_01EA:
jmp .L_01E6
.L_01E7:
mov dword ptr [ebp-56], -1
.L_01E6:
cmp dword ptr [ebp-56], 0
je .L_01F1
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01F2
mov dword ptr [ebp-128], 24
jmp .L_0361
.L_01F2:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0361:
mov ebx, dword ptr [ebp-128]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], 4
je .L_01F7
.L_01F8:
cmp dword ptr [ebp-132], 7
jne .L_01F6
.L_01F7:
push dword ptr [ebp+12]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_01FA
cmp dword ptr [ebp-24], 4
je .L_01FD
.L_01FE:
cmp dword ptr [ebp-24], 7
jne .L_01FC
.L_01FD:
push dword ptr [ebp+16]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
jmp .L_01FB
.L_01FC:
mov dword ptr [ebp-60], 0
.L_01FF:
.L_01FB:
.L_01FA:
.L_01F9:
.L_01F6:
.L_01F4:
cmp dword ptr [ebp+8], 28
jne .L_0201
cmp dword ptr [ebp-60], 0
je .L_0203
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ENV+288]
je .L_0205
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HWSTRLITERALCONCAT
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0205:
.L_0204:
.L_0203:
.L_0202:
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .L_0207
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call RTLWSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0207:
.L_0206:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 7
and eax, -513
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-20]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-56], -1
jmp .L_0200
.L_0201:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_0208
cmp dword ptr [ebp-60], 0
je .L_020A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWSTRLITERALCOMPARE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_020A:
.L_0209:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call RTLWSTRCOMPARE
add esp, 8
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp-20]
and eax, -512
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+4]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
jmp .L_0200
.L_0208:
jmp .L_01AB
.L_0200:
jmp .L_01F0
.L_01F1:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_020B
mov dword ptr [ebp-128], 24
jmp .L_0362
.L_020B:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_0362:
cmp dword ptr [ebp-128], 7
jne .L_020E
push dword ptr [ebp-24]
push dword ptr [ebp+16]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call HCHECKDEREFWCHARPTR
add esp, 16
test eax, eax
jne .L_0210
jmp .L_01AB
.L_0210:
.L_020F:
jmp .L_020D
.L_020E:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HCHECKDEREFWCHARPTR
add esp, 16
test eax, eax
jne .L_0212
jmp .L_01AB
.L_0212:
.L_0211:
.L_020D:
.L_01F0:
jmp .L_01E4
.L_01E5:
mov eax, dword ptr [ebp-32]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-36]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0213
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .L_0215
cmp dword ptr [ebp-32], 2
jne .L_0217
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_0218
mov dword ptr [ebp-128], 24
jmp .L_0363
.L_0218:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0363:
cmp dword ptr [ebp-128], 4
je .L_021B
jmp .L_01AB
.L_021B:
.L_021A:
jmp .L_0216
.L_0217:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_021C
mov dword ptr [ebp-128], 24
jmp .L_0364
.L_021C:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0364:
cmp dword ptr [ebp-128], 4
je .L_021F
jmp .L_01AB
.L_021F:
.L_021E:
.L_0216:
.L_0215:
.L_0214:
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_0220
mov dword ptr [ebp-124], 24
jmp .L_0365
.L_0220:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-124], ebx
.L_0365:
cmp dword ptr [ebp-124], 4
jne .L_0223
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_0224
mov dword ptr [ebp-128], 24
jmp .L_0366
.L_0224:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0366:
cmp dword ptr [ebp-128], 4
jne .L_0227
push dword ptr [ebp+12]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_0229
push dword ptr [ebp+16]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
.L_0229:
.L_0228:
.L_0227:
.L_0226:
.L_0223:
.L_0222:
cmp dword ptr [ebp+8], 28
jne .L_022B
cmp dword ptr [ebp-60], 0
je .L_022D
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HSTRLITERALCONCAT
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_022D:
.L_022C:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 17
and eax, -513
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-20]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-56], -1
jmp .L_022A
.L_022B:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_022E
cmp dword ptr [ebp-60], 0
je .L_0230
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSTRLITERALCOMPARE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0230:
.L_022F:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call RTLSTRCOMPARE
add esp, 16
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp-20]
and eax, -512
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+4]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-36], 0
jmp .L_022A
.L_022E:
jmp .L_01AB
.L_022A:
jmp .L_01E4
.L_0213:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_0232
mov dword ptr [ebp-112], 24
jmp .L_0367
.L_0232:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-112], eax
.L_0367:
mov eax, dword ptr [ebp-112]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0234
mov dword ptr [ebp-116], 24
jmp .L_0368
.L_0234:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-116], eax
.L_0368:
mov eax, dword ptr [ebp-116]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .L_0231
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_0236
mov dword ptr [ebp-128], 24
jmp .L_036A
.L_0236:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_036A:
cmp dword ptr [ebp-128], 4
jne .L_0239
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
je .L_023B
jmp .L_01AB
.L_023B:
.L_023A:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 3
mov dword ptr [ebp-20], eax
jmp .L_0238
.L_0239:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .L_023D
jmp .L_01AB
.L_023D:
.L_023C:
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 3
mov dword ptr [ebp-24], eax
.L_0238:
.L_0231:
.L_01E4:
mov dword ptr [ebp-120], 0
mov eax, dword ptr [ebp-20]
and eax, 511
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_023F
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-124], ebx
jmp .L_0241
.L_0243:
mov ebx, dword ptr [ebp-20]
and ebx, 511
mov eax, dword ptr [ebp-24]
and eax, 511
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-120], ebx
jmp .L_0240
.L_0244:
jmp .L_01AB
jmp .L_0240
.L_0241:
mov ebx, dword ptr [ebp-124]
add ebx, 4294967262
cmp ebx, 14
ja .L_0244
mov ebx, dword ptr [ebp-124]
jmp dword ptr [.L_0245+ebx*4-136]
.L_0245:
.int .L_0243
.int .L_0243
.int .L_0243
.int .L_0243
.int .L_0243
.int .L_0243
.int .L_0243
.int .L_0244
.int .L_0244
.int .L_0244
.int .L_0244
.int .L_0243
.int .L_0244
.int .L_0244
.int .L_0243
.L_0240:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HSHOULDWARNABOUTMIXEDBOOL
add esp, 8
test eax, eax
je .L_0247
push 0
push 1
push 0
push 38
call ERRREPORTWARN
add esp, 16
.L_0247:
.L_0246:
.L_023F:
.L_023E:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ENV+136]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-56]
not ebx
and eax, ebx
mov ebx, dword ptr [ebp-120]
not ebx
and eax, ebx
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .L_0249
mov eax, dword ptr [SYMB_DTYPETB+236]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [SYMB_DTYPETB+264]
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-32], 0
jne .L_024B
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_024C
mov dword ptr [ebp-124], 24
jmp .L_036B
.L_024C:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-124], eax
.L_036B:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
and ebx, 480
je .L_0250
mov dword ptr [ebp-132], 24
jmp .L_036C
.L_0250:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_024E
mov dword ptr [ebp-128], 24
jmp .L_036D
.L_024E:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_036D:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.L_036C:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-40], ebx
jge .L_0253
lea ebx, [ebp+12]
push ebx
lea ebx, [ebp-32]
push ebx
lea ebx, [ebp-20]
push ebx
push 8
call HCONVOPERAND
add esp, 16
jmp .L_0252
.L_0253:
mov ebx, dword ptr [ebp-48]
cmp ebx, dword ptr [ebp-40]
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-40]
cmp eax, dword ptr [ebp-52]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0255
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 9
call HCONVOPERAND
add esp, 16
.L_0255:
.L_0254:
.L_0252:
.L_024B:
.L_024A:
cmp dword ptr [ebp-36], 0
jne .L_0257
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0258
mov dword ptr [ebp-124], 24
jmp .L_036E
.L_0258:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-124], eax
.L_036E:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
and ebx, 480
je .L_025C
mov dword ptr [ebp-132], 24
jmp .L_036F
.L_025C:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_025A
mov dword ptr [ebp-128], 24
jmp .L_0370
.L_025A:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0370:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.L_036F:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-44], ebx
jge .L_025F
lea ebx, [ebp+16]
push ebx
lea ebx, [ebp-36]
push ebx
lea ebx, [ebp-24]
push ebx
push 8
call HCONVOPERAND
add esp, 16
jmp .L_025E
.L_025F:
mov ebx, dword ptr [ebp-48]
cmp ebx, dword ptr [ebp-44]
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-44]
cmp eax, dword ptr [ebp-52]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0261
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 9
call HCONVOPERAND
add esp, 16
.L_0261:
.L_0260:
.L_025E:
.L_0257:
.L_0256:
.L_0249:
.L_0248:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_0263
.L_0265:
cmp dword ptr [ebp-32], 1
je .L_0267
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call HCONVOPERAND
add esp, 16
.L_0267:
.L_0266:
cmp dword ptr [ebp-36], 1
je .L_0269
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [IR+272]
and eax, 1
test eax, eax
je .L_026B
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
jmp .L_026A
.L_026B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp ebx, 17
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-24]
cmp eax, 8
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_026D
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
.L_026D:
.L_026C:
.L_026A:
mov dword ptr [ebp-36], 1
.L_0269:
.L_0268:
jmp .L_0262
.L_026E:
cmp dword ptr [ebp-32], 0
je .L_0270
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp-24]
call HGETINTEGERORBIGGER
add esp, 4
push eax
call HCONVOPERAND
add esp, 16
.L_0270:
.L_026F:
cmp dword ptr [ebp-36], 0
je .L_0272
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp-20]
call HGETINTEGERORBIGGER
add esp, 4
push eax
call HCONVOPERAND
add esp, 16
.L_0272:
.L_0271:
jmp .L_0262
.L_0273:
cmp dword ptr [ebp-32], 1
je .L_0275
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call HCONVOPERAND
add esp, 16
.L_0275:
.L_0274:
cmp dword ptr [ebp-36], 1
je .L_0277
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 16
call HCONVOPERAND
add esp, 16
.L_0277:
.L_0276:
jmp .L_0262
.L_0263:
mov eax, dword ptr [ebp-124]
add eax, 4294967265
cmp eax, 33
ja .L_0262
mov eax, dword ptr [ebp-124]
jmp dword ptr [.L_0278+eax*4-124]
.L_0278:
.int .L_0265
.int .L_026E
.int .L_026E
.int .L_026E
.int .L_026E
.int .L_0262
.int .L_0262
.int .L_026E
.int .L_026E
.int .L_026E
.int .L_026E
.int .L_026E
.int .L_0273
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0273
.L_0262:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [ebp-20]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+8]
cmp esi, dword ptr [ecx+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_027A
mov ebx, dword ptr [ebp-20]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp+8]
cmp eax, 28
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
cmp ecx, 29
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .L_027C
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .L_027E
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-64], ebx
jmp .L_027D
.L_027E:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-64], eax
.L_027D:
jmp .L_027B
.L_027C:
lea eax, [ebp-64]
push eax
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call TYPEMAX
add esp, 24
mov eax, dword ptr [ebp-28]
and eax, 511
mov ebx, dword ptr [ebp-20]
and ebx, 511
cmp eax, ebx
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-64]
cmp ecx, dword ptr [ebx+8]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
je .L_0280
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_0282
jmp .L_01AB
.L_0282:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0283
mov dword ptr [ebp-124], 24
jmp .L_0371
.L_0283:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.L_0371:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov esi, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], esi
.L_0280:
.L_027F:
mov esi, dword ptr [ebp-28]
and esi, 511
mov eax, dword ptr [ebp-24]
and eax, 511
cmp esi, eax
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-64]
cmp ebx, dword ptr [eax+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or esi, ecx
je .L_0286
cmp dword ptr [ebp+8], 41
je .L_0289
.L_028A:
cmp dword ptr [ebp+8], 42
jne .L_0288
.L_0289:
jmp .L_0287
.L_0288:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_028D
jmp .L_01AB
.L_028D:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_028E
mov dword ptr [ebp-124], 24
jmp .L_0372
.L_028E:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.L_0372:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-36], ecx
.L_028B:
.L_0287:
.L_0286:
.L_0285:
.L_027B:
jmp .L_0279
.L_027A:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-64], eax
.L_0279:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_0291
.L_0293:
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0294
mov dword ptr [ebp-132], 24
jmp .L_0373
.L_0294:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-132], eax
.L_0373:
mov eax, dword ptr [ebp-132]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0297
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_0298
mov dword ptr [ebp-148], 24
jmp .L_0374
.L_0298:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-148], eax
.L_0374:
mov eax, dword ptr [ebp-148]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
jne .L_029B
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .L_029D
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
cmp edx, 0
jg .L_029F
jl .L_03A4
cmp eax, 0
jae .L_029F
.L_03A4:
mov dword ptr [ebp-128], 35
.L_029F:
.L_029E:
jmp .L_029C
.L_029D:
mov eax, dword ptr [ENV+200]
and eax, 32
test eax, eax
je .L_02A1
mov dword ptr [ebp-128], 35
.L_02A1:
.L_02A0:
.L_029C:
.L_029B:
.L_029A:
.L_0297:
.L_0296:
cmp dword ptr [ebp-128], 0
jne .L_02A2
mov eax, dword ptr [ebp+8]
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-136], eax
jmp .L_0375
.L_02A2:
mov dword ptr [ebp-136], 0
.L_0375:
cmp dword ptr [ebp-136], 0
je .L_02A6
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_02A4
mov dword ptr [ebp-140], 24
jmp .L_0377
.L_02A4:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-140], eax
.L_0377:
mov eax, dword ptr [ebp-140]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+8]
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-144], edx
jmp .L_0376
.L_02A6:
mov dword ptr [ebp-144], 0
.L_0376:
cmp dword ptr [ebp-144], 0
je .L_02A9
mov edx, dword ptr [ebp-24]
and edx, 480
je .L_02AA
mov dword ptr [ebp-148], 24
jmp .L_0378
.L_02AA:
mov edx, dword ptr [ebp-24]
and edx, 31
mov dword ptr [ebp-148], edx
.L_0378:
mov edx, dword ptr [ebp-148]
imul edx, 28
cmp dword ptr [SYMB_DTYPETB+edx+8], 0
jne .L_02AD
mov edx, dword ptr [ebp+16]
cmp dword ptr [edx], 16
jne .L_02AF
push dword ptr [ebp+16]
call ASTCONSTGETASINT64
add esp, 4
cmp edx, 0
jg .L_02B1
jl .L_03A7
cmp eax, 0
jae .L_02B1
.L_03A7:
mov dword ptr [ebp-128], 35
.L_02B1:
.L_02B0:
jmp .L_02AE
.L_02AF:
mov eax, dword ptr [ENV+200]
and eax, 32
test eax, eax
je .L_02B3
mov dword ptr [ebp-128], 35
.L_02B3:
.L_02B2:
.L_02AE:
.L_02AD:
.L_02AC:
.L_02A9:
.L_02A8:
cmp dword ptr [ebp-128], 0
je .L_02B5
push 0
push 1
push 0
push dword ptr [ebp-128]
call ERRREPORTWARN
add esp, 16
.L_02B5:
.L_02B4:
jmp .L_0290
.L_0291:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 18
ja .L_0290
mov eax, dword ptr [ebp-124]
jmp dword ptr [.L_02B6+eax*4-128]
.L_02B6:
.int .L_0293
.int .L_0293
.int .L_0290
.int .L_0290
.int .L_0290
.int .L_0290
.int .L_0290
.int .L_0290
.int .L_0290
.int .L_0290
.int .L_0293
.int .L_0290
.int .L_0290
.int .L_0293
.int .L_0293
.int .L_0293
.int .L_0293
.int .L_0293
.int .L_0293
.L_0290:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_02B8
.L_02BA:
mov eax, dword ptr [ebp-28]
and eax, 511
cmp eax, 1
je .L_02BC
mov dword ptr [ebp-28], 8
.L_02BC:
.L_02BB:
mov dword ptr [ebp-64], 0
jmp .L_02B7
.L_02BD:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_02BF
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_02C0
mov dword ptr [ebp-128], 24
jmp .L_0379
.L_02C0:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_0379:
mov eax, dword ptr [ebp-128]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
sal edx, 3
mov ecx, edx
mov eax, ecx
sar eax, 31
mov edx, dword ptr [ebp-132]
cmp dword ptr [edx+24], eax
jb .L_02C3
ja .L_03A8
cmp dword ptr [edx+20], ecx
jb .L_02C3
.L_03A8:
push 0
push 1
push 0
push 33
call ERRREPORTWARN
add esp, 16
push 1
push 0
push 0
push 8
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_02C4
mov dword ptr [ebp-136], 24
jmp .L_037B
.L_02C4:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-136], ecx
.L_037B:
mov ecx, dword ptr [ebp-136]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
sal eax, 3
dec eax
mov edx, eax
mov ecx, edx
sar ecx, 31
push ecx
push edx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
.L_02C3:
.L_02C2:
.L_02BF:
.L_02BE:
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 8
je .L_02C7
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 9
je .L_02C9
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 8
mov dword ptr [ebp-24], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-36], 0
.L_02C9:
.L_02C8:
.L_02C7:
.L_02C6:
jmp .L_02B7
.L_02B8:
mov eax, dword ptr [ebp-124]
add eax, 4294967260
cmp eax, 14
ja .L_02B7
mov eax, dword ptr [ebp-124]
jmp dword ptr [.L_02CA+eax*4-144]
.L_02CA:
.int .L_02BA
.int .L_02BA
.int .L_02B7
.int .L_02B7
.int .L_02B7
.int .L_02BD
.int .L_02BD
.int .L_02B7
.int .L_02B7
.int .L_02BA
.int .L_02BA
.int .L_02BA
.int .L_02BA
.int .L_02BA
.int .L_02BA
.L_02B7:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax]
cmp edx, 16
sete dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
and edx, ecx
je .L_02CC
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCONSTBOP
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-28]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-64]
mov dword ptr [ecx+8], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_02CC:
.L_02CB:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .L_02CE
mov dword ptr [ebp-124], 0
cmp dword ptr [ebp+8], 28
je .L_02D1
.L_02D2:
cmp dword ptr [ebp+8], 30
je .L_02D1
.L_02D3:
cmp dword ptr [ebp+8], 34
je .L_02D1
.L_02D4:
cmp dword ptr [ebp+8], 35
je .L_02D1
.L_02D5:
cmp dword ptr [ebp+8], 38
je .L_02D1
.L_02D6:
cmp dword ptr [ebp+8], 39
je .L_02D1
.L_02D7:
cmp dword ptr [ebp+8], 45
je .L_02D1
.L_02D8:
cmp dword ptr [ebp+8], 48
jne .L_02D0
.L_02D1:
mov dword ptr [ebp-124], -1
jmp .L_02CF
.L_02D0:
cmp dword ptr [ebp+8], 49
jne .L_02D9
.L_02DA:
mov dword ptr [ebp+8], 50
mov dword ptr [ebp-124], -1
jmp .L_02CF
.L_02D9:
cmp dword ptr [ebp+8], 46
jne .L_02DB
.L_02DC:
mov dword ptr [ebp+8], 47
mov dword ptr [ebp-124], -1
jmp .L_02CF
.L_02DB:
cmp dword ptr [ebp+8], 50
jne .L_02DD
.L_02DE:
mov dword ptr [ebp+8], 49
mov dword ptr [ebp-124], -1
jmp .L_02CF
.L_02DD:
cmp dword ptr [ebp+8], 47
jne .L_02DF
.L_02E0:
mov dword ptr [ebp+8], 46
mov dword ptr [ebp-124], -1
jmp .L_02CF
.L_02DF:
cmp dword ptr [ebp+8], 29
jne .L_02E1
.L_02E2:
inc dword ptr [AST+232]
push dword ptr [ebp+16]
push 54
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp+16], eax
dec dword ptr [AST+232]
cmp dword ptr [ebp+16], 0
jne .L_02E4
mov dword ptr [ebp-4], 0
jmp .L_01AB
.L_02E4:
.L_02E3:
mov dword ptr [ebp+8], 28
mov dword ptr [ebp-124], -1
.L_02E1:
.L_02CF:
cmp dword ptr [ebp-124], 0
je .L_02E6
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
pop dword ptr [ebp-24]
push dword ptr [ebp-32]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-32], eax
pop dword ptr [ebp-36]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp+12], eax
pop dword ptr [ebp+16]
.L_02E6:
.L_02E5:
.L_02CE:
.L_02CD:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_02E8
cmp dword ptr [ebp+8], 48
jne .L_02EA
.L_02EB:
mov eax, dword ptr [ebp-32]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-36]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_02ED
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+24], 0
jne .L_02EF
cmp dword ptr [ecx+20], 0
jne .L_02EF
.L_03AD:
push dword ptr [ebp+12]
call ASTISRELATIONALBOP
add esp, 4
test eax, eax
je .L_02F1
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_02F1:
.L_02F0:
.L_02EF:
.L_02EE:
.L_02ED:
.L_02EC:
jmp .L_02E9
.L_02EA:
cmp dword ptr [ebp+8], 45
jne .L_02F2
.L_02F3:
mov eax, dword ptr [ebp-32]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-36]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_02F5
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+24], 0
jne .L_02F7
cmp dword ptr [ecx+20], 0
jne .L_02F7
.L_03B0:
push dword ptr [ebp+12]
call ASTISRELATIONALBOP
add esp, 4
test eax, eax
je .L_02F9
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call ASTGETINVERSELOGOP
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_02F9:
.L_02F8:
.L_02F7:
.L_02F6:
.L_02F5:
.L_02F4:
jmp .L_02E9
.L_02F2:
cmp dword ptr [ebp+8], 28
jne .L_02FA
.L_02FB:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-124], ecx
cmp dword ptr [ebp-124], 23
jne .L_02FE
.L_02FF:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov esi, dword ptr [eax+20]
mov edx, dword ptr [eax+24]
add dword ptr [ecx+20], esi
adc dword ptr [ecx+24], edx
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov esi, dword ptr [ebp+12]
mov dword ptr [ebp-4], esi
jmp .L_01AB
jmp .L_02FC
.L_02FE:
cmp dword ptr [ebp-124], 6
jne .L_0300
.L_0301:
mov esi, dword ptr [ebp+16]
push dword ptr [esi+24]
push dword ptr [esi+20]
mov esi, dword ptr [ebp+12]
push dword ptr [esi+56]
call ASTINCOFFSET
add esp, 12
test eax, eax
je .L_0303
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0303:
.L_0302:
.L_0300:
.L_02FC:
jmp .L_02E9
.L_02FA:
cmp dword ptr [ebp+8], 29
jne .L_0304
.L_0305:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax]
mov dword ptr [ebp-124], esi
cmp dword ptr [ebp-124], 23
jne .L_0308
.L_0309:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+20]
mov edx, dword ptr [eax+24]
sub dword ptr [esi+20], ecx
sbb dword ptr [esi+24], edx
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .L_01AB
jmp .L_0306
.L_0308:
cmp dword ptr [ebp-124], 6
jne .L_030A
.L_030B:
mov ecx, dword ptr [ebp+16]
mov esi, dword ptr [ecx+20]
mov edx, dword ptr [ecx+24]
neg esi
adc edx, 0
neg edx
push edx
push esi
mov esi, dword ptr [ebp+12]
push dword ptr [esi+56]
call ASTINCOFFSET
add esp, 12
test eax, eax
je .L_030D
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_030D:
.L_030C:
.L_030A:
.L_0306:
inc dword ptr [AST+232]
push dword ptr [ebp+16]
push 54
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp+16], eax
dec dword ptr [AST+232]
mov dword ptr [ebp+8], 28
jmp .L_02E9
.L_0304:
cmp dword ptr [ebp+8], 32
je .L_030F
.L_0310:
cmp dword ptr [ebp+8], 33
jne .L_030E
.L_030F:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+24], 0
jne .L_0312
cmp dword ptr [eax+20], 0
jne .L_0312
.L_03B1:
push 0
push 0
push 100
call ERRREPORT
add esp, 12
.L_0312:
.L_0311:
jmp .L_02E9
.L_030E:
cmp dword ptr [ebp+8], 43
jne .L_0313
.L_0314:
mov eax, dword ptr [ebp+16]
fld qword ptr [eax+20]
fld qword ptr [Lt_037C]
fcomip st, st(1)
fstp st(0)
jnz .L_0316
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_0318
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+56]
mov eax, dword ptr [esi]
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 17
je .L_031C
.L_031D:
cmp dword ptr [ebp-124], 18
je .L_031C
.L_031E:
cmp dword ptr [ebp-124], 19
je .L_031C
.L_031F:
cmp dword ptr [ebp-124], 20
jne .L_031B
.L_031C:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+56]
mov dword ptr [ebp+12], esi
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov esi, dword ptr [ebp-20]
and esi, -512
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
or esi, edx
mov dword ptr [ebp-20], esi
.L_031B:
.L_0319:
.L_0318:
.L_0317:
mov esi, dword ptr [ebp+12]
mov edx, dword ptr [esi]
mov dword ptr [ebp-124], edx
cmp dword ptr [ebp-124], 17
je .L_0323
.L_0324:
cmp dword ptr [ebp-124], 18
je .L_0323
.L_0325:
cmp dword ptr [ebp-124], 19
je .L_0323
.L_0326:
cmp dword ptr [ebp-124], 20
jne .L_0322
.L_0323:
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 4
test eax, eax
jne .L_0328
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
je .L_0329
mov dword ptr [ebp-128], 24
jmp .L_037D
.L_0329:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-128], eax
.L_037D:
mov eax, dword ptr [ebp-128]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
je .L_032C
push 0
push 0
push dword ptr [ebp+12]
push 0
push 16
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
.L_032C:
.L_032B:
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+8], 30
.L_0328:
.L_0327:
.L_0322:
.L_0320:
.L_0316:
.L_0315:
.L_0313:
.L_02E9:
.L_02E8:
.L_02E7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_032E
.L_0330:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call RTLMATHPOW
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_01AB
jmp .L_032D
.L_0331:
mov eax, dword ptr [IR+272]
and eax, 131072
test eax, eax
je .L_0333
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLMATHBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0333:
.L_0332:
jmp .L_032D
.L_0334:
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0335
mov dword ptr [ebp-128], 24
jmp .L_037E
.L_0335:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.L_037E:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .L_033A
.L_033B:
cmp dword ptr [ebp-132], 14
jne .L_0339
.L_033A:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call RTLMATHLONGINTDIV
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0339:
.L_0337:
jmp .L_032D
.L_033C:
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_033D
mov dword ptr [ebp-128], 24
jmp .L_037F
.L_033D:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.L_037F:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .L_0342
.L_0343:
cmp dword ptr [ebp-132], 14
jne .L_0341
.L_0342:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call RTLMATHLONGINTMOD
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0341:
.L_033F:
jmp .L_032D
.L_0344:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-136], 0
cmp dword ptr [ebp-32], 1
jne .L_0346
push 15
push dword ptr [Lt_0380+4]
push dword ptr [Lt_0380]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-132], eax
push 15
push dword ptr [Lt_0380+4]
push dword ptr [Lt_0380]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-136], eax
jmp .L_0345
.L_0346:
push 0
push dword ptr [ebp-28]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-132], eax
push 0
push dword ptr [ebp-28]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-136], eax
.L_0345:
cmp dword ptr [ebp+8], 36
jne .L_0348
mov dword ptr [ebp-128], 48
jmp .L_0347
.L_0348:
mov dword ptr [ebp-128], 45
.L_0347:
push 1
push 0
push dword ptr [ebp-132]
push dword ptr [ebp+12]
push dword ptr [ebp-128]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
push 1
push 0
push dword ptr [ebp-136]
push dword ptr [ebp+16]
push 48
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+8], 36
jne .L_034A
push 0
push 0
push dword ptr [ebp-28]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWIIF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01AB
jmp .L_0349
.L_034A:
push 0
push 0
push dword ptr [ebp-28]
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWIIF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_0349:
jmp .L_032D
.L_032E:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 32
ja .L_032D
mov eax, dword ptr [ebp-124]
jmp dword ptr [.L_034B+eax*4-128]
.L_034B:
.int .L_0334
.int .L_033C
.int .L_032D
.int .L_032D
.int .L_0344
.int .L_0344
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_0330
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_032D
.int .L_0331
.L_032D:
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push 3
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+12]
mov dword ptr [eax+56], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [edx+60], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+20]
mov dword ptr [eax+28], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [edx+20], eax
cmp dword ptr [ENV+104], 1
jne .L_034D
or dword ptr [ebp+24], 1
.L_034D:
.L_034C:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+24]
mov dword ptr [eax+24], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_01AB:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWSELFBOP
ASTNEWSELFBOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_03B2:
mov dword ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03B5
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_03B3
.L_03B5:
.L_03B4:
cmp dword ptr [ebp-16], 0
je .L_03B7
mov dword ptr [ebp-4], 0
jmp .L_03B3
.L_03B7:
.L_03B6:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_03B9
push 0
lea eax, [ebp+12]
push eax
call ASTMAKEREF
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.L_03B9:
.L_03B8:
mov eax, dword ptr [ebp+24]
or eax, 1
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+12]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_03BB
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .L_03B3
.L_03BB:
.L_03BA:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_03BD
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .L_03B3
.L_03BD:
.L_03BC:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADBOP
ASTLOADBOP:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_03BE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_03C1
mov dword ptr [ebp-4], 0
jmp .L_03BF
.L_03C1:
.L_03C0:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 5
jne .L_03C3
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-8]
call ASTUPDATECONVFD2FS
add esp, 12
.L_03C3:
.L_03C2:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .L_03C5
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-12]
call ASTUPDATECONVFD2FS
add esp, 12
.L_03C5:
.L_03C4:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [AST+136], 0
je .L_03C7
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
je .L_03C9
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [IR+92]
add esp, 20
jmp .L_03C8
.L_03C9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
and ebx, 1
test ebx, ebx
je .L_03CB
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call dword ptr [IR+224]
add esp, 8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
jmp .L_03CA
.L_03CB:
mov dword ptr [ebp-28], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+20], eax
.L_03CA:
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [IR+92]
add esp, 20
cmp dword ptr [ebp-28], 0
jne .L_03CD
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.L_03CD:
.L_03CC:
.L_03C8:
.L_03C7:
.L_03C6:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_03BF:
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
HSTRLITERALCONCAT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_005D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov esi, dword ptr [ebx+40]
mov ecx, dword ptr [ebx+44]
add esi, dword ptr [eax+40]
adc ecx, dword ptr [eax+44]
add esi, 4294967294
adc ecx, 4294967295
mov eax, esi
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+56]
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_005E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HWSTRLITERALCONCAT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0061:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_0064
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call __divdi3
add esp, 16
add eax, dword ptr [ebx+40]
adc edx, dword ptr [ebx+44]
add eax, 4294967294
adc edx, 4294967295
mov ebx, eax
push ebx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
push dword ptr [ebp-20]
call fb_WstrDelete
add esp, 4
jmp .L_0063
.L_0064:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_0067
mov eax, dword ptr [SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call __divdi3
add esp, 16
mov ebx, dword ptr [ebp-16]
add eax, dword ptr [ebx+40]
adc edx, dword ptr [ebx+44]
add eax, 4294967294
adc edx, 4294967295
mov ebx, eax
push ebx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
push dword ptr [ebp-20]
call fb_WstrDelete
add esp, 4
jmp .L_0063
.L_0067:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
mov ebx, eax
mov esi, edx
call __divdi3
add esp, 16
add ebx, eax
adc esi, edx
add ebx, 4294967294
adc esi, 4294967295
mov eax, ebx
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+56]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call fb_WstrDelete
add esp, 4
.L_0063:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_0062:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSTRLITERALCOMPARE:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 8
push eax
push offset Lt_03D0
call DZSTRASSIGN
add esp, 8
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 8
push eax
push offset Lt_03D1
call DZSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_0070
.L_0072:
push 0
push dword ptr [Lt_03D1]
push 0
push dword ptr [Lt_03D0]
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_006F
.L_0073:
push 0
push dword ptr [Lt_03D1]
push 0
push dword ptr [Lt_03D0]
call fb_StrCompare
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_006F
.L_0074:
push 0
push dword ptr [Lt_03D1]
push 0
push dword ptr [Lt_03D0]
call fb_StrCompare
add esp, 16
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_006F
.L_0075:
push 0
push dword ptr [Lt_03D1]
push 0
push dword ptr [Lt_03D0]
call fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_006F
.L_0076:
push 0
push dword ptr [Lt_03D1]
push 0
push dword ptr [Lt_03D0]
call fb_StrCompare
add esp, 16
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_006F
.L_0077:
push 0
push dword ptr [Lt_03D1]
push 0
push dword ptr [Lt_03D0]
call fb_StrCompare
add esp, 16
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_006F
.L_0070:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .L_006F
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0078+eax*4-180]
.L_0078:
.int .L_0072
.int .L_0073
.int .L_0074
.int .L_0075
.int .L_0077
.int .L_0076
.L_006F:
push 0
push 8
mov ebx, dword ptr [ebp-8]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_03D0,12
.balign 4
	.lcomm	Lt_03D1,12

.section .text
.balign 16
HWSTRLITERALCOMPARE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0079:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_007C
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 8
push eax
push offset Lt_03D8
call DZSTRASSIGN
add esp, 8
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 8
push eax
push offset Lt_03D9
call DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_0080
.L_0082:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call fb_WstrCompare
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_007F
.L_0084:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call fb_WstrCompare
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_007F
.L_0086:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call fb_WstrCompare
add esp, 8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_007F
.L_0088:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call fb_WstrCompare
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_007F
.L_008A:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call fb_WstrCompare
add esp, 8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_007F
.L_008C:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call fb_WstrCompare
add esp, 8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_007F
.L_0080:
mov eax, dword ptr [ebp-28]
add eax, 4294967251
cmp eax, 5
ja .L_007F
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_008E+eax*4-180]
.L_008E:
.int .L_0082
.int .L_0084
.int .L_0086
.int .L_0088
.int .L_008C
.int .L_008A
.L_007F:
jmp .L_007B
.L_007C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_008F
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call HUNESCAPEW
add esp, 8
push eax
push offset Lt_03E0
call DWSTRASSIGN
add esp, 8
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call HUNESCAPE
add esp, 8
push eax
push offset Lt_03D8
call DZSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_0093
.L_0095:
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_0092
.L_0097:
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_0092
.L_0099:
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_0092
.L_009B:
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_0092
.L_009D:
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_0092
.L_009F:
push dword ptr [Lt_03D8]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 4
jmp .L_0092
.L_0093:
mov eax, dword ptr [ebp-28]
add eax, 4294967251
cmp eax, 5
ja .L_0092
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_00A1+eax*4-180]
.L_00A1:
.int .L_0095
.int .L_0097
.int .L_0099
.int .L_009B
.int .L_009F
.int .L_009D
.L_0092:
jmp .L_007B
.L_008F:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 8
push eax
push offset Lt_03E0
call DWSTRASSIGN
add esp, 8
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 8
push eax
push offset Lt_03D9
call DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_00A5
.L_00A7:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A4
.L_00A8:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A4
.L_00A9:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A4
.L_00AA:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A4
.L_00AB:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A4
.L_00AC:
push dword ptr [Lt_03D9]
push dword ptr [Lt_03E0]
call fb_WstrCompare
add esp, 8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp-28]
add eax, 4294967251
cmp eax, 5
ja .L_00A4
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_00AD+eax*4-180]
.L_00AD:
.int .L_00A7
.int .L_00A8
.int .L_00A9
.int .L_00AA
.int .L_00AC
.int .L_00AB
.L_00A4:
.L_007B:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
.L_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_03D8,12
.balign 4
	.lcomm	Lt_03E0,12
.balign 4
	.lcomm	Lt_03D9,12

.section .text
.balign 16
HTOSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-12], eax
jmp .L_00B1
.L_00B3:
jmp .L_00B0
.L_00B4:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call RTLTOSTR
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00B6
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00B6:
.L_00B5:
jmp .L_00B0
.L_00B1:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .L_00B4
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00B7+eax*4-16]
.L_00B7:
.int .L_00B3
.int .L_00B4
.int .L_00B4
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
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00B9
.L_00BB:
jmp .L_00B8
.L_00BC:
cmp dword ptr [ebp-4], 7
je .L_00BE
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call RTLTOSTR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_00BD
.L_00BE:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call RTLTOWSTR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_00BD:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_00C0
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_00C0:
.L_00BF:
jmp .L_00B8
.L_00B9:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .L_00BC
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00C1+eax*4-16]
.L_00C1:
.int .L_00BB
.int .L_00BC
.int .L_00BC
.int .L_00BB
.int .L_00BC
.int .L_00BC
.int .L_00BC
.int .L_00BC
.int .L_00BC
.int .L_00BC
.int .L_00BC
.int .L_00BC
.int .L_00BC
.int .L_00BB
.int .L_00BB
.L_00B8:
.L_00AF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONSTBOP:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00C2:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C4
mov dword ptr [ebp-8], 24
jmp .L_03ED
.L_00C4:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_03ED:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00C7
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_00C9
.L_00CB:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+20]
fadd qword ptr [eax+20]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+20]
jmp .L_00C8
.L_00CC:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fsub qword ptr [ebx+20]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+20]
jmp .L_00C8
.L_00CD:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [eax+20]
fmul qword ptr [ebx+20]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+20]
jmp .L_00C8
.L_00CE:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [ebx+20]
fdiv qword ptr [eax+20]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+20]
jmp .L_00C8
.L_00CF:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call pow
add esp, 16
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+20]
jmp .L_00C8
.L_00D0:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fld qword ptr [ebx+20]
fcomip st, st(1)
fstp st(0)
setnz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00C8
.L_00D1:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fld qword ptr [ebx+20]
fcomip st, st(1)
fstp st(0)
setz cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .L_00C8
.L_00D2:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fld qword ptr [ebx+20]
fcomip st, st(1)
fstp st(0)
setb al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00C8
.L_00D3:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fld qword ptr [ebx+20]
fcomip st, st(1)
fstp st(0)
seta cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .L_00C8
.L_00D4:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fld qword ptr [ebx+20]
fcomip st, st(1)
fstp st(0)
setae al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00C8
.L_00D5:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fld qword ptr [ebx+20]
fcomip st, st(1)
fstp st(0)
setbe cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .L_00C8
.L_00D6:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fld qword ptr [ebx+20]
fpatan
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+20]
jmp .L_00C8
.L_00D7:
mov ebx, dword ptr [ebp+20]
fld qword ptr [ebx+20]
fld qword ptr [Lt_0380]
fcomip st, st(1)
fstp st(0)
jz .L_00D9
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+20]
fld qword ptr [Lt_0380]
fcomip st, st(1)
fstp st(0)
setnz bl
shr ebx, 1
sbb ebx, ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .L_00D8
.L_00D9:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
.L_00D8:
jmp .L_00C8
.L_00DA:
mov ecx, dword ptr [ebp+20]
fld qword ptr [ecx+20]
fld qword ptr [Lt_0380]
fcomip st, st(1)
fstp st(0)
jz .L_00DC
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], 4294967295
mov dword ptr [ecx+24], 4294967295
jmp .L_00DB
.L_00DC:
mov ecx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fld qword ptr [Lt_0380]
fcomip st, st(1)
fstp st(0)
setnz cl
shr ecx, 1
sbb ecx, ecx
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
.L_00DB:
jmp .L_00C8
.L_00DD:
jmp .L_00C8
.L_00C9:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967268
cmp ebx, 36
ja .L_00DD
mov ebx, dword ptr [ebp-16]
jmp dword ptr [.L_00DE+ebx*4-112]
.L_00DE:
.int .L_00CB
.int .L_00CC
.int .L_00CD
.int .L_00CE
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00D7
.int .L_00DA
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00CF
.int .L_00DD
.int .L_00D1
.int .L_00D2
.int .L_00D3
.int .L_00D0
.int .L_00D5
.int .L_00D4
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00DD
.int .L_00D6
.L_00C8:
jmp .L_00C6
.L_00C7:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+4]
and ecx, 511
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_00DF
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .L_00E1
.L_00E3:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
and al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00E0
.L_00E4:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
or bl, al
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .L_00E0
.L_00E5:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
xor al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00E0
.L_00E6:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
xor bl, al
xor bl, 1
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .L_00E0
.L_00E7:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
xor al, 1
or al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00E0
.L_00E8:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
cmp bl, al
setne bl
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .L_00E0
.L_00E9:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
cmp al, bl
sete al
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00E0
.L_00EA:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
test bl, bl
je .L_00EB
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+20]
or ecx, dword ptr [ebx+24]
cmp ecx, 0
setne cl
test cl, cl
setne cl
mov byte ptr [ebp-20], cl
jmp .L_03EE
.L_00EB:
mov byte ptr [ebp-20], 0
.L_03EE:
movzx ebx, byte ptr [ebp-20]
neg ebx
mov ecx, ebx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], ecx
jmp .L_00E0
.L_00ED:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+20]
or ecx, dword ptr [ebx+24]
cmp ecx, 0
setne cl
test cl, cl
jne .L_00EE
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
test bl, bl
setne bl
mov byte ptr [ebp-20], bl
jmp .L_03EF
.L_00EE:
mov byte ptr [ebp-20], 1
.L_03EF:
movzx ecx, byte ptr [ebp-20]
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .L_00E0
.L_00F0:
jmp .L_00E0
.L_00E1:
mov ecx, dword ptr [ebp-16]
add ecx, 4294967262
cmp ecx, 14
ja .L_00F0
mov ecx, dword ptr [ebp-16]
jmp dword ptr [.L_00F1+ecx*4-136]
.L_00F1:
.int .L_00E3
.int .L_00E4
.int .L_00EA
.int .L_00ED
.int .L_00E5
.int .L_00E6
.int .L_00E7
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00E9
.int .L_00F0
.int .L_00F0
.int .L_00E8
.L_00E0:
jmp .L_00C6
.L_00DF:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_00F3
mov dword ptr [ebp-12], 24
jmp .L_03F0
.L_00F3:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_03F0:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_00F2
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .L_00F6
.L_00F8:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
add dword ptr [ecx+20], esi
adc dword ptr [ecx+24], eax
jmp .L_00F5
.L_00F9:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
sub dword ptr [esi+20], ebx
sbb dword ptr [esi+24], ecx
jmp .L_00F5
.L_00FA:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
push esi
push eax
push dword ptr [ebx+24]
push dword ptr [ebx+20]
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
pop dword ptr [ebx+20]
pop dword ptr [ebx+24]
add esp, 8
jmp .L_00F5
.L_00FB:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ebx, dword ptr [esi+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov ecx, ebx
xchg eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .L_0407
mov edx, eax
xor eax, eax
.L_0407:
mov [esp+4], edx
xchg eax, [esp+0]
pop dword ptr [eax+20]
pop dword ptr [eax+24]
jmp .L_00F5
.L_00FC:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+20]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ecx, esi
mov eax, [esp+0]
mov edx, [esp+4]
shrd eax, edx, cl
sar  edx, cl
test cl, 32
jz .L_0408
mov eax, edx
sar edx, 31
.L_0408:
mov [esp+4], edx
mov [esp+0], eax
pop dword ptr [ebx+20]
pop dword ptr [ebx+24]
jmp .L_00F5
.L_00FD:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
and dword ptr [esi+20], ecx
and dword ptr [esi+24], eax
jmp .L_00F5
.L_00FE:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+20]
mov esi, dword ptr [eax+24]
or dword ptr [ecx+20], ebx
or dword ptr [ecx+24], esi
jmp .L_00F5
.L_00FF:
mov ebx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
xor dword ptr [ebx+20], eax
xor dword ptr [ebx+24], ecx
jmp .L_00F5
.L_0100:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
xor dword ptr [eax+20], esi
xor dword ptr [eax+24], ebx
not dword ptr [eax+20]
not dword ptr [eax+24]
jmp .L_00F5
.L_0101:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
not dword ptr [esi+20]
not dword ptr [esi+24]
or dword ptr [esi+20], ecx
or dword ptr [esi+24], eax
jmp .L_00F5
.L_0102:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
cmp esi, dword ptr [eax+24]
mov ecx, -1
jne .L_0409
cmp ebx, dword ptr [eax+20]
jne .L_0409
.L_040A:
xor ecx, ecx
.L_0409:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_00F5
.L_0103:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp ecx, dword ptr [eax+24]
mov ebx, -1
jne .L_040C
cmp esi, dword ptr [eax+20]
je .L_040B
.L_040C:
xor ebx, ebx
.L_040B:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .L_00F5
.L_0104:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+20]
mov ebx, dword ptr [esi+24]
cmp ebx, dword ptr [eax+24]
mov esi, -1
jg .L_040D
jl .L_040E
cmp ecx, dword ptr [eax+20]
ja .L_040D
.L_040E:
xor esi, esi
.L_040D:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .L_00F5
.L_0105:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
cmp esi, dword ptr [eax+24]
mov ecx, -1
jl .L_040F
jg .L_0410
cmp ebx, dword ptr [eax+20]
jb .L_040F
.L_0410:
xor ecx, ecx
.L_040F:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .L_00F5
.L_0106:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp ecx, dword ptr [eax+24]
mov ebx, -1
jl .L_0411
jg .L_0412
cmp esi, dword ptr [eax+20]
jbe .L_0411
.L_0412:
xor ebx, ebx
.L_0411:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .L_00F5
.L_0107:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+20]
mov ebx, dword ptr [esi+24]
cmp ebx, dword ptr [eax+24]
mov esi, -1
jg .L_0413
jl .L_0414
cmp ecx, dword ptr [eax+20]
jae .L_0413
.L_0414:
xor esi, esi
.L_0413:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .L_00F5
.L_0108:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+24], 0
jne .L_0415
cmp dword ptr [ecx+20], 0
je .L_0109
.L_0415:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 0
mov eax, -1
jne .L_0416
cmp dword ptr [ecx+20], 0
jne .L_0416
.L_0417:
xor eax, eax
.L_0416:
mov dword ptr [ebp-20], eax
jmp .L_03F1
.L_0109:
mov dword ptr [ebp-20], 0
.L_03F1:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .L_00F5
.L_010B:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+24], 0
jne .L_0418
cmp dword ptr [ecx+20], 0
je .L_010C
.L_0418:
mov dword ptr [ebp-20], -1
jmp .L_03F2
.L_010C:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 0
mov eax, -1
jne .L_0419
cmp dword ptr [ecx+20], 0
jne .L_0419
.L_041A:
xor eax, eax
.L_0419:
mov dword ptr [ebp-20], eax
.L_03F2:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .L_00F5
.L_010E:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 0
jne .L_0110
cmp dword ptr [ecx+20], 0
jne .L_0110
.L_041B:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
push 0
push 0
push 100
call ERRREPORT
add esp, 12
jmp .L_010F
.L_0110:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 4294967295
mov eax, -1
jne .L_041D
cmp dword ptr [ecx+20], 4294967295
je .L_041C
.L_041D:
xor eax, eax
.L_041C:
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0112
mov dword ptr [ebp-20], 24
jmp .L_03F3
.L_0112:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_03F3:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+24], 2147483648
mov esi, -1
jne .L_0420
cmp dword ptr [eax+20], 0
je .L_041F
.L_0420:
xor esi, esi
.L_041F:
and ecx, esi
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ecx+4]
and esi, 480
je .L_0114
mov dword ptr [ebp-24], 24
jmp .L_03F4
.L_0114:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_03F4:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov esi, dword ptr [SYMB_DTYPETB+ecx+4]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+24], 4294967295
mov eax, -1
jne .L_0423
cmp dword ptr [ecx+20], 2147483648
je .L_0422
.L_0423:
xor eax, eax
.L_0422:
and esi, eax
or esi, dword ptr [ebp-32]
and esi, dword ptr [ebp-28]
je .L_0111
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], 0
mov dword ptr [esi+24], 0
cmp dword ptr [AST+232], 0
jne .L_0117
push 0
push 1
push 0
push 25
call ERRREPORTWARN
add esp, 16
.L_0117:
.L_0116:
jmp .L_010F
.L_0111:
cmp dword ptr [ebp+8], 32
jne .L_0118
mov esi, dword ptr [ebp+24]
push dword ptr [esi+24]
push dword ptr [esi+20]
mov esi, dword ptr [ebp+20]
push dword ptr [esi+24]
push dword ptr [esi+20]
call __divdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
jmp .L_010F
.L_0118:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call __moddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
.L_010F:
jmp .L_00F5
.L_0119:
jmp .L_00F5
.L_00F6:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .L_0119
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_011A+eax*4-112]
.L_011A:
.int .L_00F8
.int .L_00F9
.int .L_00FA
.int .L_0119
.int .L_010E
.int .L_010E
.int .L_00FD
.int .L_00FE
.int .L_0108
.int .L_010B
.int .L_00FF
.int .L_0100
.int .L_0101
.int .L_00FB
.int .L_00FC
.int .L_0119
.int .L_0119
.int .L_0103
.int .L_0104
.int .L_0105
.int .L_0102
.int .L_0107
.int .L_0106
.L_00F5:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCONVERTRAWCONSTI
add esp, 12
mov dword ptr [ebp+20], eax
jmp .L_00C6
.L_00F2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_011C
.L_011E:
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov ecx, dword ptr [edx+20]
mov esi, dword ptr [edx+24]
add dword ptr [eax+20], ecx
adc dword ptr [eax+24], esi
jmp .L_011B
.L_011F:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+20]
mov eax, dword ptr [esi+24]
sub dword ptr [ecx+20], edx
sbb dword ptr [ecx+24], eax
jmp .L_011B
.L_0120:
mov edx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
push ecx
push esi
push dword ptr [edx+24]
push dword ptr [edx+20]
push edx
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop edx
pop dword ptr [edx+20]
pop dword ptr [edx+24]
add esp, 8
jmp .L_011B
.L_0121:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov edx, dword ptr [ecx+20]
push dword ptr [esi+24]
push dword ptr [esi+20]
mov ecx, edx
mov eax, [esp+0]
xchg edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .L_0424
mov edx, eax
xor eax, eax
.L_0424:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [esi+20]
pop dword ptr [esi+24]
jmp .L_011B
.L_0122:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [esi+20]
push dword ptr [edx+24]
push dword ptr [edx+20]
mov eax, [esp+0]
xchg edx, [esp+4]
shrd eax, edx, cl
shr  edx, cl
test cl, 32
jz .L_0425
mov eax, edx
xor edx, edx
.L_0425:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [edx+20]
pop dword ptr [edx+24]
jmp .L_011B
.L_0123:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+20]
mov esi, dword ptr [edx+24]
and dword ptr [ecx+20], eax
and dword ptr [ecx+24], esi
jmp .L_011B
.L_0124:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
or dword ptr [eax+20], edx
or dword ptr [eax+24], ecx
jmp .L_011B
.L_0125:
mov edx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
xor dword ptr [edx+20], esi
xor dword ptr [edx+24], eax
jmp .L_011B
.L_0126:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [eax+20]
mov edx, dword ptr [eax+24]
xor dword ptr [esi+20], ecx
xor dword ptr [esi+24], edx
not dword ptr [esi+20]
not dword ptr [esi+24]
jmp .L_011B
.L_0127:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+20]
mov esi, dword ptr [edx+24]
not dword ptr [ecx+20]
not dword ptr [ecx+24]
or dword ptr [ecx+20], eax
or dword ptr [ecx+24], esi
jmp .L_011B
.L_0128:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
cmp ecx, dword ptr [esi+24]
mov eax, -1
jne .L_0426
cmp edx, dword ptr [esi+20]
jne .L_0426
.L_0427:
xor eax, eax
.L_0426:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], edx
mov dword ptr [eax+24], esi
jmp .L_011B
.L_0129:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+20]
mov eax, dword ptr [edx+24]
cmp eax, dword ptr [esi+24]
mov edx, -1
jne .L_0429
cmp ecx, dword ptr [esi+20]
je .L_0428
.L_0429:
xor edx, edx
.L_0428:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+20], ecx
mov dword ptr [edx+24], esi
jmp .L_011B
.L_012A:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
mov edx, dword ptr [ecx+24]
cmp edx, dword ptr [esi+24]
mov ecx, -1
ja .L_042A
jb .L_042B
cmp eax, dword ptr [esi+20]
ja .L_042A
.L_042B:
xor ecx, ecx
.L_042A:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .L_011B
.L_012B:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
cmp ecx, dword ptr [esi+24]
mov eax, -1
jb .L_042C
ja .L_042D
cmp edx, dword ptr [esi+20]
jb .L_042C
.L_042D:
xor eax, eax
.L_042C:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], edx
mov dword ptr [eax+24], esi
jmp .L_011B
.L_012C:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+20]
mov eax, dword ptr [edx+24]
cmp eax, dword ptr [esi+24]
mov edx, -1
jb .L_042E
ja .L_042F
cmp ecx, dword ptr [esi+20]
jbe .L_042E
.L_042F:
xor edx, edx
.L_042E:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+20], ecx
mov dword ptr [edx+24], esi
jmp .L_011B
.L_012D:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
mov edx, dword ptr [ecx+24]
cmp edx, dword ptr [esi+24]
mov ecx, -1
ja .L_0430
jb .L_0431
cmp eax, dword ptr [esi+20]
jae .L_0430
.L_0431:
xor ecx, ecx
.L_0430:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .L_011B
.L_012E:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+24], 0
jne .L_0432
cmp dword ptr [eax+20], 0
je .L_012F
.L_0432:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+24], 0
mov esi, -1
jne .L_0433
cmp dword ptr [eax+20], 0
jne .L_0433
.L_0434:
xor esi, esi
.L_0433:
mov dword ptr [ebp-20], esi
jmp .L_03F7
.L_012F:
mov dword ptr [ebp-20], 0
.L_03F7:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .L_011B
.L_0131:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+24], 0
jne .L_0435
cmp dword ptr [eax+20], 0
je .L_0132
.L_0435:
mov dword ptr [ebp-20], -1
jmp .L_03F8
.L_0132:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+24], 0
mov esi, -1
jne .L_0436
cmp dword ptr [eax+20], 0
jne .L_0436
.L_0437:
xor esi, esi
.L_0436:
mov dword ptr [ebp-20], esi
.L_03F8:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .L_011B
.L_0134:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+24], 0
jne .L_0136
cmp dword ptr [eax+20], 0
jne .L_0136
.L_0438:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], 0
mov dword ptr [eax+24], 0
push 0
push 0
push 100
call ERRREPORT
add esp, 12
jmp .L_0135
.L_0136:
cmp dword ptr [ebp+8], 32
jne .L_0137
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call __udivdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
jmp .L_0135
.L_0137:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call __umoddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
.L_0135:
jmp .L_011B
.L_0138:
jmp .L_011B
.L_011C:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .L_0138
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0139+eax*4-112]
.L_0139:
.int .L_011E
.int .L_011F
.int .L_0120
.int .L_0138
.int .L_0134
.int .L_0134
.int .L_0123
.int .L_0124
.int .L_012E
.int .L_0131
.int .L_0125
.int .L_0126
.int .L_0127
.int .L_0121
.int .L_0122
.int .L_0138
.int .L_0138
.int .L_0129
.int .L_012A
.int .L_012B
.int .L_0128
.int .L_012D
.int .L_012C
.L_011B:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCONVERTRAWCONSTI
add esp, 12
mov dword ptr [ebp+20], eax
.L_00C6:
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
.L_00C3:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPOINTER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_013A:
cmp dword ptr [ebp+16], 0
je .L_013D
mov dword ptr [ebp-4], 0
jmp .L_013B
jmp .L_013C
.L_013D:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_013E
mov dword ptr [ebp-8], 24
jmp .L_0439
.L_013E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0439:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 4
je .L_0143
.L_0144:
cmp dword ptr [ebp-12], 7
jne .L_0142
.L_0143:
mov dword ptr [ebp-4], 0
jmp .L_013B
.L_0142:
.L_0140:
.L_013C:
cmp dword ptr [ebp+8], 28
je .L_0147
.L_0148:
cmp dword ptr [ebp+8], 29
jne .L_0146
.L_0147:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0145
.L_0146:
cmp dword ptr [ebp+8], 36
je .L_014A
.L_014B:
cmp dword ptr [ebp+8], 37
jne .L_0149
.L_014A:
mov dword ptr [ebp-4], -1
jmp .L_0145
.L_0149:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_014C:
.L_0145:
.L_013B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOPOINTERARITH:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_014D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_014F
mov dword ptr [ebp-20], 24
jmp .L_043C
.L_014F:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_043C:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
je .L_0152
jmp .L_014E
jmp .L_0151
.L_0152:
cmp dword ptr [ebp-8], 4
je .L_0155
.L_0156:
cmp dword ptr [ebp-8], 7
jne .L_0154
.L_0155:
jmp .L_014E
.L_0154:
.L_0153:
.L_0151:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call SYMBCALCDEREFLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .L_0158
jl .L_043E
cmp dword ptr [ebp-16], 0
ja .L_0158
.L_043E:
jmp .L_014E
.L_0158:
.L_0157:
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
je .L_015A
cmp dword ptr [ebp+8], 29
jne .L_015C
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, dword ptr [ebp-8]
setne dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebx+8]
setne al
shr eax, 1
sbb eax, eax
or edx, eax
je .L_015E
jmp .L_014E
.L_015E:
.L_015D:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 29
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 32
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.L_015C:
.L_015B:
jmp .L_014E
.L_015A:
.L_0159:
cmp dword ptr [ebp-8], 8
je .L_0160
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
.L_0160:
.L_015F:
cmp dword ptr [ebp+8], 28
je .L_0163
.L_0164:
cmp dword ptr [ebp+8], 29
jne .L_0162
.L_0163:
cmp dword ptr [ebp+8], 29
jne .L_0165
mov eax, dword ptr [ebp+20]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_043D
.L_0165:
mov dword ptr [ebp-24], 0
.L_043D:
cmp dword ptr [ebp-24], 0
je .L_0168
jmp .L_014E
.L_0168:
.L_0167:
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0161
.L_0162:
.L_0169:
.L_0161:
.L_014E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONVERTUDT_L:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_016A:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_016D
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_016F
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_016B
.L_016F:
.L_016E:
.L_016D:
.L_016C:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0171
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0173
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_016B
.L_0173:
.L_0172:
.L_0171:
.L_0170:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0175
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_016B
.L_0175:
.L_0174:
mov dword ptr [ebp-4], 0
.L_016B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCONVERTUDT_R:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0176:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0179
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_017B
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0177
.L_017B:
.L_017A:
.L_0179:
.L_0178:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_017D
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_017F
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0177
.L_017F:
.L_017E:
.L_017D:
.L_017C:
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0181
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0177
.L_0181:
.L_0180:
mov dword ptr [ebp-4], 0
.L_0177:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKDEREFWCHARPTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0182:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .L_0185
jmp .L_0183
.L_0185:
.L_0184:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0187
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 17
jne .L_0189
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_018B
jmp .L_0183
.L_018B:
.L_018A:
.L_0189:
.L_0188:
.L_0187:
.L_0186:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [ENV+272]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
.L_0183:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONVOPERAND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_018C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
mov eax, dword ptr [ebp+8]
and eax, 511
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_018E
mov dword ptr [ebp-4], 24
jmp .L_0442
.L_018E:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0442:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [eax], ecx
push 0
push 0
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx]
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.L_018D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETINTEGERORBIGGER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0190:
cmp dword ptr [ebp+8], 9
je .L_0194
.L_0195:
cmp dword ptr [ebp+8], 14
jne .L_0193
.L_0194:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0191
jmp .L_0192
.L_0193:
cmp dword ptr [ebp+8], 13
jne .L_0196
.L_0197:
call FBIS64BIT
test eax, eax
jne .L_0199
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0191
.L_0199:
.L_0198:
.L_0196:
.L_0192:
mov dword ptr [ebp-4], 8
.L_0191:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HISCONSIDEREDBOOLEAN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_019A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
je .L_019C
push dword ptr [ebp+8]
call ASTISCONST0ORMINUS1
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0443
.L_019C:
mov dword ptr [ebp-8], -1
.L_0443:
cmp dword ptr [ebp-8], 0
jne .L_019E
push dword ptr [ebp+8]
call ASTISRELATIONALBOP
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_0444
.L_019E:
mov dword ptr [ebp-12], -1
.L_0444:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_019B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSHOULDWARNABOUTMIXEDBOOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_01A3
push dword ptr [ebp+8]
call ASTISCONST0ORMINUS1
add esp, 4
not eax
test eax, eax
je .L_01A4
push dword ptr [ebp+12]
call HISCONSIDEREDBOOLEAN
add esp, 4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0447
.L_01A4:
mov dword ptr [ebp-8], 0
.L_0447:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A1
.L_01A3:
.L_01A2:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_01A7
push dword ptr [ebp+8]
call HISCONSIDEREDBOOLEAN
add esp, 4
not eax
test eax, eax
je .L_01A8
push dword ptr [ebp+12]
call ASTISCONST0ORMINUS1
add esp, 4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0448
.L_01A8:
mov dword ptr [ebp-8], 0
.L_0448:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A1
.L_01A7:
.L_01A6:
mov dword ptr [ebp-4], 0
.L_01A1:
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
Lt_037C:	.quad	0x4000000000000000
.balign 8
Lt_0380:	.quad	0x0000000000000000
