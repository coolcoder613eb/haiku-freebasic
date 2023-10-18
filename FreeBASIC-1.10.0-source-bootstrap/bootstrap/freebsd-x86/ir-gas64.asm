	.intel_syntax noprefix

.section .text
.balign 16

.globl DBG_FILENAME
DBG_FILENAME:
push ebp
mov ebp, esp
sub esp, 12
.L_024A:
push -1
lea eax, [CTXDBG+8]
push eax
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_024D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
push 0
push 132
push dword ptr [ebp+8]
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [CTXDBG+8]
push eax
call fb_StrAssign
add esp, 20
.L_024D:
.L_024C:
.L_024B:
mov esp, ebp
pop ebp
ret
.balign 16

.globl REG_FINDREAL
REG_FINDREAL:
push ebp
mov ebp, esp
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.L_0428:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-76], 0
.L_042D:
mov eax, dword ptr [ebp-76]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [REGHANDLE+eax*4], ebx
jne .L_042F
mov ebx, dword ptr [ebp-76]
mov dword ptr [ebp-4], ebx
jmp .L_0429
.L_042F:
.L_042E:
.L_042B:
inc dword ptr [ebp-76]
.L_042A:
cmp dword ptr [ebp-76], 15
jle .L_042D
.L_042C:
mov dword ptr [ebp-12], 0
cmp dword ptr [CTX+212], 0
jle .L_0431
lea ebx, [CTX+156]
push ebx
call FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-12], eax
.L_0432:
cmp dword ptr [ebp-12], 0
je .L_0433
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_0435
jmp .L_0433
.L_0435:
.L_0434:
push dword ptr [ebp-12]
call FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0432
.L_0433:
.L_0431:
.L_0430:
cmp dword ptr [ebp-12], 0
jne .L_0437
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 48
push offset Lt_043B
push -1
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push 35
push offset Lt_043A
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-4], 17
jmp .L_0429
.L_0437:
.L_0436:
push -1
push dword ptr [ebp+8]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
call fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset Lt_041F
push -1
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+4], -2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0429:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl REG_TEMPO
REG_TEMPO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0445:
mov dword ptr [ebp-8], 0
inc dword ptr [Lt_0447]
push -1
push dword ptr [Lt_0447]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [REGSTRQ+eax*4]
mov dword ptr [ebp-4], ebx
.L_0446:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0447:
.long 9999999

.section .text
.balign 16

.globl SAVE_CALL
SAVE_CALL:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_148A:
cmp dword ptr [ebp+12], 0
je .L_148D
mov eax, dword ptr [ebp+16]
mov dword ptr [REGHANDLE+eax*4], -2
.L_148D:
call REG_SAVE
cmp dword ptr [CTX+80], 0
jne .L_148F
mov dword ptr [CTX+80], 1
.L_148F:
.L_148E:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_1490
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_149D
.L_1490:
mov dword ptr [ebp-4], 0
.L_149D:
cmp dword ptr [ebp-4], 0
je .L_1493
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 5
push offset Lt_1495
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset Lt_1494
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
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
lea eax, [ebp-40]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1492
.L_1493:
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset Lt_1494
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_1492:
cmp dword ptr [ebp+12], 0
je .L_149C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+12]
mov dword ptr [REGHANDLE+ebx*4], ecx
.L_149C:
.L_148B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__irzgas64:
.L_0002:
.L_0003:
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
_ZN13ASM64_CONTEXTC1Ev:
push ebp
mov ebp, esp
push ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 68
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 80
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 84
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 88
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 92
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 96
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 104
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 112
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 120
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 128
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 132
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 136
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 140
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 144
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 148
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 152
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 153
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 156
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 14
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 212
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 216
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 220
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 224
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 228
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 232
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 236
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 240
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 244
mov dword ptr [ebx], 0
.L_0067:
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN13ASM64_CONTEXTaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_0069:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 8
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 20
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 20
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 32
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 32
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 44
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 44
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 56
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 56
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 68
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 68
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 80
mov ebx, dword ptr [ebp+8]
add ebx, 80
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 84
mov ebx, dword ptr [ebp+8]
add ebx, 84
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 88
mov ebx, dword ptr [ebp+8]
add ebx, 88
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 92
mov ebx, dword ptr [ebp+8]
add ebx, 92
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 96
mov ebx, dword ptr [ebp+8]
add ebx, 96
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
mov esi, dword ptr [ebp+12]
add esi, 104
mov ecx, dword ptr [ebp+8]
add ecx, 104
mov eax, dword ptr [esi]
mov ebx, dword ptr [esi+4]
mov dword ptr [ecx], eax
mov dword ptr [ecx+4], ebx
mov eax, dword ptr [ebp+12]
add eax, 112
mov ebx, dword ptr [ebp+8]
add ebx, 112
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
mov esi, dword ptr [ebp+12]
add esi, 120
mov ecx, dword ptr [ebp+8]
add ecx, 120
mov eax, dword ptr [esi]
mov ebx, dword ptr [esi+4]
mov dword ptr [ecx], eax
mov dword ptr [ecx+4], ebx
mov eax, dword ptr [ebp+12]
add eax, 128
mov ebx, dword ptr [ebp+8]
add ebx, 128
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 132
mov ebx, dword ptr [ebp+8]
add ebx, 132
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 136
mov ebx, dword ptr [ebp+8]
add ebx, 136
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 140
mov ebx, dword ptr [ebp+8]
add ebx, 140
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 144
mov ebx, dword ptr [ebp+8]
add ebx, 144
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 148
mov ebx, dword ptr [ebp+8]
add ebx, 148
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 152
mov ebx, dword ptr [ebp+8]
add ebx, 152
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 153
mov ebx, dword ptr [ebp+8]
add ebx, 153
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
add eax, 156
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 156
lea ecx, [eax]
push ecx
push edi
mov edi, ebx
mov esi, ecx
mov ecx, 14
rep movsd
pop edi
pop ecx
mov ecx, dword ptr [ebp+12]
add ecx, 212
mov ebx, dword ptr [ebp+8]
add ebx, 212
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 216
mov ebx, dword ptr [ebp+8]
add ebx, 216
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 220
mov ebx, dword ptr [ebp+8]
add ebx, 220
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 224
mov ebx, dword ptr [ebp+8]
add ebx, 224
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 228
mov ebx, dword ptr [ebp+8]
add ebx, 228
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 232
mov ebx, dword ptr [ebp+8]
add ebx, 232
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 236
mov ebx, dword ptr [ebp+8]
add ebx, 236
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 240
mov ebx, dword ptr [ebp+8]
add ebx, 240
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 244
mov ebx, dword ptr [ebp+8]
add ebx, 244
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.L_006A:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN13ASM64_CONTEXTD1Ev:
push ebp
mov ebp, esp
push ebx
.L_006D:
.L_006E:
mov eax, dword ptr [ebp+8]
add eax, 68
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 56
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 44
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 32
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 20
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN6DBGCTXC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 48
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
.L_006F:
.L_0070:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN6DBGCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_0071:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 8
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 20
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 20
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov esi, dword ptr [ecx]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], eax
.L_0072:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN6DBGCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0075:
.L_0076:
mov eax, dword ptr [ebp+8]
add eax, 20
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN7TDBGSTRC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
.L_0078:
.L_0079:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN7TDBGSTRaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_007A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
push 0
push -1
mov esi, dword ptr [ebp+12]
add esi, 8
lea ecx, [esi]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 8
lea esi, [ecx]
push esi
call fb_StrAssign
add esp, 20
.L_007B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN7TDBGSTRD1Ev:
push ebp
mov ebp, esp
push ebx
.L_007E:
.L_007F:
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8TDBGSTABC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
.L_0080:
.L_0081:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8TDBGSTABaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_0082:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
push 0
push -1
mov esi, dword ptr [ebp+12]
add esi, 8
lea ecx, [esi]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 8
lea esi, [ecx]
push esi
call fb_StrAssign
add esp, 20
.L_0083:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8TDBGSTABD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0086:
.L_0087:
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
CHECK_OPTIM:
push ebp
mov ebp, esp
sub esp, 216
push ebx
push esi
.L_00E7:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_00EA
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_00EA:
.L_00E9:
cmp dword ptr [Lt_1BE2], 2
jne .L_00EC
push 2
push offset Lt_00ED
push -1
push offset Lt_1BDF
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_00F0
push 3
push offset Lt_00F1
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
.L_00F0:
.L_00EF:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_00EC:
.L_00EB:
push 0
push -1
push 3
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrInit
add esp, 20
push 4
push offset Lt_00F5
push -1
lea eax, [ebp-72]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00F4
.L_00F6:
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset Lt_00F7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-56], eax
push 0
push -1
mov eax, dword ptr [ebp-56]
sub eax, dword ptr [ebp-52]
dec eax
push eax
mov eax, dword ptr [ebp-52]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F9
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_00FB
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_00FA
.L_00FB:
add dword ptr [ebp-52], -2
.L_00FA:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00FD
push 0
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_00FE
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_00FD:
.L_00FC:
jmp .L_00F2
.L_00F4:
push 4
push offset Lt_0101
push -1
lea eax, [ebp-72]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0100
.L_0102:
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset Lt_00F7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-56], eax
push 0
push -1
mov eax, dword ptr [ebp-56]
sub eax, dword ptr [ebp-52]
dec eax
push eax
mov eax, dword ptr [ebp-52]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F9
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0104
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_0103
.L_0104:
add dword ptr [ebp-52], -2
.L_0103:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 7
push offset Lt_0105
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0107
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_0107:
.L_0106:
mov dword ptr [Lt_1BE2], 1
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-60]
mov dword ptr [Lt_1BE3], eax
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
jmp .L_00F2
.L_0100:
push 4
push offset Lt_0109
push -1
lea eax, [ebp-72]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0108
.L_010A:
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset Lt_00F7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-56], eax
push 0
push -1
mov eax, dword ptr [ebp-56]
sub eax, dword ptr [ebp-52]
dec eax
push eax
mov eax, dword ptr [ebp-52]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F9
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_010C
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_010B
.L_010C:
add dword ptr [ebp-52], -2
.L_010B:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push -1
push offset Lt_1BDF
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_010E
push 3
push offset Lt_010F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset Lt_0112
push -1
push -1
push offset Lt_1BE0
push -1
push 5
push offset Lt_0111
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_010F
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
jmp .L_010D
.L_010E:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 2
mov eax, dword ptr [ebp-60]
mov dword ptr [Lt_1BE3], eax
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_010D:
jmp .L_00F2
.L_0108:
push 4
push offset Lt_011A
push -1
lea eax, [ebp-72]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0119
.L_011B:
push -1
push offset Lt_1BDF
call fb_StrLen
add esp, 8
test eax, eax
je .L_011D
cmp dword ptr [Lt_1BE2], 1
je .L_011F
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset Lt_00F7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-56], eax
push 0
push -1
mov eax, dword ptr [ebp-56]
sub eax, dword ptr [ebp-52]
dec eax
push eax
mov eax, dword ptr [ebp-52]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F9
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0121
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_0120
.L_0121:
add dword ptr [ebp-52], -2
.L_0120:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 114
jne .L_0124
push -1
push offset Lt_1BDF
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_1BE0]
movzx ecx, byte ptr [ebx]
cmp ecx, 114
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0126
push 3
push offset Lt_0127
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset Lt_012A
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
push offset Lt_1BE0
push -1
push 5
push offset Lt_0128
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0127
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .L_0125
.L_0126:
push -1
push offset Lt_1BDF
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 1
push offset Lt_0134
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_1BE0
push 1
call fb_StrInstr
add esp, 12
and ebx, eax
je .L_0133
push 3
push offset Lt_0135
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset Lt_0136
push -1
push -1
push offset Lt_1BE0
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset Lt_0128
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0135
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_0133:
.L_0125:
.L_0124:
.L_0123:
.L_011F:
.L_011E:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
.L_011D:
.L_011C:
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
jmp .L_00F2
.L_0119:
push 0
push -1
push 4
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrInit
add esp, 20
push 5
push offset Lt_0143
push -1
lea eax, [ebp-84]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0147
.L_0148:
push 5
push offset Lt_0144
push -1
lea eax, [ebp-84]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0147
.L_0149:
push 5
push offset Lt_0145
push -1
lea eax, [ebp-84]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0147
.L_014A:
push 5
push offset Lt_0146
push -1
lea eax, [ebp-84]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0142
.L_0147:
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset Lt_00F7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-56], eax
push 0
push -1
mov eax, dword ptr [ebp-56]
sub eax, dword ptr [ebp-52]
dec eax
push eax
mov eax, dword ptr [ebp-52]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00F9
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_014C
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_014B
.L_014C:
add dword ptr [ebp-52], -2
.L_014B:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
push -1
push offset Lt_1BDF
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_014E
push 2
push offset Lt_014F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_1BE0
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0151
push 3
push offset Lt_0152
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset Lt_0153
push -1
push -1
push offset Lt_1BE0
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_00F7
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0152
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_0151:
.L_0150:
.L_014E:
.L_014D:
.L_0142:
.L_0140:
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_013F:
.L_00F2:
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 7
push offset Lt_015D
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_015F
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_015F:
push 6
push offset Lt_0160
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0162
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_0162:
push 6
push offset Lt_0163
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0165
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_0165:
cmp dword ptr [Lt_1BE2], 1
jne .L_0167
push 2
push offset Lt_0168
push -1
push -1
push offset Lt_1BDF
push 2
push offset Lt_0134
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
lea eax, [ebp-12]
push eax
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_016C
mov eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
cmp ebx, 114
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-24]
movzx ecx, byte ptr [ebx]
cmp ecx, 101
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
push 1
push 1
lea ebx, [ebp-24]
push ebx
mov ebx, eax
call fb_RIGHT
add esp, 8
push eax
call fb_ASC
add esp, 8
cmp eax, 48
setae cl
shr ecx, 1
sbb ecx, ecx
push 1
push 1
lea eax, [ebp-24]
push eax
mov esi, ecx
call fb_RIGHT
add esp, 8
push eax
call fb_ASC
add esp, 8
cmp eax, 57
setbe cl
shr ecx, 1
sbb ecx, ecx
and esi, ecx
or ebx, esi
je .L_016F
push 3
push offset Lt_0170
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00F7
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-12]
push eax
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
push 1
lea eax, [ebp-12]
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0129
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset Lt_0171
push -1
push -1
lea ebx, [ebp-48]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [CTX]
imul ebx, 3
push ebx
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0170
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_016F:
.L_016E:
jmp .L_016B
.L_016C:
push -1
push offset Lt_1BDF
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
movzx esi, byte ptr [ebx]
cmp esi, 114
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0178
push 3
push offset Lt_0179
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 0
push 5
push offset Lt_017A
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0129
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset Lt_017B
push -1
push -1
lea ebx, [ebp-48]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [CTX]
imul ebx, 3
push ebx
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0179
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .L_0177
.L_0178:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 114
jne .L_0183
push -1
push 2
push offset Lt_0168
push -1
push -1
push offset Lt_1BDF
push 2
push offset Lt_0134
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-112], eax
jmp .L_1BDE
.L_0183:
mov dword ptr [ebp-112], 0
.L_1BDE:
cmp dword ptr [ebp-112], 0
je .L_0186
push 3
push offset Lt_0187
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00F7
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0129
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset Lt_0188
push -1
push -1
lea ebx, [ebp-48]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [CTX]
imul ebx, 3
push ebx
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0187
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .L_0185
.L_0186:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-60]
mov dword ptr [Lt_1BE3], eax
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_0185:
.L_0177:
.L_016B:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_1BE2], 0
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_0167:
.L_0166:
push -1
push offset Lt_1BDF
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_018F
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0191
push 0
push -1
push -1
push dword ptr [ebp+8]
push 5
push offset Lt_0192
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .L_0190
.L_0191:
push 1
push offset Lt_0000
push -1
push offset Lt_1BE0
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0195
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset Lt_1BE0
push -1
push 12
push offset Lt_019E
push -1
push -1
push offset Lt_1BDF
push -1
push 12
push offset Lt_019D
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 8
push offset Lt_019C
push -1
push -1
lea eax, [ebp-12]
push eax
push 40
push offset Lt_019B
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00E8
.L_0195:
.L_0194:
mov eax, dword ptr [Lt_1BE0]
movzx ebx, byte ptr [eax]
cmp ebx, 114
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
movzx esi, byte ptr [ebx+3]
cmp esi, 100
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-12]
movzx esi, byte ptr [ebx]
cmp esi, 101
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01AA
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_1BDF
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_01AC
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 120
jne .L_01AF
push 6
push offset Lt_01B0
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B2
push 0
push 5
push offset Lt_01B3
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
jmp .L_01B1
.L_01B2:
push 0
push 5
push offset Lt_01B4
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
.L_01B1:
.L_01AF:
.L_01AE:
jmp .L_01AB
.L_01AC:
push 3
push offset Lt_01B5
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 5
push offset Lt_01B4
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 5
push offset Lt_01B3
push -1
lea ebx, [ebp-36]
push ebx
mov ebx, eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01B7
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
jmp .L_01B6
.L_01B7:
push 6
push offset Lt_0160
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B8
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
.L_01B8:
.L_01B6:
.L_01AB:
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset Lt_01B9
push -1
push -1
push offset Lt_1BE0
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset Lt_00F7
push -1
push -1
push offset Lt_1BE1
push -1
push -1
push 32
mov ebx, dword ptr [CTX]
imul ebx, 3
push ebx
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_01B5
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01A9
.L_01AA:
mov eax, dword ptr [Lt_1BE0]
movzx ebx, byte ptr [eax]
cmp ebx, 120
jne .L_01C3
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_1BDF
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_01C5
push 6
push offset Lt_01B0
push -1
push offset Lt_1BE1
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01C7
push 0
push 5
push offset Lt_01B3
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01C6
.L_01C7:
push 0
push 5
push offset Lt_01B4
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
.L_01C6:
jmp .L_01C4
.L_01C5:
push 3
push offset Lt_01C8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push 5
push offset Lt_01B4
push -1
push offset Lt_1BE1
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01CA
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-24]
push eax
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_01CC
push 0
push 6
push offset Lt_01CD
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01CB
.L_01CC:
push 0
push 5
push offset Lt_01B4
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
.L_01CB:
jmp .L_01C9
.L_01CA:
push 5
push offset Lt_01B3
push -1
push offset Lt_1BE1
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01CE
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 114
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
movzx esi, byte ptr [ebx]
cmp esi, 101
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01D0
push 0
push 5
push offset Lt_01B3
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_01CF
.L_01D0:
push 0
push 6
push offset Lt_01B0
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
.L_01CF:
jmp .L_01C9
.L_01CE:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-180]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-180]
push ebx
call HWRITEASM64
add esp, 8
lea ebx, [ebp-180]
push ebx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea ebx, [ebp-36]
push ebx
push 53
push offset Lt_01D3
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ebx, [ebp-192]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
.L_01C9:
.L_01C4:
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset Lt_01D7
push -1
push -1
push offset Lt_1BE0
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset Lt_00F7
push -1
push -1
lea ebx, [ebp-36]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [CTX]
imul ebx, 3
push ebx
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_01C8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01A9
.L_01C3:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 114
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
movzx esi, byte ptr [ebx]
cmp esi, 101
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
push -1
lea ebx, [ebp-24]
push ebx
push -1
push offset Lt_1BDF
mov ebx, eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_1BDF
push 1
call fb_StrInstr
add esp, 12
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01E1
push 3
push offset Lt_01E2
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset Lt_01E3
push -1
push -1
push offset Lt_1BE0
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset Lt_00F7
push -1
push -1
push offset Lt_1BE1
push -1
push -1
push 32
mov ebx, dword ptr [CTX]
imul ebx, 3
push ebx
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_01E2
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01A9
.L_01E1:
mov eax, dword ptr [Lt_1BE0]
movzx ebx, byte ptr [eax]
cmp ebx, 114
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_1BE0]
movzx esi, byte ptr [ebx]
cmp esi, 101
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
push -1
lea ebx, [ebp-24]
push ebx
push -1
push offset Lt_1BDF
mov ebx, eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01ED
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_1BDF
push 1
call fb_StrInstr
add esp, 12
test eax, eax
jne .L_01EF
push 3
push offset Lt_01F0
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [Lt_1BE3]
lea eax, [CTX+56]
push eax
call fb_StrAssignMid
add esp, 16
.L_01EF:
.L_01EE:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 120
jne .L_01F2
mov ebx, dword ptr [Lt_1BE0]
movzx eax, byte ptr [ebx]
cmp eax, 101
jne .L_01F4
push 0
push 5
push offset Lt_01B3
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01F3
.L_01F4:
push 0
push 5
push offset Lt_01B4
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
.L_01F3:
.L_01F2:
.L_01F1:
push -1
lea eax, [CTX+56]
push eax
call fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 11
push offset Lt_01F5
push -1
push -1
push offset Lt_1BE0
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset Lt_00F7
push -1
push -1
lea ebx, [ebp-36]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [CTX]
imul ebx, 3
push ebx
call fb_StrFill1
add esp, 8
push eax
push -1
push 2
push offset Lt_0110
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_01F0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_1BE0
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_01ED:
.L_01A9:
.L_0190:
.L_018F:
.L_018E:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset Lt_1BDF
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
push offset Lt_1BE0
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset Lt_1BE1
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-60]
mov dword ptr [Lt_1BE3], eax
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_00E8:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_1BDF,12
.balign 4
	.lcomm	Lt_1BE0,12
.balign 4
	.lcomm	Lt_1BE1,12
.balign 4
	.lcomm	Lt_1BE3,4
.balign 4
	.lcomm	Lt_1BE2,4

.section .text
.balign 16
REG_FREEABLE:
push ebp
mov ebp, esp
sub esp, 116
push ebx
.L_01FF:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
push 3
push dword ptr [ebp+8]
call fb_TRIM
add esp, 4
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push 4
push offset Lt_0201
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0203
push 4
push offset Lt_0202
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_1BFC
.L_0203:
mov dword ptr [ebp-24], -1
.L_1BFC:
cmp dword ptr [ebp-24], 0
jne .L_0206
push 4
push offset Lt_0205
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_1BFD
.L_0206:
mov dword ptr [ebp-28], -1
.L_1BFD:
cmp dword ptr [ebp-28], 0
jne .L_0209
push 4
push offset Lt_0208
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
jmp .L_1BFE
.L_0209:
mov dword ptr [ebp-32], -1
.L_1BFE:
cmp dword ptr [ebp-32], 0
je .L_020C
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
jne .L_020E
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0200
.L_020E:
.L_020D:
jmp .L_020B
.L_020C:
lea eax, [ebp-20]
push eax
push 79
push offset Lt_020F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call fb_StrInstr
add esp, 12
test eax, eax
jne .L_0211
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0200
.L_0211:
.L_020B:
mov dword ptr [ebp-36], 1
.L_0215:
mov eax, dword ptr [ebp-36]
cmp dword ptr [REGHANDLE+eax*4], -3
jne .L_0217
jmp .L_0213
.L_0217:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -1
push 2
push offset Lt_00F8
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRQ+eax*4]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_021A
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
jmp .L_0219
.L_021A:
push 2
push offset Lt_00F8
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRD+eax*4]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_021B
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
jmp .L_0219
.L_021B:
push 2
push offset Lt_00F8
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRW+eax*4]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_021D
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
jmp .L_0219
.L_021D:
push 2
push offset Lt_00F8
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRB+eax*4]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_021F
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.L_021F:
.L_0219:
cmp dword ptr [ebp-4], -1
je .L_0222
push 4
push offset Lt_0223
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0225
push 4
push offset Lt_0224
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-88], eax
jmp .L_1BFF
.L_0225:
mov dword ptr [ebp-88], -1
.L_1BFF:
cmp dword ptr [ebp-88], 0
jne .L_0228
push 4
push offset Lt_0227
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-92], eax
jmp .L_1C00
.L_0228:
mov dword ptr [ebp-92], -1
.L_1C00:
cmp dword ptr [ebp-92], 0
je .L_022B
jmp .L_0213
jmp .L_022A
.L_022B:
push 4
push offset Lt_011A
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_022C
mov eax, dword ptr [ebp-4]
mov dword ptr [CTX+132], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [REGHANDLE+eax*4]
mov dword ptr [CTX+136], ebx
mov dword ptr [CTX+140], 2
mov ebx, dword ptr [ebp-4]
mov dword ptr [REGHANDLE+ebx*4], -2
jmp .L_0213
jmp .L_022A
.L_022C:
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [REGSTRQ+ebx*4]
push -1
push 3
push offset Lt_0129
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [REGSTRQ+ebx*4]
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea ebx, [ebp-104]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0230
mov eax, dword ptr [ebp-4]
mov dword ptr [REGHANDLE+eax*4], -2
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0200
.L_0230:
.L_022F:
.L_022A:
.L_0222:
.L_0221:
cmp dword ptr [ebp-4], -1
jne .L_0232
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRQ+eax*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0234
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
jmp .L_0233
.L_0234:
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRD+eax*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0235
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
jmp .L_0233
.L_0235:
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRW+eax*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0236
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
jmp .L_0233
.L_0236:
mov eax, dword ptr [ebp-36]
push dword ptr [REGSTRB+eax*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0237
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
.L_0237:
.L_0233:
.L_0232:
.L_0231:
cmp dword ptr [ebp-8], -1
je .L_0239
mov eax, dword ptr [ebp-8]
mov dword ptr [REGHANDLE+eax*4], -2
.L_0239:
.L_0238:
.L_0213:
inc dword ptr [ebp-36]
.L_0212:
cmp dword ptr [ebp-36], 15
jle .L_0215
.L_0214:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0200:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
PW2:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_023A:
fild dword ptr [ebp+8]
fldln2
fxch
fyl2x
fdiv qword ptr [Lt_1C06]
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
fld st(0)
frndint
fsubp
fldcw [esp]
add esp, 4
fld qword ptr [Lt_1C07]
fcomip st, st(1)
fstp st(0)
jnz .L_023D
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [Lt_1C08+4]
push dword ptr [Lt_1C08]
call pow
add esp, 16
fistp dword ptr [ebp-4]
jmp .L_023B
jmp .L_023C
.L_023D:
fld qword ptr [ebp-12]
sub esp, 8
fld st(0)
fistp qword ptr [esp]
fild  qword ptr [esp]
fld1
fsubr st(0), st(1)
fxch st(2)
fcomip
fcmovb st(0), st(1)
fstp st(1)
add esp, 8
fadd qword ptr [Lt_1C09]
sub esp,8
fstp qword ptr [esp]
push dword ptr [Lt_1C08+4]
push dword ptr [Lt_1C08]
call pow
add esp, 16
fistp dword ptr [ebp-4]
.L_023C:
.L_023B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
ASM_SECTION:
push ebp
mov ebp, esp
sub esp, 24
.L_023E:
push -1
push dword ptr [ebp+8]
push -1
push offset Lt_1C0A
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0241
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
push 10
push offset Lt_0242
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
push -1
push dword ptr [ebp+8]
push -1
push offset Lt_1C0A
call fb_StrAssign
add esp, 20
.L_0241:
.L_0240:
.L_023F:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_1C0A,12

.section .text
.balign 16
EMITOP3_OP4:
push ebp
mov ebp, esp
.L_0245:
push 4
push offset Lt_0247
push -1
push 3
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0249
push 3
push dword ptr [ebp+8]
call HWRITEASM64
add esp, 8
jmp .L_0248
.L_0249:
push 0
push dword ptr [ebp+8]
call HWRITEASM64
add esp, 8
.L_0248:
.L_0246:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITEASM64:
push ebp
mov ebp, esp
sub esp, 108
push ebx
.L_024F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [CTX+236], 0
je .L_0252
cmp dword ptr [CTX+240], 1
jne .L_0254
mov dword ptr [CTX+240], 2
jmp .L_0253
.L_0254:
mov dword ptr [CTX+236], 0
.L_0253:
.L_0252:
.L_0251:
cmp dword ptr [CTX+140], 0
je .L_0256
dec dword ptr [CTX+140]
cmp dword ptr [CTX+140], 0
jne .L_0258
mov dword ptr [CTX+136], -2
.L_0258:
.L_0257:
.L_0256:
.L_0255:
cmp dword ptr [ENV+148], -1
jne .L_025A
cmp dword ptr [CTXDBG+4], -1
je .L_025C
lea eax, [CTXDBG+20]
push eax
call DBG_FILENAME
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 0
push dword ptr [CTXDBG+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_025E
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov ax, word ptr [CTXDBG+4]
push eax
push 68
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [CTXDBG+4], -1
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
.L_025C:
.L_025B:
.L_025A:
.L_0259:
mov eax, dword ptr [ebp+12]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0265
lea ebx, [ebp-12]
push ebx
call REG_FREEABLE
add esp, 4
.L_0265:
mov ebx, dword ptr [ebp+12]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0267
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call CHECK_OPTIM
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0266
.L_0267:
lea eax, [ebp-12]
push eax
call CHECK_OPTIM
add esp, 4
.L_0266:
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0110
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [CTX+4]
mov dword ptr [ebp-40], eax
jmp .L_026B
.L_026D:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+56]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_026A
.L_026E:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+44]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_026A
.L_026F:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+68]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_026A
.L_0270:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_026A
.L_0271:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+32]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_026A
.L_0272:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_026A
.L_026B:
cmp dword ptr [ebp-40], 5
ja .L_0272
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_0273+eax*4]
.L_0273:
.int .L_0270
.int .L_0272
.int .L_0271
.int .L_026E
.int .L_026D
.int .L_026F
.L_026A:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0250:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFLOATTOHEX_ASM64:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0274:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
fld qword ptr [ebp+8]
fstp dword ptr [ebp-28]
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0276
mov dword ptr [ebp-32], 24
jmp .L_1C0F
.L_0276:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-32], eax
.L_1C0F:
cmp dword ptr [ebp-32], 16
jne .L_0279
push 0
push 3
push offset Lt_027A
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset Lt_027B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
movsx eax, byte ptr [ebp+20]
test eax, eax
je .L_027D
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_027E
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0275
jmp .L_027C
.L_027D:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0275
.L_027C:
jmp .L_0278
.L_0279:
push 0
push 3
push offset Lt_027A
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 8
push dword ptr [ebp-28]
call fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset Lt_0280
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
movsx eax, byte ptr [ebp+20]
test eax, eax
je .L_0282
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0283
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0275
jmp .L_0281
.L_0282:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0275
.L_0281:
.L_0278:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0275:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
DBG_ADDSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0285:
cmp dword ptr [ebp+12], 0
jne .L_0288
mov dword ptr [ebp-8], 0
mov eax, dword ptr [CTXDBG+36]
mov dword ptr [ebp-12], eax
jmp .L_028A
.L_028D:
push -1
mov eax, dword ptr [ebp-8]
imul eax, 20
add eax, dword ptr [DBGSTR]
lea ebx, [eax+8]
push ebx
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_028F
mov eax, dword ptr [ebp-8]
imul eax, 20
add eax, dword ptr [DBGSTR]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0286
.L_028F:
.L_028E:
.L_028B:
inc dword ptr [ebp-8]
.L_028A:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .L_028D
.L_028C:
.L_0288:
.L_0287:
inc dword ptr [CTXDBG+36]
mov ebx, dword ptr [CTXDBG+40]
cmp dword ptr [CTXDBG+36], ebx
jle .L_0291
fild dword ptr [CTXDBG+40]
fmul qword ptr [Lt_1C10]
fistp dword ptr [CTXDBG+40]
push dword ptr [CTXDBG+40]
push 0
push 1
push offset _ZN7TDBGSTRD1Ev
push offset _ZN7TDBGSTRC1Ev
push 20
push offset DBGSTR
call fb_ArrayRedimPresvObj
add esp, 28
test eax, eax
je .L_0293
push 0
push 0
push offset Lt_0294
push 948
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0293:
.L_0291:
.L_0290:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov eax, dword ptr [CTXDBG+36]
imul eax, 20
add eax, dword ptr [DBGSTR]
lea ebx, [eax+8]
push ebx
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [CTXDBG+36]
imul ebx, 20
add ebx, dword ptr [DBGSTR]
mov ecx, dword ptr [CTXDBG+52]
mov eax, dword ptr [CTXDBG+56]
mov dword ptr [ebx], ecx
mov dword ptr [ebx+4], eax
mov ecx, dword ptr [CTXDBG+52]
mov dword ptr [ebp-4], ecx
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
inc eax
mov ebx, eax
mov ecx, ebx
sar ecx, 31
add dword ptr [CTXDBG+52], ebx
adc dword ptr [CTXDBG+56], ecx
.L_0286:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
DBG_ADDSTAB:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0295:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0298
movzx eax, byte ptr [ebp+12]
cmp eax, 100
sete al
shr eax, 1
sbb eax, eax
movzx ebx, byte ptr [ebp+12]
cmp ebx, 132
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_029A
push 0
push dword ptr [ebp+8]
call DBG_ADDSTR
add esp, 8
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_0299
.L_029A:
push 1
push dword ptr [ebp+8]
call DBG_ADDSTR
add esp, 8
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], ecx
.L_0299:
.L_0298:
.L_0297:
inc dword ptr [CTXDBG+44]
mov ebx, dword ptr [CTXDBG+48]
cmp dword ptr [CTXDBG+44], ebx
jle .L_029C
fild dword ptr [CTXDBG+48]
fmul qword ptr [Lt_1C11]
fistp dword ptr [CTXDBG+48]
push dword ptr [CTXDBG+48]
push 0
push 1
push offset _ZN8TDBGSTABD1Ev
push offset _ZN8TDBGSTABC1Ev
push 20
push offset DBGSTAB
call fb_ArrayRedimPresvObj
add esp, 28
test eax, eax
je .L_029E
push 0
push 0
push offset Lt_0294
push 968
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_029E:
.L_029C:
.L_029B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
movzx ax, byte ptr [ebp+12]
mov word ptr [ebp-12], ax
mov ax, word ptr [ebp+16]
mov word ptr [ebp-10], ax
mov eax, dword ptr [CTXDBG+44]
imul eax, 20
add eax, dword ptr [DBGSTAB]
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
push 0
push -1
push dword ptr [ebp+20]
push -1
mov ecx, dword ptr [CTXDBG+44]
imul ecx, 20
add ecx, dword ptr [DBGSTAB]
lea ebx, [ecx+8]
push ebx
call fb_StrAssign
add esp, 20
.L_0296:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
DBG_EMITSTR:
push ebp
mov ebp, esp
sub esp, 56
.L_029F:
cmp byte ptr [CTX+232], 0
je .L_02A2
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 12
push offset Lt_02A3
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_02A1
.L_02A2:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 13
push offset Lt_02A5
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_02A1:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset Lt_02A7
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], 0
mov eax, dword ptr [CTXDBG+36]
mov dword ptr [ebp-20], eax
jmp .L_02AA
.L_02AD:
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 4
push offset Lt_02B1
push -1
push -1
push offset Lt_02B0
push offset Lt_02AF
mov eax, dword ptr [ebp-16]
imul eax, 20
add eax, dword ptr [DBGSTR]
push dword ptr [eax+8]
call HREPLACE
add esp, 12
push eax
push 9
push offset Lt_02AE
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
.L_02AB:
inc dword ptr [ebp-16]
.L_02AA:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_02AD
.L_02AC:
.L_02A0:
mov esp, ebp
pop ebp
ret
.balign 16
DBG_EMITSTAB:
push ebp
mov ebp, esp
sub esp, 136
push ebx
.L_02B5:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp byte ptr [CTX+232], 0
je .L_02B8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 12
push offset Lt_02B9
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_02B7
.L_02B8:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 13
push offset Lt_02BB
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_02B7:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [CTXDBG+44]
mov dword ptr [ebp-16], eax
jmp .L_02BE
.L_02C1:
mov eax, dword ptr [ebp-12]
imul eax, 20
add eax, dword ptr [DBGSTAB]
mov ecx, dword ptr [eax]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F7
push -1
push -1
movsx eax, word ptr [ebp-2]
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F7
push -1
push -1
movsx eax, word ptr [ebp-4]
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset Lt_02C3
push -1
push -1
mov eax, dword ptr [ebp-12]
imul eax, 20
add eax, dword ptr [DBGSTAB]
push dword ptr [eax+4]
push dword ptr [eax]
call fb_HEX_l
add esp, 8
push eax
push 9
push offset Lt_02C2
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp-12]
imul eax, 20
add eax, dword ptr [DBGSTAB]
lea ecx, [eax+8]
push ecx
push 7
push offset Lt_027E
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea ecx, [ebp-124]
push ecx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
.L_02BF:
inc dword ptr [ebp-12]
.L_02BE:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_02C1
.L_02C0:
.L_02B6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EDBGEMITHEADER_ASM64:
push ebp
mov ebp, esp
sub esp, 160
.L_02CE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [CTXDBG], 1
mov dword ptr [CTXDBG+36], -1
mov dword ptr [CTXDBG+40], 1000
push dword ptr [CTXDBG+40]
push 0
push 1
push offset _ZN7TDBGSTRD1Ev
push offset _ZN7TDBGSTRC1Ev
push 20
push offset DBGSTR
call fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_02D0
push 0
push 0
push offset Lt_0294
push 1007
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02D0:
mov dword ptr [CTXDBG+44], -1
mov dword ptr [CTXDBG+48], 1000
push dword ptr [CTXDBG+48]
push 0
push 1
push offset _ZN8TDBGSTABD1Ev
push offset _ZN8TDBGSTABC1Ev
push 20
push offset DBGSTAB
call fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_02D1
push 0
push 0
push offset Lt_0294
push 1010
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02D1:
mov dword ptr [CTXDBG+52], 1
mov dword ptr [CTXDBG+56], 0
mov dword ptr [CTXDBG+4], -1
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset Lt_02D3
push -1
push 0
push dword ptr [ebp+8]
call HESCAPE
add esp, 4
push eax
push 8
push offset Lt_02D4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 6
push offset Lt_02D8
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
push 0
push 255
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 17
push offset Lt_000F
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+8]
call PATHISABSOLUTE
add esp, 4
test eax, eax
jne .L_02DE
lea eax, [ebp-12]
push eax
push 0
push 100
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 2
push offset Lt_0019
push -1
call HCURDIR
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
.L_02DE:
.L_02DD:
lea eax, [ebp-12]
push eax
push 0
push 100
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-136], 0
.L_02E7:
push 0
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [STABSTB+eax*4]
push -1
lea eax, [ebp-148]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
push 0
push 128
lea eax, [ebp-148]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 4
inc dword ptr [CTXDBG]
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
.L_02E5:
inc dword ptr [ebp-136]
.L_02E4:
cmp dword ptr [ebp-136], 16
jle .L_02E7
.L_02E6:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_02CF:
mov esp, ebp
pop ebp
ret
.balign 16
EDBGEMITGLOBALVAR_ASM64:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_02E9:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_02EC
lea ebx, [ebp-20]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_02EA
.L_02EC:
.L_02EB:
cmp dword ptr [ebp+12], 0
jne .L_02EE
.L_02EF:
mov dword ptr [ebp-4], 36
jmp .L_02ED
.L_02EE:
cmp dword ptr [ebp+12], 2
jne .L_02F0
.L_02F1:
mov dword ptr [ebp-4], 40
jmp .L_02ED
.L_02F0:
mov dword ptr [ebp-4], 38
.L_02F2:
.L_02ED:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_02F4
push 0
push 3
push offset Lt_02F5
push -1
lea ecx, [ebp-20]
push ecx
call fb_StrConcatAssign
add esp, 20
jmp .L_02F3
.L_02F4:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
je .L_02F6
push 0
push 3
push offset Lt_02F7
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_02F3
.L_02F6:
push 0
push 2
push offset Lt_00ED
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_02F3:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push 0
mov al, byte ptr [ebp-4]
push eax
lea eax, [ebp-20]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_02EA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EDBGEMITLOCALVAR_ASM64:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_02F9:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+12], 0
je .L_02FC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_02FE
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-16]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_02FA
.L_02FE:
.L_02FD:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_0300
mov dword ptr [ebp-4], 38
jmp .L_02FF
.L_0300:
mov dword ptr [ebp-4], 40
.L_02FF:
push 0
push 3
push offset Lt_0301
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
jmp .L_02FB
.L_02FC:
mov dword ptr [ebp-4], 128
push 0
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
.L_02FB:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-28]
push eax
push 0
mov al, byte ptr [ebp-4]
push eax
lea eax, [ebp-16]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02FA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EDBGEMITPROCHEADER_ASM64:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.L_0302:
push 0
push 261
lea eax, [ENV+304]
push eax
push -1
push offset Lt_1C16
call fb_StrAssign
add esp, 20
push offset Lt_1C16
call DBG_FILENAME
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4096
test ebx, ebx
je .L_0305
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
push 1
push 42
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
call FBGETENTRYPOINT
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+16], 1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+16568]
mov dword ptr [ecx+20], eax
push 0
push -1
call FBGETENTRYPOINT
push eax
push -1
push offset Lt_1C17
call fb_StrAssign
add esp, 20
jmp .L_0304
.L_0305:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
push offset Lt_1C17
call fb_StrAssign
add esp, 20
.L_0304:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset Lt_1C18
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov dword ptr [CTXDBG+32], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32
test ecx, ecx
je .L_0309
push 0
push 3
push offset Lt_030A
push -1
push offset Lt_1C17
call fb_StrConcatAssign
add esp, 20
jmp .L_0308
.L_0309:
push 0
push 3
push offset Lt_030B
push -1
push offset Lt_1C17
call fb_StrConcatAssign
add esp, 20
.L_0308:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
push offset Lt_1C17
call fb_StrConcatAssign
add esp, 20
push offset Lt_1C18
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov ax, word ptr [ecx+16]
push eax
push 36
push offset Lt_1C17
call DBG_ADDSTAB
add esp, 16
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push 1
push 68
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0303:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_1C17,12
.balign 4
	.lcomm	Lt_1C18,12
.balign 4
	.lcomm	Lt_1C16,12

.section .text
.balign 16
EDBGEMITPROCARG_ASM64:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_030E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 2
push offset Lt_00ED
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_0312
push 0
push 2
push offset Lt_0313
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0311
.L_0312:
push 0
push 2
push offset Lt_0314
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0311:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
push 0
push 160
lea eax, [ebp-12]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_030F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDECLPOINTER_ASM64:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0316:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_1C19
call fb_StrAssign
add esp, 20
.L_0318:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
test ebx, ebx
je .L_0319
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 480
add ecx, -32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 32505856
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
push 0
push -1
push dword ptr [CTXDBG]
call fb_UIntToStr
add esp, 4
push eax
push -1
push offset Lt_1C19
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_031A
push -1
push offset Lt_1C19
call fb_StrConcatAssign
add esp, 20
inc dword ptr [CTXDBG]
jmp .L_0318
.L_0319:
push 0
push -1
push offset Lt_1C19
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0317:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_1C19,12

.section .text
.balign 16
HDECLUDT_ASM64:
push ebp
mov ebp, esp
sub esp, 180
push ebx
.L_031B:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [CTXDBG]
mov dword ptr [eax+132], ebx
inc dword ptr [CTXDBG]
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_031E
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_031D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0323:
cmp dword ptr [ebp-4], 0
je .L_0324
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_0326
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
push 2
push offset Lt_00ED
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
shld ebx, ecx, 3
shl ecx, 3
mov dword ptr [ebp-180], ecx
mov dword ptr [ebp-176], ebx
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+112], 0
jle .L_032A
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-116], ebx
jmp .L_1C1A
.L_032A:
mov dword ptr [ebp-116], 0
.L_1C1A:
mov ecx, dword ptr [ebp-116]
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp-180]
adc ebx, dword ptr [ebp-176]
push ebx
push ecx
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_00F8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+112], 0
jle .L_032E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+112]
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-148], ebx
mov dword ptr [ebp-144], ecx
jmp .L_1C1B
.L_032E:
push dword ptr [ebp-4]
call SYMBGETREALSIZE
add esp, 4
shld edx, eax, 3
shl eax, 3
mov dword ptr [ebp-148], eax
mov dword ptr [ebp-144], edx
.L_1C1B:
push dword ptr [ebp-144]
push dword ptr [ebp-148]
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_00F8
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0332
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0326:
.L_0325:
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0323
.L_0324:
push 0
push 2
push offset Lt_0332
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
push 0
push 128
lea eax, [ebp-16]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_031C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDECLENUM_ASM64:
push ebp
mov ebp, esp
sub esp, 112
push ebx
.L_0334:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [CTXDBG]
mov dword ptr [eax+100], ebx
inc dword ptr [CTXDBG]
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 3
push offset Lt_0337
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call fb_IntToStr
add esp, 4
push eax
push 3
push offset Lt_0336
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call SYMBGETENUMFIRSTELM
add esp, 4
mov dword ptr [ebp-4], eax
.L_033B:
cmp dword ptr [ebp-4], 0
je .L_033C
push 0
push -1
push -1
push 2
push offset Lt_00F8
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset Lt_00ED
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-4]
call SYMBGETENUMNEXTELM
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_033B
.L_033C:
push 0
push 2
push offset Lt_0332
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
push 0
push 128
lea eax, [ebp-16]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0335:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETDATATYPE_ASM64:
push ebp
mov ebp, esp
sub esp, 92
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0342:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+8], 0
jne .L_0345
push 0
push -1
push dword ptr [REMAPTB]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0343
.L_0345:
.L_0344:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_0347
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-20], ebx
jmp .L_0346
.L_0347:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 12
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0349
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .L_034B
mov eax, dword ptr [ebp-16]
and eax, 31
mov ecx, dword ptr [ebp-16]
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-16]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp-16]
and ecx, 32505856
or eax, ecx
mov dword ptr [ebp-16], eax
.L_034B:
.L_034A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .L_034D
push 0
push -1
push dword ptr [CTXDBG]
call fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_034E
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
inc dword ptr [CTXDBG]
cmp dword ptr [ebp+12], 0
jle .L_0350
push 0
push 5
push offset Lt_0351
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0352
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0332
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_034F
.L_0350:
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
dec ecx
mov dword ptr [ebp-44], ecx
jmp .L_0354
.L_0357:
push 0
push 5
push offset Lt_0351
push -1
lea ecx, [ebp-36]
push ecx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_0332
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-40]
sal eax, 4
mov ebx, dword ptr [ecx+64]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_0332
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-40]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
push dword ptr [ecx+12]
push dword ptr [ecx+8]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
.L_0355:
inc dword ptr [ebp-40]
.L_0354:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .L_0357
.L_0356:
.L_034F:
.L_034D:
.L_034C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
je .L_035D
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-20], ecx
.L_035D:
.L_035C:
.L_0349:
.L_0348:
.L_0346:
cmp dword ptr [ebp-20], 0
jge .L_035F
mov dword ptr [ebp-20], 1
.L_035F:
.L_035E:
mov ecx, dword ptr [ebp-16]
and ecx, 480
test ecx, ecx
je .L_0361
push 0
push -1
lea ecx, [ebp-16]
push ecx
call HDECLPOINTER_ASM64
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0361:
.L_0360:
and dword ptr [ebp-16], -513
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .L_0363
.L_0365:
cmp dword ptr [ebp-24], 0
je .L_0367
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+132], -1
jne .L_0369
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HDECLUDT_ASM64
add esp, 8
.L_0369:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+132]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0366
.L_0367:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+132], -1
jne .L_036C
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call HDECLUDT_ASM64
add esp, 8
.L_036C:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
.L_0366:
jmp .L_0362
.L_036E:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+100], -1
jne .L_0370
push dword ptr [ebp-24]
call HDECLENUM_ASM64
add esp, 4
.L_0370:
.L_036F:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+100]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0362
.L_0372:
push 0
push -1
push dword ptr [CTXDBG]
call fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0373
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
inc dword ptr [CTXDBG]
push 0
push -1
push 0
push dword ptr [ebp-24]
call HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0362
.L_0374:
push 0
push -1
push dword ptr [REMAPTB]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0362
.L_0375:
push 0
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [REMAPTB+eax*4]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0362
.L_0363:
mov eax, dword ptr [ebp-40]
add eax, 4294967286
cmp eax, 13
ja .L_0375
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_0376+eax*4-40]
.L_0376:
.int .L_036E
.int .L_0375
.int .L_0375
.int .L_0375
.int .L_0375
.int .L_0375
.int .L_0375
.int .L_0375
.int .L_0375
.int .L_0375
.int .L_0365
.int .L_0375
.int .L_0372
.int .L_0374
.L_0362:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0343:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDBG:
push ebp
mov ebp, esp
sub esp, 72
.L_0377:
cmp dword ptr [ebp+8], 113
jne .L_037A
push 0
push 0
push dword ptr [ebp+20]
push -1
lea eax, [CTXDBG+20]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov dword ptr [CTXDBG+4], eax
jmp .L_0379
.L_037A:
cmp dword ptr [ebp+8], 114
jne .L_037C
jmp .L_037B
.L_037C:
cmp dword ptr [ebp+8], 115
jne .L_037D
jmp .L_037B
.L_037D:
cmp dword ptr [ebp+8], 116
jne .L_037E
jmp .L_037B
.L_037E:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset Lt_0383
push -1
push 28
push offset Lt_0382
push -1
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push 44
push offset Lt_0381
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_037B:
.L_0379:
.L_0378:
mov esp, ebp
pop ebp
ret
.balign 16
REG_MARK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0389:
mov byte ptr [ebp-4], 0
mov dword ptr [ebp-8], 1
.L_038E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [REGHANDLE+eax*4]
cmp ebx, -2
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [REGHANDLE+eax*4]
cmp ecx, -3
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0390
mov ecx, dword ptr [ebp-8]
mov dword ptr [REGROOM+ecx*8], -2
mov byte ptr [ebp-4], 1
.L_0390:
.L_038F:
.L_038C:
inc dword ptr [ebp-8]
.L_038B:
cmp dword ptr [ebp-8], 15
jle .L_038E
.L_038D:
cmp byte ptr [ebp-4], 0
je .L_0392
mov ecx, dword ptr [ebp+8]
mov dword ptr [CTX+216], ecx
.L_0392:
.L_038A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASM64_SPILLREG:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0393:
cmp dword ptr [CTX+212], 0
jle .L_0396
lea eax, [CTX+156]
push eax
call FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_0397:
cmp dword ptr [ebp-8], 0
je .L_0398
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], -2
jne .L_039A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [REGHANDLE+eax*4]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_0394
.L_039A:
.L_0399:
push dword ptr [ebp-8]
call FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0397
.L_0398:
.L_0396:
.L_0395:
add dword ptr [CTX+96], 8
adc dword ptr [CTX+100], 0
cmp dword ptr [CTX+116], 0
jne .L_1C21
cmp dword ptr [CTX+112], 0
je .L_039C
.L_1C21:
mov ecx, dword ptr [CTX+112]
mov eax, dword ptr [CTX+116]
cmp dword ptr [CTX+100], eax
jne .L_039E
cmp dword ptr [CTX+96], ecx
jne .L_039E
.L_1C22:
push 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-20]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-20]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-20]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 53
push offset Lt_03A1
push -1
lea ecx, [ebp-32]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-32]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-32]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-44]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-44]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-44]
push ecx
call fb_StrDelete
add esp, 4
.L_039E:
.L_039D:
.L_039C:
.L_039B:
lea ecx, [CTX+156]
push ecx
call FLISTNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
inc dword ptr [CTX+212]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [CTX+212]
mov dword ptr [eax], ecx
mov eax, dword ptr [CTX+96]
mov ecx, dword ptr [CTX+100]
neg eax
adc ecx, 0
neg ecx
mov ebx, eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [REGHANDLE+ebx*4]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0394:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_SPILLING:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.L_03A4:
push dword ptr [ebp+8]
call ASM64_SPILLREG
add esp, 4
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [REGSTRQ+eax*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp+8]
cmp dword ptr [REGROOM+eax*8], -2
jne .L_03AD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [REGROOM+eax*8+4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [REGROOM+ebx*8], -3
.L_03AD:
.L_03AC:
cmp dword ptr [CTX+216], 0
je .L_03AE
mov dword ptr [ebp-56], -1
jmp .L_1C23
.L_03AE:
mov dword ptr [ebp-56], 0
.L_1C23:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-56]
mov dword ptr [ebx+12], eax
.L_03A5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_SAVE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_03B0:
mov dword ptr [ebp-4], 1
push 1
push offset LISTREG
call fb_ArrayUBound
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_03B3
.L_03B6:
mov eax, dword ptr [ebp-4]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
cmp dword ptr [REGHANDLE+ebx*4], -2
je .L_03B8
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ebx, dword ptr [LISTREG]
push dword ptr [ebx]
call REG_SPILLING
add esp, 4
.L_03B8:
.L_03B7:
.L_03B4:
inc dword ptr [ebp-4]
.L_03B3:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_03B6
.L_03B5:
.L_03B1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_ALLOWED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_03B9:
movzx eax, byte ptr [ebp+8]
neg eax
test eax, eax
jne .L_03BC
mov dword ptr [ebp-4], 1
push 1
push offset LISTREG
call fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-8], eax
jmp .L_03BE
.L_03C1:
mov eax, dword ptr [ebp-4]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
cmp dword ptr [REGHANDLE+ebx*4], -2
jne .L_03C3
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ebx, dword ptr [LISTREG]
mov eax, dword ptr [ebx]
mov dword ptr [REGHANDLE+eax*4], -4
.L_03C3:
.L_03C2:
.L_03BF:
inc dword ptr [ebp-4]
.L_03BE:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_03C1
.L_03C0:
jmp .L_03BB
.L_03BC:
mov dword ptr [ebp-4], 1
push 1
push offset LISTREG
call fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-8], eax
jmp .L_03C5
.L_03C8:
mov eax, dword ptr [ebp-4]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
cmp dword ptr [REGHANDLE+ebx*4], -4
jne .L_03CA
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ebx, dword ptr [LISTREG]
mov eax, dword ptr [ebx]
mov dword ptr [REGHANDLE+eax*4], -2
.L_03CA:
.L_03C9:
.L_03C6:
inc dword ptr [ebp-4]
.L_03C5:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_03C8
.L_03C7:
.L_03BB:
.L_03BA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_FINDFREE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_03CB:
mov dword ptr [ebp-8], -1
mov dword ptr [ebp-12], 0
cmp byte ptr [CTX+153], 0
je .L_03CE
push 0
call REG_ALLOWED
add esp, 4
.L_03CE:
mov dword ptr [ebp-16], 0
.L_03D2:
mov eax, dword ptr [ebp-16]
movsx ebx, byte ptr [REG_PRIO+eax]
cmp dword ptr [REGHANDLE+ebx*4], -2
jne .L_03D4
mov ebx, dword ptr [ebp-16]
movsx eax, byte ptr [REG_PRIO+ebx]
mov dword ptr [ebp-8], eax
jmp .L_03D1
.L_03D4:
.L_03D0:
inc dword ptr [ebp-16]
.L_03CF:
cmp dword ptr [ebp-16], 12
jle .L_03D2
.L_03D1:
cmp dword ptr [ebp-8], -1
jne .L_03D6
cmp dword ptr [ebp+12], -1
jne .L_03D8
inc dword ptr [Lt_1C24]
cmp dword ptr [Lt_1C24], 6
jne .L_03DA
mov dword ptr [Lt_1C24], 0
.L_03DA:
.L_03DB:
mov eax, dword ptr [Lt_1C24]
cmp dword ptr [REGHANDLE+eax*4], -4
jne .L_03DC
inc dword ptr [Lt_1C24]
cmp dword ptr [Lt_1C24], 6
jne .L_03DE
mov dword ptr [Lt_1C24], 0
.L_03DE:
jmp .L_03DB
.L_03DC:
mov eax, dword ptr [Lt_1C24]
movsx ebx, byte ptr [REG_PRIO+eax]
mov dword ptr [ebp-8], ebx
jmp .L_03D7
.L_03D8:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
.L_03D7:
push dword ptr [ebp-8]
call REG_SPILLING
add esp, 4
.L_03D6:
.L_03D5:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp+12], ebx
je .L_03E0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [REGHANDLE+ebx*4], eax
mov eax, 1
mov cl, byte ptr [ebp-8]
sal eax, cl
or dword ptr [CTX+128], eax
.L_03E0:
.L_03DF:
cmp byte ptr [CTX+153], 0
je .L_03E2
push 1
call REG_ALLOWED
add esp, 4
.L_03E2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_1C24:
.long -1

.section .text
.balign 16
REG_CALLPTR:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_03E3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 1
push 1
push offset LISTREG
call fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-16], eax
jmp .L_03E6
.L_03E9:
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03EB
jmp .L_03E7
.L_03EB:
push -1
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [REGHANDLE+ebx*4]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-4], eax
push 3
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push -1
push 3
push offset Lt_0129
push -1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
mov dword ptr [REGHANDLE+ebx*4], -4
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [REGSTRQ+ebx*4]
call fb_StrLen
add esp, 8
push 0
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add ebx, dword ptr [LISTREG]
mov ecx, dword ptr [ebx]
push dword ptr [REGSTRQ+ecx*4]
mov ebx, eax
call fb_StrLen
add esp, 8
cmp ebx, eax
jne .L_03F2
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push -1
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call fb_StrAssignMid
add esp, 16
jmp .L_03F1
.L_03F2:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-8]
add eax, 2
push eax
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
mov eax, dword ptr [ebp-8]
dec eax
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_03F1:
.L_03E7:
inc dword ptr [ebp-12]
.L_03E6:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_03E9
.L_03E8:
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_03F6
mov dword ptr [ebp-12], 1
push 1
push offset LISTREG
call fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-16], eax
jmp .L_03F8
.L_03FB:
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+12]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03FD
jmp .L_03F9
.L_03FD:
push -1
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [REGHANDLE+ebx*4]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-4], eax
push 3
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push -1
push 3
push offset Lt_0129
push -1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ebx, dword ptr [eax]
mov dword ptr [REGHANDLE+ebx*4], -4
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [REGSTRQ+ebx*4]
call fb_StrLen
add esp, 8
push 0
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add ebx, dword ptr [LISTREG]
mov ecx, dword ptr [ebx]
push dword ptr [REGSTRQ+ecx*4]
mov ebx, eax
call fb_StrLen
add esp, 8
cmp ebx, eax
jne .L_0403
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push -1
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call fb_StrAssignMid
add esp, 16
jmp .L_0402
.L_0403:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-8]
add eax, 2
push eax
push dword ptr [ebp+12]
call fb_StrMid
add esp, 12
push eax
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
mov eax, dword ptr [ebp-8]
dec eax
push eax
push dword ptr [ebp+12]
call fb_LEFT
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_0402:
.L_03F9:
inc dword ptr [ebp-12]
.L_03F8:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_03FB
.L_03FA:
.L_03F6:
.L_03F5:
.L_03E4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_BRANCH:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.L_0406:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [CTX+216]
cmp dword ptr [ebp+8], eax
jne .L_0409
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset Lt_00ED
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-32], 1
.L_040F:
mov eax, dword ptr [ebp-32]
cmp dword ptr [REGROOM+eax*8], -3
jne .L_0411
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [REGSTRQ+eax*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [REGROOM+eax*8+4]
push dword ptr [ebx+8]
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-32]
mov dword ptr [REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [REGROOM+eax*8+4]
mov dword ptr [ebx+12], 0
.L_0411:
.L_0410:
mov ebx, dword ptr [ebp-32]
mov dword ptr [REGROOM+ebx*8], -1
mov ebx, dword ptr [ebp-32]
mov dword ptr [REGROOM+ebx*8+4], 0
.L_040D:
inc dword ptr [ebp-32]
.L_040C:
cmp dword ptr [ebp-32], 15
jle .L_040F
.L_040E:
cmp dword ptr [CTX+220], 0
jne .L_0417
mov dword ptr [CTX+216], 0
.L_0417:
.L_0416:
jmp .L_0408
.L_0409:
mov ebx, dword ptr [CTX+220]
cmp dword ptr [ebp+8], ebx
jne .L_0418
cmp dword ptr [CTX+212], 0
jle .L_041A
lea ebx, [CTX+156]
push ebx
call FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-32], eax
.L_041B:
cmp dword ptr [ebp-32], 0
je .L_041C
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+12], 0
je .L_041E
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+4]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+4], -2
push 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+8]
call fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset Lt_041F
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 4
.L_041E:
.L_041D:
push dword ptr [ebp-32]
call FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-32], eax
jmp .L_041B
.L_041C:
.L_041A:
.L_0419:
mov dword ptr [CTX+220], 0
mov dword ptr [CTX+216], 0
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset Lt_00ED
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_0418:
.L_0408:
.L_0407:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_TRANSFER:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_0448:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [REGHANDLE+eax*4]
cmp ebx, -2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [REGHANDLE+eax*4]
cmp ecx, -4
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_044B
jmp .L_0449
.L_044B:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ecx
jne .L_044D
mov ecx, dword ptr [ebp+8]
mov dword ptr [REGHANDLE+ecx*4], -2
jmp .L_0449
.L_044D:
.L_044C:
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [REGHANDLE+ecx*4]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
je .L_044F
push 3
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [REGSTRQ+eax*4]
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
.L_044F:
.L_044E:
.L_0449:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
MEMCLEAR:
push ebp
mov ebp, esp
sub esp, 196
push ebx
.L_0454:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
push dword ptr [ebp+12]
push 49
push offset Lt_0456
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_0458
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0457
.L_0458:
push -1
push 999997
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-40], eax
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 1
jne .L_045A
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0459
.L_045A:
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
.L_0459:
mov eax, dword ptr [ebp-40]
mov dword ptr [REGHANDLE+eax*4], -2
.L_0457:
cmp dword ptr [ebp-4], 1
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-4], 4
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-4], 8
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0464
mov dword ptr [ebp-8], 3
jmp .L_0463
.L_0464:
mov dword ptr [ebp-8], 0
.L_0463:
cmp dword ptr [ebp-4], 7
jbe .L_0466
mov ebx, dword ptr [ebp-4]
shr ebx, 3
mov eax, ebx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 7
jle .L_0468
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push -1
push dword ptr [ebp-36]
call fb_IntToStr
add esp, 4
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset Lt_046E
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 4
push offset Lt_0474
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset Lt_0473
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset Lt_0478
push -1
lea eax, [ebp-172]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
push 5
push offset Lt_047A
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-36]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
jmp .L_0467
.L_0468:
mov dword ptr [ebp-44], 0
mov ebx, dword ptr [ebp-36]
dec ebx
mov dword ptr [ebp-48], ebx
jmp .L_047E
.L_0481:
push dword ptr [ebp-8]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea ebx, [ebp-32]
push ebx
push -1
push 2
push offset Lt_0134
push -1
push -1
mov ebx, dword ptr [ebp-44]
sal ebx, 3
push ebx
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
.L_047F:
inc dword ptr [ebp-44]
.L_047E:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-44], eax
jle .L_0481
.L_0480:
mov eax, dword ptr [ebp-36]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0488
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
mov ebx, dword ptr [ebp-36]
sal ebx, 3
push ebx
call fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset Lt_0473
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
.L_0488:
.L_0487:
.L_0467:
.L_0466:
.L_0465:
cmp dword ptr [ebp-4], 3
jbe .L_048E
push dword ptr [ebp-8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset Lt_048F
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967292
cmp dword ptr [ebp-4], 1
jbe .L_0494
push dword ptr [ebp-8]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset Lt_0495
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_049A
push dword ptr [ebp-8]
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset Lt_049B
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
.L_049A:
.L_0499:
jmp .L_0493
.L_0494:
cmp dword ptr [ebp-4], 0
jbe .L_049F
push dword ptr [ebp-8]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset Lt_04A0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
.L_049F:
.L_0493:
jmp .L_048D
.L_048E:
cmp dword ptr [ebp-4], 1
jbe .L_04A4
push dword ptr [ebp-8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 15
push offset Lt_04A5
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_04AA
push dword ptr [ebp-8]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset Lt_04AB
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
.L_04AA:
.L_04A9:
jmp .L_048D
.L_04A4:
cmp dword ptr [ebp-4], 0
jbe .L_04AF
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-32]
push eax
push 15
push offset Lt_04B0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
.L_04AF:
.L_048D:
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0455:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
MEMCOPY:
push ebp
mov ebp, esp
sub esp, 332
push ebx
.L_04B4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
cmp dword ptr [ebp+8], 0
jne .L_04B7
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_04B5
.L_04B7:
.L_04B6:
push dword ptr [ebp+12]
push 49
push offset Lt_0456
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_04B9
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
jmp .L_04B8
.L_04B9:
push -1
push 999998
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-60], eax
push 0
push 0
mov eax, dword ptr [ebp-60]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+20], 1
jne .L_04BB
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 4
jmp .L_04BA
.L_04BB:
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 4
.L_04BA:
.L_04B8:
push dword ptr [ebp+16]
push 49
push offset Lt_0456
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call fb_StrInstr
add esp, 12
test eax, eax
je .L_04C5
push 0
push -1
push dword ptr [ebp+16]
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
jmp .L_04C4
.L_04C5:
push -1
push 999997
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-64], eax
push 0
push 0
mov eax, dword ptr [ebp-64]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+24], 1
jne .L_04C7
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 4
jmp .L_04C6
.L_04C7:
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 4
.L_04C6:
.L_04C4:
mov eax, dword ptr [ebp-4]
shr eax, 3
mov ebx, eax
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 7
jle .L_04D1
push -1
push 999996
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push 0
mov eax, dword ptr [ebp-68]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-68]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 11
push offset Lt_04D8
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 7
push offset Lt_04DD
push -1
push -1
lea eax, [ebp-40]
push eax
push 6
push offset Lt_04DC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 4
push offset Lt_0474
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset Lt_0473
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 4
push offset Lt_0474
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset Lt_0473
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset Lt_04E7
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push -1
push -1
lea eax, [ebp-16]
push eax
push 5
push offset Lt_047A
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-56]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
jmp .L_04D0
.L_04D1:
cmp dword ptr [ebp-56], 0
jle .L_04EC
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp-56]
dec ebx
mov dword ptr [ebp-76], ebx
jmp .L_04EE
.L_04F1:
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea ebx, [ebp-28]
push ebx
push -1
push 2
push offset Lt_0134
push -1
push -1
mov ebx, dword ptr [ebp-72]
sal ebx, 3
push ebx
call fb_IntToStr
add esp, 4
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 7
push offset Lt_04DD
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 2
push offset Lt_0134
push -1
push -1
mov eax, dword ptr [ebp-72]
sal eax, 3
push eax
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
.L_04EF:
inc dword ptr [ebp-72]
.L_04EE:
mov eax, dword ptr [ebp-76]
cmp dword ptr [ebp-72], eax
jle .L_04F1
.L_04F0:
mov eax, dword ptr [ebp-56]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_04FD
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
mov ebx, dword ptr [ebp-56]
sal ebx, 3
push ebx
call fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset Lt_0473
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp-56]
sal eax, 3
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset Lt_0473
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
.L_04FD:
.L_04FC:
.L_04EC:
.L_04D0:
cmp dword ptr [ebp-4], 3
jbe .L_0507
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 21
push offset Lt_0508
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 7
push offset Lt_050C
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset Lt_048F
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967292
cmp dword ptr [ebp-4], 1
jbe .L_0511
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset Lt_0512
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_0516
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset Lt_0495
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_051B
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset Lt_051C
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 6
push offset Lt_0520
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset Lt_049B
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
.L_051B:
.L_051A:
jmp .L_0510
.L_0511:
cmp dword ptr [ebp-4], 0
jbe .L_0524
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset Lt_0525
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_0520
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset Lt_04A0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
.L_0524:
.L_0510:
jmp .L_0506
.L_0507:
cmp dword ptr [ebp-4], 1
jbe .L_052C
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 19
push offset Lt_052D
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 6
push offset Lt_0516
push -1
push -1
lea eax, [ebp-40]
push eax
push 15
push offset Lt_04A5
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_0535
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset Lt_0536
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_0520
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset Lt_04AB
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
.L_0535:
.L_0534:
jmp .L_0506
.L_052C:
cmp dword ptr [ebp-4], 0
jbe .L_053D
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-28]
push eax
push 19
push offset Lt_053E
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 6
push offset Lt_0520
push -1
push -1
lea eax, [ebp-40]
push eax
push 15
push offset Lt_04B0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
.L_053D:
.L_0506:
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-28]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0546
mov eax, dword ptr [ebp-60]
mov dword ptr [REGHANDLE+eax*4], -2
.L_0546:
push -1
push dword ptr [ebp+16]
push -1
lea eax, [ebp-40]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0548
mov eax, dword ptr [ebp-64]
mov dword ptr [REGHANDLE+eax*4], -2
.L_0548:
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_04B5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_INIT:
.L_0549:
push 16
push 256
lea eax, [CTX+156]
push eax
call FLISTINIT
add esp, 12
call IRHLINIT
or dword ptr [IR+272], 131840
.L_054A:
ret
.balign 16
_END:
.L_054B:
call IRHLEND
lea eax, [CTX+156]
push eax
call FLISTEND
add esp, 4
.L_054C:
ret
.balign 16
HEMITVARIABLE:
push ebp
mov ebp, esp
sub esp, 172
push ebx
push esi
push edi
.L_054D:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
push dword ptr [ebp+8]
call SYMBISARRAY
add esp, 4
test eax, eax
je .L_0550
.L_0550:
.L_054F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_0552
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_0554
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .L_054E
.L_0554:
.L_0553:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 4
je .L_0558
.L_0559:
cmp dword ptr [ebp-56], 7
jne .L_0557
.L_0558:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 6
push offset Lt_055A
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-68]
push ebx
call ASM_SECTION
add esp, 4
lea ebx, [ebp-68]
push ebx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push 9
push offset Lt_055C
push -1
lea ebx, [ebp-80]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-80]
push ebx
call HWRITEASM64
add esp, 8
lea ebx, [ebp-80]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 32
test eax, eax
je .L_055F
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset Lt_0560
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
.L_055F:
.L_055E:
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset Lt_00ED
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .L_0566
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HESCAPEW
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push 2
push offset Lt_0568
push -1
push -1
mov eax, dword ptr [SYMB_DTYPETB+200]
sal eax, 1
push eax
push 8
push offset Lt_0567
call fb_StrAllocTempDescZEx
add esp, 8
push eax
call fb_LEFT
add esp, 8
push eax
push -1
push -1
lea eax, [ebp-28]
push eax
push 9
push offset Lt_02AE
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0565
.L_0566:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HESCAPE
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 4
push offset Lt_02B1
push -1
push -1
lea eax, [ebp-28]
push eax
push 9
push offset Lt_02AE
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
.L_0565:
.L_0557:
.L_0555:
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .L_054E
.L_0552:
.L_0551:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 128
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 2
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and ebx, ecx
je .L_0571
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2
test ebx, ebx
jne .L_0573
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 32
test ecx, ecx
jne .L_0575
lea ecx, [ebp-40]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-28]
push ecx
call fb_StrDelete
add esp, 4
jmp .L_054E
.L_0575:
.L_0574:
.L_0573:
.L_0572:
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 4
lea ecx, [ebp-40]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-28]
push ecx
call fb_StrDelete
add esp, 4
jmp .L_054E
.L_0571:
.L_0570:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 16388
test ebx, ebx
je .L_0577
lea ebx, [ebp-40]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_054E
.L_0577:
.L_0576:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 59
mov dword ptr [ebp-4], ecx
cmp dword ptr [ebp-4], 0
je .L_0579
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 4
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .L_057B
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 16
test ebx, ebx
je .L_057D
lea ebx, [ebp-40]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_054E
.L_057D:
.L_057C:
jmp .L_057A
.L_057B:
cmp dword ptr [ENV+148], -1
jne .L_057F
push 2
push dword ptr [ebp+8]
call EDBGEMITGLOBALVAR_ASM64
add esp, 8
.L_057F:
.L_057A:
jmp .L_0578
.L_0579:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 262144
je .L_0581
mov esi, dword ptr [SYMB_DTYPETB+368]
mov dword ptr [ebp-12], esi
jmp .L_0580
.L_0581:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+40]
mov dword ptr [ebp-12], ebx
.L_0580:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx]
mov dword ptr [ebp-56], esi
cmp dword ptr [ebp-56], 1
je .L_0585
.L_0586:
cmp dword ptr [ebp-56], 12
jne .L_0584
.L_0585:
mov dword ptr [ebp-60], 1
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+60]
dec ebx
mov dword ptr [ebp-64], ebx
jmp .L_0587
.L_058A:
mov esi, dword ptr [ebp-60]
mov ebx, esi
sar ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-64]
sal eax, 4
mov edi, dword ptr [ecx+64]
add edi, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-64]
sal ecx, 4
mov edx, dword ptr [eax+64]
add edx, ecx
mov eax, dword ptr [edi+8]
mov ecx, dword ptr [edi+12]
sub eax, dword ptr [edx]
sbb ecx, dword ptr [edx+4]
add eax, 1
adc ecx, 0
push ecx
push eax
push ebx
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
pop ebx
add esp, 8
mov eax, esi
mov dword ptr [ebp-60], eax
.L_0588:
dec dword ptr [ebp-64]
.L_0587:
cmp dword ptr [ebp-64], 0
jge .L_058A
.L_0589:
mov eax, dword ptr [ebp-60]
imul eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 20
jne .L_058C
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+32]
mov esi, dword ptr [eax+104]
mov dword ptr [ebp-16], esi
cmp dword ptr [ebp-16], 4
jge .L_058E
mov dword ptr [ebp-16], 4
.L_058E:
.L_058D:
mov eax, dword ptr [ebp-8]
mov esi, eax
sar esi, 31
add eax, dword ptr [CTX+96]
adc esi, dword ptr [CTX+100]
mov ecx, dword ptr [ebp-16]
mov ebx, ecx
sar ebx, 31
add eax, ecx
adc esi, ebx
add eax, 4294967295
adc esi, 4294967295
mov ecx, dword ptr [ebp-16]
dec ecx
not ecx
mov edx, ecx
mov ebx, edx
sar ebx, 31
and eax, edx
and esi, ebx
mov dword ptr [CTX+96], eax
mov dword ptr [CTX+100], esi
jmp .L_058B
.L_058C:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
add esi, dword ptr [CTX+96]
adc eax, dword ptr [CTX+100]
mov ebx, dword ptr [ebp-12]
mov edx, ebx
sar edx, 31
add esi, ebx
adc eax, edx
add esi, 4294967295
adc eax, 4294967295
mov ebx, dword ptr [ebp-12]
dec ebx
not ebx
mov ecx, ebx
mov edx, ecx
sar edx, 31
and esi, ecx
and eax, edx
mov dword ptr [CTX+96], esi
mov dword ptr [CTX+100], eax
.L_058B:
mov eax, dword ptr [CTX+96]
mov esi, dword ptr [CTX+100]
neg eax
adc esi, 0
neg esi
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], eax
mov dword ptr [ecx+52], esi
.L_0584:
.L_0582:
cmp dword ptr [ENV+148], -1
jne .L_0590
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 2
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
push esi
push dword ptr [ebp+8]
call EDBGEMITLOCALVAR_ASM64
add esp, 8
.L_0590:
.L_0578:
cmp dword ptr [ebp-4], 0
je .L_0592
mov dword ptr [CTX+4], 2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 5
push offset Lt_0593
push -1
lea esi, [ebp-64]
push esi
call fb_StrAssign
add esp, 20
lea esi, [ebp-64]
push esi
call ASM_SECTION
add esp, 4
lea esi, [ebp-64]
push esi
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-76], 1
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
dec eax
mov dword ptr [ebp-80], eax
jmp .L_0595
.L_0598:
mov esi, dword ptr [ebp-76]
mov eax, esi
sar eax, 31
mov ecx, dword ptr [ebp+8]
mov edx, dword ptr [ebp-80]
sal edx, 4
mov ebx, dword ptr [ecx+64]
add ebx, edx
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-80]
sal ecx, 4
mov edi, dword ptr [edx+64]
add edi, ecx
mov edx, dword ptr [ebx+8]
mov ecx, dword ptr [ebx+12]
sub edx, dword ptr [edi]
sbb ecx, dword ptr [edi+4]
add edx, 1
adc ecx, 0
push ecx
push edx
push eax
push esi
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
pop esi
pop eax
add esp, 8
mov edx, esi
mov dword ptr [ebp-76], edx
.L_0596:
dec dword ptr [ebp-80]
.L_0595:
cmp dword ptr [ebp-80], 0
jge .L_0598
.L_0597:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-76]
mov esi, eax
sar esi, 31
push dword ptr [edx+44]
push dword ptr [edx+40]
push esi
push eax
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
pop eax
pop esi
add esp, 8
mov edx, eax
mov dword ptr [ebp-8], edx
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+28]
and eax, 511
cmp eax, 20
jne .L_059A
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+32]
mov eax, dword ptr [edx+104]
mov dword ptr [ebp-72], eax
jmp .L_0599
.L_059A:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+40]
mov dword ptr [ebp-72], edx
.L_0599:
push dword ptr [ebp-72]
call PW2
add esp, 4
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 8
jle .L_059C
mov dword ptr [ebp-72], 8
.L_059C:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 8
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 32
test esi, esi
xchg edx, esi
setne dl
xchg edx, esi
shr esi, 1
sbb esi, esi
or edx, esi
je .L_059E
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
push dword ptr [ebp-72]
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F8
push -1
push -1
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F8
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_059F
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
jmp .L_059D
.L_059E:
cmp byte ptr [CTX+232], 0
je .L_05A7
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset Lt_05A8
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push -1
push dword ptr [ebp-72]
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F8
push -1
push -1
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F8
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_059F
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-172]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call fb_StrDelete
add esp, 4
jmp .L_05A6
.L_05A7:
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
push dword ptr [ebp-72]
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F8
push -1
push -1
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset Lt_00F8
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset Lt_05B1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
.L_05A6:
.L_059D:
.L_0592:
.L_0591:
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_054E:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITGLOBALVAR:
push ebp
mov ebp, esp
.L_05B8:
inc dword ptr [CTX]
push dword ptr [ebp+8]
call SYMBISDATADESC
add esp, 4
test eax, eax
jne .L_05BB
push dword ptr [ebp+8]
call HEMITVARIABLE
add esp, 4
.L_05BB:
.L_05BA:
dec dword ptr [CTX]
.L_05B9:
mov esp, ebp
pop ebp
ret
.balign 16
NO_ROUNDSD:
push ebp
mov ebp, esp
sub esp, 108
.L_05BC:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 20
push offset Lt_05BE
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 17
push offset Lt_05C0
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 38
push offset Lt_05C2
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 20
push offset Lt_05C4
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 14
push offset Lt_05C7
push -1
push 0
push dword ptr [ebp+8]
push 5
push offset Lt_05C6
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 16
push offset Lt_05CB
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 20
push offset Lt_05C4
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
.L_05BD:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.L_05CE:
lea eax, [ENV+584]
push eax
call HFILEEXISTS
add esp, 4
test eax, eax
je .L_05D1
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 4
.L_05D1:
.L_05D0:
call fb_FileFree
mov dword ptr [ENV+580], eax
push 0
push dword ptr [ENV+580]
push 0
push 3
push 0
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_05D3
mov dword ptr [ebp-4], 0
jmp .L_05CF
.L_05D3:
.L_05D2:
mov dword ptr [CTX], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+20]
push eax
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+32]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [CTX+4], 0
mov dword ptr [CTX+144], 0
mov dword ptr [CTX+148], 0
mov byte ptr [CTX+152], 0
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [CTX+228], eax
mov eax, dword ptr [CTX+228]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 2
je .L_05D7
.L_05D8:
cmp dword ptr [ebp-44], 5
jne .L_05D6
.L_05D7:
mov byte ptr [CTX+232], 1
jmp .L_05D4
.L_05D6:
mov byte ptr [CTX+232], 0
.L_05D9:
.L_05D4:
mov dword ptr [CTX+236], 0
mov dword ptr [ebp-44], 0
.L_05DD:
mov eax, dword ptr [ebp-44]
mov dword ptr [REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp-44]
mov dword ptr [REGROOM+eax*8], -1
mov eax, dword ptr [ebp-44]
mov dword ptr [REGROOM+eax*8+4], 0
.L_05DB:
inc dword ptr [ebp-44]
.L_05DA:
cmp dword ptr [ebp-44], 15
jle .L_05DD
.L_05DC:
mov dword ptr [REGHANDLE+24], -3
mov dword ptr [REGHANDLE+28], -3
cmp byte ptr [CTX+232], 0
je .L_05DF
mov dword ptr [CTX+244], 8388608
push 8
push 1
push 1
push 0
push -1
push 4
push offset LISTREG
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_05E0
push 0
push 0
push offset Lt_0294
push 2263
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E0:
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+4], 5
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+8], 4
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+12], 3
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+16], 2
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+20], 8
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+24], 9
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+28], 10
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+32], 11
jmp .L_05DE
.L_05DF:
mov eax, dword ptr [ENV+244]
mov dword ptr [CTX+244], eax
push 6
push 1
push 1
push 0
push -1
push 4
push offset LISTREG
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_05E1
push 0
push 0
push offset Lt_0294
push 2267
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E1:
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+4], 2
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+8], 3
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+12], 8
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+16], 9
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+20], 10
mov eax, dword ptr [LISTREG]
mov dword ptr [eax+24], 11
.L_05DE:
inc dword ptr [CTX]
cmp dword ptr [ENV+148], -1
jne .L_05E3
lea eax, [ENV+304]
push eax
call EDBGEMITHEADER_ASM64
add esp, 4
jmp .L_05E2
.L_05E3:
mov dword ptr [CTXDBG], 1
mov dword ptr [CTXDBG+36], -1
mov dword ptr [CTXDBG+40], 4
push dword ptr [CTXDBG+40]
push 0
push 1
push offset _ZN7TDBGSTRD1Ev
push offset _ZN7TDBGSTRC1Ev
push 20
push offset DBGSTR
call fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_05E4
push 0
push 0
push offset Lt_0294
push 2280
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E4:
mov dword ptr [CTXDBG+44], -1
mov dword ptr [CTXDBG+48], 4
push dword ptr [CTXDBG+48]
push 0
push 1
push offset _ZN8TDBGSTABD1Ev
push offset _ZN8TDBGSTABC1Ev
push 20
push offset DBGSTAB
call fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_05E5
push 0
push 0
push offset Lt_0294
push 2283
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E5:
mov dword ptr [CTXDBG+52], 1
mov dword ptr [CTXDBG+56], 0
mov dword ptr [CTXDBG+4], -1
.L_05E2:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 23
push offset Lt_05E6
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 27
push offset Lt_05E8
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call CFI_WINDOWS_ASM_CODE
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 6
push offset Lt_05EA
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ENV+176], -1
jne .L_05ED
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 38
push offset Lt_05EE
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
.L_05ED:
.L_05EC:
dec dword ptr [CTX]
mov dword ptr [ebp-4], -1
.L_05CF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HADDGLOBALCTORDTOR:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.L_05F0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_05F3
jmp .L_05F1
.L_05F3:
.L_05F2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 65536
test eax, eax
je .L_05F5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_05F7
inc dword ptr [CTX+144]
movzx ebx, byte ptr [CTX+232]
neg ebx
cmp ebx, -1
jne .L_05F8
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_1C33
.L_05F8:
mov dword ptr [ebp-4], 0
.L_1C33:
cmp dword ptr [ebp-4], 0
je .L_05FB
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 12
push offset Lt_05FC
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
jmp .L_05FA
.L_05FB:
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 7
push offset Lt_05FE
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
.L_05FA:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset Lt_055C
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_027E
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
lea eax, [ebp-40]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 6
push offset Lt_05EA
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
.L_05F7:
.L_05F6:
jmp .L_05F4
.L_05F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 131072
test ebx, ebx
je .L_0604
inc dword ptr [CTX+148]
movzx ebx, byte ptr [CTX+232]
neg ebx
cmp ebx, -1
jne .L_0605
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_1C34
.L_0605:
mov dword ptr [ebp-4], 0
.L_1C34:
cmp dword ptr [ebp-4], 0
je .L_0608
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 12
push offset Lt_0609
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0607
.L_0608:
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 7
push offset Lt_060B
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
.L_0607:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset Lt_055C
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_027E
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
lea eax, [ebp-40]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 6
push offset Lt_05EA
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
.L_0604:
.L_05F4:
.L_05F1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITEND:
push ebp
mov ebp, esp
sub esp, 244
.L_0611:
inc dword ptr [CTX]
mov dword ptr [CTX+4], 2
dec dword ptr [CTX]
push offset HMAYBEEMITGLOBALVAR
push 1
call SYMBFOREACHGLOBAL
add esp, 8
inc dword ptr [CTX]
push offset HEMITVARIABLE
call IRFOREACHDATASTMT
add esp, 4
push offset HADDGLOBALCTORDTOR
push 3
call SYMBFOREACHGLOBAL
add esp, 8
cmp dword ptr [ENV+176], -1
jne .L_0614
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 5
push offset Lt_0593
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
cmp byte ptr [CTX+232], 0
je .L_0617
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 23
push offset Lt_0618
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 26
push offset Lt_061A
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0616
.L_0617:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 27
push offset Lt_061C
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0616:
.L_0614:
.L_0613:
movzx eax, byte ptr [CTX+152]
neg eax
cmp eax, -1
jne .L_061F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 5
push offset Lt_0593
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
cmp byte ptr [CTX+232], 0
je .L_0622
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 14
push offset Lt_0623
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 17
push offset Lt_0625
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 14
push offset Lt_0627
push -1
lea eax, [ebp-232]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 17
push offset Lt_0629
push -1
lea eax, [ebp-244]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-244]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0621
.L_0622:
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 18
push offset Lt_062B
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 18
push offset Lt_062D
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
.L_0621:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_062F
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_1C37
.L_062F:
mov dword ptr [ebp-16], 0
.L_1C37:
cmp dword ptr [ebp-16], 0
je .L_0632
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 12
push offset Lt_05FC
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0631
.L_0632:
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 7
push offset Lt_05FE
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
.L_0631:
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 9
push offset Lt_055C
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 18
push offset Lt_0636
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 6
push offset Lt_05EA
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 13
push offset Lt_0639
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 9
push offset Lt_063B
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 9
push offset Lt_063D
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 9
push offset Lt_063F
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 12
push offset Lt_0641
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 6
push offset Lt_0643
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 32
push offset Lt_0645
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 21
push offset Lt_0647
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push 8
push offset Lt_0649
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset Lt_064B
push -1
lea eax, [ebp-172]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 8
push offset Lt_064D
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 4
push offset Lt_064F
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
.L_061F:
.L_061E:
cmp dword ptr [ENV+148], -1
jne .L_0652
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-12]
push eax
push 0
push 100
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ADDSTAB
add esp, 16
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 6
push offset Lt_05EA
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
call DBG_EMITSTAB
call DBG_EMITSTR
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0652:
.L_0651:
push -1
lea eax, [CTX+8]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_0658
.L_0658:
.L_0657:
push -1
lea eax, [CTX+20]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_065A
.L_065A:
.L_0659:
push -1
lea eax, [CTX+32]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_065C
.L_065C:
.L_065B:
push dword ptr [ENV+580]
call fb_FileClose
add esp, 4
test eax, eax
je .L_065E
.L_065E:
.L_065D:
mov dword ptr [ENV+580], 0
.L_0612:
mov esp, ebp
pop ebp
ret
.balign 16
_GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_065F:
cmp dword ptr [ebp+8], 1
jne .L_0662
.L_0663:
mov dword ptr [ebp-4], 0
jmp .L_0660
jmp .L_0661
.L_0662:
push 0
push 1
push 0
push offset Lt_0665
push 21
call ERRREPORTEX
add esp, 20
.L_0664:
.L_0661:
.L_0660:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SUPPORTSOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0666:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0669
.L_066B:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_066C
mov dword ptr [ebp-12], 24
jmp .L_1C39
.L_066C:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_1C39:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_066F
mov dword ptr [ebp-4], 0
jmp .L_0667
jmp .L_066E
.L_066F:
mov dword ptr [ebp-4], -1
jmp .L_0667
.L_066E:
jmp .L_0668
.L_0670:
mov dword ptr [ebp-4], 0
jmp .L_0667
jmp .L_0668
.L_0671:
mov dword ptr [ebp-4], -1
jmp .L_0667
jmp .L_0668
.L_0672:
mov dword ptr [ebp-4], -1
jmp .L_0668
.L_0669:
mov eax, dword ptr [ebp-8]
add eax, 4294967244
cmp eax, 15
ja .L_0672
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0673+eax*4-208]
.L_0673:
.int .L_0671
.int .L_0672
.int .L_0671
.int .L_0672
.int .L_0671
.int .L_066B
.int .L_0672
.int .L_0672
.int .L_0672
.int .L_0672
.int .L_0672
.int .L_0672
.int .L_0672
.int .L_0671
.int .L_0670
.int .L_0670
.L_0668:
.L_0667:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0674:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+16], ebx
.L_0675:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCEND:
push ebp
mov ebp, esp
push ebx
.L_0676:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+20], ebx
.L_0677:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
PARAM_ANALYZE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0678:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
cmp byte ptr [CTX+232], 0
je .L_067B
cmp dword ptr [ebp+8], 20
je .L_067D
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_067E
mov dword ptr [ebp-24], 24
jmp .L_1C3A
.L_067E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_1C3A:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0681
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 8
jge .L_0683
mov eax, dword ptr [ebp+24]
inc dword ptr [eax]
mov dword ptr [ebp-4], 1
jmp .L_0679
jmp .L_0682
.L_0683:
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov dword ptr [ebp-4], 10
jmp .L_0679
.L_0682:
jmp .L_0680
.L_0681:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 6
jge .L_0685
mov eax, dword ptr [ebp+20]
inc dword ptr [eax]
mov dword ptr [ebp-4], 0
jmp .L_0679
jmp .L_0684
.L_0685:
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov dword ptr [ebp-4], 10
jmp .L_0679
.L_0684:
.L_0680:
jmp .L_067C
.L_067D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [SYMB_DTYPETB+368]
sal ebx, 1
cmp dword ptr [ebp-12], ebx
jg .L_0687
push dword ptr [ebp+12]
call HGETMAGICSTRUCTNUMBER
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0689
.L_068B:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 6
jge .L_068D
mov eax, dword ptr [ebp+20]
inc dword ptr [eax]
mov dword ptr [ebp-4], 0
jmp .L_0679
.L_068D:
.L_068C:
jmp .L_0688
.L_068E:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 8
jge .L_0690
mov eax, dword ptr [ebp+24]
inc dword ptr [eax]
mov dword ptr [ebp-4], 1
jmp .L_0679
.L_0690:
.L_068F:
jmp .L_0688
.L_0691:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 5
jge .L_0693
mov eax, dword ptr [ebp+20]
add dword ptr [eax], 2
mov dword ptr [ebp-4], 2
jmp .L_0679
.L_0693:
.L_0692:
jmp .L_0688
.L_0694:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
cmp ebx, 6
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [eax]
cmp ecx, 8
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0696
mov ecx, dword ptr [ebp+20]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+24]
inc dword ptr [ecx]
mov dword ptr [ebp-4], 3
jmp .L_0679
.L_0696:
.L_0695:
jmp .L_0688
.L_0697:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
cmp ebx, 6
setl bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
cmp eax, 8
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0699
mov eax, dword ptr [ebp+24]
inc dword ptr [eax]
mov eax, dword ptr [ebp+20]
inc dword ptr [eax]
mov dword ptr [ebp-4], 4
jmp .L_0679
.L_0699:
.L_0698:
jmp .L_0688
.L_069A:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 7
jge .L_069C
mov eax, dword ptr [ebp+24]
add dword ptr [eax], 2
mov dword ptr [ebp-4], 5
jmp .L_0679
.L_069C:
.L_069B:
jmp .L_0688
.L_0689:
mov eax, dword ptr [ebp-24]
add eax, 4294967295
cmp eax, 9
ja .L_0688
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_069D+eax*4-4]
.L_069D:
.int .L_068B
.int .L_068E
.int .L_0688
.int .L_0688
.int .L_0691
.int .L_0697
.int .L_0688
.int .L_0688
.int .L_0694
.int .L_069A
.L_0688:
.L_0687:
.L_0686:
mov dword ptr [ebp-4], 10
jmp .L_0679
.L_067C:
jmp .L_067A
.L_067B:
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
cmp dword ptr [ebp+8], 20
je .L_069F
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jle .L_06A1
mov dword ptr [ebp-4], 10
jmp .L_0679
.L_06A1:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_06A2
mov dword ptr [ebp-24], 24
jmp .L_1C3B
.L_06A2:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_1C3B:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_06A5
mov dword ptr [ebp-4], 1
jmp .L_0679
jmp .L_06A4
.L_06A5:
mov dword ptr [ebp-4], 0
jmp .L_0679
.L_06A4:
jmp .L_069E
.L_069F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp ebx, dword ptr [SYMB_DTYPETB+368]
setg bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp-12]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp-12]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp-12]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_06A7
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jle .L_06A9
mov dword ptr [ebp-4], 13
jmp .L_0679
jmp .L_06A8
.L_06A9:
mov dword ptr [ebp-4], 12
jmp .L_0679
.L_06A8:
.L_06A7:
.L_06A6:
push dword ptr [ebp+12]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
.L_06AA:
cmp dword ptr [ebp-8], 0
je .L_06AB
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 480
je .L_06AC
mov dword ptr [ebp-24], 24
jmp .L_1C3C
.L_06AC:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-24], eax
.L_1C3C:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_06AF
inc dword ptr [ebp-20]
jmp .L_06AE
.L_06AF:
inc dword ptr [ebp-16]
.L_06AE:
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_06AA
.L_06AB:
mov eax, dword ptr [ebp-20]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_06B1
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
jle .L_06B3
mov dword ptr [ebp-4], 11
jmp .L_0679
jmp .L_06B2
.L_06B3:
mov dword ptr [ebp-4], 1
jmp .L_0679
.L_06B2:
jmp .L_06B0
.L_06B1:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
jle .L_06B5
mov dword ptr [ebp-4], 11
jmp .L_0679
jmp .L_06B4
.L_06B5:
mov dword ptr [ebp-4], 0
.L_06B4:
.L_06B0:
.L_069E:
.L_067A:
.L_0679:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_FILLM:
push ebp
mov ebp, esp
sub esp, 220
push ebx
.L_06B6:
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [ebp+24]
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_06B9
.L_06BB:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov ebx, dword ptr [CTX+84]
sub ebx, dword ptr [ebp+20]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
push dword ptr [REGSTRB+eax*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov eax, dword ptr [ebp+24]
add eax, dword ptr [ebp+8]
push eax
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_06C0:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRW+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_06C5:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRW+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset Lt_06CB
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_06CA
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRB+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 2
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_06D3:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_06D8:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset Lt_06DD
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_06CA
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRB+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 4
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_06E5:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset Lt_06DD
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_06CA
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRW+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 4
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_06F1:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset Lt_06DD
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_06CA
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRW+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 4
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push 5
push offset Lt_06CB
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_06CA
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea ebx, [ebp-148]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-172]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRB+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 6
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_0704:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
jmp .L_06B8
.L_06B9:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 7
ja .L_06B8
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0709+eax*4-4]
.L_0709:
.int .L_06BB
.int .L_06C0
.int .L_06C5
.int .L_06D3
.int .L_06D8
.int .L_06E5
.int .L_06F1
.int .L_0704
.L_06B8:
.L_06B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_FILLR:
push ebp
mov ebp, esp
sub esp, 296
push ebx
.L_070A:
mov dword ptr [ebp-4], 0
push 0
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRQ+ebx*4]
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrInit
add esp, 20
cmp dword ptr [ebp+8], 8
jle .L_070D
add dword ptr [ebp+8], -8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
movzx ebx, byte ptr [eax]
cmp ebx, 45
jne .L_070F
push 0
push -1
push 6
push offset Lt_0420
push -1
push 5
push offset Lt_0420
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
push dword ptr [ebp+12]
call fb_LEFT
add esp, 8
push eax
call fb_VALINT
add esp, 4
add eax, 8
push eax
call fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
jmp .L_070E
.L_070F:
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 10
push offset Lt_0711
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
lea eax, [ebp-40]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 11
push offset Lt_0714
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push 0
push 6
push offset Lt_0716
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_070E:
.L_070D:
.L_070C:
mov eax, dword ptr [ebp+8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp+8]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp+8]
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0718
call REG_TEMPO
mov dword ptr [ebp-4], eax
.L_0718:
.L_0717:
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
push dword ptr [eax]
call REG_TRANSFER
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_071A
.L_071C:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 12
push offset Lt_071E
push -1
push -1
lea eax, [ebp-16]
push eax
push 7
push offset Lt_071D
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_0723:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 12
push offset Lt_0724
push -1
push -1
lea eax, [ebp-16]
push eax
push 7
push offset Lt_071D
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_0729:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset Lt_017A
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push -1
push 13
push offset Lt_072E
push -1
push -1
lea eax, [ebp-16]
push eax
push 7
push offset Lt_071D
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset Lt_0734
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset Lt_0738
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_073F:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 13
push offset Lt_0740
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_0745:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset Lt_017A
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push -1
push 14
push offset Lt_074A
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset Lt_0750
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset Lt_0754
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_0759:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset Lt_017A
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push -1
push 14
push offset Lt_074A
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset Lt_0763
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset Lt_0754
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_076B:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset Lt_017A
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push -1
push 14
push offset Lt_074A
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [REGSTRD+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset Lt_0763
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset Lt_0754
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset Lt_077C
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 12
push offset Lt_0780
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
lea eax, [ebp-284]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-296]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-296]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-296]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_0785:
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 13
push offset Lt_041F
push -1
push -1
lea eax, [ebp-16]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0719
.L_071A:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 7
ja .L_0719
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_078A+eax*4-4]
.L_078A:
.int .L_071C
.int .L_0723
.int .L_0729
.int .L_073F
.int .L_0745
.int .L_0759
.int .L_076B
.int .L_0785
.L_0719:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_070B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REG_FILLX:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.L_078B:
cmp dword ptr [ebp+8], 8
jle .L_078E
add dword ptr [ebp+8], -8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 45
jne .L_0790
push 0
push -1
push 6
push offset Lt_0420
push -1
push 5
push offset Lt_0420
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
push dword ptr [ebp+12]
call fb_LEFT
add esp, 8
push eax
call fb_VALINT
add esp, 4
add eax, 8
push eax
call fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
jmp .L_078F
.L_0790:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 10
push offset Lt_0711
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 11
push offset Lt_0714
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 0
push 6
push offset Lt_0716
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_078F:
.L_078E:
.L_078D:
cmp dword ptr [ebp+8], 4
jne .L_0796
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push -1
mov eax, dword ptr [ebp+16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 9
push offset Lt_0797
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0795
.L_0796:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset Lt_0129
push -1
push -1
mov eax, dword ptr [ebp+16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 9
push offset Lt_079C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
.L_0795:
.L_078C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCARG:
push ebp
mov ebp, esp
sub esp, 148
push ebx
push esi
push edi
.L_07A1:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-20]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call SYMBGETREALTYPE
add esp, 12
cmp byte ptr [CTX+232], 0
je .L_07A4
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push dword ptr [ebp-20]
push dword ptr [ebp-12]
mov ebx, eax
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_07A6
mov eax, dword ptr [ebp+12]
xor dword ptr [eax+4], 32768
mov eax, dword ptr [ebp+12]
or dword ptr [eax+4], 65536
.L_07A6:
.L_07A5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_07A8
mov ebx, dword ptr [ebp-12]
and ebx, 511
cmp ebx, 20
jne .L_07AA
lea ebx, [CTX+88]
push ebx
lea ebx, [CTX+84]
push ebx
mov dword ptr [ebp-48], 0
lea ebx, [ebp-48]
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
push 20
call PARAM_ANALYZE
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 10
jne .L_07AD
mov ebx, dword ptr [CTX+92]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+48], ebx
mov dword ptr [ecx+52], eax
mov eax, dword ptr [CTX+92]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+12]
add eax, dword ptr [ecx+40]
adc ebx, dword ptr [ecx+44]
mov ecx, eax
mov dword ptr [CTX+92], ecx
jmp .L_07AC
.L_07AD:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebp-4], eax
mov ecx, dword ptr [ebp-4]
mov eax, ecx
sar eax, 31
add ecx, dword ptr [CTX+96]
adc eax, dword ptr [CTX+100]
mov esi, dword ptr [ebp-4]
mov ebx, esi
sar ebx, 31
add ecx, esi
adc eax, ebx
add ecx, 4294967295
adc eax, 4294967295
mov esi, dword ptr [ebp-4]
dec esi
not esi
mov edi, esi
mov ebx, edi
sar ebx, 31
and ecx, edi
and eax, ebx
mov dword ptr [CTX+96], ecx
mov dword ptr [CTX+100], eax
mov eax, dword ptr [CTX+96]
mov ecx, dword ptr [CTX+100]
neg eax
adc ecx, 0
neg ecx
mov edi, dword ptr [ebp+12]
mov dword ptr [edi+48], eax
mov dword ptr [edi+52], ecx
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-52], eax
jmp .L_07AF
.L_07B1:
push 0
push 0
push dword ptr [ebp-4]
push offset LISTREG
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push ecx
call REG_FILLM
add esp, 20
jmp .L_07AE
.L_07B2:
push 0
push 1
push 8
push offset LISTREG
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
push eax
call REG_FILLM
add esp, 20
push 8
push 0
push dword ptr [ebp-4]
push offset LISTREG
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push ecx
call REG_FILLM
add esp, 20
jmp .L_07AE
.L_07B3:
push 0
push 0
push 8
push offset LISTREG
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
push eax
call REG_FILLM
add esp, 20
cmp dword ptr [ebp-4], 13
jge .L_07B5
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [eax+48]
mov ecx, dword ptr [eax+52]
add edi, 8
adc ecx, 0
push ecx
push edi
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07B4
.L_07B5:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov edi, dword ptr [eax+52]
add ecx, 8
adc edi, 0
push edi
push ecx
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
.L_07B4:
jmp .L_07AE
.L_07C1:
cmp dword ptr [ebp-4], 4
jne .L_07C3
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07C2
.L_07C3:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
.L_07C2:
push 8
push 0
push dword ptr [ebp-4]
push offset LISTREG
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push ecx
call REG_FILLM
add esp, 20
jmp .L_07AE
.L_07CC:
cmp dword ptr [ebp-4], 4
jne .L_07CE
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov ecx, dword ptr [CTX+88]
dec ecx
push ecx
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07CD
.L_07CE:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
.L_07CD:
jmp .L_07AE
.L_07D7:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
add eax, -2
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-4], 13
jge .L_07DD
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [eax+48]
mov ecx, dword ptr [eax+52]
add edi, 8
adc ecx, 0
push ecx
push edi
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07DC
.L_07DD:
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov edi, dword ptr [eax+52]
add ecx, 8
adc edi, 0
push edi
push ecx
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
.L_07DC:
jmp .L_07AE
.L_07AF:
cmp dword ptr [ebp-52], 5
ja .L_07AE
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_07E6+eax*4]
.L_07E6:
.int .L_07B1
.int .L_07CC
.int .L_07B2
.int .L_07B3
.int .L_07C1
.int .L_07D7
.L_07AE:
.L_07AC:
jmp .L_07A9
.L_07AA:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_07E7
mov dword ptr [ebp-48], 24
jmp .L_1C4C
.L_07E7:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_1C4C:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 1
jne .L_07EA
inc dword ptr [CTX+88]
cmp dword ptr [CTX+88], 8
jg .L_07EC
mov eax, dword ptr [ebp-4]
mov ecx, eax
sar ecx, 31
add eax, dword ptr [CTX+96]
adc ecx, dword ptr [CTX+100]
mov ebx, dword ptr [ebp-4]
mov edi, ebx
sar edi, 31
add eax, ebx
adc ecx, edi
add eax, 4294967295
adc ecx, 4294967295
mov ebx, dword ptr [ebp-4]
dec ebx
not ebx
mov esi, ebx
mov edi, esi
sar edi, 31
and eax, esi
and ecx, edi
mov dword ptr [CTX+96], eax
mov dword ptr [CTX+100], ecx
mov ecx, dword ptr [CTX+96]
mov eax, dword ptr [CTX+100]
neg ecx
adc eax, 0
neg eax
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+48], ecx
mov dword ptr [esi+52], eax
cmp dword ptr [ebp-4], 4
jne .L_07EE
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov ecx, dword ptr [CTX+88]
dec ecx
push ecx
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07ED
.L_07EE:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+88]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_07ED:
jmp .L_07EB
.L_07EC:
mov ecx, dword ptr [CTX+92]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+48], ecx
mov dword ptr [esi+52], eax
add dword ptr [CTX+92], 8
.L_07EB:
jmp .L_07E9
.L_07EA:
inc dword ptr [CTX+84]
cmp dword ptr [CTX+84], 6
jg .L_07F8
mov eax, dword ptr [ebp-4]
mov ecx, eax
sar ecx, 31
add eax, dword ptr [CTX+96]
adc ecx, dword ptr [CTX+100]
mov edi, dword ptr [ebp-4]
mov esi, edi
sar esi, 31
add eax, edi
adc ecx, esi
add eax, 4294967295
adc ecx, 4294967295
mov edi, dword ptr [ebp-4]
dec edi
not edi
mov ebx, edi
mov esi, ebx
sar esi, 31
and eax, ebx
and ecx, esi
mov dword ptr [CTX+96], eax
mov dword ptr [CTX+100], ecx
mov ecx, dword ptr [CTX+96]
mov eax, dword ptr [CTX+100]
neg ecx
adc eax, 0
neg eax
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], ecx
mov dword ptr [ebx+52], eax
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebp-52], ecx
jmp .L_07FA
.L_07FC:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov ecx, dword ptr [CTX+84]
sal ecx, 2
add ecx, dword ptr [LISTREG]
mov eax, dword ptr [ecx]
push dword ptr [REGSTRB+eax*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 14
push offset Lt_07FD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07F9
.L_0802:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ecx, dword ptr [eax]
push dword ptr [REGSTRW+ecx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
call fb_LongintToStr
add esp, 8
push eax
push 14
push offset Lt_0803
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07F9
.L_0808:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ecx, dword ptr [eax]
push dword ptr [REGSTRD+ecx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
call fb_LongintToStr
add esp, 8
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07F9
.L_080E:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov ecx, dword ptr [eax]
push dword ptr [REGSTRQ+ecx*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
call fb_LongintToStr
add esp, 8
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07F9
.L_07FA:
mov eax, dword ptr [ebp-52]
add eax, 4294967295
cmp eax, 7
ja .L_07F9
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_0813+eax*4-4]
.L_0813:
.int .L_07FC
.int .L_0802
.int .L_07F9
.int .L_0808
.int .L_07F9
.int .L_07F9
.int .L_07F9
.int .L_080E
.L_07F9:
jmp .L_07F7
.L_07F8:
mov ecx, dword ptr [CTX+92]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], ecx
mov dword ptr [ebx+52], eax
add dword ptr [CTX+92], 8
.L_07F7:
.L_07E9:
.L_07A9:
jmp .L_07A7
.L_07A8:
inc dword ptr [CTX+84]
mov dword ptr [ebp-4], 8
cmp dword ptr [CTX+84], 6
jg .L_0815
mov eax, dword ptr [ebp-4]
mov ecx, eax
sar ecx, 31
add eax, dword ptr [CTX+96]
adc ecx, dword ptr [CTX+100]
mov esi, dword ptr [ebp-4]
mov ebx, esi
sar ebx, 31
add eax, esi
adc ecx, ebx
add eax, 4294967295
adc ecx, 4294967295
mov esi, dword ptr [ebp-4]
dec esi
not esi
mov edi, esi
mov ebx, edi
sar ebx, 31
and eax, edi
and ecx, ebx
mov dword ptr [CTX+96], eax
mov dword ptr [CTX+100], ecx
mov ecx, dword ptr [CTX+96]
mov eax, dword ptr [CTX+100]
neg ecx
adc eax, 0
neg eax
mov edi, dword ptr [ebp+12]
mov dword ptr [edi+48], ecx
mov dword ptr [edi+52], eax
push 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 0
mov ecx, dword ptr [CTX+84]
sal ecx, 2
add ecx, dword ptr [LISTREG]
mov eax, dword ptr [ecx]
push dword ptr [REGSTRQ+eax*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0814
.L_0815:
mov ecx, dword ptr [CTX+92]
mov eax, ecx
sar eax, 31
mov edi, dword ptr [ebp+12]
mov dword ptr [edi+48], ecx
mov dword ptr [edi+52], eax
add dword ptr [CTX+92], 8
.L_0814:
.L_07A7:
jmp .L_07A3
.L_07A4:
add dword ptr [CTX+92], 8
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 32768
test eax, eax
je .L_081B
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 20
jne .L_081D
mov dword ptr [ebp-52], 0
lea eax, [ebp-52]
push eax
mov dword ptr [ebp-48], 0
lea eax, [ebp-48]
push eax
lea eax, [CTX+84]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push 20
call PARAM_ANALYZE
add esp, 20
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-56], eax
jmp .L_0821
.L_0823:
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [CTX+96]
mov ecx, dword ptr [CTX+100]
add edi, dword ptr [eax+40]
adc ecx, dword ptr [eax+44]
mov eax, dword ptr [ebp+12]
add edi, dword ptr [eax+40]
adc ecx, dword ptr [eax+44]
add edi, 4294967295
adc ecx, 4294967295
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add esi, 4294967295
adc ebx, 4294967295
not esi
not ebx
and edi, esi
and ecx, ebx
mov dword ptr [CTX+96], edi
mov dword ptr [CTX+100], ecx
mov ecx, dword ptr [CTX+96]
mov edi, dword ptr [CTX+100]
neg ecx
adc edi, 0
neg edi
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+48], ecx
mov dword ptr [esi+52], edi
cmp dword ptr [ebp-16], 12
jne .L_0825
push 0
push 0
mov ecx, dword ptr [CTX+84]
sal ecx, 2
add ecx, dword ptr [LISTREG]
mov edi, dword ptr [ecx]
push dword ptr [REGSTRQ+edi*4]
push -1
lea edi, [ebp-32]
push edi
call fb_StrAssign
add esp, 20
push 1
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
mov edi, dword ptr [ebp+12]
push dword ptr [edi+52]
push dword ptr [edi+48]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
lea eax, [ebp-32]
push eax
push dword ptr [ebp+12]
call SYMBGETREALSIZE
add esp, 4
mov edi, eax
push edi
call MEMCOPY
add esp, 20
lea edi, [ebp-80]
push edi
call fb_StrDelete
add esp, 4
jmp .L_0824
.L_0825:
push 1
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
mov edi, dword ptr [ebp+12]
push dword ptr [edi+52]
push dword ptr [edi+48]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
push dword ptr [ebp+12]
call SYMBGETREALSIZE
add esp, 4
mov edi, eax
push edi
call MEMCOPY
add esp, 20
lea edi, [ebp-104]
push edi
call fb_StrDelete
add esp, 4
lea edi, [ebp-80]
push edi
call fb_StrDelete
add esp, 4
.L_0824:
jmp .L_0820
.L_082C:
mov eax, dword ptr [CTX+92]
mov edi, eax
sar edi, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], eax
mov dword ptr [edx+52], edi
movzx eax, byte ptr [CTX+224]
neg eax
test eax, eax
jne .L_082E
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [eax+40]
mov dword ptr [ebp-4], edi
cmp dword ptr [ebp-16], 1
jne .L_0830
cmp dword ptr [ebp-4], 4
jne .L_0832
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push -1
mov edi, dword ptr [CTX+84]
dec edi
push edi
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0831
.L_0832:
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+84]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
.L_0831:
jmp .L_082F
.L_0830:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-60], eax
jmp .L_083C
.L_083E:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRB+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_07FD
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
jmp .L_083B
.L_0843:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRW+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_0803
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
jmp .L_083B
.L_0848:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRD+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
jmp .L_083B
.L_084D:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRQ+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
jmp .L_083B
.L_083C:
mov eax, dword ptr [ebp-60]
add eax, 4294967295
cmp eax, 7
ja .L_083B
mov eax, dword ptr [ebp-60]
jmp dword ptr [.L_0852+eax*4-4]
.L_0852:
.int .L_083E
.int .L_0843
.int .L_083B
.int .L_0848
.int .L_083B
.int .L_083B
.int .L_083B
.int .L_084D
.L_083B:
.L_082F:
.L_082E:
.L_082D:
jmp .L_0820
.L_0853:
mov edi, dword ptr [CTX+92]
mov eax, edi
sar eax, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], edi
mov dword ptr [edx+52], eax
jmp .L_0820
.L_0821:
cmp dword ptr [ebp-56], 13
ja .L_0853
mov edi, dword ptr [ebp-56]
jmp dword ptr [.L_0854+edi*4]
.L_0854:
.int .L_082C
.int .L_082C
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0853
.int .L_0823
.int .L_0823
.L_0820:
jmp .L_081C
.L_081D:
mov edi, dword ptr [ebp+12]
mov eax, dword ptr [edi+40]
mov dword ptr [ebp-4], eax
mov edi, dword ptr [CTX+92]
mov eax, edi
sar eax, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], edi
mov dword ptr [edx+52], eax
inc dword ptr [CTX+84]
mov edi, dword ptr [CTX+84]
cmp edi, 4
setle dl
mov edi, edx
shr edi, 1
sbb edi, edi
movzx eax, byte ptr [CTX+224]
neg eax
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and edi, eax
je .L_0856
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0857
mov dword ptr [ebp-48], 24
jmp .L_1C4D
.L_0857:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-48], eax
.L_1C4D:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_085A
cmp dword ptr [ebp-4], 4
jne .L_085C
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+84]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_085B
.L_085C:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov eax, dword ptr [CTX+84]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_07B7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_085B:
jmp .L_0859
.L_085A:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-52], eax
jmp .L_0866
.L_0868:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRB+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_07FD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0865
.L_086D:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRW+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_0803
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0865
.L_0872:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRD+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0865
.L_0877:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRQ+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0865
.L_0866:
mov eax, dword ptr [ebp-52]
add eax, 4294967295
cmp eax, 7
ja .L_0865
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_087C+eax*4-4]
.L_087C:
.int .L_0868
.int .L_086D
.int .L_0865
.int .L_0872
.int .L_0865
.int .L_0865
.int .L_0865
.int .L_0877
.L_0865:
.L_0859:
.L_0856:
.L_0855:
.L_081C:
jmp .L_081A
.L_081B:
inc dword ptr [CTX+84]
mov edi, dword ptr [CTX+92]
mov eax, edi
sar eax, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], edi
mov dword ptr [edx+52], eax
mov edi, dword ptr [CTX+84]
cmp edi, 4
setle dl
mov edi, edx
shr edi, 1
sbb edi, edi
movzx eax, byte ptr [CTX+224]
neg eax
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and edi, eax
je .L_087E
push 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 0
mov eax, dword ptr [CTX+84]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRQ+edi*4]
push -1
push 8
push offset Lt_03A7
push -1
push -1
push dword ptr [CTX+92]
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 4
.L_087E:
.L_087D:
.L_081A:
.L_07A3:
cmp dword ptr [ENV+148], -1
jne .L_0884
push dword ptr [ebp+12]
call EDBGEMITPROCARG_ASM64
add esp, 4
.L_0884:
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
.L_07A2:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCLOCAL:
push ebp
mov ebp, esp
.L_0885:
push dword ptr [ebp+12]
call HEMITVARIABLE
add esp, 4
.L_0886:
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0887:
mov dword ptr [CTX+4], 2
.L_0889:
cmp dword ptr [ebp+8], 0
je .L_088A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 15
jne .L_088D
.L_088E:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _PROCALLOCSTATICVARS
add esp, 4
jmp .L_088B
.L_088D:
cmp dword ptr [ebp-4], 1
jne .L_088F
.L_0890:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
je .L_0892
push dword ptr [ebp+8]
call HMAYBEEMITGLOBALVAR
add esp, 4
.L_0892:
.L_0891:
.L_088F:
.L_088B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
jmp .L_0889
.L_088A:
.L_0888:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SETVREGDATATYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0893:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebp+16]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0896
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _EMITCONVERT
add esp, 8
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 17
rep movsd
pop esi
pop edi
.L_0896:
.L_0895:
.L_0894:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLABEL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0897:
mov eax, dword ptr [CTX+216]
cmp eax, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [CTX+220]
cmp eax, dword ptr [ebp+8]
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_089A
push dword ptr [ebp+8]
call REG_BRANCH
add esp, 4
jmp .L_0899
.L_089A:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 2
push offset Lt_00ED
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0899:
mov eax, dword ptr [ebp+8]
cmp byte ptr [eax+68], 0
je .L_089E
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 29
push offset Lt_089F
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_089E:
.L_089D:
.L_0898:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
PREPARE_IDX:
push ebp
mov ebp, esp
sub esp, 240
push ebx
.L_08A1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
jne .L_08A4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx+32], 0
jne .L_08A6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
cmp dword ptr [eax+12], -1
je .L_08A8
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_08A2
jmp .L_08A7
.L_08A8:
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_0134
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_08A2
.L_08A7:
jmp .L_08A5
.L_08A6:
push 0
push 0
call REG_TEMPO
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+4]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_08B5
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
push 0
push -1
push 6
push offset Lt_08BD
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_0134
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset Lt_03EC
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push 2
push offset Lt_0110
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrConcatByref
add esp, 20
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_08A2
jmp .L_08B4
.L_08B5:
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_08A2
.L_08B4:
.L_08A5:
jmp .L_08A3
.L_08A4:
push 0
push 0
call REG_TEMPO
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_08D0
push 0
push -1
push 6
push offset Lt_08BD
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
jmp .L_08CF
.L_08D0:
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
.L_08CF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_08DC
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_08DD
push -1
push -1
lea eax, [ebp-12]
push eax
push 2
push offset Lt_0134
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_08A2
jmp .L_08DB
.L_08DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 1
jne .L_08E2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+48]
mov ebx, dword ptr [ecx+32]
mov ecx, dword ptr [ebx+4]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_08E4
push 0
push -1
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+48]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset Lt_0473
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push 2
push offset Lt_0110
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
jmp .L_08E3
.L_08E4:
push 0
push -1
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset Lt_00F8
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset Lt_0473
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push 2
push offset Lt_0110
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
.L_08E3:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-12]
push eax
push 2
push offset Lt_0134
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_08A2
.L_08E2:
.L_08DB:
.L_08A3:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 49
push offset Lt_08F9
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_08FD
push 0
push 4
push offset Lt_08FE
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_08FD:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_08A2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETBOPCODE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_08FF:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0902
.L_0904:
mov eax, offset Lt_0223
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0905:
mov eax, offset Lt_0224
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0906:
mov eax, offset Lt_0907
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0908:
mov eax, offset Lt_0909
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_090A:
mov eax, offset Lt_090B
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_090C:
mov eax, offset Lt_090D
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_090E:
mov eax, offset Lt_090F
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0910:
mov eax, offset Lt_0911
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0912:
mov eax, offset Lt_0913
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0914:
mov eax, offset Lt_0915
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0916:
mov eax, offset Lt_0917
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0918:
mov eax, offset Lt_0919
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_091A:
mov eax, offset Lt_091B
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_091C:
mov eax, offset Lt_091D
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_091E:
mov eax, offset Lt_091F
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0920:
mov eax, offset Lt_0921
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0922:
mov eax, offset Lt_0923
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0924:
mov eax, offset Lt_0925
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0926:
mov eax, offset Lt_0927
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0928:
mov eax, offset Lt_0109
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0929:
mov eax, offset Lt_092A
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_092B:
mov eax, offset Lt_092C
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_092D:
mov eax, offset Lt_092E
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_092F:
mov eax, offset Lt_0930
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0931:
mov eax, offset Lt_0932
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0933:
mov eax, offset Lt_0934
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0935:
mov eax, offset Lt_0936
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0937:
mov eax, offset Lt_0938
mov dword ptr [ebp-4], eax
jmp .L_0901
.L_0902:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 71
ja .L_0937
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0939+eax*4-112]
.L_0939:
.int .L_0904
.int .L_0905
.int .L_0906
.int .L_0908
.int .L_090A
.int .L_090C
.int .L_0912
.int .L_0914
.int .L_0937
.int .L_0937
.int .L_0916
.int .L_0924
.int .L_0926
.int .L_090E
.int .L_0910
.int .L_0937
.int .L_0937
.int .L_0918
.int .L_091C
.int .L_091E
.int .L_091A
.int .L_0920
.int .L_0922
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0937
.int .L_0929
.int .L_092B
.int .L_092D
.int .L_092F
.int .L_0931
.int .L_0933
.int .L_0928
.int .L_0935
.L_0901:
.L_0900:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
RESTORE_VRREG:
push ebp
mov ebp, esp
push ebx
.L_093A:
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+236], eax
mov dword ptr [CTX+240], 1
mov eax, dword ptr [ebp+12]
cmp dword ptr [REGHANDLE+eax*4], -2
jne .L_093D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov dword ptr [REGHANDLE+ebx*4], ecx
.L_093D:
.L_093C:
.L_093B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
BOP_FLOAT:
push ebp
mov ebp, esp
sub esp, 228
push ebx
.L_093E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
cmp dword ptr [ebp+20], 0
je .L_0941
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-124], eax
.L_0941:
.L_0940:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-128], ebx
cmp dword ptr [ebp-128], 16
jne .L_0943
push 0
push 6
push offset Lt_07BC
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_0944
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 9
push offset Lt_0945
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_009E
push -1
lea ebx, [ebp-72]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_0946
push -1
lea ebx, [ebp-84]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_0947
push -1
lea ebx, [ebp-96]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_0948
push -1
lea ebx, [ebp-108]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_0949
push -1
lea ebx, [ebp-120]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0942
.L_0943:
push 0
push 6
push offset Lt_07B6
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_094A
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 9
push offset Lt_094B
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_00B1
push -1
lea ebx, [ebp-72]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_094C
push -1
lea ebx, [ebp-84]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_094D
push -1
lea ebx, [ebp-96]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_094E
push -1
lea ebx, [ebp-108]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 7
push offset Lt_094F
push -1
lea ebx, [ebp-120]
push ebx
call fb_StrAssign
add esp, 20
.L_0942:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_0951
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push dword ptr [ebp+24]
push -1
push 7
push offset Lt_0952
push -1
lea ebx, [ebp-36]
push ebx
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea ebx, [ebp-144]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0950
.L_0951:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0956
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
push dword ptr [ebp+24]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-72]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push 7
push offset Lt_0952
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0950
.L_0956:
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push dword ptr [ebp+24]
push -1
push 7
push offset Lt_0952
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
.L_0950:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .L_0962
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push dword ptr [ebp+28]
push -1
push 7
push offset Lt_0963
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0961
.L_0962:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0967
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
push dword ptr [ebp+28]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-72]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push 7
push offset Lt_0963
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0961
.L_0967:
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push dword ptr [ebp+28]
push -1
push 7
push offset Lt_0963
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
.L_0961:
cmp dword ptr [ebp+8], 45
je .L_0974
.L_0975:
cmp dword ptr [ebp+8], 48
je .L_0974
.L_0976:
cmp dword ptr [ebp+8], 47
je .L_0974
.L_0977:
cmp dword ptr [ebp+8], 50
je .L_0974
.L_0978:
cmp dword ptr [ebp+8], 46
je .L_0974
.L_0979:
cmp dword ptr [ebp+8], 49
jne .L_0973
.L_0974:
cmp dword ptr [ebp+44], 0
jne .L_097B
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 5
push offset Lt_097C
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
.L_097B:
.L_097A:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset Lt_0980
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+8], 45
jne .L_0984
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 4
push offset Lt_0985
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0983
.L_0984:
cmp dword ptr [ebp+8], 48
jne .L_0988
cmp dword ptr [ebp+44], 0
jne .L_098A
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 4
push offset Lt_0985
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0989
.L_098A:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 0
push dword ptr [ebp+44]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 4
push offset Lt_0985
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
.L_0989:
.L_0988:
.L_0983:
cmp dword ptr [ebp+8], 45
jne .L_0990
.L_0991:
mov eax, offset Lt_0992
mov dword ptr [ebp-132], eax
jmp .L_098F
.L_0990:
cmp dword ptr [ebp+8], 48
jne .L_0993
.L_0994:
mov eax, offset Lt_0995
mov dword ptr [ebp-132], eax
jmp .L_098F
.L_0993:
cmp dword ptr [ebp+8], 47
jne .L_0996
.L_0997:
mov eax, offset Lt_0998
mov dword ptr [ebp-132], eax
jmp .L_098F
.L_0996:
cmp dword ptr [ebp+8], 50
jne .L_0999
.L_099A:
mov eax, offset Lt_099B
mov dword ptr [ebp-132], eax
jmp .L_098F
.L_0999:
cmp dword ptr [ebp+8], 46
jne .L_099C
.L_099D:
mov eax, offset Lt_099E
mov dword ptr [ebp-132], eax
jmp .L_098F
.L_099C:
cmp dword ptr [ebp+8], 49
jne .L_099F
.L_09A0:
mov eax, offset Lt_09A1
mov dword ptr [ebp-132], eax
.L_099F:
.L_098F:
cmp dword ptr [ebp+44], 0
jne .L_09A3
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 0
push dword ptr [ebp-132]
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
jmp .L_09A2
.L_09A3:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 0
push dword ptr [ebp+44]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 0
push dword ptr [ebp-132]
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+44]
call REG_MARK
add esp, 4
.L_09A2:
cmp dword ptr [ebp+8], 45
jne .L_09A9
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
.L_09A9:
cmp dword ptr [ebp+44], 0
jne .L_09AD
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRQ+eax*4]
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_09AE
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-124]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
.L_09AD:
.L_09AC:
jmp .L_0972
.L_0973:
cmp dword ptr [ebp+8], 28
je .L_09B6
.L_09B7:
cmp dword ptr [ebp+8], 29
je .L_09B6
.L_09B8:
cmp dword ptr [ebp+8], 30
je .L_09B6
.L_09B9:
cmp dword ptr [ebp+8], 31
jne .L_09B5
.L_09B6:
cmp dword ptr [ebp+8], 28
jne .L_09BB
.L_09BC:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset Lt_0980
push -1
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
jmp .L_09BA
.L_09BB:
cmp dword ptr [ebp+8], 29
jne .L_09BF
.L_09C0:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset Lt_0980
push -1
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
jmp .L_09BA
.L_09BF:
cmp dword ptr [ebp+8], 30
jne .L_09C3
.L_09C4:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset Lt_0980
push -1
lea eax, [ebp-108]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
jmp .L_09BA
.L_09C3:
cmp dword ptr [ebp+8], 31
jne .L_09C7
.L_09C8:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset Lt_0980
push -1
lea eax, [ebp-120]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
.L_09C7:
.L_09BA:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 16
jne .L_09CC
cmp dword ptr [ebp-128], 15
jne .L_09CE
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 20
push offset Lt_09CF
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
.L_09CE:
.L_09CD:
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRQ+eax*4]
push 6
push offset Lt_07BC
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
jmp .L_09CB
.L_09CC:
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRD+eax*4]
push 6
push offset Lt_07B6
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
.L_09CB:
push dword ptr [ebp-124]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
jmp .L_0972
.L_09B5:
cmp dword ptr [ebp+8], 64
jne .L_09D8
.L_09D9:
cmp dword ptr [ebp-128], 16
jne .L_09DB
push dword ptr [ebp-124]
push dword ptr [ebp+20]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 6
push offset Lt_09DC
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRQ+eax*4]
push 6
push offset Lt_07BC
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
jmp .L_09DA
.L_09DB:
push dword ptr [ebp-124]
push dword ptr [ebp+20]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 7
push offset Lt_09E1
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRQ+eax*4]
push 6
push offset Lt_07B6
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
.L_09DA:
jmp .L_0972
.L_09D8:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETBOPCODE
add esp, 4
push eax
push 51
push offset Lt_09E9
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
.L_09E6:
.L_0972:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_093F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADOPERANDSANDWRITEBOP:
push ebp
mov ebp, esp
sub esp, 324
push ebx
.L_09ED:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-144], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-124], ebx
mov ebx, dword ptr [ebp-124]
and ebx, 480
test ebx, ebx
je .L_09F0
mov dword ptr [ebp-124], 8
.L_09F0:
cmp dword ptr [ebp-124], 8
je .L_09F3
.L_09F4:
cmp dword ptr [ebp-124], 9
je .L_09F3
.L_09F5:
cmp dword ptr [ebp-124], 13
je .L_09F3
.L_09F6:
cmp dword ptr [ebp-124], 14
je .L_09F3
.L_09F7:
cmp dword ptr [ebp-124], 10
je .L_09F3
.L_09F8:
cmp dword ptr [ebp-124], 16
jne .L_09F2
.L_09F3:
push 0
push 11
push offset Lt_09F9
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_09F1
.L_09F2:
cmp dword ptr [ebp-124], 11
je .L_09FB
.L_09FC:
cmp dword ptr [ebp-124], 12
je .L_09FB
.L_09FD:
cmp dword ptr [ebp-124], 15
jne .L_09FA
.L_09FB:
push 0
push 11
push offset Lt_09FE
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_09F1
.L_09FA:
cmp dword ptr [ebp-124], 5
je .L_0A00
.L_0A01:
cmp dword ptr [ebp-124], 6
jne .L_09FF
.L_0A00:
push 0
push 10
push offset Lt_0A02
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_09F1
.L_09FF:
cmp dword ptr [ebp-124], 2
je .L_0A04
.L_0A05:
cmp dword ptr [ebp-124], 3
je .L_0A04
.L_0A06:
cmp dword ptr [ebp-124], 1
je .L_0A04
.L_0A07:
cmp dword ptr [ebp-124], 4
jne .L_0A03
.L_0A04:
push 0
push 10
push offset Lt_0A08
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_09F1
.L_0A03:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-188]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-188]
push ebx
call HWRITEASM64
add esp, 8
lea ebx, [ebp-188]
push ebx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
call fb_IntToStr
add esp, 4
push eax
push 48
push offset Lt_0A0D
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
.L_0A09:
.L_09F1:
push 0
push -1
lea eax, [ebp-60]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-180], ebx
cmp dword ptr [ebp-180], 4
jne .L_0A13
.L_0A14:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-124], 8
je .L_0A17
.L_0A18:
cmp dword ptr [ebp-124], 9
je .L_0A17
.L_0A19:
cmp dword ptr [ebp-124], 13
je .L_0A17
.L_0A1A:
cmp dword ptr [ebp-124], 14
je .L_0A17
.L_0A1B:
cmp dword ptr [ebp-124], 10
je .L_0A17
.L_0A1C:
cmp dword ptr [ebp-124], 16
jne .L_0A16
.L_0A17:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A15
.L_0A16:
cmp dword ptr [ebp-124], 11
je .L_0A1E
.L_0A1F:
cmp dword ptr [ebp-124], 12
je .L_0A1E
.L_0A20:
cmp dword ptr [ebp-124], 15
jne .L_0A1D
.L_0A1E:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A15
.L_0A1D:
cmp dword ptr [ebp-124], 5
je .L_0A22
.L_0A23:
cmp dword ptr [ebp-124], 6
jne .L_0A21
.L_0A22:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A15
.L_0A21:
cmp dword ptr [ebp-124], 2
je .L_0A25
.L_0A26:
cmp dword ptr [ebp-124], 3
je .L_0A25
.L_0A27:
cmp dword ptr [ebp-124], 1
je .L_0A25
.L_0A28:
cmp dword ptr [ebp-124], 4
jne .L_0A24
.L_0A25:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A15
.L_0A24:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 47
push offset Lt_0A2D
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
.L_0A29:
.L_0A15:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A11
.L_0A13:
cmp dword ptr [ebp-180], 2
jne .L_0A31
.L_0A32:
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
jmp .L_0A11
.L_0A31:
cmp dword ptr [ebp-180], 3
jne .L_0A33
.L_0A34:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A11
.L_0A33:
cmp dword ptr [ebp-180], 5
jne .L_0A38
.L_0A39:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A11
.L_0A38:
cmp dword ptr [ebp-180], 0
jne .L_0A3D
.L_0A3E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0A3F
mov dword ptr [ebp-184], 24
jmp .L_1C5E
.L_0A3F:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-184], eax
.L_1C5E:
mov eax, dword ptr [ebp-184]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0A42
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A41
.L_0A42:
cmp dword ptr [ebp-124], 1
jne .L_0A44
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_1C67
cmp dword ptr [eax+24], 0
je .L_0A46
.L_1C67:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], 1
mov dword ptr [eax+28], 0
.L_0A46:
.L_0A45:
.L_0A44:
.L_0A43:
push 0
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0A41:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A11
.L_0A3D:
cmp dword ptr [ebp-180], 1
jne .L_0A47
.L_0A48:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_0A49
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-184], eax
jmp .L_1C5F
.L_0A49:
mov dword ptr [ebp-184], 0
.L_1C5F:
cmp dword ptr [ebp-184], 0
je .L_0A4B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-188], eax
jmp .L_1C60
.L_0A4B:
mov dword ptr [ebp-188], 0
.L_1C60:
cmp dword ptr [ebp-188], 0
je .L_0A4E
push -1
push 999994
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-140], eax
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0134
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0168
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0A4D
.L_0A4E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0A55
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A54
.L_0A55:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0A54:
.L_0A4D:
jmp .L_0A11
.L_0A47:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 51
push offset Lt_0A5D
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
.L_0A5A:
.L_0A11:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-180], ebx
cmp dword ptr [ebp-180], 4
jne .L_0A62
.L_0A63:
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-140], eax
cmp dword ptr [ebp-124], 8
je .L_0A66
.L_0A67:
cmp dword ptr [ebp-124], 9
je .L_0A66
.L_0A68:
cmp dword ptr [ebp-124], 13
je .L_0A66
.L_0A69:
cmp dword ptr [ebp-124], 14
je .L_0A66
.L_0A6A:
cmp dword ptr [ebp-124], 10
je .L_0A66
.L_0A6B:
cmp dword ptr [ebp-124], 16
jne .L_0A65
.L_0A66:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A64
.L_0A65:
cmp dword ptr [ebp-124], 11
je .L_0A6D
.L_0A6E:
cmp dword ptr [ebp-124], 12
je .L_0A6D
.L_0A6F:
cmp dword ptr [ebp-124], 15
jne .L_0A6C
.L_0A6D:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A64
.L_0A6C:
cmp dword ptr [ebp-124], 5
je .L_0A71
.L_0A72:
cmp dword ptr [ebp-124], 6
jne .L_0A70
.L_0A71:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A64
.L_0A70:
cmp dword ptr [ebp-124], 2
je .L_0A74
.L_0A75:
cmp dword ptr [ebp-124], 3
je .L_0A74
.L_0A76:
cmp dword ptr [ebp-124], 1
je .L_0A74
.L_0A77:
cmp dword ptr [ebp-124], 4
jne .L_0A73
.L_0A74:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A64
.L_0A73:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 47
push offset Lt_0A7C
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
.L_0A78:
.L_0A64:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A60
.L_0A62:
cmp dword ptr [ebp-180], 0
jne .L_0A80
.L_0A81:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0A82
mov dword ptr [ebp-184], 24
jmp .L_1C61
.L_0A82:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-184], eax
.L_1C61:
mov eax, dword ptr [ebp-184]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0A85
push 0
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [eax+24]
call HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A84
.L_0A85:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 1
jne .L_0A87
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jne .L_1C6C
cmp dword ptr [eax+24], 0
je .L_0A89
.L_1C6C:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+24], 1
mov dword ptr [eax+28], 0
.L_0A89:
.L_0A88:
.L_0A87:
.L_0A86:
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0A84:
jmp .L_0A60
.L_0A80:
cmp dword ptr [ebp-180], 3
jne .L_0A8A
.L_0A8B:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A60
.L_0A8A:
cmp dword ptr [ebp-180], 5
jne .L_0A8F
.L_0A90:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0A60
.L_0A8F:
cmp dword ptr [ebp-180], 2
jne .L_0A94
.L_0A95:
lea eax, [ebp-48]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call PREPARE_IDX
add esp, 12
jmp .L_0A60
.L_0A94:
cmp dword ptr [ebp-180], 1
jne .L_0A96
.L_0A97:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_0A98
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-184], eax
jmp .L_1C62
.L_0A98:
mov dword ptr [ebp-184], 0
.L_1C62:
cmp dword ptr [ebp-184], 0
je .L_0A9A
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-188], eax
jmp .L_1C63
.L_0A9A:
mov dword ptr [ebp-188], 0
.L_1C63:
cmp dword ptr [ebp-188], 0
je .L_0A9D
push -1
push 999993
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-140], eax
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0134
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0168
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0A9C
.L_0A9D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0AA3
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0AA2
.L_0AA3:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0AA2:
.L_0A9C:
jmp .L_0A60
.L_0A96:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 51
push offset Lt_0AAB
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
.L_0AA8:
.L_0A60:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0AAF
lea eax, [ebp-36]
push eax
call EMITOP3_OP4
add esp, 4
.L_0AAF:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0AB1
lea eax, [ebp-48]
push eax
call EMITOP3_OP4
add esp, 4
.L_0AB1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0AB2
mov dword ptr [ebp-148], 24
jmp .L_1C64
.L_0AB2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-148], eax
.L_1C64:
mov eax, dword ptr [ebp-148]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-180], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0AB4
mov dword ptr [ebp-152], 24
jmp .L_1C65
.L_0AB4:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-152], ebx
.L_1C65:
mov ebx, dword ptr [ebp-152]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-180]
je .L_0AB7
push dword ptr [ebp+24]
lea eax, [ebp-60]
push eax
lea eax, [ebp-48]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call BOP_FLOAT
add esp, 40
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_09EE
.L_0AB7:
.L_0AB6:
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+20], 0
je .L_0ABB
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0ABD
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
jmp .L_0ABC
.L_0ABD:
push -1
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+12]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_0ABF
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0ABE
.L_0ABF:
cmp dword ptr [ebp-124], 8
je .L_0AC6
.L_0AC7:
cmp dword ptr [ebp-124], 9
je .L_0AC6
.L_0AC8:
cmp dword ptr [ebp-124], 13
je .L_0AC6
.L_0AC9:
cmp dword ptr [ebp-124], 14
je .L_0AC6
.L_0ACA:
cmp dword ptr [ebp-124], 10
jne .L_0AC5
.L_0AC6:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0AC4
.L_0AC5:
cmp dword ptr [ebp-124], 11
je .L_0AD0
.L_0AD1:
cmp dword ptr [ebp-124], 12
jne .L_0ACF
.L_0AD0:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRD+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0AC4
.L_0ACF:
cmp dword ptr [ebp-124], 5
je .L_0AD7
.L_0AD8:
cmp dword ptr [ebp-124], 6
jne .L_0AD6
.L_0AD7:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRW+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0AC4
.L_0AD6:
cmp dword ptr [ebp-124], 2
je .L_0ADE
.L_0ADF:
cmp dword ptr [ebp-124], 3
je .L_0ADE
.L_0AE0:
cmp dword ptr [ebp-124], 1
je .L_0ADE
.L_0AE1:
cmp dword ptr [ebp-124], 4
jne .L_0ADD
.L_0ADE:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRB+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0AC4
.L_0ADD:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 49
push offset Lt_0AEA
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
.L_0AE6:
.L_0AC4:
.L_0ABE:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
.L_0ABC:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .L_0AEF
push -1
push 99999
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-136], eax
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0AEF:
.L_0AEE:
jmp .L_0ABA
.L_0ABB:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_0AF5
push -1
push 99999
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-136], eax
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0AF5:
.L_0AF4:
cmp dword ptr [ebp+8], 30
jne .L_0AFB
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0AFD
push 0
push 8
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp+20], eax
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0AFD:
.L_0AFC:
jmp .L_0AFA
.L_0AFB:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_0B03
push 0
push dword ptr [ebp-124]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-144], eax
push -1
mov eax, dword ptr [ebp-144]
push dword ptr [eax+12]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .L_0B05
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B04
.L_0B05:
cmp dword ptr [ebp-124], 8
je .L_0B0C
.L_0B0D:
cmp dword ptr [ebp-124], 9
je .L_0B0C
.L_0B0E:
cmp dword ptr [ebp-124], 13
je .L_0B0C
.L_0B0F:
cmp dword ptr [ebp-124], 14
je .L_0B0C
.L_0B10:
cmp dword ptr [ebp-124], 10
jne .L_0B0B
.L_0B0C:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B0A
.L_0B0B:
cmp dword ptr [ebp-124], 11
je .L_0B16
.L_0B17:
cmp dword ptr [ebp-124], 12
jne .L_0B15
.L_0B16:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRD+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B0A
.L_0B15:
cmp dword ptr [ebp-124], 5
je .L_0B1D
.L_0B1E:
cmp dword ptr [ebp-124], 6
jne .L_0B1C
.L_0B1D:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRW+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B0A
.L_0B1C:
cmp dword ptr [ebp-124], 2
je .L_0B24
.L_0B25:
cmp dword ptr [ebp-124], 3
je .L_0B24
.L_0B26:
cmp dword ptr [ebp-124], 1
je .L_0B24
.L_0B27:
cmp dword ptr [ebp-124], 4
jne .L_0B23
.L_0B24:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRB+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B0A
.L_0B23:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 49
push offset Lt_0B30
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
.L_0B2C:
.L_0B0A:
.L_0B04:
.L_0B03:
.L_0B02:
.L_0AFA:
.L_0ABA:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0B35
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 4294967295
mov ebx, -1
jl .L_1C75
jg .L_1C76
cmp dword ptr [eax+24], 2147483648
jb .L_1C75
.L_1C76:
xor ebx, ebx
.L_1C75:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
mov ecx, -1
jg .L_1C77
jl .L_1C78
cmp dword ptr [eax+24], 2147483648
jae .L_1C77
.L_1C78:
xor ecx, ecx
.L_1C77:
or ebx, ecx
je .L_0B37
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 4294967295
mov ebx, -1
jl .L_1C79
jg .L_1C7A
cmp dword ptr [ecx+24], 2147483648
jb .L_1C79
.L_1C7A:
xor ebx, ebx
.L_1C79:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 0
mov eax, -1
jg .L_1C7B
jl .L_1C7C
cmp dword ptr [ecx+24], 4294967295
ja .L_1C7B
.L_1C7C:
xor eax, eax
.L_1C7B:
or ebx, eax
je .L_0B39
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 8
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0B38
.L_0B39:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 8
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
.L_0B38:
push 0
push 4
push offset Lt_009E
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp-124], 8
je .L_0B41
.L_0B42:
cmp dword ptr [ebp-124], 9
je .L_0B41
.L_0B43:
cmp dword ptr [ebp-124], 13
je .L_0B41
.L_0B44:
cmp dword ptr [ebp-124], 14
je .L_0B41
.L_0B45:
cmp dword ptr [ebp-124], 10
je .L_0B41
.L_0B46:
cmp dword ptr [ebp-124], 16
jne .L_0B40
.L_0B41:
jmp .L_0B3F
.L_0B40:
cmp dword ptr [ebp-124], 11
je .L_0B48
.L_0B49:
cmp dword ptr [ebp-124], 12
je .L_0B48
.L_0B4A:
cmp dword ptr [ebp-124], 15
jne .L_0B47
.L_0B48:
push 0
push 4
push offset Lt_00B1
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B3F
.L_0B47:
cmp dword ptr [ebp-124], 5
je .L_0B4C
.L_0B4D:
cmp dword ptr [ebp-124], 6
jne .L_0B4B
.L_0B4C:
push 0
push 3
push offset Lt_00C3
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B3F
.L_0B4B:
cmp dword ptr [ebp-124], 2
je .L_0B4F
.L_0B50:
cmp dword ptr [ebp-124], 3
je .L_0B4F
.L_0B51:
cmp dword ptr [ebp-124], 1
je .L_0B4F
.L_0B52:
cmp dword ptr [ebp-124], 4
jne .L_0B4E
.L_0B4F:
push 0
push 3
push offset Lt_00D5
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B3F
.L_0B4E:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 50
push offset Lt_0B57
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
.L_0B53:
.L_0B3F:
.L_0B37:
.L_0B36:
.L_0B35:
.L_0B34:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-180], eax
jmp .L_0B5C
.L_0B5E:
push 2
push offset Lt_0004
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0B60
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0B61
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0B5F
.L_0B60:
push 3
push offset Lt_0B65
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0B64
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_04E7
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0B5F
.L_0B64:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0473
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
.L_0B5F:
cmp dword ptr [ebp+20], 0
je .L_0B6D
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0B6D:
jmp .L_0B5B
.L_0B6E:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0B6F
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0B75
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0B75:
jmp .L_0B5B
.L_0B76:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0B7C
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0B7C:
jmp .L_0B5B
.L_0B7D:
cmp dword ptr [ebp+20], 0
je .L_0B7F
cmp dword ptr [ebp-124], 1
jne .L_0B81
push 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
push 0
push -1
push 4
push offset Lt_0B82
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_09AE
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-264]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-264]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0B80
.L_0B81:
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0B86
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 4
.L_0B80:
cmp dword ptr [ebp-124], 8
je .L_0B8B
.L_0B8C:
cmp dword ptr [ebp-124], 9
je .L_0B8B
.L_0B8D:
cmp dword ptr [ebp-124], 13
je .L_0B8B
.L_0B8E:
cmp dword ptr [ebp-124], 14
je .L_0B8B
.L_0B8F:
cmp dword ptr [ebp-124], 10
jne .L_0B8A
.L_0B8B:
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRQ]
push 5
push offset Lt_03EC
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRQ]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B89
.L_0B8A:
cmp dword ptr [ebp-124], 11
je .L_0B95
.L_0B96:
cmp dword ptr [ebp-124], 12
jne .L_0B94
.L_0B95:
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRD]
push 5
push offset Lt_03EC
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRD]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B89
.L_0B94:
cmp dword ptr [ebp-124], 5
je .L_0B9C
.L_0B9D:
cmp dword ptr [ebp-124], 6
jne .L_0B9B
.L_0B9C:
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRW]
push 5
push offset Lt_03EC
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRW]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B89
.L_0B9B:
cmp dword ptr [ebp-124], 2
je .L_0BA3
.L_0BA4:
cmp dword ptr [ebp-124], 3
je .L_0BA3
.L_0BA5:
cmp dword ptr [ebp-124], 1
je .L_0BA3
.L_0BA6:
cmp dword ptr [ebp-124], 4
jne .L_0BA2
.L_0BA3:
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRB]
push 5
push offset Lt_03EC
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRB]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0B89
.L_0BA2:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 49
push offset Lt_0B30
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-264]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-264]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
.L_0BAB:
.L_0B89:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0B7E
.L_0B7F:
cmp dword ptr [ebp-124], 8
je .L_0BB6
.L_0BB7:
cmp dword ptr [ebp-124], 9
je .L_0BB6
.L_0BB8:
cmp dword ptr [ebp-124], 13
je .L_0BB6
.L_0BB9:
cmp dword ptr [ebp-124], 14
je .L_0BB6
.L_0BBA:
cmp dword ptr [ebp-124], 10
jne .L_0BB5
.L_0BB6:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRQ]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRQ]
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BB4
.L_0BB5:
cmp dword ptr [ebp-124], 11
je .L_0BC0
.L_0BC1:
cmp dword ptr [ebp-124], 12
jne .L_0BBF
.L_0BC0:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRD]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRD]
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BB4
.L_0BBF:
cmp dword ptr [ebp-124], 5
je .L_0BC7
.L_0BC8:
cmp dword ptr [ebp-124], 6
jne .L_0BC6
.L_0BC7:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRW]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRW]
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BB4
.L_0BC6:
cmp dword ptr [ebp-124], 2
je .L_0BCE
.L_0BCF:
cmp dword ptr [ebp-124], 3
je .L_0BCE
.L_0BD0:
cmp dword ptr [ebp-124], 1
je .L_0BCE
.L_0BD1:
cmp dword ptr [ebp-124], 4
jne .L_0BCD
.L_0BCE:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRB]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRB]
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BB4
.L_0BCD:
push 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-288]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-288]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 49
push offset Lt_0B30
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
.L_0BD6:
.L_0BB4:
cmp dword ptr [ebp-124], 1
jne .L_0BDC
push 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
push 4
push offset Lt_0B82
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset Lt_09AE
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0BDB
.L_0BDC:
push 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset Lt_0B86
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-300]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-300]
push eax
call fb_StrDelete
add esp, 4
.L_0BDB:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-120]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push -1
lea eax, [ebp-120]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
.L_0B7E:
cmp dword ptr [ebp+20], 0
je .L_0BEB
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0BEB:
jmp .L_0B5B
.L_0BEC:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_09AE
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0BF2
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0BF2:
jmp .L_0B5B
.L_0BF3:
cmp dword ptr [ebp-124], 8
je .L_0BF6
.L_0BF7:
cmp dword ptr [ebp-124], 9
je .L_0BF6
.L_0BF8:
cmp dword ptr [ebp-124], 13
je .L_0BF6
.L_0BF9:
cmp dword ptr [ebp-124], 14
je .L_0BF6
.L_0BFA:
cmp dword ptr [ebp-124], 10
jne .L_0BF5
.L_0BF6:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRQ]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRQ]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BF4
.L_0BF5:
cmp dword ptr [ebp-124], 11
je .L_0C00
.L_0C01:
cmp dword ptr [ebp-124], 12
jne .L_0BFF
.L_0C00:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRD]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRD]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BF4
.L_0BFF:
cmp dword ptr [ebp-124], 5
je .L_0C07
.L_0C08:
cmp dword ptr [ebp-124], 6
jne .L_0C06
.L_0C07:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRW]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRW]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BF4
.L_0C06:
cmp dword ptr [ebp-124], 2
je .L_0C0E
.L_0C0F:
cmp dword ptr [ebp-124], 3
je .L_0C0E
.L_0C10:
cmp dword ptr [ebp-124], 1
je .L_0C0E
.L_0C11:
cmp dword ptr [ebp-124], 4
jne .L_0C0D
.L_0C0E:
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRB]
push 5
push offset Lt_03EC
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRB]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0BF4
.L_0C0D:
push 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-288]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-288]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 49
push offset Lt_0B30
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
.L_0C16:
.L_0BF4:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_09AE
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-124], 1
jne .L_0C20
push 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
push 4
push offset Lt_0B82
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_09AE
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0C1F
.L_0C20:
push 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_0B86
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-300]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-300]
push eax
call fb_StrDelete
add esp, 4
.L_0C1F:
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0C2B
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0C2B:
jmp .L_0B5B
.L_0C2C:
push 2
push offset Lt_0004
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0C2E
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_04E7
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0C2D
.L_0C2E:
push 3
push offset Lt_0B65
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0C31
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0B61
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0C2D
.L_0C31:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0C34
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
.L_0C2D:
cmp dword ptr [ebp+20], 0
je .L_0C3A
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0C3A:
jmp .L_0B5B
.L_0C3B:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0C3C
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
push 1
push offset Lt_0000
push -1
lea eax, [ebp-96]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0C42
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
.L_0C42:
jmp .L_0B5B
.L_0C47:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
cmp ebx, 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+4]
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0C49
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-232], ecx
jmp .L_0C4B
.L_0C4D:
push 0
push 3
push offset Lt_0C4E
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C4A
.L_0C4F:
push 0
push 2
push offset Lt_0C50
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C4A
.L_0C51:
push 0
push 3
push offset Lt_0C52
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C4A
.L_0C53:
push 0
push 3
push offset Lt_0C54
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C4A
.L_0C55:
push 0
push 2
push offset Lt_0C56
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C4A
.L_0C57:
push 0
push 2
push offset Lt_016D
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C4A
.L_0C4B:
mov ecx, dword ptr [ebp-232]
add ecx, 4294967251
cmp ecx, 5
ja .L_0C4A
mov ecx, dword ptr [ebp-232]
jmp dword ptr [.L_0C58+ecx*4-180]
.L_0C58:
.int .L_0C57
.int .L_0C55
.int .L_0C4F
.int .L_0C51
.int .L_0C53
.int .L_0C4D
.L_0C4A:
jmp .L_0C48
.L_0C49:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-232], ecx
jmp .L_0C5A
.L_0C5C:
push 0
push 3
push offset Lt_0C5D
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C59
.L_0C5E:
push 0
push 2
push offset Lt_0C5F
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C59
.L_0C60:
push 0
push 3
push offset Lt_0C52
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C59
.L_0C61:
push 0
push 3
push offset Lt_0C62
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C59
.L_0C63:
push 0
push 2
push offset Lt_0C64
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C59
.L_0C65:
push 0
push 2
push offset Lt_016D
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0C59
.L_0C5A:
mov ecx, dword ptr [ebp-232]
add ecx, 4294967251
cmp ecx, 5
ja .L_0C59
mov ecx, dword ptr [ebp-232]
jmp dword ptr [.L_0C66+ecx*4-180]
.L_0C66:
.int .L_0C65
.int .L_0C63
.int .L_0C5E
.int .L_0C60
.int .L_0C61
.int .L_0C5C
.L_0C59:
.L_0C48:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea ecx, [ebp-24]
push ecx
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ecx, [ebp-12]
push ecx
push 5
push offset Lt_0128
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+24], 0
jne .L_0C6C
push 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
push 0
push -1
push 4
push offset Lt_0C6E
push -1
push -1
lea eax, [ebp-84]
push eax
push 4
push offset Lt_0C6D
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-264]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-264]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push -1
push 5
push offset Lt_0C72
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 7
push offset Lt_071D
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
lea eax, [ebp-276]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-300]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-300]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-124], 1
je .L_0C77
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_0C78
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
.L_0C77:
.L_0C76:
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
jmp .L_0C6B
.L_0C6C:
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 0
push dword ptr [ebp+24]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00F7
push -1
push -1
lea eax, [ebp-84]
push eax
push 2
push offset Lt_0C7B
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+24]
call REG_MARK
add esp, 4
.L_0C6B:
jmp .L_0B5B
.L_0C80:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_0C82
push 0
push dword ptr [REGSTRQ+8]
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0C84
cmp dword ptr [REGHANDLE+8], -2
je .L_0C86
mov eax, dword ptr [REGHANDLE+8]
mov dword ptr [ebp-140], eax
push -1
push dword ptr [ebp-140]
call REG_FINDFREE
add esp, 8
mov dword ptr [REGHANDLE+8], -2
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 0
push dword ptr [REGSTRQ+8]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-132], 2
jne .L_0C8C
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
.L_0C8C:
jmp .L_0C85
.L_0C86:
or dword ptr [CTX+128], 4
.L_0C85:
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 10
push offset Lt_0C8D
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
.L_0C84:
.L_0C83:
push 0
push 3
push offset Lt_00D7
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0C82:
.L_0C81:
cmp dword ptr [ebp+8], 41
jne .L_0C91
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0C92
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0C90
.L_0C91:
mov eax, dword ptr [ebp-124]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-124]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0C98
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea ecx, [ebp-24]
push ecx
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ecx, [ebp-12]
push ecx
push 5
push offset Lt_0C99
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0C97
.L_0C98:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_06CA
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
.L_0C97:
.L_0C90:
jmp .L_0B5B
.L_0CA2:
cmp dword ptr [REGHANDLE+12], -2
je .L_0CA4
push 0
push dword ptr [REGSTRQ+12]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0CA6
mov eax, dword ptr [REGHANDLE+12]
mov dword ptr [ebp-140], eax
push -1
push dword ptr [ebp-140]
call REG_FINDFREE
add esp, 8
mov dword ptr [REGHANDLE+12], -2
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 0
push dword ptr [REGSTRQ+12]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 4
push 0
push dword ptr [REGSTRQ+12]
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0CAC
push 0
push 0
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0CAC:
.L_0CAB:
cmp dword ptr [ebp-132], 3
jne .L_0CAE
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
.L_0CAE:
.L_0CA6:
.L_0CA5:
jmp .L_0CA3
.L_0CA4:
or dword ptr [CTX+128], 8
.L_0CA3:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0CB0
cmp dword ptr [REGHANDLE+12], -2
jne .L_0CB2
mov dword ptr [REGHANDLE+12], -3
.L_0CB2:
push 0
push 0
call REG_TEMPO
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [REGHANDLE+12], -3
jne .L_0CB4
mov dword ptr [REGHANDLE+12], -2
.L_0CB4:
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0CB0:
.L_0CAF:
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-128], ecx
mov ecx, dword ptr [ebp-128]
and ecx, 480
test ecx, ecx
je .L_0CBC
mov dword ptr [ebp-128], 8
.L_0CBC:
mov ecx, dword ptr [ebp-124]
cmp ecx, 9
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-124]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-128]
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-128]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0CBE
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 11
push offset Lt_0CBF
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_0CC1
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0CBD
.L_0CBE:
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 4
push offset Lt_0CC4
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset Lt_0CC6
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
.L_0CBD:
cmp dword ptr [ebp+20], 0
jne .L_0CCA
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0CC9
.L_0CCA:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0CC9:
jmp .L_0B5B
.L_0CD1:
cmp dword ptr [REGHANDLE+12], -2
je .L_0CD3
push 0
push dword ptr [REGSTRQ+12]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0CD5
mov eax, dword ptr [REGHANDLE+12]
mov dword ptr [ebp-140], eax
push -1
push dword ptr [ebp-140]
call REG_FINDFREE
add esp, 8
mov dword ptr [REGHANDLE+12], -2
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 0
push dword ptr [REGSTRQ+12]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 4
push 0
push dword ptr [REGSTRQ+12]
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0CDB
push 0
push 0
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0CDB:
.L_0CDA:
cmp dword ptr [ebp-132], 3
jne .L_0CDD
push dword ptr [ebp-140]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
.L_0CDD:
.L_0CD5:
.L_0CD4:
jmp .L_0CD2
.L_0CD3:
or dword ptr [CTX+128], 8
.L_0CD2:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0CDF
cmp dword ptr [REGHANDLE+12], -2
jne .L_0CE1
mov dword ptr [REGHANDLE+12], -3
.L_0CE1:
push 0
push 0
call REG_TEMPO
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [REGHANDLE+12], -3
jne .L_0CE3
mov dword ptr [REGHANDLE+12], -2
.L_0CE3:
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0CDF:
.L_0CDE:
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-128], ecx
mov ecx, dword ptr [ebp-128]
and ecx, 480
test ecx, ecx
je .L_0CEB
mov dword ptr [ebp-128], 8
.L_0CEB:
mov ecx, dword ptr [ebp-124]
cmp ecx, 9
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-124]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-128]
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-128]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0CED
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 11
push offset Lt_0CBF
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_0CC1
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0CEC
.L_0CED:
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 4
push offset Lt_0CC4
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset Lt_0CC6
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
.L_0CEC:
cmp dword ptr [ebp+20], 0
jne .L_0CF5
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_0CF6
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0CF4
.L_0CF5:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_0CF6
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call RESTORE_VRREG
add esp, 8
.L_0CF4:
jmp .L_0B5B
.L_0CFD:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETBOPCODE
add esp, 4
push eax
push 45
push offset Lt_0D00
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0B5B
.L_0B5C:
mov eax, dword ptr [ebp-180]
add eax, 4294967268
cmp eax, 22
ja .L_0CFD
mov eax, dword ptr [ebp-180]
jmp dword ptr [.L_0D04+eax*4-112]
.L_0D04:
.int .L_0B5E
.int .L_0C2C
.int .L_0C3B
.int .L_0CFD
.int .L_0CA2
.int .L_0CD1
.int .L_0B6E
.int .L_0B76
.int .L_0CFD
.int .L_0CFD
.int .L_0BEC
.int .L_0BF3
.int .L_0B7D
.int .L_0C80
.int .L_0C80
.int .L_0CFD
.int .L_0CFD
.int .L_0C47
.int .L_0C47
.int .L_0C47
.int .L_0C47
.int .L_0C47
.int .L_0C47
.L_0B5B:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_09EE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBOP:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0D05:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
je .L_0D08
jmp .L_0D07
.L_0D08:
cmp dword ptr [ebp+20], 0
jne .L_0D09
.L_0D09:
.L_0D07:
cmp dword ptr [ebp+20], 0
jne .L_0D0B
.L_0D0B:
.L_0D0A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
je .L_0D12
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+28]
cmp ebx, dword ptr [eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+28]
and ebx, 480
je .L_0D0C
mov dword ptr [ebp-8], 24
jmp .L_1C8C
.L_0D0C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_1C8C:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0D0E
mov dword ptr [ebp-12], 24
jmp .L_1C8D
.L_0D0E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_1C8D:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 480
je .L_0D10
mov dword ptr [ebp-16], 24
jmp .L_1C8E
.L_0D10:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-16], eax
.L_1C8E:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [ebp-32]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, dword ptr [SYMB_DTYPETB+ebx+4]
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-28]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-20], ecx
jmp .L_1C8B
.L_0D12:
mov dword ptr [ebp-20], 0
.L_1C8B:
cmp dword ptr [ebp-20], 0
je .L_0D15
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 480
test ecx, ecx
je .L_0D17
jmp .L_0D16
.L_0D17:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
mov dword ptr [ecx+4], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 12
.L_0D16:
.L_0D15:
.L_0D14:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOADOPERANDSANDWRITEBOP
add esp, 20
.L_0D06:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITUOP:
push ebp
mov ebp, esp
sub esp, 252
push ebx
.L_0D18:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
cmp dword ptr [ebp+16], 0
jne .L_0D1B
.L_0D1B:
.L_0D1A:
cmp dword ptr [ebp+16], 0
je .L_0D1D
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0D1F
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-64], ebx
cmp dword ptr [ebp-64], 4
jne .L_0D22
.L_0D23:
push -1
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+12]
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_0D20
.L_0D22:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 47
push offset Lt_0D27
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
.L_0D24:
.L_0D20:
jmp .L_0D1E
.L_0D1F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-40], eax
.L_0D1E:
.L_0D1D:
.L_0D1C:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp-48]
and ecx, 480
test ecx, ecx
je .L_0D2B
mov dword ptr [ebp-48], 8
.L_0D2B:
cmp dword ptr [ebp-48], 8
je .L_0D2E
.L_0D2F:
cmp dword ptr [ebp-48], 9
je .L_0D2E
.L_0D30:
cmp dword ptr [ebp-48], 13
je .L_0D2E
.L_0D31:
cmp dword ptr [ebp-48], 14
je .L_0D2E
.L_0D32:
cmp dword ptr [ebp-48], 16
je .L_0D2E
.L_0D33:
cmp dword ptr [ebp-48], 10
jne .L_0D2D
.L_0D2E:
push 0
push 11
push offset Lt_09F9
push -1
lea ecx, [ebp-36]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0D2C
.L_0D2D:
cmp dword ptr [ebp-48], 11
je .L_0D35
.L_0D36:
cmp dword ptr [ebp-48], 12
je .L_0D35
.L_0D37:
cmp dword ptr [ebp-48], 15
jne .L_0D34
.L_0D35:
push 0
push 11
push offset Lt_09FE
push -1
lea ecx, [ebp-36]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0D2C
.L_0D34:
cmp dword ptr [ebp-48], 5
je .L_0D39
.L_0D3A:
cmp dword ptr [ebp-48], 6
jne .L_0D38
.L_0D39:
push 0
push 10
push offset Lt_0A02
push -1
lea ecx, [ebp-36]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0D2C
.L_0D38:
cmp dword ptr [ebp-48], 2
je .L_0D3C
.L_0D3D:
cmp dword ptr [ebp-48], 3
je .L_0D3C
.L_0D3E:
cmp dword ptr [ebp-48], 1
je .L_0D3C
.L_0D3F:
cmp dword ptr [ebp-48], 4
jne .L_0D3B
.L_0D3C:
push 0
push 10
push offset Lt_0A08
push -1
lea ecx, [ebp-36]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_0D2C
.L_0D3B:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-72]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-72]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+4]
call fb_IntToStr
add esp, 4
push eax
push 48
push offset Lt_0D44
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
.L_0D40:
.L_0D2C:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-64], ecx
cmp dword ptr [ebp-64], 4
jne .L_0D4A
.L_0D4B:
cmp dword ptr [ebp-48], 1
jne .L_0D4D
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D4C
.L_0D4D:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0D4C:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D48
.L_0D4A:
cmp dword ptr [ebp-64], 2
jne .L_0D4E
.L_0D4F:
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
jmp .L_0D48
.L_0D4E:
cmp dword ptr [ebp-64], 3
jne .L_0D50
.L_0D51:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D48
.L_0D50:
cmp dword ptr [ebp-64], 5
jne .L_0D55
.L_0D56:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D48
.L_0D55:
cmp dword ptr [ebp-64], 0
jne .L_0D5A
.L_0D5B:
jmp .L_0D48
.L_0D5A:
cmp dword ptr [ebp-64], 1
jne .L_0D5C
.L_0D5D:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
mov ecx, dword ptr [ebx+4]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0D5F
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D5E
.L_0D5F:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0D5E:
jmp .L_0D48
.L_0D5C:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 43
push offset Lt_0D67
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
.L_0D64:
.L_0D48:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0D6B
lea eax, [ebp-24]
push eax
call EMITOP3_OP4
add esp, 4
.L_0D6B:
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 52
jne .L_0D6E
cmp dword ptr [ebp+16], 0
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0D70
cmp dword ptr [ebp-48], 8
je .L_0D73
.L_0D74:
cmp dword ptr [ebp-48], 9
je .L_0D73
.L_0D75:
cmp dword ptr [ebp-48], 13
je .L_0D73
.L_0D76:
cmp dword ptr [ebp-48], 14
je .L_0D73
.L_0D77:
cmp dword ptr [ebp-48], 10
jne .L_0D72
.L_0D73:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 3
push offset Lt_0129
push -1
push 0
mov ebx, dword ptr [ebp-40]
push dword ptr [REGSTRQ+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D71
.L_0D72:
cmp dword ptr [ebp-48], 11
je .L_0D7D
.L_0D7E:
cmp dword ptr [ebp-48], 12
jne .L_0D7C
.L_0D7D:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRD+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D71
.L_0D7C:
cmp dword ptr [ebp-48], 5
je .L_0D84
.L_0D85:
cmp dword ptr [ebp-48], 6
jne .L_0D83
.L_0D84:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRW+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D71
.L_0D83:
cmp dword ptr [ebp-48], 2
je .L_0D8B
.L_0D8C:
cmp dword ptr [ebp-48], 3
je .L_0D8B
.L_0D8D:
cmp dword ptr [ebp-48], 1
je .L_0D8B
.L_0D8E:
cmp dword ptr [ebp-48], 4
jne .L_0D8A
.L_0D8B:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRB+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0D71
.L_0D8A:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 49
push offset Lt_0D97
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
.L_0D93:
.L_0D71:
.L_0D70:
.L_0D6F:
cmp dword ptr [ebp-48], 1
jne .L_0D9C
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0D9D
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0DA2
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0D9B
.L_0D9C:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0B86
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0D9B:
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0D19
.L_0D6E:
.L_0D6D:
cmp dword ptr [ebp-48], 15
jne .L_0DA8
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0DAA
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0DAB
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DA9
.L_0DAA:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 13
push offset Lt_0DAE
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0DA9:
cmp dword ptr [ebp+8], 60
jne .L_0DB2
.L_0DB3:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0DB4
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DB2:
cmp dword ptr [ebp+8], 58
jne .L_0DB6
.L_0DB7:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0DB8
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DB6:
cmp dword ptr [ebp+8], 69
jne .L_0DBA
.L_0DBB:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0DBC
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DBA:
cmp dword ptr [ebp+8], 68
jne .L_0DBE
.L_0DBF:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0DC0
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DBE:
cmp dword ptr [ebp+8], 61
jne .L_0DC2
.L_0DC3:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset Lt_0DC4
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DC2:
cmp dword ptr [ebp+8], 59
jne .L_0DC6
.L_0DC7:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset Lt_0DC8
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DC6:
cmp dword ptr [ebp+8], 62
jne .L_0DCA
.L_0DCB:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0DCC
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DCA:
cmp dword ptr [ebp+8], 63
jne .L_0DCE
.L_0DCF:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset Lt_0DD0
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DCE:
cmp dword ptr [ebp+8], 65
jne .L_0DD2
.L_0DD3:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 21
push offset Lt_0DD4
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
jmp .L_0DB1
.L_0DD2:
cmp dword ptr [ebp+8], 56
jne .L_0DD6
.L_0DD7:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 20
push offset Lt_0DD8
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset Lt_0DDA
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset Lt_0DDC
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 16
push offset Lt_0DDE
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
jmp .L_0DB1
.L_0DD6:
cmp dword ptr [ebp+8], 57
jne .L_0DE0
.L_0DE1:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset Lt_0DE2
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DE0:
cmp dword ptr [ebp+8], 72
jne .L_0DE4
.L_0DE5:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 9
push offset Lt_0DE6
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DE4:
cmp dword ptr [ebp+8], 71
jne .L_0DE8
.L_0DE9:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset Lt_0DEA
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DE8:
cmp dword ptr [ebp+8], 70
jne .L_0DEC
.L_0DED:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 7
push offset Lt_0DEE
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DB1
.L_0DEC:
cmp dword ptr [ebp+8], 54
jne .L_0DF0
.L_0DF1:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 20
push offset Lt_0DF3
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset Lt_0DDA
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset Lt_0DF6
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
jmp .L_0DB1
.L_0DF0:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 47
push offset Lt_0DFB
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_0DF8:
.L_0DB1:
cmp dword ptr [ebp+8], 57
jne .L_0DFF
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset Lt_0E00
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRD+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0DFE
.L_0DFF:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRD+eax*4]
push 6
push offset Lt_07B6
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_0DFE:
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0D19
.L_0DA8:
.L_0DA7:
mov eax, dword ptr [ebp+8]
cmp eax, 56
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-48]
cmp ebx, 16
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0E08
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 10
push offset Lt_0469
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [REGHANDLE+12], -2
je .L_0E0C
mov eax, dword ptr [REGHANDLE+12]
mov dword ptr [ebp-44], eax
push -1
push dword ptr [ebp-44]
call REG_FINDFREE
add esp, 8
mov dword ptr [REGHANDLE+12], -2
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 0
push dword ptr [REGSTRQ+12]
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [ebp-44]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-40], 3
jne .L_0E12
push dword ptr [ebp-44]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-40], eax
.L_0E12:
jmp .L_0E0B
.L_0E0C:
or dword ptr [CTX+128], 8
.L_0E0B:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 4
push offset Lt_0CC4
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 13
push offset Lt_0E14
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 13
push offset Lt_0E16
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+16], 0
jne .L_0E19
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E18
.L_0E19:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
.L_0E18:
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0D19
.L_0E08:
.L_0E07:
mov eax, dword ptr [ebp+8]
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-48]
cmp ebx, 16
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0E21
cmp dword ptr [ebp+16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0E23
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea ecx, [ebp-12]
push ecx
push -1
push 3
push offset Lt_0129
push -1
push 0
mov ecx, dword ptr [ebp-40]
push dword ptr [REGSTRQ+ecx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ecx, [ebp-96]
push ecx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0E23:
.L_0E22:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0C78
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_0E2B
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
.L_0E2B:
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0D19
.L_0E21:
.L_0E20:
mov eax, dword ptr [ebp+8]
cmp eax, 57
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-48]
cmp ecx, 16
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0E2D
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0E2F
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 4
push offset Lt_0E30
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0128
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 4
push offset Lt_0992
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 4
push offset Lt_0B82
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 4
push offset Lt_0E39
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push 5
push offset Lt_097C
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
jmp .L_0E2E
.L_0E2F:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 11
push offset Lt_0E43
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 4
push offset Lt_0992
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 11
push offset Lt_0E47
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 4
push offset Lt_0E39
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 12
push offset Lt_0E4B
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+16], 0
jne .L_0E50
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E4F
.L_0E50:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
.L_0E4F:
.L_0E2E:
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0D19
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_0E2D:
.L_0E2C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0E58
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0E59
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E57
.L_0E58:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 13
push offset Lt_0E5C
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0E57:
cmp dword ptr [ebp+8], 60
jne .L_0E60
.L_0E61:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset Lt_0E62
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E60:
cmp dword ptr [ebp+8], 58
jne .L_0E64
.L_0E65:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset Lt_0E66
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E64:
cmp dword ptr [ebp+8], 69
jne .L_0E68
.L_0E69:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset Lt_0E6A
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E68:
cmp dword ptr [ebp+8], 68
jne .L_0E6C
.L_0E6D:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset Lt_0E6E
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E6C:
cmp dword ptr [ebp+8], 61
jne .L_0E70
.L_0E71:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0E72
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E70:
cmp dword ptr [ebp+8], 59
jne .L_0E74
.L_0E75:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0E76
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E74:
cmp dword ptr [ebp+8], 62
jne .L_0E78
.L_0E79:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset Lt_0E7A
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E78:
cmp dword ptr [ebp+8], 63
jne .L_0E7C
.L_0E7D:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset Lt_0E7E
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E7C:
cmp dword ptr [ebp+8], 56
jne .L_0E80
.L_0E81:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 28
push offset Lt_0E82
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset Lt_0E84
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset Lt_0E86
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 16
push offset Lt_0E88
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
jmp .L_0E5F
.L_0E80:
cmp dword ptr [ebp+8], 65
jne .L_0E8A
.L_0E8B:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 21
push offset Lt_0E8C
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
jmp .L_0E5F
.L_0E8A:
cmp dword ptr [ebp+8], 57
jne .L_0E8E
.L_0E8F:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset Lt_0E90
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E8E:
cmp dword ptr [ebp+8], 72
jne .L_0E92
.L_0E93:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 9
push offset Lt_0E94
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E92:
cmp dword ptr [ebp+8], 71
jne .L_0E96
.L_0E97:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset Lt_0E98
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E96:
cmp dword ptr [ebp+8], 70
jne .L_0E9A
.L_0E9B:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset Lt_0E9C
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0E5F
.L_0E9A:
cmp dword ptr [ebp+8], 54
jne .L_0E9E
.L_0E9F:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 28
push offset Lt_0EA1
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset Lt_0E84
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset Lt_0EA4
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call RESTORE_VRREG
add esp, 8
jmp .L_0E5F
.L_0E9E:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 47
push offset Lt_0EA9
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_0EA6:
.L_0E5F:
cmp dword ptr [ebp+8], 57
jne .L_0EAD
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset Lt_0E00
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRQ+eax*4]
push 8
push offset Lt_0EAE
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EAC
.L_0EAD:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [REGSTRQ+eax*4]
push 6
push offset Lt_07BC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_0EAC:
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0D19:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITROUNDFLOAT:
push ebp
mov ebp, esp
sub esp, 156
.L_0EB5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov byte ptr [CTX+152], 1
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 51
push offset Lt_0EB7
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 4
push offset Lt_0992
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+8], 16
jne .L_0EBC
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 20
push offset Lt_0EBD
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+12], 14
je .L_0EC0
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 20
push offset Lt_0EC1
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
.L_0EC0:
.L_0EBF:
jmp .L_0EBB
.L_0EBC:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 20
push offset Lt_0EC3
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+12], 14
je .L_0EC6
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 20
push offset Lt_0EC7
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
.L_0EC6:
.L_0EC5:
.L_0EBB:
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_0111
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+8], 16
jne .L_0ECE
cmp dword ptr [ebp+12], 14
je .L_0ED0
push offset Lt_01A8
call NO_ROUNDSD
add esp, 4
jmp .L_0ECF
.L_0ED0:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 15
push offset Lt_0ED1
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
.L_0ECF:
jmp .L_0ECD
.L_0ECE:
cmp dword ptr [ebp+12], 14
je .L_0ED4
push offset Lt_0ED5
call NO_ROUNDSD
add esp, 4
jmp .L_0ED3
.L_0ED4:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 16
push offset Lt_0ED6
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
.L_0ED3:
.L_0ECD:
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0EB6:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 512
push ebx
.L_0EDA:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0EDD
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 44
push offset Lt_0EE0
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
.L_0EDD:
.L_0EDC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0EE4
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
lea ebx, [ebp-120]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_0EE4:
.L_0EE3:
mov ebx, dword ptr [ebp-4]
and ebx, 480
test ebx, ebx
je .L_0EE6
mov dword ptr [ebp-4], 13
.L_0EE6:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .L_0EE8
mov dword ptr [ebp-8], 13
.L_0EE8:
cmp dword ptr [ebp-4], 8
jne .L_0EEA
mov dword ptr [ebp-4], 13
jmp .L_0EE9
.L_0EEA:
cmp dword ptr [ebp-4], 10
jne .L_0EEB
mov dword ptr [ebp-4], 13
jmp .L_0EE9
.L_0EEB:
cmp dword ptr [ebp-4], 9
jne .L_0EEC
mov dword ptr [ebp-4], 14
.L_0EEC:
.L_0EE9:
cmp dword ptr [ebp-8], 8
jne .L_0EEE
mov dword ptr [ebp-8], 13
jmp .L_0EED
.L_0EEE:
cmp dword ptr [ebp-8], 10
jne .L_0EEF
mov dword ptr [ebp-8], 13
jmp .L_0EED
.L_0EEF:
cmp dword ptr [ebp-8], 9
jne .L_0EF0
mov dword ptr [ebp-8], 14
.L_0EF0:
.L_0EED:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov dword ptr [ebp-176], eax
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_0EF1
mov dword ptr [ebp-136], 24
jmp .L_1CA2
.L_0EF1:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-136], eax
.L_1CA2:
mov eax, dword ptr [ebp-136]
imul eax, 28
mov dword ptr [ebp-180], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0EF3
mov dword ptr [ebp-140], 24
jmp .L_1CA3
.L_0EF3:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-140], eax
.L_1CA3:
mov eax, dword ptr [ebp-140]
imul eax, 28
mov ecx, dword ptr [ebp-180]
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, dword ptr [SYMB_DTYPETB+ecx+4]
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-176]
mov dword ptr [ebp-184], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .L_0EF5
mov dword ptr [ebp-144], 24
jmp .L_1CA4
.L_0EF5:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-144], ebx
.L_1CA4:
mov ebx, dword ptr [ebp-144]
imul ebx, 28
mov dword ptr [ebp-188], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_0EF7
mov dword ptr [ebp-148], 24
jmp .L_1CA5
.L_0EF7:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-148], ebx
.L_1CA5:
mov ebx, dword ptr [ebp-148]
imul ebx, 28
mov ecx, dword ptr [ebp-188]
mov eax, dword ptr [SYMB_DTYPETB+ebx]
cmp eax, dword ptr [SYMB_DTYPETB+ecx]
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-184]
je .L_0EFA
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ecx+12], ebx
lea ebx, [ebp-120]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_0EFA:
.L_0EF9:
mov ebx, dword ptr [ebp-4]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-8]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-4]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
or ebx, ecx
je .L_0EFC
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
lea ecx, [ebp-120]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-108]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-96]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-84]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-72]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-60]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-48]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-36]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-24]
push ecx
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_0EFC:
.L_0EFB:
mov ecx, dword ptr [ebp-4]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-8]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
mov ebx, dword ptr [ebp-8]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
or ecx, ebx
je .L_0EFE
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [ebp-12], ecx
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ecx+4], ebx
lea ebx, [ebp-120]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_0EFE:
.L_0EFD:
mov ebx, dword ptr [ebp-4]
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-8]
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0F00
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
lea ecx, [ebp-120]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-108]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-96]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-84]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-72]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-60]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-48]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-36]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-24]
push ecx
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_0F00:
.L_0EFF:
mov ecx, dword ptr [ebp-4]
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-8]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_0F02
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-176], ecx
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-176]
mov dword ptr [ecx+8], ebx
lea ebx, [ebp-120]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_0F02:
.L_0F01:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call REG_FINDFREE
add esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-4], 17
jne .L_0F04
mov dword ptr [ebp-4], 13
.L_0F04:
cmp dword ptr [ebp-4], 13
je .L_0F07
.L_0F08:
cmp dword ptr [ebp-4], 14
je .L_0F07
.L_0F09:
cmp dword ptr [ebp-4], 16
je .L_0F07
.L_0F0A:
cmp dword ptr [ebp-4], 20
jne .L_0F06
.L_0F07:
push 0
push 11
push offset Lt_09F9
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F05
.L_0F06:
cmp dword ptr [ebp-4], 11
je .L_0F0C
.L_0F0D:
cmp dword ptr [ebp-4], 12
je .L_0F0C
.L_0F0E:
cmp dword ptr [ebp-4], 15
jne .L_0F0B
.L_0F0C:
push 0
push 11
push offset Lt_09FE
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F05
.L_0F0B:
cmp dword ptr [ebp-4], 5
je .L_0F10
.L_0F11:
cmp dword ptr [ebp-4], 6
jne .L_0F0F
.L_0F10:
push 0
push 10
push offset Lt_0A02
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F05
.L_0F0F:
cmp dword ptr [ebp-4], 2
je .L_0F13
.L_0F14:
cmp dword ptr [ebp-4], 3
je .L_0F13
.L_0F15:
cmp dword ptr [ebp-4], 1
je .L_0F13
.L_0F16:
cmp dword ptr [ebp-4], 4
jne .L_0F12
.L_0F13:
push 0
push 10
push offset Lt_0A08
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F05
.L_0F12:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 55
push offset Lt_0F1B
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
.L_0F17:
.L_0F05:
cmp dword ptr [ebp-8], 13
je .L_0F21
.L_0F22:
cmp dword ptr [ebp-8], 14
je .L_0F21
.L_0F23:
cmp dword ptr [ebp-8], 16
je .L_0F21
.L_0F24:
cmp dword ptr [ebp-8], 20
jne .L_0F20
.L_0F21:
push 0
push 11
push offset Lt_09F9
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F1F
.L_0F20:
cmp dword ptr [ebp-8], 11
je .L_0F26
.L_0F27:
cmp dword ptr [ebp-8], 12
je .L_0F26
.L_0F28:
cmp dword ptr [ebp-8], 15
jne .L_0F25
.L_0F26:
push 0
push 11
push offset Lt_09FE
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F1F
.L_0F25:
cmp dword ptr [ebp-8], 5
je .L_0F2A
.L_0F2B:
cmp dword ptr [ebp-8], 6
jne .L_0F29
.L_0F2A:
push 0
push 10
push offset Lt_0A02
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F1F
.L_0F29:
cmp dword ptr [ebp-8], 2
je .L_0F2D
.L_0F2E:
cmp dword ptr [ebp-8], 3
je .L_0F2D
.L_0F2F:
cmp dword ptr [ebp-8], 1
je .L_0F2D
.L_0F30:
cmp dword ptr [ebp-8], 4
jne .L_0F2C
.L_0F2D:
push 0
push 10
push offset Lt_0A08
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F1F
.L_0F2C:
cmp dword ptr [ebp-8], 7
jne .L_0F31
.L_0F32:
cmp dword ptr [SYMB_DTYPETB+200], 2
jne .L_0F34
push 0
push 10
push offset Lt_0A02
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 6
jmp .L_0F33
.L_0F34:
cmp dword ptr [SYMB_DTYPETB+200], 4
jne .L_0F35
push 0
push 11
push offset Lt_09FE
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 12
jmp .L_0F33
.L_0F35:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 55
push offset Lt_0F38
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
.L_0F33:
jmp .L_0F1F
.L_0F31:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 55
push offset Lt_0F3F
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
.L_0F3B:
.L_0F1F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-176], ebx
cmp dword ptr [ebp-176], 2
jne .L_0F45
.L_0F46:
lea ebx, [ebp-96]
push ebx
lea ebx, [ebp-72]
push ebx
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
jmp .L_0F43
.L_0F45:
cmp dword ptr [ebp-176], 4
jne .L_0F47
.L_0F48:
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-120]
push ebx
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-128], eax
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
je .L_0F4A
mov dword ptr [ebp-8], 13
.L_0F4A:
cmp dword ptr [ebp-8], 13
je .L_0F4D
.L_0F4E:
cmp dword ptr [ebp-8], 14
je .L_0F4D
.L_0F4F:
cmp dword ptr [ebp-8], 16
jne .L_0F4C
.L_0F4D:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F4B
.L_0F4C:
cmp dword ptr [ebp-8], 11
je .L_0F51
.L_0F52:
cmp dword ptr [ebp-8], 12
je .L_0F51
.L_0F53:
cmp dword ptr [ebp-8], 15
jne .L_0F50
.L_0F51:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F4B
.L_0F50:
cmp dword ptr [ebp-8], 5
je .L_0F55
.L_0F56:
cmp dword ptr [ebp-8], 6
jne .L_0F54
.L_0F55:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F4B
.L_0F54:
cmp dword ptr [ebp-8], 2
je .L_0F58
.L_0F59:
cmp dword ptr [ebp-8], 3
je .L_0F58
.L_0F5A:
cmp dword ptr [ebp-8], 1
je .L_0F58
.L_0F5B:
cmp dword ptr [ebp-8], 4
jne .L_0F57
.L_0F58:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F4B
.L_0F57:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 55
push offset Lt_0F60
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
.L_0F5C:
.L_0F4B:
jmp .L_0F43
.L_0F47:
cmp dword ptr [ebp-176], 1
jne .L_0F64
.L_0F65:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0F67
movzx ebx, byte ptr [CTX+232]
neg ebx
cmp ebx, -1
jne .L_0F68
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-180], eax
jmp .L_1CAA
.L_0F68:
mov dword ptr [ebp-180], 0
.L_1CAA:
cmp dword ptr [ebp-180], 0
je .L_0F6B
push 0
push -1
push 15
push offset Lt_0A4F
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F6A
.L_0F6B:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_0F6A:
jmp .L_0F66
.L_0F67:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_0F66:
jmp .L_0F43
.L_0F64:
cmp dword ptr [ebp-176], 3
jne .L_0F71
.L_0F72:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F43
.L_0F71:
cmp dword ptr [ebp-176], 5
jne .L_0F76
.L_0F77:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
cmp ebx, 22
jne .L_0F7B
movzx ebx, byte ptr [CTX+232]
neg ebx
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-216], ebx
jmp .L_1CAB
.L_0F7B:
mov dword ptr [ebp-216], 0
.L_1CAB:
cmp dword ptr [ebp-216], 0
je .L_0F7D
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-220], eax
jmp .L_1CAC
.L_0F7D:
mov dword ptr [ebp-220], 0
.L_1CAC:
cmp dword ptr [ebp-220], 0
je .L_0F80
push 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push -1
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-72]
push eax
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-72]
push eax
call fb_LEFT
add esp, 8
push eax
push 20
push offset Lt_0F81
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-256]
push eax
call fb_StrDelete
add esp, 4
push 3
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
lea eax, [ebp-280]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-292]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-292]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-292]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0F7F
.L_0F80:
push 3
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-268]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-268]
push eax
call fb_StrDelete
add esp, 4
.L_0F7F:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EDB
jmp .L_0F43
.L_0F76:
cmp dword ptr [ebp-176], 0
jne .L_0F8C
.L_0F8D:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0F8E
mov dword ptr [ebp-180], 24
jmp .L_1CAD
.L_0F8E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-180], eax
.L_1CAD:
mov eax, dword ptr [ebp-180]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0F91
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0F90
.L_0F91:
push 0
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_0F90:
jmp .L_0F43
.L_0F8C:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 29
push offset Lt_0F95
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
.L_0F92:
.L_0F43:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-96]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0F99
lea eax, [ebp-96]
push eax
call EMITOP3_OP4
add esp, 4
.L_0F99:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_0F9A
mov dword ptr [ebp-152], 24
jmp .L_1CAE
.L_0F9A:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-152], eax
.L_1CAE:
mov eax, dword ptr [ebp-152]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0F9D
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0F9E
mov dword ptr [ebp-176], 24
jmp .L_1CAF
.L_0F9E:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-176], eax
.L_1CAF:
mov eax, dword ptr [ebp-176]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0FA1
cmp dword ptr [ebp-4], 16
jne .L_0FA3
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0FA5
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 12
push offset Lt_0DAB
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
push 0
push 5
push offset Lt_0FA8
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_0FA5:
.L_0FA4:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 16
push offset Lt_0FA9
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0FA2
.L_0FA3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0FB0
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 12
push offset Lt_0FB1
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
push 0
push 5
push offset Lt_0FB4
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_0FB0:
.L_0FAF:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 16
push offset Lt_0FB5
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
.L_0FA2:
jmp .L_0FA0
.L_0FA1:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 15
push offset Lt_0FBB
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-8], 14
jne .L_0FBE
.L_0FBF:
cmp dword ptr [ebp-4], 16
jne .L_0FC1
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 15
push offset Lt_0FC4
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 4
push offset Lt_0FC6
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 19
push offset Lt_0FC9
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push 5
push offset Lt_0111
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call fb_StrDelete
add esp, 4
push -1
push 999999
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
lea eax, [ebp-332]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-344]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_06CA
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-368]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push 11
push offset Lt_0FD4
push -1
lea eax, [ebp-380]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-380]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-380]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-48]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
lea eax, [ebp-404]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-416]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-416]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-416]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 16
push offset Lt_0FD9
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
lea eax, [ebp-428]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-440]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-440]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-440]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push 17
push offset Lt_0FDC
push -1
lea eax, [ebp-452]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-476]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-476]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-476]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
lea eax, [ebp-488]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
lea eax, [ebp-500]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-512]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-512]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-512]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0FC0
.L_0FC1:
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 14
push offset Lt_0FE5
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 4
push offset Lt_0FC6
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 20
push offset Lt_0FE9
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push 5
push offset Lt_0111
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call fb_StrDelete
add esp, 4
push -1
push 999999
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
lea eax, [ebp-332]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-344]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_06CA
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-368]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push 11
push offset Lt_0FD4
push -1
lea eax, [ebp-380]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-380]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-380]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-48]
push eax
push 4
push offset Lt_073A
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
lea eax, [ebp-404]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-416]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-416]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-416]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 16
push offset Lt_0FF8
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
lea eax, [ebp-428]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-440]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-440]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-440]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push 17
push offset Lt_0FFB
push -1
lea eax, [ebp-452]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-476]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-476]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-476]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
lea eax, [ebp-488]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
lea eax, [ebp-500]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-512]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-512]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-512]
push eax
call fb_StrDelete
add esp, 4
.L_0FC0:
jmp .L_0FBD
.L_0FBE:
cmp dword ptr [ebp-8], 13
jne .L_1002
.L_1003:
cmp dword ptr [ebp-4], 16
jne .L_1005
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 16
push offset Lt_0FD9
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1004
.L_1005:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 16
push offset Lt_0FF8
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
.L_1004:
jmp .L_0FBD
.L_1002:
cmp dword ptr [ebp-8], 11
je .L_1013
.L_1014:
cmp dword ptr [ebp-8], 12
jne .L_1012
.L_1013:
cmp dword ptr [ebp-4], 16
jne .L_1016
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 16
push offset Lt_0FD9
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1015
.L_1016:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 16
push offset Lt_0FF8
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
.L_1015:
jmp .L_0FBD
.L_1012:
cmp dword ptr [ebp-8], 2
je .L_1024
.L_1025:
cmp dword ptr [ebp-8], 5
je .L_1024
.L_1026:
cmp dword ptr [ebp-8], 3
je .L_1024
.L_1027:
cmp dword ptr [ebp-8], 6
je .L_1024
.L_1028:
cmp dword ptr [ebp-8], 1
je .L_1024
.L_1029:
cmp dword ptr [ebp-8], 4
jne .L_1023
.L_1024:
mov eax, dword ptr [ebp-8]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_102B
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea ebx, [ebp-72]
push ebx
push -1
push -1
lea ebx, [ebp-120]
push ebx
push 12
push offset Lt_102C
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea ebx, [ebp-200]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
jmp .L_102A
.L_102B:
cmp dword ptr [ebp-8], 1
jne .L_1030
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 4
push offset Lt_0E30
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset Lt_0128
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 9
push offset Lt_1035
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 7
push offset Lt_1037
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push 14
push offset Lt_1039
push -1
lea eax, [ebp-272]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call fb_StrDelete
add esp, 4
jmp .L_102A
.L_1030:
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 12
push offset Lt_103B
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
.L_102A:
cmp dword ptr [ebp-4], 16
jne .L_1040
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 19
push offset Lt_1041
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
jmp .L_103F
.L_1040:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 19
push offset Lt_1046
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset Lt_07B6
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
.L_103F:
jmp .L_0FBD
.L_1023:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 52
push offset Lt_104E
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
.L_104B:
.L_0FBD:
.L_0FA0:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_0F9D:
.L_0F9C:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_1051
mov dword ptr [ebp-156], 24
jmp .L_1CB0
.L_1051:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-156], eax
.L_1CB0:
mov eax, dword ptr [ebp-156]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-176], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .L_1053
mov dword ptr [ebp-160], 24
jmp .L_1CB1
.L_1053:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-160], ebx
.L_1CB1:
mov ebx, dword ptr [ebp-160]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-176]
je .L_1056
cmp dword ptr [ebp-8], 16
jne .L_1058
cmp dword ptr [ebp-4], 14
jne .L_105A
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 29
push offset Lt_105B
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 15
push offset Lt_105D
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 15
push offset Lt_1061
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
push 14
push 16
call HEMITROUNDFLOAT
add esp, 8
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 19
push offset Lt_1063
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_1065
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 20
push offset Lt_0EC1
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push 5
push offset Lt_0111
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push 17
push offset Lt_106D
push -1
lea eax, [ebp-344]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
push 0
push 17
push offset Lt_106F
push -1
lea eax, [ebp-356]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-356]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-356]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push 20
push offset Lt_0EC1
push -1
lea eax, [ebp-368]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call fb_StrDelete
add esp, 4
push -1
push 999999
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
push 0
push -1
push 23
push offset Lt_1073
push -1
push -1
lea eax, [ebp-48]
push eax
push 8
push offset Lt_1072
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-404]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-404]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-404]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 9
push offset Lt_1077
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
lea eax, [ebp-416]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-428]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-428]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-428]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
lea eax, [ebp-440]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-452]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
lea eax, [ebp-476]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-488]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-488]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-488]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1059
.L_105A:
mov eax, dword ptr [ebp-4]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, 11
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 12
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 6
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_107F
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_1081
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
lea ebx, [ebp-72]
push ebx
push 12
push offset Lt_0E59
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1080
.L_1081:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 13
push offset Lt_0E5C
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
.L_1080:
push -2147483648
push 16
call HEMITROUNDFLOAT
add esp, 8
cmp dword ptr [ebp-4], 13
jne .L_1087
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1086
.L_1087:
mov eax, dword ptr [ebp-4]
cmp eax, 11
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, 12
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_108B
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_0E00
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1086
.L_108B:
mov eax, dword ptr [ebp-4]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, 6
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_108F
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset Lt_1090
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1086
.L_108F:
cmp dword ptr [ebp-4], 1
jne .L_1095
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 11
push offset Lt_0E43
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 9
push offset Lt_1035
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
.L_1095:
.L_1094:
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset Lt_0C72
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
.L_1086:
jmp .L_1059
.L_107F:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 44
push offset Lt_109D
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
.L_1059:
jmp .L_1057
.L_1058:
cmp dword ptr [ebp-4], 14
jne .L_10A1
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 20
push offset Lt_10A2
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 15
push offset Lt_105D
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 15
push offset Lt_10A7
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
push 14
push 15
call HEMITROUNDFLOAT
add esp, 8
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 19
push offset Lt_10A9
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_1065
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 20
push offset Lt_0EC7
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push 5
push offset Lt_0111
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push 17
push offset Lt_10B2
push -1
lea eax, [ebp-344]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
push 0
push 17
push offset Lt_10B4
push -1
lea eax, [ebp-356]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-356]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-356]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push 20
push offset Lt_0EC7
push -1
lea eax, [ebp-368]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call fb_StrDelete
add esp, 4
push -1
push 999999
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
push 0
push -1
push 23
push offset Lt_1073
push -1
push -1
lea eax, [ebp-48]
push eax
push 8
push offset Lt_1072
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-404]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-404]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-404]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 9
push offset Lt_1077
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
lea eax, [ebp-416]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-428]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-428]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-428]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
lea eax, [ebp-440]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-452]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
lea eax, [ebp-476]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-488]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-488]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-488]
push eax
call fb_StrDelete
add esp, 4
jmp .L_10A0
.L_10A1:
mov eax, dword ptr [ebp-4]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, 11
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 12
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 6
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_10C1
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_10C3
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
lea ebx, [ebp-72]
push ebx
push 12
push offset Lt_0DAB
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
jmp .L_10C2
.L_10C3:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push 13
push offset Lt_0DAE
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
.L_10C2:
push -2147483648
push 15
call HEMITROUNDFLOAT
add esp, 8
cmp dword ptr [ebp-4], 13
jne .L_10C9
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_10C8
.L_10C9:
mov eax, dword ptr [ebp-4]
cmp eax, 11
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, 12
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_10CD
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset Lt_0E00
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_10C8
.L_10CD:
mov eax, dword ptr [ebp-4]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, 6
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_10D1
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset Lt_1090
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
jmp .L_10C8
.L_10D1:
cmp dword ptr [ebp-4], 1
jne .L_10D6
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 11
push offset Lt_0E43
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 9
push offset Lt_1035
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
.L_10D6:
.L_10D5:
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset Lt_0C72
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
.L_10C8:
jmp .L_10A0
.L_10C1:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 44
push offset Lt_10DE
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call fb_StrDelete
add esp, 4
.L_10A0:
.L_1057:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_1056:
.L_1055:
mov eax, dword ptr [ebp-4]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_10E2
cmp dword ptr [ebp-8], 20
jne .L_10E4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push -1
lea ebx, [ebp-72]
push ebx
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset Lt_017A
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea ebx, [ebp-184]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-4], 13
jne .L_10EA
push 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
push 14
push offset Lt_10EB
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 4
jmp .L_10E9
.L_10EA:
cmp dword ptr [ebp-4], 20
je .L_10F1
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-232]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 62
push offset Lt_10F4
push -1
lea eax, [ebp-244]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-244]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-256]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-256]
push eax
call fb_StrDelete
add esp, 4
.L_10F1:
.L_10E9:
jmp .L_10E3
.L_10E4:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 53
push offset Lt_10F9
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
.L_10E3:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_10E2:
.L_10E1:
cmp dword ptr [ebp-4], 1
jne .L_10FD
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_10FF
push 2
push offset Lt_0006
push -1
lea eax, [ebp-72]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 19
push offset Lt_1100
push -1
lea ebx, [ebp-72]
push ebx
mov ebx, eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 11
push offset Lt_1101
push -1
lea eax, [ebp-72]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_1103
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 4
push offset Lt_0E30
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1102
.L_1103:
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 4
push offset Lt_0B82
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
.L_1102:
jmp .L_10FE
.L_10FF:
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 4
push offset Lt_0E30
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset Lt_0128
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 9
push offset Lt_1035
push -1
lea eax, [ebp-232]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push -1
push 5
push offset Lt_0C72
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-268]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-268]
push eax
call fb_StrDelete
add esp, 4
.L_10FE:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_10FD:
.L_10FC:
cmp dword ptr [ebp-8], 1
jne .L_1113
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 4
push offset Lt_0E30
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset Lt_0128
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 9
push offset Lt_1035
push -1
lea eax, [ebp-232]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 7
push offset Lt_1037
push -1
lea eax, [ebp-244]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-244]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_111A
mov dword ptr [ebp-248], 24
jmp .L_1CB3
.L_111A:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-248], eax
.L_1CB3:
mov eax, dword ptr [ebp-248]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 1
jne .L_111D
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 5
push offset Lt_0C72
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
jmp .L_111C
.L_111D:
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 5
push offset Lt_0C72
push -1
push -1
lea eax, [ebp-60]
push eax
push 7
push offset Lt_1121
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
.L_111C:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_1113:
.L_1112:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_1125
mov dword ptr [ebp-164], 24
jmp .L_1CB4
.L_1125:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-164], eax
.L_1CB4:
mov eax, dword ptr [ebp-164]
imul eax, 28
mov dword ptr [ebp-176], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_1127
mov dword ptr [ebp-168], 24
jmp .L_1CB5
.L_1127:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-168], eax
.L_1CB5:
mov eax, dword ptr [ebp-168]
imul eax, 28
mov ebx, dword ptr [ebp-176]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], ecx
jg .L_112A
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 4
jne .L_112C
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-108]
push ecx
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp-4], 11
je .L_112F
.L_1130:
cmp dword ptr [ebp-4], 12
je .L_112F
.L_1131:
cmp dword ptr [ebp-4], 15
jne .L_112E
.L_112F:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [REGSTRD+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_112D
.L_112E:
cmp dword ptr [ebp-4], 5
je .L_1133
.L_1134:
cmp dword ptr [ebp-4], 6
jne .L_1132
.L_1133:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [REGSTRW+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_112D
.L_1132:
cmp dword ptr [ebp-4], 2
je .L_1136
.L_1137:
cmp dword ptr [ebp-4], 3
je .L_1136
.L_1138:
cmp dword ptr [ebp-4], 4
jne .L_1135
.L_1136:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [REGSTRB+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_112D
.L_1135:
cmp dword ptr [ebp-4], 1
jne .L_1139
.L_113A:
jmp .L_112D
.L_1139:
cmp dword ptr [ebp-4], 13
je .L_113C
.L_113D:
cmp dword ptr [ebp-4], 14
je .L_113C
.L_113E:
cmp dword ptr [ebp-4], 16
jne .L_113B
.L_113C:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [REGSTRQ+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_112D
.L_113B:
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-248]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-248]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-248]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+4]
call fb_IntToStr
add esp, 4
push eax
push 55
push offset Lt_0F60
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
.L_113F:
.L_112D:
.L_112C:
.L_112B:
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-108]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0EDB
.L_112A:
.L_1129:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_1149
mov dword ptr [ebp-172], 24
jmp .L_1CB7
.L_1149:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-172], eax
.L_1CB7:
mov eax, dword ptr [ebp-172]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_114C
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_114D
mov dword ptr [ebp-176], 24
jmp .L_1CB8
.L_114D:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-176], eax
.L_1CB8:
mov eax, dword ptr [ebp-176]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-180], ecx
cmp dword ptr [ebp-180], 1
je .L_1152
.L_1153:
cmp dword ptr [ebp-180], 2
jne .L_1151
.L_1152:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea ecx, [ebp-72]
push ecx
push -1
push -1
lea ecx, [ebp-120]
push ecx
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ecx, [ebp-60]
push ecx
push 7
push offset Lt_1121
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_114F
.L_1151:
cmp dword ptr [ebp-180], 4
jne .L_1159
.L_115A:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-60]
push eax
push 8
push offset Lt_0EAE
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_114F
.L_1159:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 46
push offset Lt_1163
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
.L_1160:
.L_114F:
jmp .L_114B
.L_114C:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_1166
mov dword ptr [ebp-176], 24
jmp .L_1CB9
.L_1166:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-176], eax
.L_1CB9:
mov eax, dword ptr [ebp-176]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-180], ecx
cmp dword ptr [ebp-180], 1
je .L_116B
.L_116C:
cmp dword ptr [ebp-180], 2
jne .L_116A
.L_116B:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea ecx, [ebp-72]
push ecx
push -1
push -1
lea ecx, [ebp-120]
push ecx
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ecx, [ebp-60]
push ecx
push 7
push offset Lt_071D
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1168
.L_116A:
cmp dword ptr [ebp-180], 4
jne .L_1172
.L_1173:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_1175
mov eax, dword ptr [ebp-124]
mov dword ptr [REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ecx+12], ebx
jmp .L_1174
.L_1175:
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push -1
lea ebx, [ebp-72]
push ebx
push -1
push 3
push offset Lt_0129
push -1
push 0
mov ebx, dword ptr [ebp-124]
push dword ptr [REGSTRD+ebx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ebx, [ebp-192]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call fb_StrDelete
add esp, 4
.L_1174:
jmp .L_1168
.L_1172:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 46
push offset Lt_117D
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 4
.L_117A:
.L_1168:
.L_114B:
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0EDB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EMITSTORESTRUCT:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_1180:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [ebp-24], ebx
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+20]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_1183
push dword ptr [ebp+20]
call EMITOP3_OP4
add esp, 4
.L_1183:
cmp dword ptr [ebp-24], 2
jne .L_1185
.L_1186:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
push dword ptr [ebp+16]
push 5
push offset Lt_03EC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1184
.L_1185:
cmp dword ptr [ebp-24], 3
jne .L_118A
.L_118B:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
push dword ptr [ebp+16]
push 5
push offset Lt_03EC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 15
push offset Lt_118F
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1184
.L_118A:
cmp dword ptr [ebp-24], 6
jne .L_1191
.L_1192:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
push dword ptr [ebp+16]
push 6
push offset Lt_07BC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 15
push offset Lt_1196
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1184
.L_1191:
cmp dword ptr [ebp-24], 5
jne .L_1198
.L_1199:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset Lt_09D1
push -1
push -1
push dword ptr [ebp+16]
push 6
push offset Lt_07BC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 14
push offset Lt_119D
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
.L_1198:
.L_119F:
.L_1184:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 45
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-16]
cmp ecx, 10
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
mov ecx, dword ptr [ebp-16]
cmp ecx, 12
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
mov ecx, dword ptr [ebp-16]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .L_11A1
push 0
push -1
push 6
push offset Lt_0420
push -1
push 5
push offset Lt_0420
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
push dword ptr [ebp+16]
call fb_LEFT
add esp, 8
push eax
call fb_VALINT
add esp, 4
add eax, 8
push eax
call fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-124], eax
jmp .L_11A4
.L_11A6:
push 0
push 3
push offset Lt_00D8
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11A3
.L_11A7:
push 0
push 3
push offset Lt_00C6
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11A3
.L_11A8:
push 0
push 4
push offset Lt_00B4
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11A3
.L_11A9:
push 0
push 4
push offset Lt_00A1
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11A3
.L_11A4:
mov eax, dword ptr [ebp-124]
add eax, 4294967287
cmp eax, 7
ja .L_11A3
mov eax, dword ptr [ebp-124]
jmp dword ptr [.L_11AA+eax*4-36]
.L_11AA:
.int .L_11A6
.int .L_11A7
.int .L_11A3
.int .L_11A8
.int .L_11A3
.int .L_11A3
.int .L_11A3
.int .L_11A9
.L_11A3:
push 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
push dword ptr [ebp+16]
push 5
push offset Lt_03EC
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1181
.L_11A1:
.L_11A0:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
push 10
push offset Lt_0711
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 11
push offset Lt_0714
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-64], eax
jmp .L_11B3
.L_11B5:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 14
push offset Lt_11B6
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11B8:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 14
push offset Lt_11B9
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11BB:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 14
push offset Lt_11B9
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset Lt_11BD
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset Lt_11BF
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11C1:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset Lt_11C2
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11C4:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset Lt_11C2
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset Lt_11C6
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset Lt_11C8
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11CA:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset Lt_11C2
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset Lt_11C6
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset Lt_11CD
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11CF:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset Lt_11C2
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset Lt_11C6
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset Lt_11CD
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 11
push offset Lt_11BD
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 16
push offset Lt_11D4
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11D6:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset Lt_11D7
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
jmp .L_11B2
.L_11B3:
mov eax, dword ptr [ebp-64]
add eax, 4294967287
cmp eax, 7
ja .L_11B2
mov eax, dword ptr [ebp-64]
jmp dword ptr [.L_11D9+eax*4-36]
.L_11D9:
.int .L_11B5
.int .L_11B8
.int .L_11BB
.int .L_11C1
.int .L_11C4
.int .L_11CA
.int .L_11CF
.int .L_11D6
.L_11B2:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_1181:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HISSTRUCTIN2REGS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_11DA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_11DD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+128]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_11DB
.L_11DD:
.L_11DC:
mov dword ptr [ebp-4], 0
.L_11DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTORE:
push ebp
mov ebp, esp
sub esp, 260
push ebx
push esi
.L_11DE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-104], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_11E0
mov dword ptr [ebp-108], 24
jmp .L_1CFA
.L_11E0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-108], eax
.L_1CFA:
mov eax, dword ptr [ebp-108]
imul eax, 28
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_11E2
mov dword ptr [ebp-112], 24
jmp .L_1CFB
.L_11E2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-112], eax
.L_1CFB:
mov eax, dword ptr [ebp-112]
imul eax, 28
mov ebx, dword ptr [ebp-116]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], ecx
jge .L_11E5
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-120], eax
push dword ptr [ebp+12]
push dword ptr [ebp-120]
call _EMITCONVERT
add esp, 8
push edi
mov edi, dword ptr [ebp+12]
mov esi, dword ptr [ebp-120]
mov ecx, 17
rep movsd
pop edi
.L_11E5:
.L_11E4:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-116], ecx
cmp dword ptr [ebp-116], 2
jne .L_11E8
.L_11E9:
lea ecx, [ebp-36]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call PREPARE_IDX
add esp, 12
jmp .L_11E6
.L_11E8:
cmp dword ptr [ebp-116], 4
jne .L_11EA
.L_11EB:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .L_11ED
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-128]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-128]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-128]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 96
push offset Lt_11F0
push -1
lea ecx, [ebp-140]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-140]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-140]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-152]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-152]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-152]
push ecx
call fb_StrDelete
add esp, 4
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+28], 0
mov eax, -1
jg .L_1D08
jl .L_1D09
cmp dword ptr [ecx+24], 0
jae .L_1D08
.L_1D09:
xor eax, eax
.L_1D08:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+28], 0
mov ebx, -1
jl .L_1D0A
jg .L_1D0B
cmp dword ptr [ecx+24], 2147483647
jbe .L_1D0A
.L_1D0B:
xor ebx, ebx
.L_1D0A:
and eax, ebx
je .L_11F4
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11F3
.L_11F4:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_11F3:
jmp .L_11EC
.L_11ED:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-104], ebx
mov ebx, dword ptr [ebp-104]
and ebx, 480
test ebx, ebx
je .L_11F6
mov dword ptr [ebp-104], 8
.L_11F6:
cmp dword ptr [ebp-104], 8
je .L_11F9
.L_11FA:
cmp dword ptr [ebp-104], 9
je .L_11F9
.L_11FB:
cmp dword ptr [ebp-104], 13
je .L_11F9
.L_11FC:
cmp dword ptr [ebp-104], 14
je .L_11F9
.L_11FD:
cmp dword ptr [ebp-104], 16
je .L_11F9
.L_11FE:
cmp dword ptr [ebp-104], 10
jne .L_11F8
.L_11F9:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11F7
.L_11F8:
cmp dword ptr [ebp-104], 11
je .L_1200
.L_1201:
cmp dword ptr [ebp-104], 12
je .L_1200
.L_1202:
cmp dword ptr [ebp-104], 15
jne .L_11FF
.L_1200:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11F7
.L_11FF:
cmp dword ptr [ebp-104], 5
je .L_1204
.L_1205:
cmp dword ptr [ebp-104], 6
jne .L_1203
.L_1204:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11F7
.L_1203:
cmp dword ptr [ebp-104], 2
je .L_1207
.L_1208:
cmp dword ptr [ebp-104], 3
je .L_1207
.L_1209:
cmp dword ptr [ebp-104], 1
je .L_1207
.L_120A:
cmp dword ptr [ebp-104], 4
jne .L_1206
.L_1207:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11F7
.L_1206:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 52
push offset Lt_120F
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
.L_120B:
.L_11F7:
.L_11EC:
jmp .L_11E6
.L_11EA:
cmp dword ptr [ebp-116], 1
jne .L_1213
.L_1214:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_1216
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1215
.L_1216:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_1215:
jmp .L_11E6
.L_1213:
cmp dword ptr [ebp-116], 3
jne .L_121B
.L_121C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_1D0E
cmp dword ptr [eax+36], 0
je .L_121E
.L_1D0E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
jne .L_1220
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 4294967295
mov ebx, -1
jl .L_1D0F
jg .L_1D10
cmp dword ptr [eax+36], 2147483648
jb .L_1D0F
.L_1D10:
xor ebx, ebx
.L_1D0F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
mov ecx, -1
jg .L_1D11
jl .L_1D12
cmp dword ptr [eax+36], 4294967295
ja .L_1D11
.L_1D12:
xor ecx, ecx
.L_1D11:
or ebx, ecx
je .L_1222
push 0
push -1
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call fb_LongintToStr
add esp, 8
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1221
.L_1222:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
.L_1221:
push 0
push 6
push offset Lt_0716
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_121F
.L_1220:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_121F:
jmp .L_121D
.L_121E:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 2
push offset Lt_0134
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_121D:
jmp .L_11E6
.L_121B:
cmp dword ptr [ebp-116], 5
jne .L_122A
.L_122B:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_11E6
.L_122A:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 26
push offset Lt_1232
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
.L_122F:
.L_11E6:
push dword ptr [ebp+12]
call HISSTRUCTIN2REGS
add esp, 4
test eax, eax
je .L_1236
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+12]
and eax, 16
je .L_1238
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
mov esi, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
mov dword ptr [ebx+48], esi
mov dword ptr [ebx+52], ecx
jmp .L_1237
.L_1238:
lea esi, [ebp-36]
push esi
lea esi, [ebp-12]
push esi
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call EMITSTORESTRUCT
add esp, 16
.L_1237:
lea esi, [ebp-96]
push esi
call fb_StrDelete
add esp, 4
lea esi, [ebp-84]
push esi
call fb_StrDelete
add esp, 4
lea esi, [ebp-72]
push esi
call fb_StrDelete
add esp, 4
lea esi, [ebp-60]
push esi
call fb_StrDelete
add esp, 4
lea esi, [ebp-48]
push esi
call fb_StrDelete
add esp, 4
lea esi, [ebp-36]
push esi
call fb_StrDelete
add esp, 4
lea esi, [ebp-24]
push esi
call fb_StrDelete
add esp, 4
lea esi, [ebp-12]
push esi
call fb_StrDelete
add esp, 4
jmp .L_11DF
.L_1236:
.L_1235:
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi]
mov dword ptr [ebp-116], ecx
cmp dword ptr [ebp-116], 2
jne .L_123B
.L_123C:
lea ecx, [ebp-48]
push ecx
lea ecx, [ebp-24]
push ecx
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
jmp .L_1239
.L_123B:
cmp dword ptr [ebp-116], 4
jne .L_123D
.L_123E:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+4]
and esi, 511
mov dword ptr [ebp-104], esi
mov esi, dword ptr [ebp-104]
and esi, 480
test esi, esi
je .L_1240
mov dword ptr [ebp-104], 8
.L_1240:
cmp dword ptr [ebp-104], 8
je .L_1243
.L_1244:
cmp dword ptr [ebp-104], 9
je .L_1243
.L_1245:
cmp dword ptr [ebp-104], 13
je .L_1243
.L_1246:
cmp dword ptr [ebp-104], 14
je .L_1243
.L_1247:
cmp dword ptr [ebp-104], 16
je .L_1243
.L_1248:
cmp dword ptr [ebp-104], 10
jne .L_1242
.L_1243:
push 0
push 0
mov esi, dword ptr [ebp+12]
push dword ptr [esi+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1241
.L_1242:
cmp dword ptr [ebp-104], 11
je .L_124A
.L_124B:
cmp dword ptr [ebp-104], 12
je .L_124A
.L_124C:
cmp dword ptr [ebp-104], 15
jne .L_1249
.L_124A:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1241
.L_1249:
cmp dword ptr [ebp-104], 5
je .L_124E
.L_124F:
cmp dword ptr [ebp-104], 6
jne .L_124D
.L_124E:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1241
.L_124D:
cmp dword ptr [ebp-104], 2
je .L_1251
.L_1252:
cmp dword ptr [ebp-104], 3
je .L_1251
.L_1253:
cmp dword ptr [ebp-104], 1
je .L_1251
.L_1254:
cmp dword ptr [ebp-104], 4
jne .L_1250
.L_1251:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1241
.L_1250:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 52
push offset Lt_1259
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
.L_1255:
.L_1241:
jmp .L_1239
.L_123D:
cmp dword ptr [ebp-116], 1
jne .L_125D
.L_125E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
je .L_125F
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+32]
mov eax, dword ptr [esi+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+32]
mov esi, dword ptr [ecx+4]
and esi, 1
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-120], eax
jmp .L_1CFD
.L_125F:
mov dword ptr [ebp-120], 0
.L_1CFD:
cmp dword ptr [ebp-120], 0
je .L_1262
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1261
.L_1262:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_1261:
jmp .L_1239
.L_125D:
cmp dword ptr [ebp-116], 3
jne .L_1267
.L_1268:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+48], 0
je .L_126A
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+48]
push dword ptr [esi+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1269
.L_126A:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_0134
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_1269:
jmp .L_1239
.L_1267:
cmp dword ptr [ebp-116], 5
jne .L_1270
.L_1271:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1239
.L_1270:
cmp dword ptr [ebp-116], 0
jne .L_1275
.L_1276:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
cmp esi, 1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jne .L_1D17
cmp dword ptr [eax+24], 0
jne .L_1D17
.L_1D18:
xor ecx, ecx
.L_1D17:
and esi, ecx
je .L_1278
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], 1
mov dword ptr [ecx+28], 0
.L_1278:
.L_1277:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+4]
and esi, 480
je .L_1279
mov dword ptr [ebp-120], 24
jmp .L_1CFE
.L_1279:
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-120], ecx
.L_1CFE:
mov ecx, dword ptr [ebp-120]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 1
jne .L_127C
push 0
push -1
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+4]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_127B
.L_127C:
push 0
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_127B:
jmp .L_1239
.L_1275:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 29
push offset Lt_0F95
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
.L_127D:
.L_1239:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-104], ecx
mov ecx, dword ptr [ebp-104]
and ecx, 480
test ecx, ecx
je .L_1282
mov dword ptr [ebp-104], 8
.L_1282:
cmp dword ptr [ebp-104], 8
je .L_1285
.L_1286:
cmp dword ptr [ebp-104], 9
je .L_1285
.L_1287:
cmp dword ptr [ebp-104], 13
je .L_1285
.L_1288:
cmp dword ptr [ebp-104], 14
je .L_1285
.L_1289:
cmp dword ptr [ebp-104], 16
je .L_1285
.L_128A:
cmp dword ptr [ebp-104], 10
jne .L_1284
.L_1285:
push 0
push 11
push offset Lt_09F9
push -1
lea ecx, [ebp-60]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 10
push offset Lt_0469
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 6
push offset Lt_073B
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_1283
.L_1284:
cmp dword ptr [ebp-104], 11
je .L_128C
.L_128D:
cmp dword ptr [ebp-104], 12
je .L_128C
.L_128E:
cmp dword ptr [ebp-104], 15
jne .L_128B
.L_128C:
push 0
push 11
push offset Lt_09FE
push -1
lea ecx, [ebp-60]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 10
push offset Lt_0B3C
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 6
push offset Lt_0E00
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_1283
.L_128B:
cmp dword ptr [ebp-104], 5
je .L_1290
.L_1291:
cmp dword ptr [ebp-104], 6
jne .L_128F
.L_1290:
push 0
push 10
push offset Lt_0A02
push -1
lea ecx, [ebp-60]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 12
push offset Lt_103B
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 5
push offset Lt_1090
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_1283
.L_128F:
cmp dword ptr [ebp-104], 2
je .L_1293
.L_1294:
cmp dword ptr [ebp-104], 3
je .L_1293
.L_1295:
cmp dword ptr [ebp-104], 1
je .L_1293
.L_1296:
cmp dword ptr [ebp-104], 4
jne .L_1292
.L_1293:
push 0
push 10
push offset Lt_0A08
push -1
lea ecx, [ebp-60]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 9
push offset Lt_1297
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 5
push offset Lt_0C72
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_1283
.L_1292:
cmp dword ptr [ebp-104], 7
jne .L_1298
.L_1299:
cmp dword ptr [SYMB_DTYPETB+200], 2
jne .L_129B
push 0
push 10
push offset Lt_0A02
push -1
lea ecx, [ebp-60]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 12
push offset Lt_103B
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 5
push offset Lt_1090
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_129A
.L_129B:
cmp dword ptr [SYMB_DTYPETB+200], 4
jne .L_129C
push 0
push 11
push offset Lt_09FE
push -1
lea ecx, [ebp-60]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 10
push offset Lt_0B3C
push -1
lea ecx, [ebp-72]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 6
push offset Lt_0E00
push -1
lea ecx, [ebp-84]
push ecx
call fb_StrAssign
add esp, 20
jmp .L_129A
.L_129C:
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-124]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-124]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-124]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 54
push offset Lt_129F
push -1
lea ecx, [ebp-136]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-136]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-136]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-148]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-148]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-148]
push ecx
call fb_StrDelete
add esp, 4
.L_129A:
jmp .L_1283
.L_1298:
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-124]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-124]
push ecx
call HWRITEASM64
add esp, 8
lea ecx, [ebp-124]
push ecx
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
push dword ptr [ebp-104]
call fb_IntToStr
add esp, 4
push eax
push 53
push offset Lt_12A6
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 4
.L_12A2:
.L_1283:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax]
cmp esi, 1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .L_12AB
movzx esi, byte ptr [CTX+232]
neg esi
cmp esi, -1
jne .L_12AC
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
jmp .L_1CFF
.L_12AC:
mov dword ptr [ebp-116], 0
.L_1CFF:
cmp dword ptr [ebp-116], 0
je .L_12AF
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+32]
mov eax, dword ptr [esi+4]
and eax, 8
test eax, eax
je .L_12B1
push -1
push 999998
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-100], eax
push 0
push 0
mov eax, dword ptr [ebp-100]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-100]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call fb_StrDelete
add esp, 4
push 0
push 2
push offset Lt_0134
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-96]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0168
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_12B1:
.L_12B0:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+32]
mov eax, dword ptr [esi+4]
and eax, 8
test eax, eax
je .L_12B8
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
push 0
push 6
push offset Lt_0716
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_12B8:
.L_12B7:
.L_12AF:
.L_12AE:
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
lea eax, [ebp-84]
push eax
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12AA
.L_12AB:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax]
cmp esi, 2
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
and esi, ecx
je .L_12C3
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-48]
push ecx
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12C5
lea eax, [ebp-48]
push eax
call EMITOP3_OP4
add esp, 4
.L_12C5:
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
push 1
push offset Lt_0000
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12CA
lea eax, [ebp-36]
push eax
call EMITOP3_OP4
add esp, 4
.L_12CA:
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
lea eax, [ebp-84]
push eax
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12AA
.L_12C3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax]
cmp esi, 3
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
or ecx, eax
je .L_12CF
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
lea eax, [ebp-84]
push eax
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12AA
.L_12CF:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx]
cmp esi, 1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
or ecx, eax
je .L_12D7
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12D9
lea eax, [ebp-48]
push eax
call EMITOP3_OP4
add esp, 4
.L_12D9:
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
push 1
push offset Lt_0000
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12DE
lea eax, [ebp-36]
push eax
call EMITOP3_OP4
add esp, 4
.L_12DE:
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
lea eax, [ebp-84]
push eax
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12AA
.L_12D7:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax]
cmp esi, 2
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
or ecx, eax
je .L_12E3
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12E5
lea eax, [ebp-48]
push eax
call EMITOP3_OP4
add esp, 4
.L_12E5:
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
push 1
push offset Lt_0000
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12EA
lea eax, [ebp-36]
push eax
call EMITOP3_OP4
add esp, 4
.L_12EA:
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
lea eax, [ebp-84]
push eax
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12AA
.L_12E3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_12EF
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea ebx, [ebp-24]
push ebx
push -1
push -1
lea ebx, [ebp-60]
push ebx
push -1
lea ebx, [ebp-72]
push ebx
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea ebx, [ebp-124]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
lea eax, [ebp-84]
push eax
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12AA
.L_12EF:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12F8
lea eax, [ebp-36]
push eax
call EMITOP3_OP4
add esp, 4
.L_12F8:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_12FA
lea eax, [ebp-48]
push eax
call EMITOP3_OP4
add esp, 4
.L_12FA:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_12FC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-116], ebx
cmp dword ptr [ebp-116], 4
jne .L_12FF
.L_1300:
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push -1
lea ebx, [ebp-24]
push ebx
push -1
push 3
push offset Lt_0129
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 13
push offset Lt_1301
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea ebx, [ebp-128]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12FD
.L_12FF:
cmp dword ptr [ebp-116], 1
je .L_1308
.L_1309:
cmp dword ptr [ebp-116], 2
je .L_1308
.L_130A:
cmp dword ptr [ebp-116], 3
jne .L_1307
.L_1308:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_130B
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-120], eax
jmp .L_1D00
.L_130B:
mov dword ptr [ebp-120], 0
.L_1D00:
cmp dword ptr [ebp-120], 0
je .L_130E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_130F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
jmp .L_1D01
.L_130F:
mov dword ptr [ebp-124], 0
.L_1D01:
cmp dword ptr [ebp-124], 0
je .L_1312
push -1
push 999998
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-100], eax
push 0
push 0
mov eax, dword ptr [ebp-100]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-100]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
push 2
push offset Lt_0134
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-96]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0168
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_1312:
.L_1311:
.L_130E:
.L_130D:
cmp dword ptr [ebp-104], 15
jne .L_1319
.L_131A:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1318
.L_1319:
cmp dword ptr [ebp-104], 16
jne .L_1320
.L_1321:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1318
.L_1320:
cmp dword ptr [ebp-104], 8
je .L_1329
.L_132A:
cmp dword ptr [ebp-104], 9
je .L_1329
.L_132B:
cmp dword ptr [ebp-104], 13
je .L_1329
.L_132C:
cmp dword ptr [ebp-104], 14
je .L_1329
.L_132D:
cmp dword ptr [ebp-104], 10
jne .L_1328
.L_1329:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 4294967295
mov ebx, -1
jl .L_1D2E
jg .L_1D2F
cmp dword ptr [eax+24], 2147483648
jb .L_1D2E
.L_1D2F:
xor ebx, ebx
.L_1D2E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jg .L_1D30
jl .L_1D31
cmp dword ptr [eax+24], 4294967295
ja .L_1D30
.L_1D31:
xor ecx, ecx
.L_1D30:
or ebx, ecx
je .L_132F
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
lea ecx, [ebp-24]
push ecx
push 10
push offset Lt_0469
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea ecx, [ebp-132]
push ecx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
jmp .L_132E
.L_132F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jl .L_1336
jg .L_1D32
cmp dword ptr [eax+24], 2147483648
jb .L_1336
.L_1D32:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
jmp .L_132E
.L_1336:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
.L_132E:
jmp .L_1318
.L_1328:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 4
.L_1342:
.L_1318:
jmp .L_12FD
.L_1307:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 50
push offset Lt_134B
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
.L_1348:
.L_12FD:
jmp .L_12FB
.L_12FC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_134E
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 31
cmp ecx, 22
jne .L_134F
movzx ecx, byte ptr [CTX+232]
neg ecx
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-116], ecx
jmp .L_1D02
.L_134F:
mov dword ptr [ebp-116], 0
.L_1D02:
cmp dword ptr [ebp-116], 0
je .L_1351
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-120], eax
jmp .L_1D03
.L_1351:
mov dword ptr [ebp-120], 0
.L_1D03:
cmp dword ptr [ebp-120], 0
je .L_1354
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push -1
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-24]
push eax
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-24]
push eax
call fb_LEFT
add esp, 8
push eax
push 20
push offset Lt_0F81
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1353
.L_1354:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 10
push offset Lt_0711
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
.L_1353:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_135A
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
jmp .L_1D04
.L_135A:
mov dword ptr [ebp-124], 0
.L_1D04:
cmp dword ptr [ebp-124], 0
je .L_135D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_135E
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-164], eax
jmp .L_1D05
.L_135E:
mov dword ptr [ebp-164], 0
.L_1D05:
cmp dword ptr [ebp-164], 0
je .L_1361
push -1
push 999998
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-100], eax
push 0
push 0
mov eax, dword ptr [ebp-100]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-100]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
push 0
push 2
push offset Lt_0134
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-96]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0168
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_1361:
.L_1360:
.L_135D:
.L_135C:
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 4
jmp .L_12FB
.L_134E:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_136A
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
jmp .L_1D06
.L_136A:
mov dword ptr [ebp-116], 0
.L_1D06:
cmp dword ptr [ebp-116], 0
je .L_136D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_136E
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-168], eax
jmp .L_1D07
.L_136E:
mov dword ptr [ebp-168], 0
.L_1D07:
cmp dword ptr [ebp-168], 0
je .L_1371
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
push 0
push 6
push offset Lt_0716
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_1371:
.L_1370:
.L_136D:
.L_136C:
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call fb_StrDelete
add esp, 4
.L_12FB:
.L_12AA:
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_11DF:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLOADRES:
push ebp
mov ebp, esp
sub esp, 136
push ebx
.L_1379:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
mov dword ptr [ebp-44], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 2
jne .L_137D
.L_137E:
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call PREPARE_IDX
add esp, 12
jmp .L_137B
.L_137D:
cmp dword ptr [ebp-48], 1
jne .L_137F
.L_1380:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_1382
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1381
.L_1382:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_1381:
jmp .L_137B
.L_137F:
cmp dword ptr [ebp-48], 3
jne .L_1387
.L_1388:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 44
push offset Lt_138E
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 4
jmp .L_137B
.L_1387:
cmp dword ptr [ebp-48], 4
jne .L_1391
.L_1392:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_137B
.L_1391:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 44
push offset Lt_1396
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_1393:
.L_137B:
push dword ptr [ebp+8]
call HISSTRUCTIN2REGS
add esp, 4
test eax, eax
je .L_139A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
jne .L_139B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_1D39
.L_139B:
mov dword ptr [ebp-48], -1
.L_1D39:
cmp dword ptr [ebp-48], 0
je .L_139E
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 64
push offset Lt_13A1
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_139E:
.L_139D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-44], eax
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+36]
mov ebx, dword ptr [eax+40]
add ecx, 8
adc ebx, 0
push ebx
push ecx
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+128]
mov dword ptr [ebp-64], ecx
jmp .L_13A6
.L_13A8:
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
lea ecx, [ebp-12]
push ecx
push 10
push offset Lt_0469
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ecx, [ebp-76]
push ecx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 10
push offset Lt_13AB
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13A5
.L_13AE:
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-44], 12
jne .L_13B2
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 13
push offset Lt_0DAE
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13B1
.L_13B2:
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 13
push offset Lt_0E5C
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
.L_13B1:
jmp .L_13A5
.L_13B7:
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 13
push offset Lt_0E5C
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRQ]
push 5
push offset Lt_03EC
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13A5
.L_13BE:
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 13
push offset Lt_0E5C
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-44], 12
jne .L_13C2
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 13
push offset Lt_13C3
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13C1
.L_13C2:
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 13
push offset Lt_13C6
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
.L_13C1:
jmp .L_13A5
.L_13A6:
mov eax, dword ptr [ebp-64]
add eax, 4294967294
cmp eax, 4
ja .L_13A5
mov eax, dword ptr [ebp-64]
jmp dword ptr [.L_13C9+eax*4-8]
.L_13C9:
.int .L_13A8
.int .L_13AE
.int .L_13A5
.int .L_13B7
.int .L_13BE
.L_13A5:
jmp .L_1399
.L_139A:
mov eax, dword ptr [ebp-40]
and eax, 480
je .L_13CA
mov dword ptr [ebp-48], 24
jmp .L_1D3A
.L_13CA:
mov eax, dword ptr [ebp-40]
and eax, 31
mov dword ptr [ebp-48], eax
.L_1D3A:
cmp dword ptr [ebp-48], 24
jne .L_13CD
mov dword ptr [ebp-40], 8
.L_13CD:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_13CF
lea eax, [ebp-36]
push eax
call EMITOP3_OP4
add esp, 4
.L_13CF:
cmp dword ptr [ebp-40], 16
jne .L_13D1
.L_13D2:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 20
je .L_13D4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0E59
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13D3
.L_13D4:
mov eax, dword ptr [ENV+284]
and eax, 16
test eax, eax
je .L_13D8
mov eax, dword ptr [ENV+284]
and eax, 32
test eax, eax
je .L_13DA
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0E59
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13D9
.L_13DA:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_13D9:
jmp .L_13D7
.L_13D8:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0E59
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_13D7:
.L_13D3:
jmp .L_13D0
.L_13D1:
cmp dword ptr [ebp-40], 15
jne .L_13E1
.L_13E2:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 20
je .L_13E4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0DAB
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13E3
.L_13E4:
mov eax, dword ptr [ENV+284]
and eax, 16
test eax, eax
je .L_13E8
mov eax, dword ptr [ENV+284]
and eax, 32
test eax, eax
je .L_13EA
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0DAB
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13E9
.L_13EA:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_13E9:
jmp .L_13E7
.L_13E8:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 12
push offset Lt_0DAB
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_13E7:
.L_13E3:
jmp .L_13D0
.L_13E1:
cmp dword ptr [ebp-40], 8
je .L_13F2
.L_13F3:
cmp dword ptr [ebp-40], 9
je .L_13F2
.L_13F4:
cmp dword ptr [ebp-40], 13
je .L_13F2
.L_13F5:
cmp dword ptr [ebp-40], 14
je .L_13F2
.L_13F6:
cmp dword ptr [ebp-40], 10
jne .L_13F1
.L_13F2:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
push dword ptr [REGSTRQ]
push 5
push offset Lt_03EC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13D0
.L_13F1:
cmp dword ptr [ebp-40], 11
je .L_13FC
.L_13FD:
cmp dword ptr [ebp-40], 12
jne .L_13FB
.L_13FC:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 13
push offset Lt_0740
push -1
push 0
push dword ptr [REGSTRD]
push 5
push offset Lt_03EC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13D0
.L_13FB:
cmp dword ptr [ebp-40], 5
je .L_1403
.L_1404:
cmp dword ptr [ebp-40], 6
jne .L_1402
.L_1403:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 12
push offset Lt_0724
push -1
push 0
push dword ptr [REGSTRQ]
push 7
push offset Lt_071D
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13D0
.L_1402:
cmp dword ptr [ebp-40], 2
je .L_140A
.L_140B:
cmp dword ptr [ebp-40], 3
je .L_140A
.L_140C:
cmp dword ptr [ebp-40], 1
je .L_140A
.L_140D:
cmp dword ptr [ebp-40], 4
jne .L_1409
.L_140A:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 12
push offset Lt_071E
push -1
push 0
push dword ptr [REGSTRQ]
push 7
push offset Lt_071D
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
jmp .L_13D0
.L_1409:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call fb_IntToStr
add esp, 4
push eax
push 52
push offset Lt_1416
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
.L_1412:
.L_13D0:
.L_1399:
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_137A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITADDR:
push ebp
mov ebp, esp
sub esp, 152
push ebx
.L_141A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
je .L_141D
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 46
push offset Lt_1420
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_141B
.L_141D:
.L_141C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
je .L_1423
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
push dword ptr [eax+28]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 65536
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ecx, eax
test ecx, ecx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
jmp .L_1D40
.L_1423:
mov dword ptr [ebp-28], 0
.L_1D40:
cmp dword ptr [ebp-28], 0
je .L_1426
cmp dword ptr [ebp+8], 22
jne .L_1428
mov dword ptr [ebp+8], 76
.L_1428:
.L_1427:
.L_1426:
.L_1425:
push -1
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+12]
call REG_FINDFREE
add esp, 8
cmp dword ptr [ebp+8], 22
jne .L_142A
.L_142B:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-80], ecx
cmp dword ptr [ebp-80], 2
jne .L_142E
.L_142F:
lea ecx, [ebp-24]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
jmp .L_142C
.L_142E:
cmp dword ptr [ebp-80], 1
jne .L_1430
.L_1431:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
mov ecx, dword ptr [ebx+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax]
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_1433
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1432
.L_1433:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_1432:
jmp .L_142C
.L_1430:
cmp dword ptr [ebp-80], 3
jne .L_1438
.L_1439:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_142C
.L_1438:
cmp dword ptr [ebp-80], 5
jne .L_143D
.L_143E:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 45
push offset Lt_1444
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 4
jmp .L_142C
.L_143D:
push 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push 43
push offset Lt_144A
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 4
.L_1447:
.L_142C:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_144E
lea eax, [ebp-24]
push eax
call EMITOP3_OP4
add esp, 4
.L_144E:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1429
.L_142A:
cmp dword ptr [ebp+8], 76
jne .L_1453
.L_1454:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 2
jne .L_1457
.L_1458:
lea ebx, [ebp-24]
push ebx
lea ebx, [ebp-12]
push ebx
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
je .L_145A
lea eax, [ebp-24]
push eax
call EMITOP3_OP4
add esp, 4
.L_145A:
jmp .L_1455
.L_1457:
cmp dword ptr [ebp-32], 1
jne .L_145B
.L_145C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_145E
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+4]
and ebx, 8
test ebx, ebx
je .L_145F
movzx ebx, byte ptr [CTX+232]
neg ebx
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .L_1D41
.L_145F:
mov dword ptr [ebp-36], 0
.L_1D41:
cmp dword ptr [ebp-36], 0
je .L_1461
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_1D42
.L_1461:
mov dword ptr [ebp-40], 0
.L_1D42:
cmp dword ptr [ebp-40], 0
je .L_1464
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push 0
push 6
push offset Lt_0716
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1463
.L_1464:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_1463:
jmp .L_145D
.L_145E:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_145D:
jmp .L_1455
.L_145B:
cmp dword ptr [ebp-32], 3
jne .L_146C
.L_146D:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1455
.L_146C:
cmp dword ptr [ebp-32], 5
jne .L_1471
.L_1472:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1455
.L_1471:
cmp dword ptr [ebp-32], 4
jne .L_1476
.L_1477:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 2
push offset Lt_0134
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1455
.L_1476:
push 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 42
push offset Lt_147D
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
.L_147A:
.L_1455:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_1481
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1480
.L_1481:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
.L_1480:
.L_1453:
.L_1429:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_141B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOCALL:
push ebp
mov ebp, esp
sub esp, 3940
push ebx
push esi
push edi
.L_149F:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov byte ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-3696]
push eax
mov edi, eax
xor eax, eax
mov ecx, 903
rep stosd
pop eax
lea eax, [ebp-3696]
mov dword ptr [ebp-3732], eax
lea eax, [ebp-3696]
mov dword ptr [ebp-3728], eax
mov dword ptr [ebp-3724], 3612
mov dword ptr [ebp-3720], 12
mov dword ptr [ebp-3716], 1
mov dword ptr [ebp-3712], 49
mov dword ptr [ebp-3708], 301
mov dword ptr [ebp-3704], 0
mov dword ptr [ebp-3700], 300
mov dword ptr [ebp-3736], 0
mov dword ptr [ebp-3740], 0
mov dword ptr [ebp-3744], 0
mov dword ptr [ebp-3748], 0
mov byte ptr [CTX+153], 1
cmp byte ptr [ebp+32], 0
je .L_14A3
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call REG_CALLPTR
add esp, 8
.L_14A3:
mov ebx, dword ptr [CTX+96]
mov eax, dword ptr [CTX+100]
add ebx, 104
adc eax, 0
mov dword ptr [CTX+120], ebx
mov dword ptr [CTX+124], eax
mov eax, dword ptr [CTX+120]
mov ebx, dword ptr [CTX+124]
mov dword ptr [CTX+112], eax
mov dword ptr [CTX+116], ebx
lea eax, [IRHL+60]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-24], eax
.L_14A4:
cmp dword ptr [ebp-24], 0
je .L_14A6
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+8]
cmp ebx, dword ptr [ebp+24]
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-3752], ebx
jmp .L_1D4D
.L_14A6:
mov dword ptr [ebp-3752], 0
.L_1D4D:
cmp dword ptr [ebp-3752], 0
je .L_14A5
push dword ptr [ebp-24]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-32], ebx
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-56]
push ebx
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], -1
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+4]
and eax, 480
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-32]
push dword ptr [ebx+4]
mov ebx, eax
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_14A9
push 0
push 8
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-3744], eax
push dword ptr [ebp-3744]
push dword ptr [ebp-32]
push 22
call _EMITADDR
add esp, 12
mov edi, dword ptr [ebp-32]
mov esi, dword ptr [ebp-3744]
mov ecx, 17
rep movsd
.L_14A9:
.L_14A8:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-3764], eax
cmp dword ptr [ebp-3764], 2
jne .L_14AC
.L_14AD:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+32], 0
jne .L_14AF
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx+32], 0
jne .L_14B1
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+48]
cmp dword ptr [eax+12], -1
je .L_14B3
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_14B2
.L_14B3:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3860], 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
lea eax, [ebp-3860]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
.L_14B2:
jmp .L_14B0
.L_14B1:
push 0
push 0
call REG_TEMPO
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+48]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+4]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_14C0
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ecx, dword ptr [ebp-32]
mov ebx, dword ptr [ecx+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push -1
push 0
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0110
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_03EC
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-68]
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0129
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0134
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-68]
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0168
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_14C7
push -1
lea eax, [ebp-56]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3860], 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
lea eax, [ebp-3860]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3872], 0
mov dword ptr [ebp-3868], 0
mov dword ptr [ebp-3864], 0
lea eax, [ebp-3872]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_14BF
.L_14C0:
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
.L_14BF:
.L_14B0:
jmp .L_14AE
.L_14AF:
push 0
push 0
call REG_TEMPO
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_14D3
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp-32]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push -1
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
jmp .L_14D2
.L_14D3:
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset Lt_017A
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
.L_14D2:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_14DF
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_08DD
push -1
push -1
lea eax, [ebp-68]
push eax
push 2
push offset Lt_0134
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_14DE
.L_14DF:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 1
jne .L_14E4
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
mov ecx, dword ptr [ebx+48]
mov ebx, dword ptr [ecx+32]
mov ecx, dword ptr [ebx+4]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_14E6
push 0
push -1
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ecx, dword ptr [ebp-32]
mov eax, dword ptr [ecx+48]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push -1
push 0
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 5
push offset Lt_0473
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push 2
push offset Lt_0110
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3860], 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
lea eax, [ebp-3860]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-3872], 0
mov dword ptr [ebp-3868], 0
mov dword ptr [ebp-3864], 0
lea eax, [ebp-3872]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
jmp .L_14E5
.L_14E6:
push 0
push -1
push -1
push 6
push offset Lt_0420
push -1
push -1
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset Lt_00F8
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 5
push offset Lt_0473
push -1
push -1
push 32
mov eax, dword ptr [CTX]
imul eax, 3
push eax
call fb_StrFill1
add esp, 8
push eax
push 2
push offset Lt_0110
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
.L_14E5:
push 0
push 2
push offset Lt_0134
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-68]
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0168
push -1
lea eax, [ebp-44]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_14DE
.L_14E4:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push 40
push offset Lt_14F9
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
.L_14DE:
.L_14AE:
jmp .L_14AA
.L_14AC:
cmp dword ptr [ebp-3764], 4
jne .L_14FC
.L_14FD:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_14FE
mov dword ptr [ebp-3768], 24
jmp .L_1D4E
.L_14FE:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3768], eax
.L_1D4E:
cmp dword ptr [ebp-3768], 24
jne .L_1501
mov dword ptr [ebp-20], 8
.L_1501:
mov eax, dword ptr [ebp-32]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-20], 8
je .L_1504
.L_1505:
cmp dword ptr [ebp-20], 9
je .L_1504
.L_1506:
cmp dword ptr [ebp-20], 13
je .L_1504
.L_1507:
cmp dword ptr [ebp-20], 14
je .L_1504
.L_1508:
cmp dword ptr [ebp-20], 16
je .L_1504
.L_1509:
cmp dword ptr [ebp-20], 10
je .L_1504
.L_150A:
cmp dword ptr [ebp-20], 20
jne .L_1503
.L_1504:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1502
.L_1503:
cmp dword ptr [ebp-20], 11
je .L_150C
.L_150D:
cmp dword ptr [ebp-20], 12
je .L_150C
.L_150E:
cmp dword ptr [ebp-20], 15
jne .L_150B
.L_150C:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1502
.L_150B:
cmp dword ptr [ebp-20], 5
je .L_1510
.L_1511:
cmp dword ptr [ebp-20], 6
jne .L_150F
.L_1510:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1502
.L_150F:
cmp dword ptr [ebp-20], 2
je .L_1513
.L_1514:
cmp dword ptr [ebp-20], 3
je .L_1513
.L_1515:
cmp dword ptr [ebp-20], 1
je .L_1513
.L_1516:
cmp dword ptr [ebp-20], 4
jne .L_1512
.L_1513:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1502
.L_1512:
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3780]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push -1
push -1
push dword ptr [ebp-20]
call fb_IntToStr
add esp, 4
push eax
push 55
push offset Lt_151B
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3804]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
.L_1517:
.L_1502:
jmp .L_14AA
.L_14FC:
cmp dword ptr [ebp-3764], 1
jne .L_151F
.L_1520:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+32], 0
je .L_1521
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-32]
mov ebx, dword ptr [ecx+32]
mov ecx, dword ptr [ebx+4]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3768], eax
jmp .L_1D4F
.L_1521:
mov dword ptr [ebp-3768], 0
.L_1D4F:
cmp dword ptr [ebp-3768], 0
je .L_1524
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1523
.L_1524:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
.L_1523:
jmp .L_14AA
.L_151F:
cmp dword ptr [ebp-3764], 3
jne .L_1529
.L_152A:
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_14AA
.L_1529:
cmp dword ptr [ebp-3764], 5
jne .L_152E
.L_152F:
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_14AA
.L_152E:
cmp dword ptr [ebp-3764], 0
jne .L_1533
.L_1534:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_1535
mov dword ptr [ebp-3768], 24
jmp .L_1D50
.L_1535:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3768], eax
.L_1D50:
mov eax, dword ptr [ebp-3768]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_1538
push 0
push -1
push 0
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
push dword ptr [eax+28]
push dword ptr [eax+24]
call HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1537
.L_1538:
cmp dword ptr [ebp-20], 1
jne .L_153A
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
jne .L_1D6B
cmp dword ptr [eax+24], 0
je .L_153C
.L_1D6B:
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+24], 1
mov dword ptr [eax+28], 0
.L_153C:
.L_153B:
.L_153A:
.L_1539:
push 0
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
.L_1537:
jmp .L_14AA
.L_1533:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push 45
push offset Lt_1540
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
.L_153D:
.L_14AA:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_1543
mov dword ptr [ebp-3760], 24
jmp .L_1D51
.L_1543:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3760], eax
.L_1D51:
cmp dword ptr [ebp-3760], 24
jne .L_1546
mov dword ptr [ebp-20], 8
.L_1546:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp-32]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call PARAM_ANALYZE
add esp, 20
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 10
jl .L_1548
cmp byte ptr [CTX+232], 0
je .L_154A
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
jne .L_154C
add dword ptr [ebp-3740], 8
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_154D
mov dword ptr [ebp-3764], 24
jmp .L_1D52
.L_154D:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3764], eax
.L_1D52:
mov eax, dword ptr [ebp-3764]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_1550
cmp dword ptr [ebp-20], 15
jne .L_1552
inc dword ptr [ebp-3736]
push 0
push 6
push offset Lt_1553
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ecx, [ebp+eax-3696]
push ecx
call fb_StrAssign
add esp, 20
push 0
push -1
lea ecx, [ebp-44]
push ecx
push -1
mov ecx, dword ptr [ebp-3736]
imul ecx, 12
lea eax, [ebp+ecx-3696]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_1551
.L_1552:
inc dword ptr [ebp-3736]
push 0
push 9
push offset Lt_1554
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ecx, [ebp+eax-3696]
push ecx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 10
push offset Lt_0469
push -1
mov ecx, dword ptr [ebp-3736]
imul ecx, 12
lea eax, [ebp+ecx-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ecx, [ebp+eax-3696]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_1551:
jmp .L_154F
.L_1550:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ecx+28], 4294967295
mov eax, -1
jg .L_1D6C
jl .L_1D6D
cmp dword ptr [ecx+24], 2147483648
jae .L_1D6C
.L_1D6D:
xor eax, eax
.L_1D6C:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ecx+28], 0
mov ebx, -1
jl .L_1D6E
jg .L_1D6F
cmp dword ptr [ecx+24], 2147483648
jb .L_1D6E
.L_1D6F:
xor ebx, ebx
.L_1D6E:
and eax, ebx
je .L_1555
inc dword ptr [ebp-3736]
push 0
push 6
push offset Lt_1553
push -1
mov ebx, dword ptr [ebp-3736]
imul ebx, 12
lea eax, [ebp+ebx-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ebx, [ebp+eax-3696]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_154F
.L_1555:
inc dword ptr [ebp-3736]
push 0
push 9
push offset Lt_1554
push -1
mov ebx, dword ptr [ebp-3736]
imul ebx, 12
lea eax, [ebp+ebx-3696]
push eax
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 10
push offset Lt_0469
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ebx, [ebp+eax-3696]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
lea ebx, [ebp-44]
push ebx
push -1
mov ebx, dword ptr [ebp-3736]
imul ebx, 12
lea eax, [ebp+ebx-3696]
push eax
call fb_StrConcatAssign
add esp, 20
.L_154F:
jmp .L_154B
.L_154C:
cmp dword ptr [ebp-20], 20
jne .L_1557
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-80]
add dword ptr [ebp-3740], eax
cmp dword ptr [ebp-80], 8
jle .L_1559
mov eax, dword ptr [ebp-80]
mov ecx, 8
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp-84], eax
cmp dword ptr [ebp-84], 0
jne .L_155B
mov dword ptr [ebp-84], 8
.L_155B:
.L_155C:
cmp dword ptr [ebp-80], 0
jle .L_155D
inc dword ptr [ebp-3736]
push 0
push 11
push offset Lt_155E
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ebx, [ebp+eax-3696]
push ebx
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp-80], 8
jle .L_1560
inc dword ptr [ebp-3736]
push 0
push 11
push offset Lt_1561
push -1
mov ebx, dword ptr [ebp-3736]
imul ebx, 12
lea eax, [ebp+ebx-3696]
push eax
call fb_StrAssign
add esp, 20
.L_1560:
.L_155F:
add dword ptr [ebp-80], -8
jmp .L_155C
.L_155D:
inc dword ptr [ebp-3736]
push 0
push -1
push -1
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+8]
mov ecx, dword ptr [ebp-84]
mov eax, ecx
sar eax, 31
mov edi, dword ptr [ebx+40]
mov esi, dword ptr [ebx+44]
sub edi, ecx
sbb esi, eax
push esi
push edi
call fb_LongintToStr
add esp, 8
push eax
push 10
push offset Lt_1562
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrAssign
add esp, 20
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 4
jne .L_1565
inc dword ptr [ebp-3736]
push 0
push 10
push offset Lt_0469
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrConcatAssign
add esp, 20
jmp .L_1564
.L_1565:
inc dword ptr [ebp-3736]
push 0
push 10
push offset Lt_0711
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrConcatAssign
add esp, 20
.L_1564:
jmp .L_1558
.L_1559:
inc dword ptr [ebp-3736]
push 0
push 6
push offset Lt_1553
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrConcatAssign
add esp, 20
.L_1558:
jmp .L_1556
.L_1557:
add dword ptr [ebp-3740], 8
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 5
jne .L_1567
mov edi, dword ptr [ebp-32]
mov eax, dword ptr [edi+4]
and eax, 31
cmp eax, 22
jne .L_1568
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3764], eax
jmp .L_1D53
.L_1568:
mov dword ptr [ebp-3764], 0
.L_1D53:
cmp dword ptr [ebp-3764], 0
je .L_156B
inc dword ptr [ebp-3736]
push 0
push 9
push offset Lt_1554
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 20
push offset Lt_0F81
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-44]
push eax
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-44]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrConcatAssign
add esp, 20
push 0
push 15
push offset Lt_0A4F
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_156A
.L_156B:
inc dword ptr [ebp-3736]
push 0
push 9
push offset Lt_1554
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 10
push offset Lt_0711
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrConcatAssign
add esp, 20
.L_156A:
jmp .L_1566
.L_1567:
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 4
jne .L_156D
push 0
push 0
mov edi, dword ptr [ebp-4]
push dword ptr [REGSTRQ+edi*4]
push -1
lea edi, [ebp-44]
push edi
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 6
push offset Lt_1553
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrConcatAssign
add esp, 20
jmp .L_156C
.L_156D:
inc dword ptr [ebp-3736]
push 0
push 6
push offset Lt_1553
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrConcatAssign
add esp, 20
.L_156C:
.L_1566:
.L_1556:
push 1
push offset Lt_0000
push -1
lea edi, [ebp-56]
push edi
call fb_StrCompare
add esp, 16
test eax, eax
je .L_156F
inc dword ptr [ebp-3736]
push 0
push -1
lea eax, [ebp-56]
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call fb_StrAssign
add esp, 20
.L_156F:
.L_156E:
.L_154B:
jmp .L_1549
.L_154A:
push 1
push offset Lt_0000
push -1
lea edi, [ebp-56]
push edi
call fb_StrCompare
add esp, 16
test eax, eax
je .L_1571
lea eax, [ebp-56]
push eax
call EMITOP3_OP4
add esp, 4
.L_1571:
cmp dword ptr [ebp-76], 11
jne .L_1573
cmp dword ptr [ebp-20], 20
jne .L_1575
mov eax, dword ptr [ebp-32]
mov edi, dword ptr [eax+8]
mov eax, dword ptr [edi+40]
mov dword ptr [ebp-80], eax
jmp .L_1574
.L_1575:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov edi, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-80], edi
.L_1574:
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 4
jne .L_1577
mov edi, dword ptr [ebp-80]
mov dword ptr [ebp-3764], edi
jmp .L_1579
.L_157B:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea edi, [ebp-44]
push edi
push -1
push 8
push offset Lt_157D
push -1
push -1
mov edi, dword ptr [ebp-8]
sal edi, 3
add edi, -8
push edi
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_157C
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1578
.L_1582:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_0803
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1578
.L_1587:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1578
.L_158C:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1578
.L_1579:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_1578
mov eax, dword ptr [ebp-3764]
jmp dword ptr [.L_1591+eax*4-4]
.L_1591:
.int .L_157B
.int .L_1582
.int .L_1578
.int .L_1587
.int .L_1578
.int .L_1578
.int .L_1578
.int .L_158C
.L_1578:
jmp .L_1576
.L_1577:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-3764], eax
jmp .L_1593
.L_1595:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 9
push offset Lt_1297
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset Lt_1598
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_157C
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1592
.L_159C:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 9
push offset Lt_159D
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset Lt_15A0
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_0803
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1592
.L_15A4:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset Lt_15A7
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1592
.L_15AB:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1592
.L_1593:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_1592
mov eax, dword ptr [ebp-3764]
jmp dword ptr [.L_15B2+eax*4-4]
.L_15B2:
.int .L_1595
.int .L_159C
.int .L_1592
.int .L_15A4
.int .L_1592
.int .L_1592
.int .L_1592
.int .L_15AB
.L_1592:
.L_1576:
jmp .L_1572
.L_1573:
cmp dword ptr [ebp-76], 12
jne .L_15B3
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
push dword ptr [eax]
call REG_TRANSFER
add esp, 8
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edi, dword ptr [eax]
push dword ptr [REGSTRQ+edi*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edi, [ebp-3772]
push edi
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-32]
mov edi, dword ptr [eax+8]
mov esi, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
add esi, dword ptr [edi+40]
adc eax, dword ptr [edi+44]
mov edi, dword ptr [ebp-32]
mov ecx, dword ptr [edi+8]
add esi, dword ptr [ecx+40]
adc eax, dword ptr [ecx+44]
add esi, 4294967295
adc eax, 4294967295
mov ecx, dword ptr [ebp-32]
mov edi, dword ptr [ecx+8]
mov ebx, dword ptr [edi+40]
mov ecx, dword ptr [edi+44]
add ebx, 4294967295
adc ecx, 4294967295
not ebx
not ecx
and esi, ebx
and eax, ecx
mov dword ptr [CTX+120], esi
mov dword ptr [CTX+124], eax
push 0
push 8
push dword ptr [CTX+124]
push dword ptr [CTX+120]
call __moddi3
add esp, 16
neg eax
adc edx, 0
neg edx
add eax, dword ptr [CTX+120]
adc edx, dword ptr [CTX+124]
add eax, 8
adc edx, 0
mov dword ptr [CTX+120], eax
mov dword ptr [CTX+124], edx
push 0
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRQ+edx*4]
push -1
lea edx, [ebp-68]
push edx
call fb_StrAssign
add esp, 20
push 1
push 1
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [CTX+120]
mov edx, dword ptr [CTX+124]
neg eax
adc edx, 0
neg edx
push edx
push eax
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
lea eax, [ebp-3820]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3832]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3832]
push eax
lea eax, [ebp-68]
push eax
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
push eax
call MEMCOPY
add esp, 20
lea eax, [ebp-3832]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3892], 0
mov dword ptr [ebp-3888], 0
mov dword ptr [ebp-3884], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov edx, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRQ+edx*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
mov dword ptr [ebp-3836], 0
lea edx, [ebp-3844]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
mov dword ptr [ebp-3848], 0
lea eax, [ebp-3856]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3868], 0
mov dword ptr [ebp-3864], 0
mov dword ptr [ebp-3860], 0
lea eax, [ebp-3868]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3880], 0
mov dword ptr [ebp-3876], 0
mov dword ptr [ebp-3872], 0
lea eax, [ebp-3880]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3892]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3892]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3892]
push eax
call fb_StrDelete
add esp, 4
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_15C0
push 3
mov dword ptr [ebp-3940], 0
mov dword ptr [ebp-3936], 0
mov dword ptr [ebp-3932], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [LISTREG]
mov eax, dword ptr [edx]
push dword ptr [REGSTRQ+eax*4]
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3904], 0
mov dword ptr [ebp-3900], 0
mov dword ptr [ebp-3896], 0
lea eax, [ebp-3904]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3916], 0
mov dword ptr [ebp-3912], 0
mov dword ptr [ebp-3908], 0
lea eax, [ebp-3916]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3928], 0
mov dword ptr [ebp-3924], 0
mov dword ptr [ebp-3920], 0
lea eax, [ebp-3928]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3940]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3940]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3940]
push eax
call fb_StrDelete
add esp, 4
.L_15C0:
.L_15BF:
jmp .L_1572
.L_15B3:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
jne .L_15C6
cmp dword ptr [ebp-20], 15
jne .L_15C8
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [Lt_1C07]
fcomip st, st(1)
fstp st(0)
jnz .L_15CA
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset Lt_15CB
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
jmp .L_15C9
.L_15CA:
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call fb_StrDelete
add esp, 4
.L_15C9:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 11
push offset Lt_15A7
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call fb_StrDelete
add esp, 4
jmp .L_15C7
.L_15C8:
cmp dword ptr [ebp-20], 16
jne .L_15D2
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [Lt_1C07]
fcomip st, st(1)
fstp st(0)
jnz .L_15D4
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset Lt_15D5
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
jmp .L_15D3
.L_15D4:
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call fb_StrDelete
add esp, 4
.L_15D3:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call fb_StrDelete
add esp, 4
jmp .L_15C7
.L_15D2:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 4294967295
mov edx, -1
jl .L_1D73
jg .L_1D74
cmp dword ptr [eax+24], 2147483648
jb .L_1D73
.L_1D74:
xor edx, edx
.L_1D73:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
mov esi, -1
jg .L_1D75
jl .L_1D76
cmp dword ptr [eax+24], 4294967295
ja .L_1D75
.L_1D76:
xor esi, esi
.L_1D75:
or edx, esi
je .L_15DD
push 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
push 0
push -1
push -1
lea esi, [ebp-44]
push esi
push 10
push offset Lt_0469
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea esi, [ebp-3772]
push esi
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call fb_StrDelete
add esp, 4
jmp .L_15DC
.L_15DD:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
jl .L_15E3
jg .L_1D77
cmp dword ptr [eax+24], 2147483648
jb .L_15E3
.L_1D77:
push 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call fb_StrDelete
add esp, 4
jmp .L_15DC
.L_15E3:
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
.L_15DC:
.L_15C7:
jmp .L_15C5
.L_15C6:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_15EE
cmp dword ptr [ebp-20], 20
jne .L_15F0
mov eax, dword ptr [ebp-32]
mov esi, dword ptr [eax+8]
mov edx, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
add edx, dword ptr [esi+40]
adc eax, dword ptr [esi+44]
mov esi, dword ptr [ebp-32]
mov ebx, dword ptr [esi+8]
add edx, dword ptr [ebx+40]
adc eax, dword ptr [ebx+44]
add edx, 4294967295
adc eax, 4294967295
mov ebx, dword ptr [ebp-32]
mov esi, dword ptr [ebx+8]
mov ecx, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
add ecx, 4294967295
adc ebx, 4294967295
not ecx
not ebx
and edx, ecx
and eax, ebx
mov dword ptr [CTX+120], edx
mov dword ptr [CTX+124], eax
push 0
push 8
push dword ptr [CTX+124]
push dword ptr [CTX+120]
call __moddi3
add esp, 16
neg eax
adc edx, 0
neg edx
add eax, dword ptr [CTX+120]
adc edx, dword ptr [CTX+124]
add eax, 8
adc edx, 0
mov dword ptr [CTX+120], eax
mov dword ptr [CTX+124], edx
push 1
push 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
mov edx, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
push eax
call MEMCOPY
add esp, 20
lea eax, [ebp-3784]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov edx, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call fb_LongintToStr
add esp, 8
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
mov dword ptr [ebp-3848], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
lea eax, [ebp-3832]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
mov dword ptr [ebp-3836], 0
lea eax, [ebp-3844]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3856]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3856]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3856]
push eax
call fb_StrDelete
add esp, 4
jmp .L_15EF
.L_15F0:
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
.L_15EF:
jmp .L_15ED
.L_15EE:
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax]
cmp edx, 5
sete dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp-20]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
or edx, eax
je .L_15FE
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+4]
and edx, 31
cmp edx, 22
jne .L_15FF
movzx edx, byte ptr [CTX+232]
neg edx
cmp edx, -1
sete dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-3764], edx
jmp .L_1D54
.L_15FF:
mov dword ptr [ebp-3764], 0
.L_1D54:
cmp dword ptr [ebp-3764], 0
je .L_1601
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3768], eax
jmp .L_1D55
.L_1601:
mov dword ptr [ebp-3768], 0
.L_1D55:
cmp dword ptr [ebp-3768], 0
je .L_1604
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push -1
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-44]
push eax
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-44]
push eax
call fb_LEFT
add esp, 8
push eax
push 20
push offset Lt_0F81
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3804]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1603
.L_1604:
push 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0711
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3792]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3792]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3792]
push eax
call fb_StrDelete
add esp, 4
.L_1603:
jmp .L_15FD
.L_15FE:
push 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call fb_StrDelete
add esp, 4
.L_15FD:
cmp dword ptr [ebp-20], 20
jne .L_160D
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov ecx, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
add ecx, dword ptr [edx+40]
adc eax, dword ptr [edx+44]
mov edx, dword ptr [ebp-32]
mov ebx, dword ptr [edx+8]
add ecx, dword ptr [ebx+40]
adc eax, dword ptr [ebx+44]
add ecx, 4294967295
adc eax, 4294967295
mov ebx, dword ptr [ebp-32]
mov edx, dword ptr [ebx+8]
mov esi, dword ptr [edx+40]
mov ebx, dword ptr [edx+44]
add esi, 4294967295
adc ebx, 4294967295
not esi
not ebx
and ecx, esi
and eax, ebx
mov dword ptr [CTX+120], ecx
mov dword ptr [CTX+124], eax
push 0
push 8
push dword ptr [CTX+124]
push dword ptr [CTX+120]
call __moddi3
add esp, 16
neg eax
adc edx, 0
neg edx
add eax, dword ptr [CTX+120]
adc edx, dword ptr [CTX+124]
add eax, 8
adc edx, 0
mov dword ptr [CTX+120], eax
mov dword ptr [CTX+124], edx
push 1
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
mov edx, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 4
push offset Lt_009E
push -1
lea eax, [ebp-3772]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
push eax
call MEMCOPY
add esp, 20
lea eax, [ebp-3796]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-3772]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
push -1
mov edx, dword ptr [CTX+120]
mov eax, dword ptr [CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call fb_LongintToStr
add esp, 8
push eax
push 10
push offset Lt_0711
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
lea eax, [ebp-3820]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3832]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3832]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3832]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3868], 0
mov dword ptr [ebp-3864], 0
mov dword ptr [ebp-3860], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
mov dword ptr [ebp-3836], 0
lea eax, [ebp-3844]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
mov dword ptr [ebp-3848], 0
lea eax, [ebp-3856]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3868]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3868]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3868]
push eax
call fb_StrDelete
add esp, 4
jmp .L_160C
.L_160D:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call fb_StrDelete
add esp, 4
.L_160C:
.L_15ED:
.L_15C5:
.L_1572:
.L_1549:
jmp .L_1547
.L_1548:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-56]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_161B
lea eax, [ebp-56]
push eax
call EMITOP3_OP4
add esp, 4
.L_161B:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
jne .L_161D
cmp dword ptr [ebp-20], 15
jne .L_161F
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [Lt_1C07]
fcomip st, st(1)
fstp st(0)
jnz .L_1621
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset Lt_15CB
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1620
.L_1621:
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call fb_StrDelete
add esp, 4
.L_1620:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 6
push offset Lt_0E00
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 9
push offset Lt_0797
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call fb_StrDelete
add esp, 4
jmp .L_161E
.L_161F:
cmp dword ptr [ebp-20], 16
jne .L_1628
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [Lt_1C07]
fcomip st, st(1)
fstp st(0)
jnz .L_162A
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset Lt_15CB
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1629
.L_162A:
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call fb_StrDelete
add esp, 4
.L_1629:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 6
push offset Lt_073B
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 9
push offset Lt_079C
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call fb_StrDelete
add esp, 4
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_1632
push 3
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov edx, dword ptr [ebp-8]
sal edx, 3
add edx, -8
push edx
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
lea eax, [ebp-3820]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3832]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3832]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3832]
push eax
call fb_StrDelete
add esp, 4
.L_1632:
.L_1631:
jmp .L_161E
.L_1628:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
push dword ptr [eax]
call REG_TRANSFER
add esp, 8
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
jne .L_1637
cmp dword ptr [eax+24], 0
jne .L_1637
.L_1D7E:
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRD+edx*4]
push -1
push 3
push offset Lt_0129
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [LISTREG]
mov eax, dword ptr [edx]
push dword ptr [REGSTRD+eax*4]
push 5
push offset Lt_09AE
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1636
.L_1637:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
mov edx, -1
jg .L_1D7F
jl .L_1D80
cmp dword ptr [eax+24], 0
ja .L_1D7F
.L_1D80:
xor edx, edx
.L_1D7F:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .L_1D81
jg .L_1D82
cmp dword ptr [eax+24], 2147483647
jbe .L_1D81
.L_1D82:
xor ecx, ecx
.L_1D81:
and edx, ecx
je .L_163C
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push -1
lea ecx, [ebp-44]
push ecx
push -1
push 3
push offset Lt_0129
push -1
push 0
mov ecx, dword ptr [ebp-12]
sal ecx, 2
add ecx, dword ptr [LISTREG]
mov edx, dword ptr [ecx]
push dword ptr [REGSTRD+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edx, [ebp-3772]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1636
.L_163C:
cmp dword ptr [ebp-20], 8
je .L_1643
.L_1644:
cmp dword ptr [ebp-20], 9
je .L_1643
.L_1645:
cmp dword ptr [ebp-20], 13
je .L_1643
.L_1646:
cmp dword ptr [ebp-20], 14
je .L_1643
.L_1647:
cmp dword ptr [ebp-20], 10
jne .L_1642
.L_1643:
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRQ+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edx, [ebp-3772]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1641
.L_1642:
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRD+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edx, [ebp-3772]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
.L_164C:
.L_1641:
.L_1636:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_1652
push 3
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [LISTREG]
mov eax, dword ptr [edx]
push dword ptr [REGSTRQ+eax*4]
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
.L_1652:
.L_1651:
.L_161E:
jmp .L_161C
.L_161D:
cmp dword ptr [ebp-20], 20
jne .L_1657
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_1659
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
lea eax, [ebp-44]
push eax
push 2
push offset Lt_0134
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
.L_1659:
.L_1658:
cmp byte ptr [CTX+232], 0
je .L_165D
mov eax, dword ptr [ebp-76]
mov dword ptr [ebp-3764], eax
jmp .L_165F
.L_1661:
push dword ptr [ebp-4]
push offset LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLR
add esp, 20
jmp .L_165E
.L_1662:
push dword ptr [ebp-4]
push offset LISTREG
mov eax, dword ptr [ebp-12]
dec eax
push eax
lea eax, [ebp-44]
push eax
push 8
call REG_FILLR
add esp, 20
push dword ptr [ebp-4]
push offset LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLR
add esp, 20
jmp .L_165E
.L_1663:
push dword ptr [ebp-4]
push offset LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push 8
call REG_FILLR
add esp, 20
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLX
add esp, 12
jmp .L_165E
.L_1664:
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLX
add esp, 12
jmp .L_165E
.L_1665:
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push 8
call REG_FILLX
add esp, 12
push dword ptr [ebp-4]
push offset LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLR
add esp, 20
jmp .L_165E
.L_1666:
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-44]
push eax
push 8
call REG_FILLX
add esp, 12
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLX
add esp, 12
jmp .L_165E
.L_165F:
cmp dword ptr [ebp-3764], 5
ja .L_165E
mov eax, dword ptr [ebp-3764]
jmp dword ptr [.L_1667+eax*4]
.L_1667:
.int .L_1661
.int .L_1664
.int .L_1662
.int .L_1663
.int .L_1665
.int .L_1666
.L_165E:
jmp .L_165C
.L_165D:
cmp dword ptr [ebp-76], 0
jne .L_1669
push dword ptr [ebp-4]
push offset LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLR
add esp, 20
jmp .L_1668
.L_1669:
cmp dword ptr [ebp-76], 1
jne .L_166A
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call REG_FILLX
add esp, 12
jmp .L_1668
.L_166A:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_166C
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-3764], eax
jmp .L_166E
.L_1670:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_157C
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_166D
.L_1675:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_0803
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_166D
.L_167A:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_166D
.L_167F:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_166D
.L_166E:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_166D
mov eax, dword ptr [ebp-3764]
jmp dword ptr [.L_1684+eax*4-4]
.L_1684:
.int .L_1670
.int .L_1675
.int .L_166D
.int .L_167A
.int .L_166D
.int .L_166D
.int .L_166D
.int .L_167F
.L_166D:
jmp .L_166B
.L_166C:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-3764], eax
jmp .L_1686
.L_1688:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 9
push offset Lt_1297
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset Lt_1598
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_157C
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1685
.L_168E:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 9
push offset Lt_159D
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset Lt_15A0
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 14
push offset Lt_0803
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1685
.L_1694:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset Lt_15A7
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_0809
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1685
.L_169A:
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset Lt_15AE
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1685
.L_1686:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_1685
mov eax, dword ptr [ebp-3764]
jmp dword ptr [.L_16A0+eax*4-4]
.L_16A0:
.int .L_1688
.int .L_168E
.int .L_1685
.int .L_1694
.int .L_1685
.int .L_1685
.int .L_1685
.int .L_169A
.L_1685:
.L_166B:
.L_1668:
.L_165C:
jmp .L_161C
.L_1657:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 5
jne .L_16A2
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
push dword ptr [eax]
call REG_TRANSFER
add esp, 8
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+4]
and edx, 31
cmp edx, 22
jne .L_16A3
movzx edx, byte ptr [CTX+232]
neg edx
cmp edx, -1
sete dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-3764], edx
jmp .L_1D56
.L_16A3:
mov dword ptr [ebp-3764], 0
.L_1D56:
cmp dword ptr [ebp-3764], 0
je .L_16A5
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3768], eax
jmp .L_1D57
.L_16A5:
mov dword ptr [ebp-3768], 0
.L_1D57:
cmp dword ptr [ebp-3768], 0
je .L_16A8
push 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push -1
push 1
push offset Lt_0134
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-44]
push eax
push 1
call fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-44]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
push 13
push offset Lt_041F
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRQ+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
lea eax, [ebp-3816]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3828]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3828]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3828]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16A7
.L_16A8:
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRQ+edx*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
.L_16A7:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_16B3
push 3
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [LISTREG]
mov eax, dword ptr [edx]
push dword ptr [REGSTRQ+eax*4]
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
.L_16B3:
.L_16B2:
jmp .L_16A1
.L_16A2:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_16B8
mov dword ptr [ebp-3764], 24
jmp .L_1D58
.L_16B8:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3764], eax
.L_1D58:
mov eax, dword ptr [ebp-3764]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_16BB
cmp dword ptr [ebp-20], 16
jne .L_16BD
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_16BF
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 9
push offset Lt_079C
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16BE
.L_16BF:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 10
push offset Lt_16C4
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
.L_16BE:
jmp .L_16BC
.L_16BD:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_16CA
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 9
push offset Lt_0797
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16C9
.L_16CA:
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push 10
push offset Lt_16CF
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
.L_16C9:
.L_16BC:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_16D5
push 3
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push -1
mov edx, dword ptr [ebp-16]
dec edx
push edx
call fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset Lt_16D7
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 17
push offset Lt_16D6
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3860], 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 6
push offset Lt_16DC
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRQ+edx*4]
push 6
push offset Lt_07BC
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea edx, [ebp-3824]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3860]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3860]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3860]
push eax
call fb_StrDelete
add esp, 4
.L_16D5:
.L_16D4:
jmp .L_16BA
.L_16BB:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
push dword ptr [eax]
call REG_TRANSFER
add esp, 8
cmp dword ptr [ebp-20], 19
jne .L_16E2
cmp byte ptr [CTX+232], 0
je .L_16E4
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3780]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
push 0
push 72
push offset Lt_16E7
push -1
lea eax, [ebp-3792]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3792]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3792]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3804]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16E3
.L_16E4:
mov dword ptr [ebp-20], 8
.L_16E3:
.L_16E2:
.L_16E1:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_16EA
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3768], eax
jmp .L_1D59
.L_16EA:
mov dword ptr [ebp-3768], 0
.L_1D59:
cmp dword ptr [ebp-3768], 0
je .L_16ED
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+32], 0
je .L_16EE
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+32]
mov eax, dword ptr [edx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3772], eax
jmp .L_1D5A
.L_16EE:
mov dword ptr [ebp-3772], 0
.L_1D5A:
cmp dword ptr [ebp-3772], 0
je .L_16F1
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push 15
push offset Lt_0A4F
push -1
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call fb_StrDelete
add esp, 4
push 0
push 6
push offset Lt_0716
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
.L_16F1:
.L_16F0:
.L_16ED:
.L_16EC:
cmp dword ptr [ebp-20], 8
je .L_16F7
.L_16F8:
cmp dword ptr [ebp-20], 9
je .L_16F7
.L_16F9:
cmp dword ptr [ebp-20], 13
je .L_16F7
.L_16FA:
cmp dword ptr [ebp-20], 14
je .L_16F7
.L_16FB:
cmp dword ptr [ebp-20], 10
jne .L_16F6
.L_16F7:
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRQ+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16F5
.L_16F6:
cmp dword ptr [ebp-20], 11
je .L_1701
.L_1702:
cmp dword ptr [ebp-20], 12
jne .L_1700
.L_1701:
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRD+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16F5
.L_1700:
cmp dword ptr [ebp-20], 5
je .L_1708
.L_1709:
cmp dword ptr [ebp-20], 6
jne .L_1707
.L_1708:
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRW+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16F5
.L_1707:
cmp dword ptr [ebp-20], 2
je .L_170F
.L_1710:
cmp dword ptr [ebp-20], 3
je .L_170F
.L_1711:
cmp dword ptr [ebp-20], 1
je .L_170F
.L_1712:
cmp dword ptr [ebp-20], 4
jne .L_170E
.L_170F:
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [LISTREG]
mov edx, dword ptr [eax]
push dword ptr [REGSTRB+edx*4]
push 5
push offset Lt_03EC
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
jmp .L_16F5
.L_170E:
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3780]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push -1
push -1
push dword ptr [ebp-20]
call fb_IntToStr
add esp, 4
push eax
push 55
push offset Lt_171B
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3804]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
.L_1717:
.L_16F5:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_1720
push 3
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [LISTREG]
mov eax, dword ptr [edx]
push dword ptr [REGSTRQ+eax*4]
push -1
push 8
push offset Lt_157D
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call fb_IntToStr
add esp, 4
push eax
push 15
push offset Lt_03A6
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call fb_StrDelete
add esp, 4
.L_1720:
.L_171F:
.L_16BA:
.L_16A1:
.L_161C:
.L_1547:
push dword ptr [ebp-24]
lea eax, [IRHL+60]
push eax
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
jmp .L_14A4
.L_14A5:
mov eax, dword ptr [CTX+80]
cmp dword ptr [ebp-8], eax
jle .L_1726
mov eax, dword ptr [ebp-8]
mov dword ptr [CTX+80], eax
.L_1726:
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+16]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_1728
push 0
push dword ptr [ebp+16]
call HWRITEASM64
add esp, 8
.L_1728:
cmp byte ptr [ebp+32], 0
je .L_172A
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 6
push offset Lt_1494
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3780]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call REG_FREEABLE
add esp, 4
lea eax, [ebp-3780]
push eax
call fb_StrDelete
add esp, 4
.L_172A:
cmp dword ptr [ebp-3740], 0
je .L_172E
mov eax, dword ptr [ebp-3740]
mov ecx, 16
cdq
idiv ecx
mov eax, edx
test eax, eax
je .L_1730
mov eax, dword ptr [ebp-3740]
sar eax, 31
and eax, 15
add eax, dword ptr [ebp-3740]
sar eax, 4
sal eax, 4
add eax, 16
mov dword ptr [ebp-3740], eax
push 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
push 0
push 11
push offset Lt_1731
push -1
lea eax, [ebp-3768]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3768]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3768]
push eax
call fb_StrDelete
add esp, 4
.L_1730:
.L_172F:
mov eax, dword ptr [ebp-3736]
mov dword ptr [ebp-3760], eax
jmp .L_1733
.L_1736:
push 4
push offset Lt_0247
push -1
push 3
mov eax, dword ptr [ebp-3760]
imul eax, 12
lea edx, [ebp+eax-3696]
push edx
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_1738
push 3
mov eax, dword ptr [ebp-3760]
imul eax, 12
lea edx, [ebp+eax-3696]
push edx
call HWRITEASM64
add esp, 8
jmp .L_1737
.L_1738:
push 0
mov edx, dword ptr [ebp-3760]
imul edx, 12
lea eax, [ebp+edx-3696]
push eax
call HWRITEASM64
add esp, 8
.L_1737:
.L_1734:
dec dword ptr [ebp-3760]
.L_1733:
cmp dword ptr [ebp-3760], 1
jge .L_1736
.L_1735:
.L_172E:
.L_172D:
cmp byte ptr [ebp+32], 0
je .L_173A
push 1
call REG_ALLOWED
add esp, 4
.L_173A:
call REG_SAVE
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
jne .L_173C
cmp byte ptr [CTX+232], 0
je .L_173E
push 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
push 0
push -1
push -1
cmp dword ptr [ebp-16], 8
jg .L_173F
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-3760], eax
jmp .L_1D5B
.L_173F:
mov dword ptr [ebp-3760], 8
.L_1D5B:
push dword ptr [ebp-3760]
call fb_IntToStr
add esp, 4
push eax
push 10
push offset Lt_0B3C
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call fb_StrDelete
add esp, 4
.L_173E:
.L_173D:
.L_173C:
.L_173B:
movzx eax, byte ptr [CTX+232]
neg eax
cmp eax, -1
jne .L_1743
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3756], eax
jmp .L_1D5C
.L_1743:
mov dword ptr [ebp-3756], 0
.L_1D5C:
cmp dword ptr [ebp-3756], 0
je .L_1746
push 1
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
push 0
push -1
push 5
push offset Lt_1495
push -1
push -1
push dword ptr [ebp+12]
push 6
push offset Lt_1494
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3792]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3792]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3792]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1745
.L_1746:
push 1
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 6
push offset Lt_1494
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3780]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call fb_StrDelete
add esp, 4
.L_1745:
cmp dword ptr [ebp-3740], 0
je .L_174D
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push -1
push -1
push dword ptr [ebp-3740]
call fb_IntToStr
add esp, 4
push eax
push 10
push offset Lt_174E
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3780]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-3740], 0
mov dword ptr [ebp-3736], 0
.L_174D:
.L_174C:
mov edx, dword ptr [CTX+104]
mov eax, dword ptr [CTX+108]
cmp dword ptr [CTX+124], eax
jl .L_1752
jg .L_1D90
cmp dword ptr [CTX+120], edx
jbe .L_1752
.L_1D90:
mov eax, dword ptr [CTX+120]
mov edx, dword ptr [CTX+124]
mov dword ptr [CTX+104], eax
mov dword ptr [CTX+108], edx
.L_1752:
mov dword ptr [CTX+112], 0
mov dword ptr [CTX+116], 0
mov byte ptr [CTX+153], 0
cmp dword ptr [ebp+20], 0
je .L_1754
push dword ptr [ebp+20]
call HISSTRUCTIN2REGS
add esp, 4
test eax, eax
je .L_1756
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 1
mov eax, dword ptr [SYMB_DTYPETB+368]
sal eax, 1
mov ecx, eax
mov edx, ecx
sar edx, 31
add dword ptr [CTX+96], ecx
adc dword ptr [CTX+100], edx
mov edx, dword ptr [CTX+96]
mov ecx, dword ptr [CTX+100]
neg edx
adc ecx, 0
neg ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+36], edx
mov dword ptr [eax+40], ecx
mov edx, dword ptr [ebp+20]
mov ecx, dword ptr [edx+8]
mov edx, dword ptr [ecx+128]
mov dword ptr [ebp-3764], edx
jmp .L_1758
.L_175A:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 11
push offset Lt_175B
push -1
push -1
mov edx, dword ptr [ebp+20]
push dword ptr [edx+40]
push dword ptr [edx+36]
call fb_LongintToStr
add esp, 8
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 11
push offset Lt_175F
push -1
push -1
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+36]
mov edx, dword ptr [eax+40]
add ecx, 8
adc edx, 0
push edx
push ecx
call fb_LongintToStr
add esp, 8
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1757
.L_1763:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 11
push offset Lt_175B
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 12
push offset Lt_1767
push -1
push -1
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
add edx, 8
adc ecx, 0
push ecx
push edx
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1757
.L_176B:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 12
push offset Lt_1767
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 11
push offset Lt_175B
push -1
push -1
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+36]
mov edx, dword ptr [eax+40]
add ecx, 8
adc edx, 0
push edx
push ecx
call fb_LongintToStr
add esp, 8
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1757
.L_1772:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 12
push offset Lt_1767
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 12
push offset Lt_1776
push -1
push -1
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
add edx, 8
adc ecx, 0
push ecx
push edx
call fb_LongintToStr
add esp, 8
push eax
push 6
push offset Lt_07BC
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1757
.L_1758:
mov eax, dword ptr [ebp-3764]
add eax, 4294967294
cmp eax, 4
ja .L_1757
mov eax, dword ptr [ebp-3764]
jmp dword ptr [.L_177A+eax*4-8]
.L_177A:
.int .L_175A
.int .L_1763
.int .L_1757
.int .L_176B
.int .L_1772
.L_1757:
lea eax, [ebp-3732]
push eax
call fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
jmp .L_14A0
.L_1756:
.L_1755:
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-20], edx
mov edx, dword ptr [ebp-20]
and edx, 480
je .L_177B
mov dword ptr [ebp-3760], 24
jmp .L_1D5D
.L_177B:
mov edx, dword ptr [ebp-20]
and edx, 31
mov dword ptr [ebp-3760], edx
.L_1D5D:
cmp dword ptr [ebp-3760], 24
jne .L_177E
mov dword ptr [ebp-20], 8
.L_177E:
cmp dword ptr [ebp-20], 16
jne .L_1780
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+28]
and eax, 511
cmp eax, 20
je .L_1782
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset Lt_1783
push -1
lea eax, [ebp-3772]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3772]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1781
.L_1782:
mov eax, dword ptr [ENV+284]
and eax, 16
test eax, eax
je .L_1786
mov eax, dword ptr [ENV+284]
and eax, 32
test eax, eax
je .L_1788
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset Lt_1783
push -1
lea eax, [ebp-3772]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3772]
push eax
call fb_StrDelete
add esp, 4
.L_1788:
.L_1787:
jmp .L_1785
.L_1786:
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset Lt_1783
push -1
lea eax, [ebp-3772]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3772]
push eax
call fb_StrDelete
add esp, 4
.L_1785:
.L_1781:
jmp .L_177F
.L_1780:
cmp dword ptr [ebp-20], 15
jne .L_178B
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+28]
and edx, 511
cmp edx, 20
je .L_178D
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset Lt_178E
push -1
lea edx, [ebp-3772]
push edx
call fb_StrAssign
add esp, 20
lea edx, [ebp-3772]
push edx
call HWRITEASM64
add esp, 8
lea edx, [ebp-3772]
push edx
call fb_StrDelete
add esp, 4
jmp .L_178C
.L_178D:
mov edx, dword ptr [ENV+284]
and edx, 16
test edx, edx
je .L_1791
mov edx, dword ptr [ENV+284]
and edx, 32
test edx, edx
je .L_1793
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset Lt_178E
push -1
lea edx, [ebp-3772]
push edx
call fb_StrAssign
add esp, 20
lea edx, [ebp-3772]
push edx
call HWRITEASM64
add esp, 8
lea edx, [ebp-3772]
push edx
call fb_StrDelete
add esp, 4
.L_1793:
.L_1792:
jmp .L_1790
.L_1791:
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset Lt_178E
push -1
lea edx, [ebp-3772]
push edx
call fb_StrAssign
add esp, 20
lea edx, [ebp-3772]
push edx
call HWRITEASM64
add esp, 8
lea edx, [ebp-3772]
push edx
call fb_StrDelete
add esp, 4
.L_1790:
.L_178C:
.L_178B:
.L_177F:
push -1
mov edx, dword ptr [ebp+20]
push dword ptr [edx+12]
call REG_FINDFREE
add esp, 8
mov edx, dword ptr [ebp+20]
mov eax, dword ptr [edx]
mov dword ptr [ebp-3764], eax
cmp dword ptr [ebp-3764], 4
jne .L_1798
.L_1799:
cmp dword ptr [ebp-20], 8
je .L_179C
.L_179D:
cmp dword ptr [ebp-20], 9
je .L_179C
.L_179E:
cmp dword ptr [ebp-20], 13
je .L_179C
.L_179F:
cmp dword ptr [ebp-20], 14
je .L_179C
.L_17A0:
cmp dword ptr [ebp-20], 16
je .L_179C
.L_17A1:
cmp dword ptr [ebp-20], 10
jne .L_179B
.L_179C:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [REGSTRQ]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_179A
.L_179B:
cmp dword ptr [ebp-20], 11
je .L_17A7
.L_17A8:
cmp dword ptr [ebp-20], 12
je .L_17A7
.L_17A9:
cmp dword ptr [ebp-20], 15
jne .L_17A6
.L_17A7:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRD+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [REGSTRD]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_179A
.L_17A6:
cmp dword ptr [ebp-20], 5
je .L_17AF
.L_17B0:
cmp dword ptr [ebp-20], 6
jne .L_17AE
.L_17AF:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRW+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [REGSTRW]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_179A
.L_17AE:
cmp dword ptr [ebp-20], 2
je .L_17B6
.L_17B7:
cmp dword ptr [ebp-20], 3
je .L_17B6
.L_17B8:
cmp dword ptr [ebp-20], 1
je .L_17B6
.L_17B9:
cmp dword ptr [ebp-20], 4
jne .L_17B5
.L_17B6:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRB+eax*4]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [REGSTRB]
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
jmp .L_179A
.L_17B5:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push -1
push dword ptr [ebp-20]
call fb_IntToStr
add esp, 4
push eax
push 55
push offset Lt_17C2
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3812]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [REGSTRQ+68]
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
.L_17BE:
.L_179A:
jmp .L_1796
.L_1798:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push 62
push offset Lt_17C9
push -1
lea eax, [ebp-3788]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-3800]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call fb_StrDelete
add esp, 4
.L_17C6:
.L_1796:
.L_1754:
.L_1753:
lea eax, [ebp-3732]
push eax
call fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
.L_14A0:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALL:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_17CC:
mov byte ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_17CF
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 4
jne .L_17D1
mov byte ptr [ebp-4], 1
.L_17D1:
.L_17D0:
.L_17CF:
.L_17CE:
push 0
movzx eax, byte ptr [ebp-4]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-32]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-32]
push ebx
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call HDOCALL
add esp, 28
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_17CD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALLPTR:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.L_17D4:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov byte ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 4
jne .L_17D8
.L_17D9:
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_17D6
.L_17D8:
cmp dword ptr [ebp-36], 2
jne .L_17DA
.L_17DB:
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
jmp .L_17D6
.L_17DA:
cmp dword ptr [ebp-36], 3
jne .L_17DC
.L_17DD:
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
push 2
push offset Lt_0134
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_17D6
.L_17DC:
cmp dword ptr [ebp-36], 5
jne .L_17E1
.L_17E2:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_17D6
.L_17E1:
cmp dword ptr [ebp-36], 0
jne .L_17E3
.L_17E4:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 44
push offset Lt_17E7
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
jmp .L_17D6
.L_17E3:
cmp dword ptr [ebp-36], 1
jne .L_17EA
.L_17EB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_17ED
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_17EC
.L_17ED:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_17EC:
jmp .L_17D6
.L_17EA:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 51
push offset Lt_0A5D
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_17F2:
.L_17D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_17F7
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebx+56], 4
jne .L_17F9
mov byte ptr [ebp-28], 1
.L_17F9:
.L_17F8:
.L_17F7:
.L_17F6:
push 1
movzx eax, byte ptr [ebp-28]
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+16]
lea ebx, [ebp-24]
push ebx
lea ebx, [ebp-12]
push ebx
push dword ptr [ebp+8]
call HDOCALL
add esp, 28
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
.L_17D5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJUMPPTR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_17FA:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [CTX+136]
cmp dword ptr [eax+12], ebx
jne .L_17FD
mov ebx, dword ptr [CTX+132]
mov dword ptr [ebp-4], ebx
mov dword ptr [CTX+140], 0
mov dword ptr [CTX+136], -2
jmp .L_17FC
.L_17FD:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
.L_17FC:
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_0111
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_17FB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 36
.L_1800:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00F7
push 0
push dword ptr [ebp+8]
call HGETBOPCODE
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [CTX+236], 0
je .L_1806
mov eax, dword ptr [CTX+236]
mov dword ptr [REGHANDLE+eax*4], -2
mov dword ptr [CTX+236], 0
.L_1806:
.L_1805:
cmp dword ptr [CTX+216], 0
je .L_1808
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+220], eax
.L_1808:
.L_1807:
cmp dword ptr [ebp+8], 98
je .L_180A
push dword ptr [ebp+12]
call REG_MARK
add esp, 4
.L_180A:
.L_1809:
.L_1801:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITRETURN:
push ebp
mov ebp, esp
sub esp, 24
.L_180B:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 38
push offset Lt_180D
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 4
push offset Lt_064F
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_180C:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 356
push ebx
push esi
push edi
.L_1810:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
cmp dword ptr [ebp+24], 0
jne .L_1814
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 5
push offset Lt_0111
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1813
.L_1814:
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp+36], 0
mov eax, -1
ja .L_1D93
jb .L_1D94
cmp dword ptr [ebp+32], 2147483647
ja .L_1D93
.L_1D94:
xor eax, eax
.L_1D93:
cmp dword ptr [ebp+36], 4294967295
mov ebx, -1
jb .L_1D95
ja .L_1D96
cmp dword ptr [ebp+32], 2147483648
jb .L_1D95
.L_1D96:
xor ebx, ebx
.L_1D95:
and eax, ebx
je .L_181A
push 0
push 0
push -1
push 999998
call REG_FINDFREE
add esp, 8
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push -1
push -1
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call fb_ULongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_03EC
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 10
push offset Lt_181F
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
lea eax, [ebp-344]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-356]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-356]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-356]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1819
.L_181A:
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push -1
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call fb_ULongintToStr
add esp, 8
push eax
push 10
push offset Lt_181F
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call fb_StrDelete
add esp, 4
.L_1819:
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push -1
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call fb_ULongintToStr
add esp, 8
push eax
push 10
push offset Lt_1824
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 4
push offset Lt_099E
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 4
push -1
push 999997
call REG_FINDFREE
add esp, 8
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov dword ptr [REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push 6
push offset Lt_1829
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset Lt_0129
push -1
push 0
mov eax, dword ptr [ebp-56]
push dword ptr [REGSTRQ+eax*4]
push 5
push offset Lt_017A
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 2
push offset Lt_0168
push -1
push 0
mov eax, dword ptr [ebp-56]
push dword ptr [REGSTRQ+eax*4]
push 22
push offset Lt_182F
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 6
push offset Lt_055A
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-236]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 9
push offset Lt_055C
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-288], 0
mov eax, dword ptr [ebp+40]
mov dword ptr [ebp-292], eax
jmp .L_1838
.L_183B:
mov ebx, dword ptr [ebp-288]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-52]
sal ecx, 3
mov esi, dword ptr [ebp+16]
add esi, ecx
mov edi, dword ptr [esi]
mov ecx, dword ptr [esi+4]
cmp eax, ecx
jne .L_183D
cmp ebx, edi
jne .L_183D
.L_1D97:
push 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 0
mov edi, dword ptr [ebp-52]
sal edi, 2
mov ecx, dword ptr [ebp+20]
add ecx, edi
push dword ptr [ecx]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_027E
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-316]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-316]
push eax
call fb_StrDelete
add esp, 4
inc dword ptr [ebp-52]
jmp .L_183C
.L_183D:
push 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_027E
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-316]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-316]
push eax
call fb_StrDelete
add esp, 4
.L_183C:
.L_1839:
inc dword ptr [ebp-288]
.L_1838:
mov eax, dword ptr [ebp-292]
cmp dword ptr [ebp-288], eax
jle .L_183B
.L_183A:
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 6
push offset Lt_05EA
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call ASM_SECTION
add esp, 4
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
.L_1813:
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_1811:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMEM:
push ebp
mov ebp, esp
sub esp, 304
push ebx
.L_1843:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 5
push offset Lt_03EC
push -1
lea eax, [ebp-72]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
cmp dword ptr [ebp+8], 107
jne .L_1846
.L_1847:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_1849
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
mov dword ptr [ebp-88], eax
push 0
push 0
mov eax, dword ptr [ebp-88]
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-84], 1
jmp .L_1848
.L_1849:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 1
jne .L_184A
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_184C
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_184B
.L_184C:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_184B:
mov dword ptr [ebp-84], 0
jmp .L_1848
.L_184A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_1851
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-84], 1
push 0
push 5
push offset Lt_017A
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_1848
.L_1851:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 49
push offset Lt_1857
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1844
.L_1848:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .L_185B
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset Lt_0129
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset Lt_0D9D
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push -1
lea eax, [ebp-60]
push eax
push 4
push offset Lt_1860
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0469
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 22
push offset Lt_1867
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 8
push offset Lt_1869
push -1
lea eax, [ebp-232]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_04E7
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-256]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_047A
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
push 0
push -1
push 2
push offset Lt_00ED
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-304]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-304]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-304]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1844
.L_185B:
.L_185A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_1872
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 54
push offset Lt_1875
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1844
.L_1872:
.L_1871:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jne .L_1879
cmp dword ptr [eax+24], 0
jne .L_1879
.L_1D9A:
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1844
.L_1879:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-96], ecx
mov dword ptr [ebp-92], ebx
cmp dword ptr [ebp-92], 0
jg .L_187D
jl .L_1D9B
cmp dword ptr [ebp-96], 8
ja .L_187D
.L_1D9B:
.L_187E:
cmp dword ptr [ebp-92], 0
jne .L_1D9C
cmp dword ptr [ebp-96], 3
je .L_187D
.L_1D9C:
.L_187F:
cmp dword ptr [ebp-92], 0
jne .L_1D9D
cmp dword ptr [ebp-96], 5
je .L_187D
.L_1D9D:
.L_1880:
cmp dword ptr [ebp-92], 0
jne .L_1D9E
cmp dword ptr [ebp-96], 6
je .L_187D
.L_1D9E:
.L_1881:
cmp dword ptr [ebp-92], 0
jne .L_187C
cmp dword ptr [ebp-96], 7
jne .L_187C
.L_1D9F:
.L_187D:
push dword ptr [ebp-84]
lea ecx, [ebp-12]
push ecx
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+24]
push ebx
call MEMCLEAR
add esp, 12
jmp .L_187A
.L_187C:
cmp dword ptr [ebp-92], 0
jne .L_1882
cmp dword ptr [ebp-96], 1
jne .L_1882
.L_1DA0:
.L_1883:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_1885
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset Lt_1886
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea ebx, [ebp-108]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1884
.L_1885:
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 6
push offset Lt_188A
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 22
push offset Lt_1867
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
.L_1884:
jmp .L_187A
.L_1882:
cmp dword ptr [ebp-92], 0
jne .L_188F
cmp dword ptr [ebp-96], 2
jne .L_188F
.L_1DA1:
.L_1890:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_1892
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-12]
push eax
push 15
push offset Lt_1893
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1891
.L_1892:
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 6
push offset Lt_188A
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 22
push offset Lt_189A
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
.L_1891:
jmp .L_187A
.L_188F:
cmp dword ptr [ebp-92], 0
jne .L_189C
cmp dword ptr [ebp-96], 4
jne .L_189C
.L_1DA2:
.L_189D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_189F
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-12]
push eax
push 16
push offset Lt_18A0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
jmp .L_189E
.L_189F:
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 6
push offset Lt_188A
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 23
push offset Lt_18A7
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
.L_189E:
jmp .L_187A
.L_189C:
cmp dword ptr [ebp-92], 0
jne .L_18A9
cmp dword ptr [ebp-96], 8
jne .L_18A9
.L_1DA3:
.L_18AA:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_18AC
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 5
push offset Lt_046F
push -1
push -1
lea eax, [ebp-12]
push eax
push 16
push offset Lt_046E
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
jmp .L_18AB
.L_18AC:
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 6
push offset Lt_188A
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 23
push offset Lt_18B3
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
.L_18AB:
.L_18A9:
.L_187A:
jmp .L_1845
.L_1846:
cmp dword ptr [ebp+8], 105
jne .L_18B5
.L_18B6:
cmp dword ptr [ebp+24], 0
jne .L_18B8
cmp dword ptr [ebp+20], 0
jne .L_18B8
.L_1DA4:
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_1844
.L_18B8:
.L_18B7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-92], ebx
cmp dword ptr [ebp-92], 2
jne .L_18BB
.L_18BC:
lea ebx, [ebp-36]
push ebx
lea ebx, [ebp-12]
push ebx
push dword ptr [ebp+12]
call PREPARE_IDX
add esp, 12
jmp .L_18B9
.L_18BB:
cmp dword ptr [ebp-92], 4
jne .L_18BD
.L_18BE:
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call REG_FINDREAL
add esp, 4
push dword ptr [REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_18B9
.L_18BD:
cmp dword ptr [ebp-92], 1
jne .L_18BF
.L_18C0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+4]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_18C2
push 0
push -1
push 2
push offset Lt_0168
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset Lt_08B6
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_18C1
.L_18C2:
push 0
push -1
push 6
push offset Lt_0420
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_18C1:
jmp .L_18B9
.L_18BF:
cmp dword ptr [ebp-92], 3
jne .L_18C7
.L_18C8:
push 0
push -1
push 2
push offset Lt_0168
