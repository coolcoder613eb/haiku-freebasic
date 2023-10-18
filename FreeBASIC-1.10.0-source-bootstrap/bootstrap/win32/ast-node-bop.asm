	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWBOP@20
_ASTNEWBOP@20:
push ebp
mov ebp, esp
sub esp, 148
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_01AB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _SYMB
add ebx, eax
cmp dword ptr [ebx+99128], 0
je .L_01AE
lea ebx, [ebp-128]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDBOPOVLPROC@16
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 0
je .L_01B0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-124]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .L_01AC
jmp .L_01AF
.L_01B0:
cmp dword ptr [ebp-128], 0
je .L_01B2
mov dword ptr [ebp-4], 0
jmp .L_01AC
.L_01B2:
.L_01B1:
.L_01AF:
.L_01AE:
.L_01AD:
mov dword ptr [ebp-56], 0
cmp dword ptr [ebp+8], 44
jne .L_01B4
.L_01B5:
lea eax, [ebp+16]
push eax
lea eax, [ebp+12]
push eax
call _HTOSTR@8
mov dword ptr [ebp+8], 28
jmp .L_01B3
.L_01B4:
cmp dword ptr [ebp+8], 51
jne .L_01B6
.L_01B7:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _RTLOOPISTYPEOF@8
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_01B6:
.L_01B3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01B8
mov dword ptr [ebp-72], 24
jmp .L_034F
.L_01B8:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-72], eax
.L_034F:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_01BA
mov dword ptr [ebp-76], 24
jmp .L_0350
.L_01BA:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-76], ebx
.L_0350:
mov ebx, dword ptr [ebp-76]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-68], -1
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01BC
mov dword ptr [ebp-80], 24
jmp .L_0351
.L_01BC:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-80], eax
.L_0351:
mov eax, dword ptr [ebp-80]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01BE
mov dword ptr [ebp-84], 24
jmp .L_0352
.L_01BE:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.L_0352:
mov eax, dword ptr [ebp-84]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .L_01C1
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
je .L_01C3
jmp .L_01AC
.L_01C3:
.L_01C2:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01C4
mov dword ptr [ebp-128], 24
jmp .L_0354
.L_01C4:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_0354:
cmp dword ptr [ebp-128], 20
jne .L_01C7
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCONVERTUDT_L@20
mov dword ptr [ebp-4], eax
jmp .L_01AC
jmp .L_01C6
.L_01C7:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCONVERTUDT_R@20
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_01C6:
.L_01C1:
.L_01C0:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .L_01C9
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
je .L_01CB
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HDOPOINTERARITH@16
mov dword ptr [ebp-4], eax
jmp .L_01AC
jmp .L_01CA
.L_01CB:
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HCHECKPOINTER@12
test eax, eax
jne .L_01CD
jmp .L_01AC
.L_01CD:
.L_01CC:
.L_01CA:
jmp .L_01C8
.L_01C9:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .L_01CE
mov eax, dword ptr [ebp+24]
and eax, 4
test eax, eax
je .L_01D0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HDOPOINTERARITH@16
mov dword ptr [ebp-4], eax
jmp .L_01AC
jmp .L_01CF
.L_01D0:
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _HCHECKPOINTER@12
test eax, eax
jne .L_01D2
jmp .L_01AC
.L_01D2:
.L_01D1:
.L_01CF:
.L_01CE:
.L_01C8:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01D3
mov dword ptr [ebp-88], 24
jmp .L_0355
.L_01D3:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-88], eax
.L_0355:
cmp dword ptr [ebp-88], 10
jne .L_01D6
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 8
call _HCONVOPERAND@16
.L_01D6:
.L_01D5:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01D7
mov dword ptr [ebp-92], 24
jmp .L_0356
.L_01D7:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.L_0356:
cmp dword ptr [ebp-92], 10
jne .L_01DA
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 8
call _HCONVOPERAND@16
.L_01DA:
.L_01D9:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01DB
mov dword ptr [ebp-96], 24
jmp .L_0357
.L_01DB:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-96], eax
.L_0357:
mov eax, dword ptr [ebp-96]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01DD
mov dword ptr [ebp-100], 24
jmp .L_0358
.L_01DD:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-100], eax
.L_0358:
mov eax, dword ptr [ebp-100]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-124]
je .L_01E0
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
.L_01E0:
.L_01DF:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01E1
mov dword ptr [ebp-104], 24
jmp .L_035A
.L_01E1:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-104], eax
.L_035A:
mov eax, dword ptr [ebp-104]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_01E3
mov dword ptr [ebp-108], 24
jmp .L_035B
.L_01E3:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-108], eax
.L_035B:
mov eax, dword ptr [ebp-108]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .L_01E6
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .L_01E8
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01E9
mov dword ptr [ebp-128], 24
jmp .L_035D
.L_01E9:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_035D:
cmp dword ptr [ebp-128], 7
jne .L_01EC
mov ebx, dword ptr [ebp-36]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_01ED
mov dword ptr [ebp-132], 24
jmp .L_035E
.L_01ED:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-132], ebx
.L_035E:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
jmp .L_01EB
.L_01EC:
mov ebx, dword ptr [ebp-32]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01EF
mov dword ptr [ebp-132], 24
jmp .L_0360
.L_01EF:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-132], ebx
.L_0360:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
.L_01EB:
jmp .L_01E7
.L_01E8:
mov dword ptr [ebp-56], -1
.L_01E7:
cmp dword ptr [ebp-56], 0
je .L_01F2
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01F3
mov dword ptr [ebp-128], 24
jmp .L_0362
.L_01F3:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0362:
mov ebx, dword ptr [ebp-128]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], 4
je .L_01F8
.L_01F9:
cmp dword ptr [ebp-132], 7
jne .L_01F7
.L_01F8:
push dword ptr [ebp+12]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_01FB
cmp dword ptr [ebp-24], 4
je .L_01FE
.L_01FF:
cmp dword ptr [ebp-24], 7
jne .L_01FD
.L_01FE:
push dword ptr [ebp+16]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
jmp .L_01FC
.L_01FD:
mov dword ptr [ebp-60], 0
.L_0200:
.L_01FC:
.L_01FB:
.L_01FA:
.L_01F7:
.L_01F5:
cmp dword ptr [ebp+8], 28
jne .L_0202
cmp dword ptr [ebp-60], 0
je .L_0204
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [_ENV+288]
je .L_0206
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HWSTRLITERALCONCAT@8
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_0206:
.L_0205:
.L_0204:
.L_0203:
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .L_0208
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _RTLWSTRCONCAT@16
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_0208:
.L_0207:
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
jmp .L_0201
.L_0202:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_0209
cmp dword ptr [ebp-60], 0
je .L_020B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWSTRLITERALCOMPARE@12
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_020B:
.L_020A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _RTLWSTRCOMPARE@8
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
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
jmp .L_0201
.L_0209:
jmp .L_01AC
.L_0201:
jmp .L_01F1
.L_01F2:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_020C
mov dword ptr [ebp-128], 24
jmp .L_0363
.L_020C:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_0363:
cmp dword ptr [ebp-128], 7
jne .L_020F
push dword ptr [ebp-24]
push dword ptr [ebp+16]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call _HCHECKDEREFWCHARPTR@16
test eax, eax
jne .L_0211
jmp .L_01AC
.L_0211:
.L_0210:
jmp .L_020E
.L_020F:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HCHECKDEREFWCHARPTR@16
test eax, eax
jne .L_0213
jmp .L_01AC
.L_0213:
.L_0212:
.L_020E:
.L_01F1:
jmp .L_01E5
.L_01E6:
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
je .L_0214
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .L_0216
cmp dword ptr [ebp-32], 2
jne .L_0218
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_0219
mov dword ptr [ebp-128], 24
jmp .L_0364
.L_0219:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0364:
cmp dword ptr [ebp-128], 4
je .L_021C
jmp .L_01AC
.L_021C:
.L_021B:
jmp .L_0217
.L_0218:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_021D
mov dword ptr [ebp-128], 24
jmp .L_0365
.L_021D:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0365:
cmp dword ptr [ebp-128], 4
je .L_0220
jmp .L_01AC
.L_0220:
.L_021F:
.L_0217:
.L_0216:
.L_0215:
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_0221
mov dword ptr [ebp-124], 24
jmp .L_0366
.L_0221:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-124], ebx
.L_0366:
cmp dword ptr [ebp-124], 4
jne .L_0224
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_0225
mov dword ptr [ebp-128], 24
jmp .L_0367
.L_0225:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0367:
cmp dword ptr [ebp-128], 4
jne .L_0228
push dword ptr [ebp+12]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_022A
push dword ptr [ebp+16]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
.L_022A:
.L_0229:
.L_0228:
.L_0227:
.L_0224:
.L_0223:
cmp dword ptr [ebp+8], 28
jne .L_022C
cmp dword ptr [ebp-60], 0
je .L_022E
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HSTRLITERALCONCAT@8
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_022E:
.L_022D:
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
jmp .L_022B
.L_022C:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_022F
cmp dword ptr [ebp-60], 0
je .L_0231
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSTRLITERALCOMPARE@12
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_0231:
.L_0230:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _RTLSTRCOMPARE@16
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
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
jmp .L_022B
.L_022F:
jmp .L_01AC
.L_022B:
jmp .L_01E5
.L_0214:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_0233
mov dword ptr [ebp-112], 24
jmp .L_0368
.L_0233:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-112], eax
.L_0368:
mov eax, dword ptr [ebp-112]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0235
mov dword ptr [ebp-116], 24
jmp .L_0369
.L_0235:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-116], eax
.L_0369:
mov eax, dword ptr [ebp-116]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .L_0232
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_0237
mov dword ptr [ebp-128], 24
jmp .L_036B
.L_0237:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_036B:
cmp dword ptr [ebp-128], 4
jne .L_023A
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
je .L_023C
jmp .L_01AC
.L_023C:
.L_023B:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 3
mov dword ptr [ebp-20], eax
jmp .L_0239
.L_023A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .L_023E
jmp .L_01AC
.L_023E:
.L_023D:
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 3
mov dword ptr [ebp-24], eax
.L_0239:
.L_0232:
.L_01E5:
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
je .L_0240
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-124], ebx
jmp .L_0242
.L_0244:
mov ebx, dword ptr [ebp-20]
and ebx, 511
mov eax, dword ptr [ebp-24]
and eax, 511
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-120], ebx
jmp .L_0241
.L_0245:
jmp .L_01AC
jmp .L_0241
.L_0242:
mov ebx, dword ptr [ebp-124]
add ebx, 4294967262
cmp ebx, 14
ja .L_0245
mov ebx, dword ptr [ebp-124]
jmp dword ptr [_.L_0246+ebx*4-136]
_.L_0246:
.int .L_0244
.int .L_0244
.int .L_0244
.int .L_0244
.int .L_0244
.int .L_0244
.int .L_0244
.int .L_0245
.int .L_0245
.int .L_0245
.int .L_0245
.int .L_0244
.int .L_0245
.int .L_0245
.int .L_0244
.L_0241:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HSHOULDWARNABOUTMIXEDBOOL@8
test eax, eax
je .L_0248
push 0
push 1
push 0
push 38
call _ERRREPORTWARN@16
.L_0248:
.L_0247:
.L_0240:
.L_023F:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_ENV+136]
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
je .L_024A
mov eax, dword ptr [_SYMB_DTYPETB+236]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [_SYMB_DTYPETB+264]
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-32], 0
jne .L_024C
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_024D
mov dword ptr [ebp-124], 24
jmp .L_036C
.L_024D:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-124], eax
.L_036C:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
and ebx, 480
je .L_0251
mov dword ptr [ebp-132], 24
jmp .L_036D
.L_0251:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_024F
mov dword ptr [ebp-128], 24
jmp .L_036E
.L_024F:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_036E:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.L_036D:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-40], ebx
jge .L_0254
lea ebx, [ebp+12]
push ebx
lea ebx, [ebp-32]
push ebx
lea ebx, [ebp-20]
push ebx
push 8
call _HCONVOPERAND@16
jmp .L_0253
.L_0254:
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
je .L_0256
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 9
call _HCONVOPERAND@16
.L_0256:
.L_0255:
.L_0253:
.L_024C:
.L_024B:
cmp dword ptr [ebp-36], 0
jne .L_0258
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0259
mov dword ptr [ebp-124], 24
jmp .L_036F
.L_0259:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-124], eax
.L_036F:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
and ebx, 480
je .L_025D
mov dword ptr [ebp-132], 24
jmp .L_0370
.L_025D:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_025B
mov dword ptr [ebp-128], 24
jmp .L_0371
.L_025B:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.L_0371:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.L_0370:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-44], ebx
jge .L_0260
lea ebx, [ebp+16]
push ebx
lea ebx, [ebp-36]
push ebx
lea ebx, [ebp-24]
push ebx
push 8
call _HCONVOPERAND@16
jmp .L_025F
.L_0260:
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
je .L_0262
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 9
call _HCONVOPERAND@16
.L_0262:
.L_0261:
.L_025F:
.L_0258:
.L_0257:
.L_024A:
.L_0249:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_0264
.L_0266:
cmp dword ptr [ebp-32], 1
je .L_0268
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call _HCONVOPERAND@16
.L_0268:
.L_0267:
cmp dword ptr [ebp-36], 1
je .L_026A
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [_IR+272]
and eax, 1
test eax, eax
je .L_026C
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
jmp .L_026B
.L_026C:
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
je .L_026E
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
.L_026E:
.L_026D:
.L_026B:
mov dword ptr [ebp-36], 1
.L_026A:
.L_0269:
jmp .L_0263
.L_026F:
cmp dword ptr [ebp-32], 0
je .L_0271
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp-24]
call _HGETINTEGERORBIGGER@4
push eax
call _HCONVOPERAND@16
.L_0271:
.L_0270:
cmp dword ptr [ebp-36], 0
je .L_0273
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp-20]
call _HGETINTEGERORBIGGER@4
push eax
call _HCONVOPERAND@16
.L_0273:
.L_0272:
jmp .L_0263
.L_0274:
cmp dword ptr [ebp-32], 1
je .L_0276
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call _HCONVOPERAND@16
.L_0276:
.L_0275:
cmp dword ptr [ebp-36], 1
je .L_0278
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 16
call _HCONVOPERAND@16
.L_0278:
.L_0277:
jmp .L_0263
.L_0264:
mov eax, dword ptr [ebp-124]
add eax, 4294967265
cmp eax, 33
ja .L_0263
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.L_0279+eax*4-124]
_.L_0279:
.int .L_0266
.int .L_026F
.int .L_026F
.int .L_026F
.int .L_026F
.int .L_0263
.int .L_0263
.int .L_026F
.int .L_026F
.int .L_026F
.int .L_026F
.int .L_026F
.int .L_0274
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0263
.int .L_0274
.L_0263:
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
je .L_027B
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
je .L_027D
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .L_027F
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-64], ebx
jmp .L_027E
.L_027F:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-64], eax
.L_027E:
jmp .L_027C
.L_027D:
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
call _TYPEMAX@24
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
je .L_0281
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_0283
jmp .L_01AC
.L_0283:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0284
mov dword ptr [ebp-124], 24
jmp .L_0372
.L_0284:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.L_0372:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov esi, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], esi
.L_0281:
.L_0280:
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
je .L_0287
cmp dword ptr [ebp+8], 41
je .L_028A
.L_028B:
cmp dword ptr [ebp+8], 42
jne .L_0289
.L_028A:
jmp .L_0288
.L_0289:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_028E
jmp .L_01AC
.L_028E:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_028F
mov dword ptr [ebp-124], 24
jmp .L_0373
.L_028F:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.L_0373:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-36], ecx
.L_028C:
.L_0288:
.L_0287:
.L_0286:
.L_027C:
jmp .L_027A
.L_027B:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-64], eax
.L_027A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_0292
.L_0294:
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0295
mov dword ptr [ebp-132], 24
jmp .L_0374
.L_0295:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-132], eax
.L_0374:
mov eax, dword ptr [ebp-132]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0298
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_0299
mov dword ptr [ebp-148], 24
jmp .L_0375
.L_0299:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-148], eax
.L_0375:
mov eax, dword ptr [ebp-148]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
jne .L_029C
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .L_029E
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64@4
cmp edx, 0
jg .L_02A0
jl .L_03A5
cmp eax, 0
jae .L_02A0
.L_03A5:
mov dword ptr [ebp-128], 35
.L_02A0:
.L_029F:
jmp .L_029D
.L_029E:
mov eax, dword ptr [_ENV+200]
and eax, 32
test eax, eax
je .L_02A2
mov dword ptr [ebp-128], 35
.L_02A2:
.L_02A1:
.L_029D:
.L_029C:
.L_029B:
.L_0298:
.L_0297:
cmp dword ptr [ebp-128], 0
jne .L_02A3
mov eax, dword ptr [ebp+8]
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-136], eax
jmp .L_0376
.L_02A3:
mov dword ptr [ebp-136], 0
.L_0376:
cmp dword ptr [ebp-136], 0
je .L_02A7
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_02A5
mov dword ptr [ebp-140], 24
jmp .L_0378
.L_02A5:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-140], eax
.L_0378:
mov eax, dword ptr [ebp-140]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+8]
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-144], edx
jmp .L_0377
.L_02A7:
mov dword ptr [ebp-144], 0
.L_0377:
cmp dword ptr [ebp-144], 0
je .L_02AA
mov edx, dword ptr [ebp-24]
and edx, 480
je .L_02AB
mov dword ptr [ebp-148], 24
jmp .L_0379
.L_02AB:
mov edx, dword ptr [ebp-24]
and edx, 31
mov dword ptr [ebp-148], edx
.L_0379:
mov edx, dword ptr [ebp-148]
imul edx, 28
cmp dword ptr [_SYMB_DTYPETB+edx+8], 0
jne .L_02AE
mov edx, dword ptr [ebp+16]
cmp dword ptr [edx], 16
jne .L_02B0
push dword ptr [ebp+16]
call _ASTCONSTGETASINT64@4
cmp edx, 0
jg .L_02B2
jl .L_03A8
cmp eax, 0
jae .L_02B2
.L_03A8:
mov dword ptr [ebp-128], 35
.L_02B2:
.L_02B1:
jmp .L_02AF
.L_02B0:
mov eax, dword ptr [_ENV+200]
and eax, 32
test eax, eax
je .L_02B4
mov dword ptr [ebp-128], 35
.L_02B4:
.L_02B3:
.L_02AF:
.L_02AE:
.L_02AD:
.L_02AA:
.L_02A9:
cmp dword ptr [ebp-128], 0
je .L_02B6
push 0
push 1
push 0
push dword ptr [ebp-128]
call _ERRREPORTWARN@16
.L_02B6:
.L_02B5:
jmp .L_0291
.L_0292:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 18
ja .L_0291
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.L_02B7+eax*4-128]
_.L_02B7:
.int .L_0294
.int .L_0294
.int .L_0291
.int .L_0291
.int .L_0291
.int .L_0291
.int .L_0291
.int .L_0291
.int .L_0291
.int .L_0291
.int .L_0294
.int .L_0291
.int .L_0291
.int .L_0294
.int .L_0294
.int .L_0294
.int .L_0294
.int .L_0294
.int .L_0294
.L_0291:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_02B9
.L_02BB:
mov eax, dword ptr [ebp-28]
and eax, 511
cmp eax, 1
je .L_02BD
mov dword ptr [ebp-28], 8
.L_02BD:
.L_02BC:
mov dword ptr [ebp-64], 0
jmp .L_02B8
.L_02BE:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_02C0
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_02C1
mov dword ptr [ebp-128], 24
jmp .L_037A
.L_02C1:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.L_037A:
mov eax, dword ptr [ebp-128]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
sal edx, 3
mov ecx, edx
mov eax, ecx
sar eax, 31
mov edx, dword ptr [ebp-132]
cmp dword ptr [edx+28], eax
jb .L_02C4
ja .L_03A9
cmp dword ptr [edx+24], ecx
jb .L_02C4
.L_03A9:
push 0
push 1
push 0
push 33
call _ERRREPORTWARN@16
push 1
push 0
push 0
push 8
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_02C5
mov dword ptr [ebp-136], 24
jmp .L_037C
.L_02C5:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-136], ecx
.L_037C:
mov ecx, dword ptr [ebp-136]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
sal eax, 3
dec eax
mov edx, eax
mov ecx, edx
sar ecx, 31
push ecx
push edx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
.L_02C4:
.L_02C3:
.L_02C0:
.L_02BF:
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 8
je .L_02C8
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 9
je .L_02CA
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 8
mov dword ptr [ebp-24], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-36], 0
.L_02CA:
.L_02C9:
.L_02C8:
.L_02C7:
jmp .L_02B8
.L_02B9:
mov eax, dword ptr [ebp-124]
add eax, 4294967260
cmp eax, 14
ja .L_02B8
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.L_02CB+eax*4-144]
_.L_02CB:
.int .L_02BB
.int .L_02BB
.int .L_02B8
.int .L_02B8
.int .L_02B8
.int .L_02BE
.int .L_02BE
.int .L_02B8
.int .L_02B8
.int .L_02BB
.int .L_02BB
.int .L_02BB
.int .L_02BB
.int .L_02BB
.int .L_02BB
.L_02B8:
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
je .L_02CD
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCONSTBOP@20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-28]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-64]
mov dword ptr [ecx+8], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_02CD:
.L_02CC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .L_02CF
mov dword ptr [ebp-124], 0
cmp dword ptr [ebp+8], 28
je .L_02D2
.L_02D3:
cmp dword ptr [ebp+8], 30
je .L_02D2
.L_02D4:
cmp dword ptr [ebp+8], 34
je .L_02D2
.L_02D5:
cmp dword ptr [ebp+8], 35
je .L_02D2
.L_02D6:
cmp dword ptr [ebp+8], 38
je .L_02D2
.L_02D7:
cmp dword ptr [ebp+8], 39
je .L_02D2
.L_02D8:
cmp dword ptr [ebp+8], 45
je .L_02D2
.L_02D9:
cmp dword ptr [ebp+8], 48
jne .L_02D1
.L_02D2:
mov dword ptr [ebp-124], -1
jmp .L_02D0
.L_02D1:
cmp dword ptr [ebp+8], 49
jne .L_02DA
.L_02DB:
mov dword ptr [ebp+8], 50
mov dword ptr [ebp-124], -1
jmp .L_02D0
.L_02DA:
cmp dword ptr [ebp+8], 46
jne .L_02DC
.L_02DD:
mov dword ptr [ebp+8], 47
mov dword ptr [ebp-124], -1
jmp .L_02D0
.L_02DC:
cmp dword ptr [ebp+8], 50
jne .L_02DE
.L_02DF:
mov dword ptr [ebp+8], 49
mov dword ptr [ebp-124], -1
jmp .L_02D0
.L_02DE:
cmp dword ptr [ebp+8], 47
jne .L_02E0
.L_02E1:
mov dword ptr [ebp+8], 46
mov dword ptr [ebp-124], -1
jmp .L_02D0
.L_02E0:
cmp dword ptr [ebp+8], 29
jne .L_02E2
.L_02E3:
inc dword ptr [_AST+232]
push dword ptr [ebp+16]
push 54
call _ASTNEWUOP@8
mov dword ptr [ebp+16], eax
dec dword ptr [_AST+232]
cmp dword ptr [ebp+16], 0
jne .L_02E5
mov dword ptr [ebp-4], 0
jmp .L_01AC
.L_02E5:
.L_02E4:
mov dword ptr [ebp+8], 28
mov dword ptr [ebp-124], -1
.L_02E2:
.L_02D0:
cmp dword ptr [ebp-124], 0
je .L_02E7
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
.L_02E7:
.L_02E6:
.L_02CF:
.L_02CE:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .L_02E9
cmp dword ptr [ebp+8], 48
jne .L_02EB
.L_02EC:
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
je .L_02EE
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 0
jne .L_02F0
cmp dword ptr [ecx+24], 0
jne .L_02F0
.L_03AE:
push dword ptr [ebp+12]
call _ASTISRELATIONALBOP@4
test eax, eax
je .L_02F2
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_02F2:
.L_02F1:
.L_02F0:
.L_02EF:
.L_02EE:
.L_02ED:
jmp .L_02EA
.L_02EB:
cmp dword ptr [ebp+8], 45
jne .L_02F3
.L_02F4:
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
je .L_02F6
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 0
jne .L_02F8
cmp dword ptr [ecx+24], 0
jne .L_02F8
.L_03B1:
push dword ptr [ebp+12]
call _ASTISRELATIONALBOP@4
test eax, eax
je .L_02FA
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
call _ASTGETINVERSELOGOP@4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_02FA:
.L_02F9:
.L_02F8:
.L_02F7:
.L_02F6:
.L_02F5:
jmp .L_02EA
.L_02F3:
cmp dword ptr [ebp+8], 28
jne .L_02FB
.L_02FC:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-124], ecx
cmp dword ptr [ebp-124], 23
jne .L_02FF
.L_0300:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov esi, dword ptr [eax+24]
mov edx, dword ptr [eax+28]
add dword ptr [ecx+24], esi
adc dword ptr [ecx+28], edx
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov esi, dword ptr [ebp+12]
mov dword ptr [ebp-4], esi
jmp .L_01AC
jmp .L_02FD
.L_02FF:
cmp dword ptr [ebp-124], 6
jne .L_0301
.L_0302:
mov esi, dword ptr [ebp+16]
push dword ptr [esi+28]
push dword ptr [esi+24]
mov esi, dword ptr [ebp+12]
push dword ptr [esi+64]
call _ASTINCOFFSET@12
test eax, eax
je .L_0304
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_0304:
.L_0303:
.L_0301:
.L_02FD:
jmp .L_02EA
.L_02FB:
cmp dword ptr [ebp+8], 29
jne .L_0305
.L_0306:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax]
mov dword ptr [ebp-124], esi
cmp dword ptr [ebp-124], 23
jne .L_0309
.L_030A:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+24]
mov edx, dword ptr [eax+28]
sub dword ptr [esi+24], ecx
sbb dword ptr [esi+28], edx
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .L_01AC
jmp .L_0307
.L_0309:
cmp dword ptr [ebp-124], 6
jne .L_030B
.L_030C:
mov ecx, dword ptr [ebp+16]
mov esi, dword ptr [ecx+24]
mov edx, dword ptr [ecx+28]
neg esi
adc edx, 0
neg edx
push edx
push esi
mov esi, dword ptr [ebp+12]
push dword ptr [esi+64]
call _ASTINCOFFSET@12
test eax, eax
je .L_030E
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_030E:
.L_030D:
.L_030B:
.L_0307:
inc dword ptr [_AST+232]
push dword ptr [ebp+16]
push 54
call _ASTNEWUOP@8
mov dword ptr [ebp+16], eax
dec dword ptr [_AST+232]
mov dword ptr [ebp+8], 28
jmp .L_02EA
.L_0305:
cmp dword ptr [ebp+8], 32
je .L_0310
.L_0311:
cmp dword ptr [ebp+8], 33
jne .L_030F
.L_0310:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jne .L_0313
cmp dword ptr [eax+24], 0
jne .L_0313
.L_03B2:
push 0
push 0
push 100
call _ERRREPORT@12
.L_0313:
.L_0312:
jmp .L_02EA
.L_030F:
cmp dword ptr [ebp+8], 43
jne .L_0314
.L_0315:
mov eax, dword ptr [ebp+16]
fld qword ptr [eax+24]
fld qword ptr [_Lt_037D]
fcomip st, st(1)
fstp st(0)
jnz .L_0317
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_0319
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+64]
mov eax, dword ptr [esi]
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 17
je .L_031D
.L_031E:
cmp dword ptr [ebp-124], 18
je .L_031D
.L_031F:
cmp dword ptr [ebp-124], 19
je .L_031D
.L_0320:
cmp dword ptr [ebp-124], 20
jne .L_031C
.L_031D:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp+12], esi
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov esi, dword ptr [ebp-20]
and esi, -512
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
or esi, edx
mov dword ptr [ebp-20], esi
.L_031C:
.L_031A:
.L_0319:
.L_0318:
mov esi, dword ptr [ebp+12]
mov edx, dword ptr [esi]
mov dword ptr [ebp-124], edx
cmp dword ptr [ebp-124], 17
je .L_0324
.L_0325:
cmp dword ptr [ebp-124], 18
je .L_0324
.L_0326:
cmp dword ptr [ebp-124], 19
je .L_0324
.L_0327:
cmp dword ptr [ebp-124], 20
jne .L_0323
.L_0324:
push dword ptr [ebp+12]
call _ASTHASSIDEFX@4
test eax, eax
jne .L_0329
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
je .L_032A
mov dword ptr [ebp-128], 24
jmp .L_037E
.L_032A:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-128], eax
.L_037E:
mov eax, dword ptr [ebp-128]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
je .L_032D
push 0
push 0
push dword ptr [ebp+12]
push 0
push 16
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
.L_032D:
.L_032C:
push dword ptr [ebp+16]
call _ASTDELNODE@4
push dword ptr [ebp+12]
call _ASTCLONETREE@4
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+8], 30
.L_0329:
.L_0328:
.L_0323:
.L_0321:
.L_0317:
.L_0316:
.L_0314:
.L_02EA:
.L_02E9:
.L_02E8:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .L_032F
.L_0331:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _RTLMATHPOW@8
mov dword ptr [ebp-4], eax
jmp .L_01AC
jmp .L_032E
.L_0332:
mov eax, dword ptr [_IR+272]
and eax, 131072
test eax, eax
je .L_0334
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLMATHBOP@12
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_0334:
.L_0333:
jmp .L_032E
.L_0335:
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0336
mov dword ptr [ebp-128], 24
jmp .L_037F
.L_0336:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.L_037F:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .L_033B
.L_033C:
cmp dword ptr [ebp-132], 14
jne .L_033A
.L_033B:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _RTLMATHLONGINTDIV@20
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_033A:
.L_0338:
jmp .L_032E
.L_033D:
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_033E
mov dword ptr [ebp-128], 24
jmp .L_0380
.L_033E:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.L_0380:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .L_0343
.L_0344:
cmp dword ptr [ebp-132], 14
jne .L_0342
.L_0343:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _RTLMATHLONGINTMOD@20
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_0342:
.L_0340:
jmp .L_032E
.L_0345:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-136], 0
cmp dword ptr [ebp-32], 1
jne .L_0347
push 15
push dword ptr [_Lt_0381+4]
push dword ptr [_Lt_0381]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-132], eax
push 15
push dword ptr [_Lt_0381+4]
push dword ptr [_Lt_0381]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-136], eax
jmp .L_0346
.L_0347:
push 0
push dword ptr [ebp-28]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-132], eax
push 0
push dword ptr [ebp-28]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-136], eax
.L_0346:
cmp dword ptr [ebp+8], 36
jne .L_0349
mov dword ptr [ebp-128], 48
jmp .L_0348
.L_0349:
mov dword ptr [ebp-128], 45
.L_0348:
push 1
push 0
push dword ptr [ebp-132]
push dword ptr [ebp+12]
push dword ptr [ebp-128]
call _ASTNEWBOP@20
mov dword ptr [ebp+12], eax
push 1
push 0
push dword ptr [ebp-136]
push dword ptr [ebp+16]
push 48
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+8], 36
jne .L_034B
push 0
push 0
push dword ptr [ebp-28]
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWIIF@20
mov dword ptr [ebp-4], eax
jmp .L_01AC
jmp .L_034A
.L_034B:
push 0
push 0
push dword ptr [ebp-28]
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWIIF@20
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_034A:
jmp .L_032E
.L_032F:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 32
ja .L_032E
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.L_034C+eax*4-128]
_.L_034C:
.int .L_0335
.int .L_033D
.int .L_032E
.int .L_032E
.int .L_0345
.int .L_0345
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_0331
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_032E
.int .L_0332
.L_032E:
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push 3
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+12]
mov dword ptr [eax+64], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [edx+68], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+20]
mov dword ptr [eax+32], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [edx+24], eax
cmp dword ptr [_ENV+104], 1
jne .L_034E
or dword ptr [ebp+24], 1
.L_034E:
.L_034D:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+24]
mov dword ptr [eax+28], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_01AC:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTNEWSELFBOP@20
_ASTNEWSELFBOP@20:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_03B3:
mov dword ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDSELFBOPOVLPROC@16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03B6
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .L_03B4
.L_03B6:
.L_03B5:
cmp dword ptr [ebp-16], 0
je .L_03B8
mov dword ptr [ebp-4], 0
jmp .L_03B4
.L_03B8:
.L_03B7:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call _ASTHASSIDEFX@4
test eax, eax
je .L_03BA
push 0
lea eax, [ebp+12]
push eax
call _ASTMAKEREF@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.L_03BA:
.L_03B9:
mov eax, dword ptr [ebp+24]
or eax, 1
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+12]
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_03BC
push dword ptr [ebp-8]
call _ASTDELTREE@4
jmp .L_03B4
.L_03BC:
.L_03BB:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWASSIGN@12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_03BE
push dword ptr [ebp-8]
call _ASTDELTREE@4
jmp .L_03B4
.L_03BE:
.L_03BD:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03B4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADBOP@4
_ASTLOADBOP@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_03BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
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
je .L_03C2
mov dword ptr [ebp-4], 0
jmp .L_03C0
.L_03C2:
.L_03C1:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 5
jne .L_03C4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-8]
call _ASTUPDATECONVFD2FS@12
.L_03C4:
.L_03C3:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .L_03C6
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-12]
call _ASTUPDATECONVFD2FS@12
.L_03C6:
.L_03C5:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call _ASTLOAD@4
mov dword ptr [ebp-24], eax
cmp dword ptr [_AST+136], 0
je .L_03C8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_03CA
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [_IR+92]
jmp .L_03C9
.L_03CA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 1
test ebx, ebx
je .L_03CC
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call dword ptr [_IR+224]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
jmp .L_03CB
.L_03CC:
mov dword ptr [ebp-28], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+20], eax
.L_03CB:
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [_IR+92]
cmp dword ptr [ebp-28], 0
jne .L_03CE
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.L_03CE:
.L_03CD:
.L_03C9:
.L_03C8:
.L_03C7:
push dword ptr [ebp-8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_03C0:
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
_HSTRLITERALCONCAT@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_005E:
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
call _SYMBALLOCSTRCONST@8
mov dword ptr [ebp-8], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
.L_005F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HWSTRLITERALCONCAT@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0062:
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
je .L_0065
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call ___divdi3
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
call _fb_StrToWstr@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _fb_WstrConcat@8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
push dword ptr [ebp-20]
call _fb_WstrDelete@4
jmp .L_0064
.L_0065:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_0068
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ___divdi3
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
call _fb_StrToWstr@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _fb_WstrConcat@8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
push dword ptr [ebp-20]
call _fb_WstrDelete@4
jmp .L_0064
.L_0068:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
mov ecx, dword ptr [_SYMB_DTYPETB+200]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
mov ebx, eax
mov esi, edx
call ___divdi3
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
call _fb_WstrConcat@8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call _fb_WstrDelete@4
.L_0064:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
.L_0063:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSTRLITERALCOMPARE@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_006C:
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call _HUNESCAPE@8
push eax
push offset _Lt_03D1
call _DZSTRASSIGN@8
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call _HUNESCAPE@8
push eax
push offset _Lt_03D2
call _DZSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_0071
.L_0073:
push 0
push dword ptr [_Lt_03D2]
push 0
push dword ptr [_Lt_03D1]
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0070
.L_0074:
push 0
push dword ptr [_Lt_03D2]
push 0
push dword ptr [_Lt_03D1]
call _fb_StrCompare@16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0070
.L_0075:
push 0
push dword ptr [_Lt_03D2]
push 0
push dword ptr [_Lt_03D1]
call _fb_StrCompare@16
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0070
.L_0076:
push 0
push dword ptr [_Lt_03D2]
push 0
push dword ptr [_Lt_03D1]
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0070
.L_0077:
push 0
push dword ptr [_Lt_03D2]
push 0
push dword ptr [_Lt_03D1]
call _fb_StrCompare@16
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0070
.L_0078:
push 0
push dword ptr [_Lt_03D2]
push 0
push dword ptr [_Lt_03D1]
call _fb_StrCompare@16
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0070
.L_0071:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .L_0070
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0079+eax*4-180]
_.L_0079:
.int .L_0073
.int .L_0074
.int .L_0075
.int .L_0076
.int .L_0078
.int .L_0077
.L_0070:
push 0
push 8
mov ebx, dword ptr [ebp-8]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
push dword ptr [ebp+12]
call _ASTDELNODE@4
.L_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_03D1,12
.balign 4
	.lcomm	_Lt_03D2,12

.section .text
.balign 16
_HWSTRLITERALCOMPARE@12:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_007A:
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
je .L_007D
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call _HUNESCAPE@8
push eax
push offset _Lt_03D9
call _DZSTRASSIGN@8
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _HUNESCAPEW@8
push eax
push offset _Lt_03DA
call _DWSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_0081
.L_0083:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _fb_WstrCompare@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0080
.L_0085:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _fb_WstrCompare@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0080
.L_0087:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _fb_WstrCompare@8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0080
.L_0089:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _fb_WstrCompare@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0080
.L_008B:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _fb_WstrCompare@8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0080
.L_008D:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _fb_WstrCompare@8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0080
.L_0081:
mov eax, dword ptr [ebp-28]
add eax, 4294967251
cmp eax, 5
ja .L_0080
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_008F+eax*4-180]
_.L_008F:
.int .L_0083
.int .L_0085
.int .L_0087
.int .L_0089
.int .L_008D
.int .L_008B
.L_0080:
jmp .L_007C
.L_007D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_0090
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call _HUNESCAPEW@8
push eax
push offset _Lt_03E1
call _DWSTRASSIGN@8
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _HUNESCAPE@8
push eax
push offset _Lt_03D9
call _DZSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_0094
.L_0096:
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0093
.L_0098:
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0093
.L_009A:
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0093
.L_009C:
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0093
.L_009E:
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0093
.L_00A0:
push dword ptr [_Lt_03D9]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
jmp .L_0093
.L_0094:
mov eax, dword ptr [ebp-28]
add eax, 4294967251
cmp eax, 5
ja .L_0093
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_00A2+eax*4-180]
_.L_00A2:
.int .L_0096
.int .L_0098
.int .L_009A
.int .L_009C
.int .L_00A0
.int .L_009E
.L_0093:
jmp .L_007C
.L_0090:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _HUNESCAPEW@8
push eax
push offset _Lt_03E1
call _DWSTRASSIGN@8
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _HUNESCAPEW@8
push eax
push offset _Lt_03DA
call _DWSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_00A6
.L_00A8:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A5
.L_00A9:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A5
.L_00AA:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A5
.L_00AB:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A5
.L_00AC:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A5
.L_00AD:
push dword ptr [_Lt_03DA]
push dword ptr [_Lt_03E1]
call _fb_WstrCompare@8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp-28]
add eax, 4294967251
cmp eax, 5
ja .L_00A5
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_00AE+eax*4-180]
_.L_00AE:
.int .L_00A8
.int .L_00A9
.int .L_00AA
.int .L_00AB
.int .L_00AD
.int .L_00AC
.L_00A5:
.L_007C:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
push dword ptr [ebp+12]
call _ASTDELNODE@4
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_03D9,12
.balign 4
	.lcomm	_Lt_03E1,12
.balign 4
	.lcomm	_Lt_03DA,12

.section .text
.balign 16
_HTOSTR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00AF:
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
jmp .L_00B2
.L_00B4:
jmp .L_00B1
.L_00B5:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _RTLTOSTR@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00B7
push 0
push 0
push 20
call _ERRREPORT@12
push 0
call _ASTNEWCONSTSTR@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00B7:
.L_00B6:
jmp .L_00B1
.L_00B2:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .L_00B5
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00B8+eax*4-16]
_.L_00B8:
.int .L_00B4
.int .L_00B5
.int .L_00B5
.int .L_00B4
.int .L_00B5
.int .L_00B5
.int .L_00B5
.int .L_00B5
.int .L_00B5
.int .L_00B5
.int .L_00B5
.int .L_00B5
.int .L_00B5
.int .L_00B4
.int .L_00B4
.L_00B1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00BA
.L_00BC:
jmp .L_00B9
.L_00BD:
cmp dword ptr [ebp-4], 7
je .L_00BF
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _RTLTOSTR@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_00BE
.L_00BF:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _RTLTOWSTR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_00BE:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_00C1
push 0
push 0
push 20
call _ERRREPORT@12
push 0
call _ASTNEWCONSTSTR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_00C1:
.L_00C0:
jmp .L_00B9
.L_00BA:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .L_00BD
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00C2+eax*4-16]
_.L_00C2:
.int .L_00BC
.int .L_00BD
.int .L_00BD
.int .L_00BC
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BC
.int .L_00BC
.L_00B9:
.L_00B0:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCONSTBOP@20:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00C3:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C5
mov dword ptr [ebp-8], 24
jmp .L_03EE
.L_00C5:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_03EE:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00C8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_00CA
.L_00CC:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+24]
fadd qword ptr [eax+24]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+24]
jmp .L_00C9
.L_00CD:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fsub qword ptr [ebx+24]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+24]
jmp .L_00C9
.L_00CE:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [eax+24]
fmul qword ptr [ebx+24]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+24]
jmp .L_00C9
.L_00CF:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [ebx+24]
fdiv qword ptr [eax+24]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+24]
jmp .L_00C9
.L_00D0:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _pow
add esp, 16
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+24]
jmp .L_00C9
.L_00D1:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fld qword ptr [ebx+24]
fcomip st, st(1)
fstp st(0)
setnz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00C9
.L_00D2:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fld qword ptr [ebx+24]
fcomip st, st(1)
fstp st(0)
setz cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .L_00C9
.L_00D3:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fld qword ptr [ebx+24]
fcomip st, st(1)
fstp st(0)
setb al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00C9
.L_00D4:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fld qword ptr [ebx+24]
fcomip st, st(1)
fstp st(0)
seta cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .L_00C9
.L_00D5:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fld qword ptr [ebx+24]
fcomip st, st(1)
fstp st(0)
setae al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00C9
.L_00D6:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fld qword ptr [ebx+24]
fcomip st, st(1)
fstp st(0)
setbe cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .L_00C9
.L_00D7:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fld qword ptr [ebx+24]
fpatan
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+24]
jmp .L_00C9
.L_00D8:
mov ebx, dword ptr [ebp+20]
fld qword ptr [ebx+24]
fld qword ptr [_Lt_0381]
fcomip st, st(1)
fstp st(0)
jz .L_00DA
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+24]
fld qword ptr [_Lt_0381]
fcomip st, st(1)
fstp st(0)
setnz bl
shr ebx, 1
sbb ebx, ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .L_00D9
.L_00DA:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], 0
mov dword ptr [ecx+28], 0
.L_00D9:
jmp .L_00C9
.L_00DB:
mov ecx, dword ptr [ebp+20]
fld qword ptr [ecx+24]
fld qword ptr [_Lt_0381]
fcomip st, st(1)
fstp st(0)
jz .L_00DD
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], 4294967295
mov dword ptr [ecx+28], 4294967295
jmp .L_00DC
.L_00DD:
mov ecx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fld qword ptr [_Lt_0381]
fcomip st, st(1)
fstp st(0)
setnz cl
shr ecx, 1
sbb ecx, ecx
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
.L_00DC:
jmp .L_00C9
.L_00DE:
jmp .L_00C9
.L_00CA:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967268
cmp ebx, 36
ja .L_00DE
mov ebx, dword ptr [ebp-16]
jmp dword ptr [_.L_00DF+ebx*4-112]
_.L_00DF:
.int .L_00CC
.int .L_00CD
.int .L_00CE
.int .L_00CF
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00D8
.int .L_00DB
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00D0
.int .L_00DE
.int .L_00D2
.int .L_00D3
.int .L_00D4
.int .L_00D1
.int .L_00D6
.int .L_00D5
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00DE
.int .L_00D7
.L_00C9:
jmp .L_00C7
.L_00C8:
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
je .L_00E0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .L_00E2
.L_00E4:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
and al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00E1
.L_00E5:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
or bl, al
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .L_00E1
.L_00E6:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
xor al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00E1
.L_00E7:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
xor bl, al
xor bl, 1
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .L_00E1
.L_00E8:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
xor al, 1
or al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00E1
.L_00E9:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
cmp bl, al
setne bl
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .L_00E1
.L_00EA:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
cmp al, bl
sete al
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00E1
.L_00EB:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
test bl, bl
je .L_00EC
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+24]
or ecx, dword ptr [ebx+28]
cmp ecx, 0
setne cl
test cl, cl
setne cl
mov byte ptr [ebp-20], cl
jmp .L_03EF
.L_00EC:
mov byte ptr [ebp-20], 0
.L_03EF:
movzx ebx, byte ptr [ebp-20]
neg ebx
mov ecx, ebx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ebx
mov dword ptr [eax+28], ecx
jmp .L_00E1
.L_00EE:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+24]
or ecx, dword ptr [ebx+28]
cmp ecx, 0
setne cl
test cl, cl
jne .L_00EF
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
test bl, bl
setne bl
mov byte ptr [ebp-20], bl
jmp .L_03F0
.L_00EF:
mov byte ptr [ebp-20], 1
.L_03F0:
movzx ecx, byte ptr [ebp-20]
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .L_00E1
.L_00F1:
jmp .L_00E1
.L_00E2:
mov ecx, dword ptr [ebp-16]
add ecx, 4294967262
cmp ecx, 14
ja .L_00F1
mov ecx, dword ptr [ebp-16]
jmp dword ptr [_.L_00F2+ecx*4-136]
_.L_00F2:
.int .L_00E4
.int .L_00E5
.int .L_00EB
.int .L_00EE
.int .L_00E6
.int .L_00E7
.int .L_00E8
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00EA
.int .L_00F1
.int .L_00F1
.int .L_00E9
.L_00E1:
jmp .L_00C7
.L_00E0:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_00F4
mov dword ptr [ebp-12], 24
jmp .L_03F1
.L_00F4:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_03F1:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_00F3
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .L_00F7
.L_00F9:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
add dword ptr [ecx+24], esi
adc dword ptr [ecx+28], eax
jmp .L_00F6
.L_00FA:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
sub dword ptr [esi+24], ebx
sbb dword ptr [esi+28], ecx
jmp .L_00F6
.L_00FB:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
mov esi, dword ptr [ecx+28]
push esi
push eax
push dword ptr [ebx+28]
push dword ptr [ebx+24]
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
pop dword ptr [ebx+24]
pop dword ptr [ebx+28]
add esp, 8
jmp .L_00F6
.L_00FC:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ebx, dword ptr [esi+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov ecx, ebx
xchg eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .L_0408
mov edx, eax
xor eax, eax
.L_0408:
mov [esp+4], edx
xchg eax, [esp+0]
pop dword ptr [eax+24]
pop dword ptr [eax+28]
jmp .L_00F6
.L_00FD:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+24]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ecx, esi
mov eax, [esp+0]
mov edx, [esp+4]
shrd eax, edx, cl
sar  edx, cl
test cl, 32
jz .L_0409
mov eax, edx
sar edx, 31
.L_0409:
mov [esp+4], edx
mov [esp+0], eax
pop dword ptr [ebx+24]
pop dword ptr [ebx+28]
jmp .L_00F6
.L_00FE:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
and dword ptr [esi+24], ecx
and dword ptr [esi+28], eax
jmp .L_00F6
.L_00FF:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+24]
mov esi, dword ptr [eax+28]
or dword ptr [ecx+24], ebx
or dword ptr [ecx+28], esi
jmp .L_00F6
.L_0100:
mov ebx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [esi+24]
mov ecx, dword ptr [esi+28]
xor dword ptr [ebx+24], eax
xor dword ptr [ebx+28], ecx
jmp .L_00F6
.L_0101:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
xor dword ptr [eax+24], esi
xor dword ptr [eax+28], ebx
not dword ptr [eax+24]
not dword ptr [eax+28]
jmp .L_00F6
.L_0102:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
not dword ptr [esi+24]
not dword ptr [esi+28]
or dword ptr [esi+24], ecx
or dword ptr [esi+28], eax
jmp .L_00F6
.L_0103:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
mov esi, dword ptr [ecx+28]
cmp esi, dword ptr [eax+28]
mov ecx, -1
jne .L_040A
cmp ebx, dword ptr [eax+24]
jne .L_040A
.L_040B:
xor ecx, ecx
.L_040A:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
jmp .L_00F6
.L_0104:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
cmp ecx, dword ptr [eax+28]
mov ebx, -1
jne .L_040D
cmp esi, dword ptr [eax+24]
je .L_040C
.L_040D:
xor ebx, ebx
.L_040C:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
jmp .L_00F6
.L_0105:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+24]
mov ebx, dword ptr [esi+28]
cmp ebx, dword ptr [eax+28]
mov esi, -1
jg .L_040E
jl .L_040F
cmp ecx, dword ptr [eax+24]
ja .L_040E
.L_040F:
xor esi, esi
.L_040E:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .L_00F6
.L_0106:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
mov esi, dword ptr [ecx+28]
cmp esi, dword ptr [eax+28]
mov ecx, -1
jl .L_0410
jg .L_0411
cmp ebx, dword ptr [eax+24]
jb .L_0410
.L_0411:
xor ecx, ecx
.L_0410:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
jmp .L_00F6
.L_0107:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
cmp ecx, dword ptr [eax+28]
mov ebx, -1
jl .L_0412
jg .L_0413
cmp esi, dword ptr [eax+24]
jbe .L_0412
.L_0413:
xor ebx, ebx
.L_0412:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
jmp .L_00F6
.L_0108:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+24]
mov ebx, dword ptr [esi+28]
cmp ebx, dword ptr [eax+28]
mov esi, -1
jg .L_0414
jl .L_0415
cmp ecx, dword ptr [eax+24]
jae .L_0414
.L_0415:
xor esi, esi
.L_0414:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .L_00F6
.L_0109:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+28], 0
jne .L_0416
cmp dword ptr [ecx+24], 0
je .L_010A
.L_0416:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
mov eax, -1
jne .L_0417
cmp dword ptr [ecx+24], 0
jne .L_0417
.L_0418:
xor eax, eax
.L_0417:
mov dword ptr [ebp-20], eax
jmp .L_03F2
.L_010A:
mov dword ptr [ebp-20], 0
.L_03F2:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .L_00F6
.L_010C:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+28], 0
jne .L_0419
cmp dword ptr [ecx+24], 0
je .L_010D
.L_0419:
mov dword ptr [ebp-20], -1
jmp .L_03F3
.L_010D:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
mov eax, -1
jne .L_041A
cmp dword ptr [ecx+24], 0
jne .L_041A
.L_041B:
xor eax, eax
.L_041A:
mov dword ptr [ebp-20], eax
.L_03F3:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .L_00F6
.L_010F:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
jne .L_0111
cmp dword ptr [ecx+24], 0
jne .L_0111
.L_041C:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], 0
mov dword ptr [ecx+28], 0
push 0
push 0
push 100
call _ERRREPORT@12
jmp .L_0110
.L_0111:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 4294967295
mov eax, -1
jne .L_041E
cmp dword ptr [ecx+24], 4294967295
je .L_041D
.L_041E:
xor eax, eax
.L_041D:
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0113
mov dword ptr [ebp-20], 24
jmp .L_03F4
.L_0113:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_03F4:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+28], 2147483648
mov esi, -1
jne .L_0421
cmp dword ptr [eax+24], 0
je .L_0420
.L_0421:
xor esi, esi
.L_0420:
and ecx, esi
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ecx+4]
and esi, 480
je .L_0115
mov dword ptr [ebp-24], 24
jmp .L_03F5
.L_0115:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_03F5:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov esi, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+28], 4294967295
mov eax, -1
jne .L_0424
cmp dword ptr [ecx+24], 2147483648
je .L_0423
.L_0424:
xor eax, eax
.L_0423:
and esi, eax
or esi, dword ptr [ebp-32]
and esi, dword ptr [ebp-28]
je .L_0112
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], 0
mov dword ptr [esi+28], 0
cmp dword ptr [_AST+232], 0
jne .L_0118
push 0
push 1
push 0
push 25
call _ERRREPORTWARN@16
.L_0118:
.L_0117:
jmp .L_0110
.L_0112:
cmp dword ptr [ebp+8], 32
jne .L_0119
mov esi, dword ptr [ebp+24]
push dword ptr [esi+28]
push dword ptr [esi+24]
mov esi, dword ptr [ebp+20]
push dword ptr [esi+28]
push dword ptr [esi+24]
call ___divdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
jmp .L_0110
.L_0119:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call ___moddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
.L_0110:
jmp .L_00F6
.L_011A:
jmp .L_00F6
.L_00F7:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .L_011A
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_011B+eax*4-112]
_.L_011B:
.int .L_00F9
.int .L_00FA
.int .L_00FB
.int .L_011A
.int .L_010F
.int .L_010F
.int .L_00FE
.int .L_00FF
.int .L_0109
.int .L_010C
.int .L_0100
.int .L_0101
.int .L_0102
.int .L_00FC
.int .L_00FD
.int .L_011A
.int .L_011A
.int .L_0104
.int .L_0105
.int .L_0106
.int .L_0103
.int .L_0108
.int .L_0107
.L_00F6:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCONVERTRAWCONSTI@12
mov dword ptr [ebp+20], eax
jmp .L_00C7
.L_00F3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_011D
.L_011F:
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov ecx, dword ptr [edx+24]
mov esi, dword ptr [edx+28]
add dword ptr [eax+24], ecx
adc dword ptr [eax+28], esi
jmp .L_011C
.L_0120:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+24]
mov eax, dword ptr [esi+28]
sub dword ptr [ecx+24], edx
sbb dword ptr [ecx+28], eax
jmp .L_011C
.L_0121:
mov edx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
push ecx
push esi
push dword ptr [edx+28]
push dword ptr [edx+24]
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
pop dword ptr [edx+24]
pop dword ptr [edx+28]
add esp, 8
jmp .L_011C
.L_0122:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov edx, dword ptr [ecx+24]
push dword ptr [esi+28]
push dword ptr [esi+24]
mov ecx, edx
mov eax, [esp+0]
xchg edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .L_0425
mov edx, eax
xor eax, eax
.L_0425:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [esi+24]
pop dword ptr [esi+28]
jmp .L_011C
.L_0123:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [esi+24]
push dword ptr [edx+28]
push dword ptr [edx+24]
mov eax, [esp+0]
xchg edx, [esp+4]
shrd eax, edx, cl
shr  edx, cl
test cl, 32
jz .L_0426
mov eax, edx
xor edx, edx
.L_0426:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [edx+24]
pop dword ptr [edx+28]
jmp .L_011C
.L_0124:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+24]
mov esi, dword ptr [edx+28]
and dword ptr [ecx+24], eax
and dword ptr [ecx+28], esi
jmp .L_011C
.L_0125:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+24]
mov ecx, dword ptr [esi+28]
or dword ptr [eax+24], edx
or dword ptr [eax+28], ecx
jmp .L_011C
.L_0126:
mov edx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
xor dword ptr [edx+24], esi
xor dword ptr [edx+28], eax
jmp .L_011C
.L_0127:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [eax+24]
mov edx, dword ptr [eax+28]
xor dword ptr [esi+24], ecx
xor dword ptr [esi+28], edx
not dword ptr [esi+24]
not dword ptr [esi+28]
jmp .L_011C
.L_0128:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+24]
mov esi, dword ptr [edx+28]
not dword ptr [ecx+24]
not dword ptr [ecx+28]
or dword ptr [ecx+24], eax
or dword ptr [ecx+28], esi
jmp .L_011C
.L_0129:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
cmp ecx, dword ptr [esi+28]
mov eax, -1
jne .L_0427
cmp edx, dword ptr [esi+24]
jne .L_0427
.L_0428:
xor eax, eax
.L_0427:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], edx
mov dword ptr [eax+28], esi
jmp .L_011C
.L_012A:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+24]
mov eax, dword ptr [edx+28]
cmp eax, dword ptr [esi+28]
mov edx, -1
jne .L_042A
cmp ecx, dword ptr [esi+24]
je .L_0429
.L_042A:
xor edx, edx
.L_0429:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+24], ecx
mov dword ptr [edx+28], esi
jmp .L_011C
.L_012B:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
mov edx, dword ptr [ecx+28]
cmp edx, dword ptr [esi+28]
mov ecx, -1
ja .L_042B
jb .L_042C
cmp eax, dword ptr [esi+24]
ja .L_042B
.L_042C:
xor ecx, ecx
.L_042B:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .L_011C
.L_012C:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
cmp ecx, dword ptr [esi+28]
mov eax, -1
jb .L_042D
ja .L_042E
cmp edx, dword ptr [esi+24]
jb .L_042D
.L_042E:
xor eax, eax
.L_042D:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], edx
mov dword ptr [eax+28], esi
jmp .L_011C
.L_012D:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+24]
mov eax, dword ptr [edx+28]
cmp eax, dword ptr [esi+28]
mov edx, -1
jb .L_042F
ja .L_0430
cmp ecx, dword ptr [esi+24]
jbe .L_042F
.L_0430:
xor edx, edx
.L_042F:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+24], ecx
mov dword ptr [edx+28], esi
jmp .L_011C
.L_012E:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
mov edx, dword ptr [ecx+28]
cmp edx, dword ptr [esi+28]
mov ecx, -1
ja .L_0431
jb .L_0432
cmp eax, dword ptr [esi+24]
jae .L_0431
.L_0432:
xor ecx, ecx
.L_0431:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .L_011C
.L_012F:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+28], 0
jne .L_0433
cmp dword ptr [eax+24], 0
je .L_0130
.L_0433:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+28], 0
mov esi, -1
jne .L_0434
cmp dword ptr [eax+24], 0
jne .L_0434
.L_0435:
xor esi, esi
.L_0434:
mov dword ptr [ebp-20], esi
jmp .L_03F8
.L_0130:
mov dword ptr [ebp-20], 0
.L_03F8:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .L_011C
.L_0132:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+28], 0
jne .L_0436
cmp dword ptr [eax+24], 0
je .L_0133
.L_0436:
mov dword ptr [ebp-20], -1
jmp .L_03F9
.L_0133:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+28], 0
mov esi, -1
jne .L_0437
cmp dword ptr [eax+24], 0
jne .L_0437
.L_0438:
xor esi, esi
.L_0437:
mov dword ptr [ebp-20], esi
.L_03F9:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .L_011C
.L_0135:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+28], 0
jne .L_0137
cmp dword ptr [eax+24], 0
jne .L_0137
.L_0439:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], 0
mov dword ptr [eax+28], 0
push 0
push 0
push 100
call _ERRREPORT@12
jmp .L_0136
.L_0137:
cmp dword ptr [ebp+8], 32
jne .L_0138
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call ___udivdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
jmp .L_0136
.L_0138:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call ___umoddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
.L_0136:
jmp .L_011C
.L_0139:
jmp .L_011C
.L_011D:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .L_0139
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_013A+eax*4-112]
_.L_013A:
.int .L_011F
.int .L_0120
.int .L_0121
.int .L_0139
.int .L_0135
.int .L_0135
.int .L_0124
.int .L_0125
.int .L_012F
.int .L_0132
.int .L_0126
.int .L_0127
.int .L_0128
.int .L_0122
.int .L_0123
.int .L_0139
.int .L_0139
.int .L_012A
.int .L_012B
.int .L_012C
.int .L_0129
.int .L_012E
.int .L_012D
.L_011C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCONVERTRAWCONSTI@12
mov dword ptr [ebp+20], eax
.L_00C7:
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
.L_00C4:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKPOINTER@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_013B:
cmp dword ptr [ebp+16], 0
je .L_013E
mov dword ptr [ebp-4], 0
jmp .L_013C
jmp .L_013D
.L_013E:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_013F
mov dword ptr [ebp-8], 24
jmp .L_043A
.L_013F:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_043A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 4
je .L_0144
.L_0145:
cmp dword ptr [ebp-12], 7
jne .L_0143
.L_0144:
mov dword ptr [ebp-4], 0
jmp .L_013C
.L_0143:
.L_0141:
.L_013D:
cmp dword ptr [ebp+8], 28
je .L_0148
.L_0149:
cmp dword ptr [ebp+8], 29
jne .L_0147
.L_0148:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0146
.L_0147:
cmp dword ptr [ebp+8], 36
je .L_014B
.L_014C:
cmp dword ptr [ebp+8], 37
jne .L_014A
.L_014B:
mov dword ptr [ebp-4], -1
jmp .L_0146
.L_014A:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_014D:
.L_0146:
.L_013C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HDOPOINTERARITH@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_014E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_0150
mov dword ptr [ebp-20], 24
jmp .L_043D
.L_0150:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_043D:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
je .L_0153
jmp .L_014F
jmp .L_0152
.L_0153:
cmp dword ptr [ebp-8], 4
je .L_0156
.L_0157:
cmp dword ptr [ebp-8], 7
jne .L_0155
.L_0156:
jmp .L_014F
.L_0155:
.L_0154:
.L_0152:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call _SYMBCALCDEREFLEN@8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .L_0159
jl .L_043F
cmp dword ptr [ebp-16], 0
ja .L_0159
.L_043F:
jmp .L_014F
.L_0159:
.L_0158:
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
je .L_015B
cmp dword ptr [ebp+8], 29
jne .L_015D
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
je .L_015F
jmp .L_014F
.L_015F:
.L_015E:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 29
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
push 32
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
.L_015D:
.L_015C:
jmp .L_014F
.L_015B:
.L_015A:
cmp dword ptr [ebp-8], 8
je .L_0161
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
.L_0161:
.L_0160:
cmp dword ptr [ebp+8], 28
je .L_0164
.L_0165:
cmp dword ptr [ebp+8], 29
jne .L_0163
.L_0164:
cmp dword ptr [ebp+8], 29
jne .L_0166
mov eax, dword ptr [ebp+20]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_043E
.L_0166:
mov dword ptr [ebp-24], 0
.L_043E:
cmp dword ptr [ebp-24], 0
je .L_0169
jmp .L_014F
.L_0169:
.L_0168:
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .L_0162
.L_0163:
.L_016A:
.L_0162:
.L_014F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCONVERTUDT_L@20:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_016B:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_016E
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0170
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_016C
.L_0170:
.L_016F:
.L_016E:
.L_016D:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0172
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0174
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_016C
.L_0174:
.L_0173:
.L_0172:
.L_0171:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0176
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .L_016C
.L_0176:
.L_0175:
mov dword ptr [ebp-4], 0
.L_016C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCONVERTUDT_R@20:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0177:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_017A
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_017C
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0178
.L_017C:
.L_017B:
.L_017A:
.L_0179:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_017E
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0180
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0178
.L_0180:
.L_017F:
.L_017E:
.L_017D:
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0182
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .L_0178
.L_0182:
.L_0181:
mov dword ptr [ebp-4], 0
.L_0178:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKDEREFWCHARPTR@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0183:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .L_0186
jmp .L_0184
.L_0186:
.L_0185:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0188
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 17
jne .L_018A
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_018C
jmp .L_0184
.L_018C:
.L_018B:
.L_018A:
.L_0189:
.L_0188:
.L_0187:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [_ENV+272]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
.L_0184:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCONVOPERAND@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_018D:
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
je .L_018F
mov dword ptr [ebp-4], 24
jmp .L_0443
.L_018F:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0443:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [eax], ecx
push 0
push 0
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx]
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call _ASTNEWCONV@20
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.L_018E:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HGETINTEGERORBIGGER@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0191:
cmp dword ptr [ebp+8], 9
je .L_0195
.L_0196:
cmp dword ptr [ebp+8], 14
jne .L_0194
.L_0195:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0192
jmp .L_0193
.L_0194:
cmp dword ptr [ebp+8], 13
jne .L_0197
.L_0198:
call _FBIS64BIT@0
test eax, eax
jne .L_019A
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0192
.L_019A:
.L_0199:
.L_0197:
.L_0193:
mov dword ptr [ebp-4], 8
.L_0192:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HISCONSIDEREDBOOLEAN@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_019B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
je .L_019D
push dword ptr [ebp+8]
call _ASTISCONST0ORMINUS1@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0444
.L_019D:
mov dword ptr [ebp-8], -1
.L_0444:
cmp dword ptr [ebp-8], 0
jne .L_019F
push dword ptr [ebp+8]
call _ASTISRELATIONALBOP@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_0445
.L_019F:
mov dword ptr [ebp-12], -1
.L_0445:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_019C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSHOULDWARNABOUTMIXEDBOOL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01A1:
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
je .L_01A4
push dword ptr [ebp+8]
call _ASTISCONST0ORMINUS1@4
not eax
test eax, eax
je .L_01A5
push dword ptr [ebp+12]
call _HISCONSIDEREDBOOLEAN@4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0448
.L_01A5:
mov dword ptr [ebp-8], 0
.L_0448:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A2
.L_01A4:
.L_01A3:
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
je .L_01A8
push dword ptr [ebp+8]
call _HISCONSIDEREDBOOLEAN@4
not eax
test eax, eax
je .L_01A9
push dword ptr [ebp+12]
call _ASTISCONST0ORMINUS1@4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0449
.L_01A9:
mov dword ptr [ebp-8], 0
.L_0449:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A2
.L_01A8:
.L_01A7:
mov dword ptr [ebp-4], 0
.L_01A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 8
_Lt_037D:	.quad	0x4000000000000000
.balign 8
_Lt_0381:	.quad	0x0000000000000000
