	.intel_syntax noprefix

.section .text
.balign 16

.globl _DBG_FILENAME
_DBG_FILENAME:
push ebp
mov ebp, esp
sub esp, 12
.L_024B:
push -1
lea eax, [_CTXDBG+8]
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_024E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
push 0
push 132
push dword ptr [ebp+8]
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_CTXDBG+8]
push eax
call _fb_StrAssign
add esp, 20
.L_024E:
.L_024D:
.L_024C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _REG_FINDREAL
_REG_FINDREAL:
push ebp
mov ebp, esp
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.L_0429:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-76], 0
.L_042E:
mov eax, dword ptr [ebp-76]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [_REGHANDLE+eax*4], ebx
jne .L_0430
mov ebx, dword ptr [ebp-76]
mov dword ptr [ebp-4], ebx
jmp .L_042A
.L_0430:
.L_042F:
.L_042C:
inc dword ptr [ebp-76]
.L_042B:
cmp dword ptr [ebp-76], 15
jle .L_042E
.L_042D:
mov dword ptr [ebp-12], 0
cmp dword ptr [_CTX+212], 0
jle .L_0432
lea ebx, [_CTX+156]
push ebx
call _FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-12], eax
.L_0433:
cmp dword ptr [ebp-12], 0
je .L_0434
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_0436
jmp .L_0434
.L_0436:
.L_0435:
push dword ptr [ebp-12]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0433
.L_0434:
.L_0432:
.L_0431:
cmp dword ptr [ebp-12], 0
jne .L_0438
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 48
push offset _Lt_043C
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 35
push offset _Lt_043B
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-4], 17
jmp .L_042A
.L_0438:
.L_0437:
push -1
push dword ptr [ebp+8]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_0420
push -1
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+4], -2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_042A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _REG_TEMPO
_REG_TEMPO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0446:
mov dword ptr [ebp-8], 0
inc dword ptr [_Lt_0448]
push -1
push dword ptr [_Lt_0448]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_REGSTRQ+eax*4]
mov dword ptr [ebp-4], ebx
.L_0447:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0448:
.long 9999999

.section .text
.balign 16

.globl _SAVE_CALL
_SAVE_CALL:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_148B:
cmp dword ptr [ebp+12], 0
je .L_148E
mov eax, dword ptr [ebp+16]
mov dword ptr [_REGHANDLE+eax*4], -2
.L_148E:
call _REG_SAVE
cmp dword ptr [_CTX+80], 0
jne .L_1490
mov dword ptr [_CTX+80], 1
.L_1490:
.L_148F:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_1491
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_149E
.L_1491:
mov dword ptr [ebp-4], 0
.L_149E:
cmp dword ptr [ebp-4], 0
je .L_1494
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 5
push offset _Lt_1496
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_1495
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1493
.L_1494:
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_1495
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_1493:
cmp dword ptr [ebp+12], 0
je .L_149D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+12]
mov dword ptr [_REGHANDLE+ebx*4], ecx
.L_149D:
.L_148C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__irzgas64:
.L_0002:
.L_0003:
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
__ZN13ASM64_CONTEXTC1Ev:
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
.L_0068:
.L_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN13ASM64_CONTEXTaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_006A:
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
.L_006B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN13ASM64_CONTEXTD1Ev:
push ebp
mov ebp, esp
push ebx
.L_006E:
.L_006F:
mov eax, dword ptr [ebp+8]
add eax, 68
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 56
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 44
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 32
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 20
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6DBGCTXC1Ev:
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
.L_0070:
.L_0071:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6DBGCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_0072:
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
call _fb_StrAssign
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
call _fb_StrAssign
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
.L_0073:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6DBGCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0076:
.L_0077:
mov eax, dword ptr [ebp+8]
add eax, 20
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN7TDBGSTRC1Ev:
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
.L_0079:
.L_007A:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN7TDBGSTRaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_007B:
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
call _fb_StrAssign
add esp, 20
.L_007C:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN7TDBGSTRD1Ev:
push ebp
mov ebp, esp
push ebx
.L_007F:
.L_0080:
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8TDBGSTABC1Ev:
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
.L_0081:
.L_0082:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8TDBGSTABaSERKS_:
push ebp
mov ebp, esp
push ebx
push esi
.L_0083:
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
call _fb_StrAssign
add esp, 20
.L_0084:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8TDBGSTABD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0087:
.L_0088:
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CHECK_OPTIM:
push ebp
mov ebp, esp
sub esp, 216
push ebx
push esi
.L_00E8:
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
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_00EB
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_00EB:
.L_00EA:
cmp dword ptr [_Lt_1BE3], 2
jne .L_00ED
push 2
push offset _Lt_00EE
push -1
push offset _Lt_1BE0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_00F1
push 3
push offset _Lt_00F2
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
.L_00F1:
.L_00F0:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_00ED:
.L_00EC:
push 0
push -1
push 3
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_00F6
push -1
lea eax, [ebp-72]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_00F5
.L_00F7:
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset _Lt_00F8
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00F9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
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
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00FA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_00FC
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_00FB
.L_00FC:
add dword ptr [ebp-52], -2
.L_00FB:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_00FE
push 0
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_00FF
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_00FE:
.L_00FD:
jmp .L_00F3
.L_00F5:
push 4
push offset _Lt_0102
push -1
lea eax, [ebp-72]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0101
.L_0103:
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset _Lt_00F8
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00F9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
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
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00FA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0105
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_0104
.L_0105:
add dword ptr [ebp-52], -2
.L_0104:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 7
push offset _Lt_0106
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0108
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0108:
.L_0107:
mov dword ptr [_Lt_1BE3], 1
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-60]
mov dword ptr [_Lt_1BE4], eax
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
jmp .L_00F3
.L_0101:
push 4
push offset _Lt_010A
push -1
lea eax, [ebp-72]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0109
.L_010B:
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset _Lt_00F8
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00F9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
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
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00FA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_010D
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_010C
.L_010D:
add dword ptr [ebp-52], -2
.L_010C:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push -1
push offset _Lt_1BE0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_010F
push 3
push offset _Lt_0110
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset _Lt_0113
push -1
push -1
push offset _Lt_1BE1
push -1
push 5
push offset _Lt_0112
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0110
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
jmp .L_010E
.L_010F:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 2
mov eax, dword ptr [ebp-60]
mov dword ptr [_Lt_1BE4], eax
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_010E:
jmp .L_00F3
.L_0109:
push 4
push offset _Lt_011B
push -1
lea eax, [ebp-72]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_011A
.L_011C:
push -1
push offset _Lt_1BE0
call _fb_StrLen
add esp, 8
test eax, eax
je .L_011E
cmp dword ptr [_Lt_1BE3], 1
je .L_0120
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset _Lt_00F8
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00F9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
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
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00FA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0122
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_0121
.L_0122:
add dword ptr [ebp-52], -2
.L_0121:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 114
jne .L_0125
push -1
push offset _Lt_1BE0
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_1BE1]
movzx ecx, byte ptr [ebx]
cmp ecx, 114
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0127
push 3
push offset _Lt_0128
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset _Lt_012B
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
push offset _Lt_1BE1
push -1
push 5
push offset _Lt_0129
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0128
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .L_0126
.L_0127:
push -1
push offset _Lt_1BE0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_0135
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_1BE1
push 1
call _fb_StrInstr
add esp, 12
and ebx, eax
je .L_0134
push 3
push offset _Lt_0136
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset _Lt_0137
push -1
push -1
push offset _Lt_1BE1
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset _Lt_0129
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0136
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_0134:
.L_0126:
.L_0125:
.L_0124:
.L_0120:
.L_011F:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
.L_011E:
.L_011D:
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
jmp .L_00F3
.L_011A:
push 0
push -1
push 4
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrInit
add esp, 20
push 5
push offset _Lt_0144
push -1
lea eax, [ebp-84]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0148
.L_0149:
push 5
push offset _Lt_0145
push -1
lea eax, [ebp-84]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0148
.L_014A:
push 5
push offset _Lt_0146
push -1
lea eax, [ebp-84]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0148
.L_014B:
push 5
push offset _Lt_0147
push -1
lea eax, [ebp-84]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0143
.L_0148:
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
inc eax
mov dword ptr [ebp-60], eax
push 1
push offset _Lt_00F8
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
push 0
push -1
mov eax, dword ptr [ebp-52]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00F9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
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
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_00FA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_014D
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-52], eax
jmp .L_014C
.L_014D:
add dword ptr [ebp-52], -2
.L_014C:
push 0
push -1
mov eax, dword ptr [ebp-52]
sub eax, dword ptr [ebp-56]
push eax
mov eax, dword ptr [ebp-56]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
push -1
push offset _Lt_1BE0
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_014F
push 2
push offset _Lt_0150
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_1BE1
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0152
push 3
push offset _Lt_0153
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 0
push -1
push 11
push offset _Lt_0154
push -1
push -1
push offset _Lt_1BE1
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_00F8
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0153
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_0152:
.L_0151:
.L_014F:
.L_014E:
.L_0143:
.L_0141:
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0140:
.L_00F3:
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 7
push offset _Lt_015E
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0160
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0160:
push 6
push offset _Lt_0161
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0163
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0163:
push 6
push offset _Lt_0164
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0166
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0166:
cmp dword ptr [_Lt_1BE3], 1
jne .L_0168
push 2
push offset _Lt_0169
push -1
push -1
push offset _Lt_1BE0
push 2
push offset _Lt_0135
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_016D
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
call _fb_RIGHT
add esp, 8
push eax
call _fb_ASC
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
call _fb_RIGHT
add esp, 8
push eax
call _fb_ASC
add esp, 8
cmp eax, 57
setbe cl
shr ecx, 1
sbb ecx, ecx
and esi, ecx
or ebx, esi
je .L_0170
push 3
push offset _Lt_0171
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_00F8
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
lea eax, [ebp-12]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_012A
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset _Lt_0172
push -1
push -1
lea ebx, [ebp-48]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [_CTX]
imul ebx, 3
push ebx
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0171
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_0170:
.L_016F:
jmp .L_016C
.L_016D:
push -1
push offset _Lt_1BE0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
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
je .L_0179
push 3
push offset _Lt_017A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 0
push 5
push offset _Lt_017B
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_012A
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset _Lt_017C
push -1
push -1
lea ebx, [ebp-48]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [_CTX]
imul ebx, 3
push ebx
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_017A
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .L_0178
.L_0179:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 114
jne .L_0184
push -1
push 2
push offset _Lt_0169
push -1
push -1
push offset _Lt_1BE0
push 2
push offset _Lt_0135
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-112], eax
jmp .L_1BDF
.L_0184:
mov dword ptr [ebp-112], 0
.L_1BDF:
cmp dword ptr [ebp-112], 0
je .L_0187
push 3
push offset _Lt_0188
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_00F8
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_012A
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset _Lt_0189
push -1
push -1
lea ebx, [ebp-48]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [_CTX]
imul ebx, 3
push ebx
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0188
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .L_0186
.L_0187:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-60]
mov dword ptr [_Lt_1BE4], eax
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0186:
.L_0178:
.L_016C:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_1BE3], 0
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0168:
.L_0167:
push -1
push offset _Lt_1BE0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0190
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0192
push 0
push -1
push -1
push dword ptr [ebp+8]
push 5
push offset _Lt_0193
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .L_0191
.L_0192:
push 1
push offset _Lt_0000
push -1
push offset _Lt_1BE1
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0196
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset _Lt_1BE1
push -1
push 12
push offset _Lt_019F
push -1
push -1
push offset _Lt_1BE0
push -1
push 12
push offset _Lt_019E
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 8
push offset _Lt_019D
push -1
push -1
lea eax, [ebp-12]
push eax
push 40
push offset _Lt_019C
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00E9
.L_0196:
.L_0195:
mov eax, dword ptr [_Lt_1BE1]
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
je .L_01AB
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_1BE0
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_01AD
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 120
jne .L_01B0
push 6
push offset _Lt_01B1
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B3
push 0
push 5
push offset _Lt_01B4
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
jmp .L_01B2
.L_01B3:
push 0
push 5
push offset _Lt_01B5
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
.L_01B2:
.L_01B0:
.L_01AF:
jmp .L_01AC
.L_01AD:
push 3
push offset _Lt_01B6
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 5
push offset _Lt_01B5
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_01B4
push -1
lea ebx, [ebp-36]
push ebx
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01B8
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
jmp .L_01B7
.L_01B8:
push 6
push offset _Lt_0161
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B9
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
.L_01B9:
.L_01B7:
.L_01AC:
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset _Lt_01BA
push -1
push -1
push offset _Lt_1BE1
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset _Lt_00F8
push -1
push -1
push offset _Lt_1BE2
push -1
push -1
push 32
mov ebx, dword ptr [_CTX]
imul ebx, 3
push ebx
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_01B6
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01AA
.L_01AB:
mov eax, dword ptr [_Lt_1BE1]
movzx ebx, byte ptr [eax]
cmp ebx, 120
jne .L_01C4
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_1BE0
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_01C6
push 6
push offset _Lt_01B1
push -1
push offset _Lt_1BE2
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01C8
push 0
push 5
push offset _Lt_01B4
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01C7
.L_01C8:
push 0
push 5
push offset _Lt_01B5
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.L_01C7:
jmp .L_01C5
.L_01C6:
push 3
push offset _Lt_01C9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push 5
push offset _Lt_01B5
push -1
push offset _Lt_1BE2
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01CB
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-24]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_01CD
push 0
push 6
push offset _Lt_01CE
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01CC
.L_01CD:
push 0
push 5
push offset _Lt_01B5
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.L_01CC:
jmp .L_01CA
.L_01CB:
push 5
push offset _Lt_01B4
push -1
push offset _Lt_1BE2
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01CF
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
je .L_01D1
push 0
push 5
push offset _Lt_01B4
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_01D0
.L_01D1:
push 0
push 6
push offset _Lt_01B1
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign
add esp, 20
.L_01D0:
jmp .L_01CA
.L_01CF:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-180]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-180]
push ebx
call _HWRITEASM64
add esp, 8
lea ebx, [ebp-180]
push ebx
call _fb_StrDelete
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
push offset _Lt_01D4
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ebx, [ebp-192]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
.L_01CA:
.L_01C5:
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset _Lt_01D8
push -1
push -1
push offset _Lt_1BE1
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset _Lt_00F8
push -1
push -1
lea ebx, [ebp-36]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [_CTX]
imul ebx, 3
push ebx
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_01C9
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01AA
.L_01C4:
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
push offset _Lt_1BE0
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_1BE0
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01E2
push 3
push offset _Lt_01E3
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 10
push offset _Lt_01E4
push -1
push -1
push offset _Lt_1BE1
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset _Lt_00F8
push -1
push -1
push offset _Lt_1BE2
push -1
push -1
push 32
mov ebx, dword ptr [_CTX]
imul ebx, 3
push ebx
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_01E3
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01AA
.L_01E2:
mov eax, dword ptr [_Lt_1BE1]
movzx ebx, byte ptr [eax]
cmp ebx, 114
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_1BE1]
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
push offset _Lt_1BE0
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01EE
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_1BE0
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jne .L_01F0
push 3
push offset _Lt_01F1
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push -1
push dword ptr [_Lt_1BE4]
lea eax, [_CTX+56]
push eax
call _fb_StrAssignMid
add esp, 16
.L_01F0:
.L_01EF:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
cmp ebx, 120
jne .L_01F3
mov ebx, dword ptr [_Lt_1BE1]
movzx eax, byte ptr [ebx]
cmp eax, 101
jne .L_01F5
push 0
push 5
push offset _Lt_01B4
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01F4
.L_01F5:
push 0
push 5
push offset _Lt_01B5
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.L_01F4:
.L_01F3:
.L_01F2:
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrLen
add esp, 8
push -1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_StrLen
add esp, 8
add ebx, eax
add ebx, 9
mov dword ptr [ebp-60], ebx
push 0
push -1
push 11
push offset _Lt_01F6
push -1
push -1
push offset _Lt_1BE1
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push 2
push offset _Lt_00F8
push -1
push -1
lea ebx, [ebp-36]
push ebx
push -1
push -1
push 32
mov ebx, dword ptr [_CTX]
imul ebx, 3
push ebx
call _fb_StrFill1
add esp, 8
push eax
push -1
push 3
push offset _Lt_0111
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_01F1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_1BE1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_01EE:
.L_01AA:
.L_0191:
.L_0190:
.L_018F:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
push offset _Lt_1BE0
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
push offset _Lt_1BE1
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
push offset _Lt_1BE2
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-60]
mov dword ptr [_Lt_1BE4], eax
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_00E9:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_1BE0,12
.balign 4
	.lcomm	_Lt_1BE1,12
.balign 4
	.lcomm	_Lt_1BE2,12
.balign 4
	.lcomm	_Lt_1BE4,4
.balign 4
	.lcomm	_Lt_1BE3,4

.section .text
.balign 16
_REG_FREEABLE:
push ebp
mov ebp, esp
sub esp, 116
push ebx
.L_0200:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
push 3
push dword ptr [ebp+8]
call _fb_TRIM
add esp, 4
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push 4
push offset _Lt_0202
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0204
push 4
push offset _Lt_0203
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_1BFD
.L_0204:
mov dword ptr [ebp-24], -1
.L_1BFD:
cmp dword ptr [ebp-24], 0
jne .L_0207
push 4
push offset _Lt_0206
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_1BFE
.L_0207:
mov dword ptr [ebp-28], -1
.L_1BFE:
cmp dword ptr [ebp-28], 0
jne .L_020A
push 4
push offset _Lt_0209
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
jmp .L_1BFF
.L_020A:
mov dword ptr [ebp-32], -1
.L_1BFF:
cmp dword ptr [ebp-32], 0
je .L_020D
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jne .L_020F
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0201
.L_020F:
.L_020E:
jmp .L_020C
.L_020D:
lea eax, [ebp-20]
push eax
push 79
push offset _Lt_0210
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jne .L_0212
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0201
.L_0212:
.L_020C:
mov dword ptr [ebp-36], 1
.L_0216:
mov eax, dword ptr [ebp-36]
cmp dword ptr [_REGHANDLE+eax*4], -3
jne .L_0218
jmp .L_0214
.L_0218:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -1
push 2
push offset _Lt_00F9
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRQ+eax*4]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_021B
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
jmp .L_021A
.L_021B:
push 2
push offset _Lt_00F9
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRD+eax*4]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_021C
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
jmp .L_021A
.L_021C:
push 2
push offset _Lt_00F9
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRW+eax*4]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_021E
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
jmp .L_021A
.L_021E:
push 2
push offset _Lt_00F9
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRB+eax*4]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0220
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.L_0220:
.L_021A:
cmp dword ptr [ebp-4], -1
je .L_0223
push 4
push offset _Lt_0224
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0226
push 4
push offset _Lt_0225
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-88], eax
jmp .L_1C00
.L_0226:
mov dword ptr [ebp-88], -1
.L_1C00:
cmp dword ptr [ebp-88], 0
jne .L_0229
push 4
push offset _Lt_0228
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-92], eax
jmp .L_1C01
.L_0229:
mov dword ptr [ebp-92], -1
.L_1C01:
cmp dword ptr [ebp-92], 0
je .L_022C
jmp .L_0214
jmp .L_022B
.L_022C:
push 4
push offset _Lt_011B
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_022D
mov eax, dword ptr [ebp-4]
mov dword ptr [_CTX+132], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_REGHANDLE+eax*4]
mov dword ptr [_CTX+136], ebx
mov dword ptr [_CTX+140], 2
mov ebx, dword ptr [ebp-4]
mov dword ptr [_REGHANDLE+ebx*4], -2
jmp .L_0214
jmp .L_022B
.L_022D:
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [_REGSTRQ+ebx*4]
push -1
push 3
push offset _Lt_012A
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [_REGSTRQ+ebx*4]
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea ebx, [ebp-104]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0231
mov eax, dword ptr [ebp-4]
mov dword ptr [_REGHANDLE+eax*4], -2
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0201
.L_0231:
.L_0230:
.L_022B:
.L_0223:
.L_0222:
cmp dword ptr [ebp-4], -1
jne .L_0233
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRQ+eax*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0235
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
jmp .L_0234
.L_0235:
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRD+eax*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0236
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
jmp .L_0234
.L_0236:
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRW+eax*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0237
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
jmp .L_0234
.L_0237:
mov eax, dword ptr [ebp-36]
push dword ptr [_REGSTRB+eax*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0238
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-8], eax
.L_0238:
.L_0234:
.L_0233:
.L_0232:
cmp dword ptr [ebp-8], -1
je .L_023A
mov eax, dword ptr [ebp-8]
mov dword ptr [_REGHANDLE+eax*4], -2
.L_023A:
.L_0239:
.L_0214:
inc dword ptr [ebp-36]
.L_0213:
cmp dword ptr [ebp-36], 15
jle .L_0216
.L_0215:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0201:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PW2:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_023B:
fild dword ptr [ebp+8]
fldln2
fxch
fyl2x
fdiv qword ptr [_Lt_1C07]
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
fld qword ptr [_Lt_1C08]
fcomip st, st(1)
fstp st(0)
jnz .L_023E
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [_Lt_1C09+4]
push dword ptr [_Lt_1C09]
call _pow
add esp, 16
fistp dword ptr [ebp-4]
jmp .L_023C
jmp .L_023D
.L_023E:
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
fadd qword ptr [_Lt_1C0A]
sub esp,8
fstp qword ptr [esp]
push dword ptr [_Lt_1C09+4]
push dword ptr [_Lt_1C09]
call _pow
add esp, 16
fistp dword ptr [ebp-4]
.L_023D:
.L_023C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_ASM_SECTION:
push ebp
mov ebp, esp
sub esp, 24
.L_023F:
push -1
push dword ptr [ebp+8]
push -1
push offset _Lt_1C0B
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0242
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
push 10
push offset _Lt_0243
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push dword ptr [ebp+8]
push -1
push offset _Lt_1C0B
call _fb_StrAssign
add esp, 20
.L_0242:
.L_0241:
.L_0240:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_1C0B,12

.section .text
.balign 16
_EMITOP3_OP4:
push ebp
mov ebp, esp
.L_0246:
push 4
push offset _Lt_0248
push -1
push 3
push dword ptr [ebp+8]
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_024A
push 3
push dword ptr [ebp+8]
call _HWRITEASM64
add esp, 8
jmp .L_0249
.L_024A:
push 0
push dword ptr [ebp+8]
call _HWRITEASM64
add esp, 8
.L_0249:
.L_0247:
mov esp, ebp
pop ebp
ret
.balign 16
_HWRITEASM64:
push ebp
mov ebp, esp
sub esp, 108
push ebx
.L_0250:
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
call _fb_StrAssign
add esp, 20
cmp dword ptr [_CTX+236], 0
je .L_0253
cmp dword ptr [_CTX+240], 1
jne .L_0255
mov dword ptr [_CTX+240], 2
jmp .L_0254
.L_0255:
mov dword ptr [_CTX+236], 0
.L_0254:
.L_0253:
.L_0252:
cmp dword ptr [_CTX+140], 0
je .L_0257
dec dword ptr [_CTX+140]
cmp dword ptr [_CTX+140], 0
jne .L_0259
mov dword ptr [_CTX+136], -2
.L_0259:
.L_0258:
.L_0257:
.L_0256:
cmp dword ptr [_ENV+148], -1
jne .L_025B
cmp dword ptr [_CTXDBG+4], -1
je .L_025D
lea eax, [_CTXDBG+20]
push eax
call _DBG_FILENAME
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 0
push dword ptr [_CTXDBG+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset _Lt_025F
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov ax, word ptr [_CTXDBG+4]
push eax
push 68
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [_CTXDBG+4], -1
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.L_025D:
.L_025C:
.L_025B:
.L_025A:
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
je .L_0266
lea ebx, [ebp-12]
push ebx
call _REG_FREEABLE
add esp, 4
.L_0266:
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
je .L_0268
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _CHECK_OPTIM
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0267
.L_0268:
lea eax, [ebp-12]
push eax
call _CHECK_OPTIM
add esp, 4
.L_0267:
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0111
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [_CTX+4]
mov dword ptr [ebp-40], eax
jmp .L_026C
.L_026E:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+56]
push eax
call _fb_StrConcatByref
add esp, 20
jmp .L_026B
.L_026F:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+44]
push eax
call _fb_StrConcatByref
add esp, 20
jmp .L_026B
.L_0270:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+68]
push eax
call _fb_StrConcatByref
add esp, 20
jmp .L_026B
.L_0271:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref
add esp, 20
jmp .L_026B
.L_0272:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+32]
push eax
call _fb_StrConcatByref
add esp, 20
jmp .L_026B
.L_0273:
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref
add esp, 20
jmp .L_026B
.L_026C:
cmp dword ptr [ebp-40], 5
ja .L_0273
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_0274+eax*4]
_.L_0274:
.int .L_0271
.int .L_0273
.int .L_0272
.int .L_026F
.int .L_026E
.int .L_0270
.L_026B:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0251:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLOATTOHEX_ASM64:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0275:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
fld qword ptr [ebp+8]
fstp dword ptr [ebp-28]
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0277
mov dword ptr [ebp-32], 24
jmp .L_1C10
.L_0277:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-32], eax
.L_1C10:
cmp dword ptr [ebp-32], 16
jne .L_027A
push 0
push 3
push offset _Lt_027B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset _Lt_027C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
movsx eax, byte ptr [ebp+20]
test eax, eax
je .L_027E
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_027F
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0276
jmp .L_027D
.L_027E:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0276
.L_027D:
jmp .L_0279
.L_027A:
push 0
push 3
push offset _Lt_027B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 8
push dword ptr [ebp-28]
call _fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset _Lt_0281
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
movsx eax, byte ptr [ebp+20]
test eax, eax
je .L_0283
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0284
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0276
jmp .L_0282
.L_0283:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0276
.L_0282:
.L_0279:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0276:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_DBG_ADDSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0286:
cmp dword ptr [ebp+12], 0
jne .L_0289
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_CTXDBG+36]
mov dword ptr [ebp-12], eax
jmp .L_028B
.L_028E:
push -1
mov eax, dword ptr [ebp-8]
imul eax, 20
add eax, dword ptr [_DBGSTR]
lea ebx, [eax+8]
push ebx
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0290
mov eax, dword ptr [ebp-8]
imul eax, 20
add eax, dword ptr [_DBGSTR]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0287
.L_0290:
.L_028F:
.L_028C:
inc dword ptr [ebp-8]
.L_028B:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .L_028E
.L_028D:
.L_0289:
.L_0288:
inc dword ptr [_CTXDBG+36]
mov ebx, dword ptr [_CTXDBG+40]
cmp dword ptr [_CTXDBG+36], ebx
jle .L_0292
fild dword ptr [_CTXDBG+40]
fmul qword ptr [_Lt_1C11]
fistp dword ptr [_CTXDBG+40]
push dword ptr [_CTXDBG+40]
push 0
push 1
push offset __ZN7TDBGSTRD1Ev
push offset __ZN7TDBGSTRC1Ev
push 20
push offset _DBGSTR
call _fb_ArrayRedimPresvObj
add esp, 28
test eax, eax
je .L_0294
push 0
push 0
push offset _Lt_0295
push 948
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0294:
.L_0292:
.L_0291:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov eax, dword ptr [_CTXDBG+36]
imul eax, 20
add eax, dword ptr [_DBGSTR]
lea ebx, [eax+8]
push ebx
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [_CTXDBG+36]
imul ebx, 20
add ebx, dword ptr [_DBGSTR]
mov ecx, dword ptr [_CTXDBG+52]
mov eax, dword ptr [_CTXDBG+56]
mov dword ptr [ebx], ecx
mov dword ptr [ebx+4], eax
mov ecx, dword ptr [_CTXDBG+52]
mov dword ptr [ebp-4], ecx
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
inc eax
mov ebx, eax
mov ecx, ebx
sar ecx, 31
add dword ptr [_CTXDBG+52], ebx
adc dword ptr [_CTXDBG+56], ecx
.L_0287:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_DBG_ADDSTAB:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0296:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0299
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
je .L_029B
push 0
push dword ptr [ebp+8]
call _DBG_ADDSTR
add esp, 8
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_029A
.L_029B:
push 1
push dword ptr [ebp+8]
call _DBG_ADDSTR
add esp, 8
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], ecx
.L_029A:
.L_0299:
.L_0298:
inc dword ptr [_CTXDBG+44]
mov ebx, dword ptr [_CTXDBG+48]
cmp dword ptr [_CTXDBG+44], ebx
jle .L_029D
fild dword ptr [_CTXDBG+48]
fmul qword ptr [_Lt_1C12]
fistp dword ptr [_CTXDBG+48]
push dword ptr [_CTXDBG+48]
push 0
push 1
push offset __ZN8TDBGSTABD1Ev
push offset __ZN8TDBGSTABC1Ev
push 20
push offset _DBGSTAB
call _fb_ArrayRedimPresvObj
add esp, 28
test eax, eax
je .L_029F
push 0
push 0
push offset _Lt_0295
push 968
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_029F:
.L_029D:
.L_029C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
movzx ax, byte ptr [ebp+12]
mov word ptr [ebp-12], ax
mov ax, word ptr [ebp+16]
mov word ptr [ebp-10], ax
mov eax, dword ptr [_CTXDBG+44]
imul eax, 20
add eax, dword ptr [_DBGSTAB]
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
push 0
push -1
push dword ptr [ebp+20]
push -1
mov ecx, dword ptr [_CTXDBG+44]
imul ecx, 20
add ecx, dword ptr [_DBGSTAB]
lea ebx, [ecx+8]
push ebx
call _fb_StrAssign
add esp, 20
.L_0297:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_DBG_EMITSTR:
push ebp
mov ebp, esp
sub esp, 56
.L_02A0:
cmp byte ptr [_CTX+232], 0
je .L_02A3
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 12
push offset _Lt_02A4
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_02A2
.L_02A3:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 13
push offset _Lt_02A6
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_02A2:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset _Lt_02A8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], 0
mov eax, dword ptr [_CTXDBG+36]
mov dword ptr [ebp-20], eax
jmp .L_02AB
.L_02AE:
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 4
push offset _Lt_02B2
push -1
push -1
push offset _Lt_02B1
push offset _Lt_02B0
mov eax, dword ptr [ebp-16]
imul eax, 20
add eax, dword ptr [_DBGSTR]
push dword ptr [eax+8]
call _HREPLACE
add esp, 12
push eax
push 9
push offset _Lt_02AF
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.L_02AC:
inc dword ptr [ebp-16]
.L_02AB:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_02AE
.L_02AD:
.L_02A1:
mov esp, ebp
pop ebp
ret
.balign 16
_DBG_EMITSTAB:
push ebp
mov ebp, esp
sub esp, 136
push ebx
.L_02B6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp byte ptr [_CTX+232], 0
je .L_02B9
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 12
push offset _Lt_02BA
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_02B8
.L_02B9:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 13
push offset _Lt_02BC
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_02B8:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_CTXDBG+44]
mov dword ptr [ebp-16], eax
jmp .L_02BF
.L_02C2:
mov eax, dword ptr [ebp-12]
imul eax, 20
add eax, dword ptr [_DBGSTAB]
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
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F8
push -1
push -1
movsx eax, word ptr [ebp-2]
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F8
push -1
push -1
movsx eax, word ptr [ebp-4]
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_02C4
push -1
push -1
mov eax, dword ptr [ebp-12]
imul eax, 20
add eax, dword ptr [_DBGSTAB]
push dword ptr [eax+4]
push dword ptr [eax]
call _fb_HEX_l
add esp, 8
push eax
push 9
push offset _Lt_02C3
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
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
add eax, dword ptr [_DBGSTAB]
lea ecx, [eax+8]
push ecx
push 7
push offset _Lt_027F
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea ecx, [ebp-124]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
.L_02C0:
inc dword ptr [ebp-12]
.L_02BF:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_02C2
.L_02C1:
.L_02B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EDBGEMITHEADER_ASM64:
push ebp
mov ebp, esp
sub esp, 160
.L_02CF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [_CTXDBG], 1
mov dword ptr [_CTXDBG+36], -1
mov dword ptr [_CTXDBG+40], 1000
push dword ptr [_CTXDBG+40]
push 0
push 1
push offset __ZN7TDBGSTRD1Ev
push offset __ZN7TDBGSTRC1Ev
push 20
push offset _DBGSTR
call _fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_02D1
push 0
push 0
push offset _Lt_0295
push 1007
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02D1:
mov dword ptr [_CTXDBG+44], -1
mov dword ptr [_CTXDBG+48], 1000
push dword ptr [_CTXDBG+48]
push 0
push 1
push offset __ZN8TDBGSTABD1Ev
push offset __ZN8TDBGSTABC1Ev
push 20
push offset _DBGSTAB
call _fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_02D2
push 0
push 0
push offset _Lt_0295
push 1010
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02D2:
mov dword ptr [_CTXDBG+52], 1
mov dword ptr [_CTXDBG+56], 0
mov dword ptr [_CTXDBG+4], -1
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_02D4
push -1
push 0
push dword ptr [ebp+8]
call _HESCAPE
add esp, 4
push eax
push 8
push offset _Lt_02D5
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
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
push offset _Lt_02D9
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
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
push offset _Lt_000F
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp+8]
call _PATHISABSOLUTE
add esp, 4
test eax, eax
jne .L_02DF
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
push offset _Lt_001A
push -1
call _HCURDIR
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.L_02DF:
.L_02DE:
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-136], 0
.L_02E8:
push 0
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [_STABSTB+eax*4]
push -1
lea eax, [ebp-148]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
push 0
push 128
lea eax, [ebp-148]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
inc dword ptr [_CTXDBG]
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
.L_02E6:
inc dword ptr [ebp-136]
.L_02E5:
cmp dword ptr [ebp-136], 16
jle .L_02E8
.L_02E7:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_02D0:
mov esp, ebp
pop ebp
ret
.balign 16
_EDBGEMITGLOBALVAR_ASM64:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_02EA:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_02ED
lea ebx, [ebp-20]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_02EB
.L_02ED:
.L_02EC:
cmp dword ptr [ebp+12], 0
jne .L_02EF
.L_02F0:
mov dword ptr [ebp-4], 36
jmp .L_02EE
.L_02EF:
cmp dword ptr [ebp+12], 2
jne .L_02F1
.L_02F2:
mov dword ptr [ebp-4], 40
jmp .L_02EE
.L_02F1:
mov dword ptr [ebp-4], 38
.L_02F3:
.L_02EE:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
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
je .L_02F5
push 0
push 3
push offset _Lt_02F6
push -1
lea ecx, [ebp-20]
push ecx
call _fb_StrConcatAssign
add esp, 20
jmp .L_02F4
.L_02F5:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
je .L_02F7
push 0
push 3
push offset _Lt_02F8
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .L_02F4
.L_02F7:
push 0
push 2
push offset _Lt_00EE
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_02F4:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push 0
mov al, byte ptr [ebp-4]
push eax
lea eax, [ebp-20]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_02EB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EDBGEMITLOCALVAR_ASM64:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_02FA:
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
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+12], 0
je .L_02FD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_02FF
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_02FB
.L_02FF:
.L_02FE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_0301
mov dword ptr [ebp-4], 38
jmp .L_0300
.L_0301:
mov dword ptr [ebp-4], 40
.L_0300:
push 0
push 3
push offset _Lt_0302
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_02FC
.L_02FD:
mov dword ptr [ebp-4], 128
push 0
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.L_02FC:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-28]
push eax
push 0
mov al, byte ptr [ebp-4]
push eax
lea eax, [ebp-16]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_02FB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EDBGEMITPROCHEADER_ASM64:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.L_0303:
push 0
push 261
lea eax, [_ENV+304]
push eax
push -1
push offset _Lt_1C17
call _fb_StrAssign
add esp, 20
push offset _Lt_1C17
call _DBG_FILENAME
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4096
test ebx, ebx
je .L_0306
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
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
call _FBGETENTRYPOINT
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+16], 1
mov ebx, dword ptr [_LEX+213384]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+4280]
mov dword ptr [ecx+20], eax
push 0
push -1
call _FBGETENTRYPOINT
push eax
push -1
push offset _Lt_1C18
call _fb_StrAssign
add esp, 20
jmp .L_0305
.L_0306:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME
add esp, 4
push eax
push -1
push offset _Lt_1C18
call _fb_StrAssign
add esp, 20
.L_0305:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_1C19
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTXDBG+32], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32
test ecx, ecx
je .L_030A
push 0
push 3
push offset _Lt_030B
push -1
push offset _Lt_1C18
call _fb_StrConcatAssign
add esp, 20
jmp .L_0309
.L_030A:
push 0
push 3
push offset _Lt_030C
push -1
push offset _Lt_1C18
call _fb_StrConcatAssign
add esp, 20
.L_0309:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
push offset _Lt_1C18
call _fb_StrConcatAssign
add esp, 20
push offset _Lt_1C19
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov ax, word ptr [ecx+16]
push eax
push 36
push offset _Lt_1C18
call _DBG_ADDSTAB
add esp, 16
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0304:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_1C18,12
.balign 4
	.lcomm	_Lt_1C19,12
.balign 4
	.lcomm	_Lt_1C17,12

.section .text
.balign 16
_EDBGEMITPROCARG_ASM64:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_030F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 2
push offset _Lt_00EE
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_0313
push 0
push 2
push offset _Lt_0314
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .L_0312
.L_0313:
push 0
push 2
push offset _Lt_0315
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_0312:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
push 0
push 160
lea eax, [ebp-12]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0310:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDECLPOINTER_ASM64:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0317:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_1C1A
call _fb_StrAssign
add esp, 20
.L_0319:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
test ebx, ebx
je .L_031A
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
push dword ptr [_CTXDBG]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push offset _Lt_1C1A
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_031B
push -1
push offset _Lt_1C1A
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [_CTXDBG]
jmp .L_0319
.L_031A:
push 0
push -1
push offset _Lt_1C1A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0318:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_1C1A,12

.section .text
.balign 16
_HDECLUDT_ASM64:
push ebp
mov ebp, esp
sub esp, 180
push ebx
.L_031C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_CTXDBG]
mov dword ptr [eax+132], ebx
inc dword ptr [_CTXDBG]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_031F
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call _fb_IntToStr
add esp, 4
push eax
push 4
push offset _Lt_031E
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0324:
cmp dword ptr [ebp-4], 0
je .L_0325
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_0327
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
push 2
push offset _Lt_00EE
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
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
jle .L_032B
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-116], ebx
jmp .L_1C1B
.L_032B:
mov dword ptr [ebp-116], 0
.L_1C1B:
mov ecx, dword ptr [ebp-116]
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp-180]
adc ebx, dword ptr [ebp-176]
push ebx
push ecx
call _fb_LongintToStr
add esp, 8
push eax
push 2
push offset _Lt_00F9
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+112], 0
jle .L_032F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+112]
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-148], ebx
mov dword ptr [ebp-144], ecx
jmp .L_1C1C
.L_032F:
push dword ptr [ebp-4]
call _SYMBGETREALSIZE
add esp, 4
shld edx, eax, 3
shl eax, 3
mov dword ptr [ebp-148], eax
mov dword ptr [ebp-144], edx
.L_1C1C:
push dword ptr [ebp-144]
push dword ptr [ebp-148]
call _fb_LongintToStr
add esp, 8
push eax
push 2
push offset _Lt_00F9
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0333
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0327:
.L_0326:
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0324
.L_0325:
push 0
push 2
push offset _Lt_0333
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
push 0
push 128
lea eax, [ebp-16]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_031D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDECLENUM_ASM64:
push ebp
mov ebp, esp
sub esp, 112
push ebx
.L_0335:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_CTXDBG]
mov dword ptr [eax+100], ebx
inc dword ptr [_CTXDBG]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 3
push offset _Lt_0338
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_0337
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call _SYMBGETENUMFIRSTELM
add esp, 4
mov dword ptr [ebp-4], eax
.L_033C:
cmp dword ptr [ebp-4], 0
je .L_033D
push 0
push -1
push -1
push 2
push offset _Lt_00F9
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset _Lt_00EE
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-4]
call _SYMBGETENUMNEXTELM
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_033C
.L_033D:
push 0
push 2
push offset _Lt_0333
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
push 0
push 128
lea eax, [ebp-16]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0336:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETDATATYPE_ASM64:
push ebp
mov ebp, esp
sub esp, 92
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0343:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+8], 0
jne .L_0346
push 0
push -1
push dword ptr [_REMAPTB]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0344
.L_0346:
.L_0345:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_0348
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-20], ebx
jmp .L_0347
.L_0348:
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
je .L_034A
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .L_034C
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
.L_034C:
.L_034B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .L_034E
push 0
push -1
push dword ptr [_CTXDBG]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_034F
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [_CTXDBG]
cmp dword ptr [ebp+12], 0
jle .L_0351
push 0
push 5
push offset _Lt_0352
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0353
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0333
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0350
.L_0351:
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
dec ecx
mov dword ptr [ebp-44], ecx
jmp .L_0355
.L_0358:
push 0
push 5
push offset _Lt_0352
push -1
lea ecx, [ebp-36]
push ecx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0333
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-40]
sal eax, 4
mov ebx, dword ptr [ecx+64]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0333
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-40]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
push dword ptr [ecx+12]
push dword ptr [ecx+8]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.L_0356:
inc dword ptr [ebp-40]
.L_0355:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .L_0358
.L_0357:
.L_0350:
.L_034E:
.L_034D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
je .L_035E
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-20], ecx
.L_035E:
.L_035D:
.L_034A:
.L_0349:
.L_0347:
cmp dword ptr [ebp-20], 0
jge .L_0360
mov dword ptr [ebp-20], 1
.L_0360:
.L_035F:
mov ecx, dword ptr [ebp-16]
and ecx, 480
test ecx, ecx
je .L_0362
push 0
push -1
lea ecx, [ebp-16]
push ecx
call _HDECLPOINTER_ASM64
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0362:
.L_0361:
and dword ptr [ebp-16], -513
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .L_0364
.L_0366:
cmp dword ptr [ebp-24], 0
je .L_0368
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+132], -1
jne .L_036A
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HDECLUDT_ASM64
add esp, 8
.L_036A:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+132]
call _fb_IntToStr
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0367
.L_0368:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+132], -1
jne .L_036D
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _HDECLUDT_ASM64
add esp, 8
.L_036D:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call _fb_IntToStr
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.L_0367:
jmp .L_0363
.L_036F:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+100], -1
jne .L_0371
push dword ptr [ebp-24]
call _HDECLENUM_ASM64
add esp, 4
.L_0371:
.L_0370:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+100]
call _fb_IntToStr
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0363
.L_0373:
push 0
push -1
push dword ptr [_CTXDBG]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0374
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [_CTXDBG]
push 0
push -1
push 0
push dword ptr [ebp-24]
call _HGETDATATYPE_ASM64
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0363
.L_0375:
push 0
push -1
push dword ptr [_REMAPTB]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0363
.L_0376:
push 0
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [_REMAPTB+eax*4]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0363
.L_0364:
mov eax, dword ptr [ebp-40]
add eax, 4294967286
cmp eax, 13
ja .L_0376
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_0377+eax*4-40]
_.L_0377:
.int .L_036F
.int .L_0376
.int .L_0376
.int .L_0376
.int .L_0376
.int .L_0376
.int .L_0376
.int .L_0376
.int .L_0376
.int .L_0376
.int .L_0366
.int .L_0376
.int .L_0373
.int .L_0375
.L_0363:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0344:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITDBG:
push ebp
mov ebp, esp
sub esp, 72
.L_0378:
cmp dword ptr [ebp+8], 113
jne .L_037B
push 0
push 0
push dword ptr [ebp+20]
push -1
lea eax, [_CTXDBG+20]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTXDBG+4], eax
jmp .L_037A
.L_037B:
cmp dword ptr [ebp+8], 114
jne .L_037D
jmp .L_037C
.L_037D:
cmp dword ptr [ebp+8], 115
jne .L_037E
jmp .L_037C
.L_037E:
cmp dword ptr [ebp+8], 116
jne .L_037F
jmp .L_037C
.L_037F:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset _Lt_0384
push -1
push 28
push offset _Lt_0383
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 44
push offset _Lt_0382
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.L_037C:
.L_037A:
.L_0379:
mov esp, ebp
pop ebp
ret
.balign 16
_REG_MARK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_038A:
mov byte ptr [ebp-4], 0
mov dword ptr [ebp-8], 1
.L_038F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_REGHANDLE+eax*4]
cmp ebx, -2
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [_REGHANDLE+eax*4]
cmp ecx, -3
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0391
mov ecx, dword ptr [ebp-8]
mov dword ptr [_REGROOM+ecx*8], -2
mov byte ptr [ebp-4], 1
.L_0391:
.L_0390:
.L_038D:
inc dword ptr [ebp-8]
.L_038C:
cmp dword ptr [ebp-8], 15
jle .L_038F
.L_038E:
cmp byte ptr [ebp-4], 0
je .L_0393
mov ecx, dword ptr [ebp+8]
mov dword ptr [_CTX+216], ecx
.L_0393:
.L_038B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ASM64_SPILLREG:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0394:
cmp dword ptr [_CTX+212], 0
jle .L_0397
lea eax, [_CTX+156]
push eax
call _FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_0398:
cmp dword ptr [ebp-8], 0
je .L_0399
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], -2
jne .L_039B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [_REGHANDLE+eax*4]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_0395
.L_039B:
.L_039A:
push dword ptr [ebp-8]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0398
.L_0399:
.L_0397:
.L_0396:
add dword ptr [_CTX+96], 8
adc dword ptr [_CTX+100], 0
cmp dword ptr [_CTX+116], 0
jne .L_1C22
cmp dword ptr [_CTX+112], 0
je .L_039D
.L_1C22:
mov ecx, dword ptr [_CTX+112]
mov eax, dword ptr [_CTX+116]
cmp dword ptr [_CTX+100], eax
jne .L_039F
cmp dword ptr [_CTX+96], ecx
jne .L_039F
.L_1C23:
push 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-20]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-20]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-20]
push ecx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 53
push offset _Lt_03A2
push -1
lea ecx, [ebp-32]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-32]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-32]
push ecx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-44]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-44]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-44]
push ecx
call _fb_StrDelete
add esp, 4
.L_039F:
.L_039E:
.L_039D:
.L_039C:
lea ecx, [_CTX+156]
push ecx
call _FLISTNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
inc dword ptr [_CTX+212]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [_CTX+212]
mov dword ptr [eax], ecx
mov eax, dword ptr [_CTX+96]
mov ecx, dword ptr [_CTX+100]
neg eax
adc ecx, 0
neg ecx
mov ebx, eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [_REGHANDLE+ebx*4]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0395:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_SPILLING:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.L_03A5:
push dword ptr [ebp+8]
call _ASM64_SPILLREG
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
push dword ptr [_REGSTRQ+eax*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [_REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp+8]
cmp dword ptr [_REGROOM+eax*8], -2
jne .L_03AE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [_REGROOM+eax*8+4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_REGROOM+ebx*8], -3
.L_03AE:
.L_03AD:
cmp dword ptr [_CTX+216], 0
je .L_03AF
mov dword ptr [ebp-56], -1
jmp .L_1C24
.L_03AF:
mov dword ptr [ebp-56], 0
.L_1C24:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-56]
mov dword ptr [ebx+12], eax
.L_03A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_SAVE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_03B1:
mov dword ptr [ebp-4], 1
push 1
push offset _LISTREG
call _fb_ArrayUBound
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_03B4
.L_03B7:
mov eax, dword ptr [ebp-4]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
cmp dword ptr [_REGHANDLE+ebx*4], -2
je .L_03B9
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ebx, dword ptr [_LISTREG]
push dword ptr [ebx]
call _REG_SPILLING
add esp, 4
.L_03B9:
.L_03B8:
.L_03B5:
inc dword ptr [ebp-4]
.L_03B4:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_03B7
.L_03B6:
.L_03B2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_ALLOWED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_03BA:
movzx eax, byte ptr [ebp+8]
neg eax
test eax, eax
jne .L_03BD
mov dword ptr [ebp-4], 1
push 1
push offset _LISTREG
call _fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-8], eax
jmp .L_03BF
.L_03C2:
mov eax, dword ptr [ebp-4]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
cmp dword ptr [_REGHANDLE+ebx*4], -2
jne .L_03C4
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ebx, dword ptr [_LISTREG]
mov eax, dword ptr [ebx]
mov dword ptr [_REGHANDLE+eax*4], -4
.L_03C4:
.L_03C3:
.L_03C0:
inc dword ptr [ebp-4]
.L_03BF:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_03C2
.L_03C1:
jmp .L_03BC
.L_03BD:
mov dword ptr [ebp-4], 1
push 1
push offset _LISTREG
call _fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-8], eax
jmp .L_03C6
.L_03C9:
mov eax, dword ptr [ebp-4]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
cmp dword ptr [_REGHANDLE+ebx*4], -4
jne .L_03CB
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ebx, dword ptr [_LISTREG]
mov eax, dword ptr [ebx]
mov dword ptr [_REGHANDLE+eax*4], -2
.L_03CB:
.L_03CA:
.L_03C7:
inc dword ptr [ebp-4]
.L_03C6:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_03C9
.L_03C8:
.L_03BC:
.L_03BB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_FINDFREE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_03CC:
mov dword ptr [ebp-8], -1
mov dword ptr [ebp-12], 0
cmp byte ptr [_CTX+153], 0
je .L_03CF
push 0
call _REG_ALLOWED
add esp, 4
.L_03CF:
mov dword ptr [ebp-16], 0
.L_03D3:
mov eax, dword ptr [ebp-16]
movsx ebx, byte ptr [_REG_PRIO+eax]
cmp dword ptr [_REGHANDLE+ebx*4], -2
jne .L_03D5
mov ebx, dword ptr [ebp-16]
movsx eax, byte ptr [_REG_PRIO+ebx]
mov dword ptr [ebp-8], eax
jmp .L_03D2
.L_03D5:
.L_03D1:
inc dword ptr [ebp-16]
.L_03D0:
cmp dword ptr [ebp-16], 12
jle .L_03D3
.L_03D2:
cmp dword ptr [ebp-8], -1
jne .L_03D7
cmp dword ptr [ebp+12], -1
jne .L_03D9
inc dword ptr [_Lt_1C25]
cmp dword ptr [_Lt_1C25], 6
jne .L_03DB
mov dword ptr [_Lt_1C25], 0
.L_03DB:
.L_03DC:
mov eax, dword ptr [_Lt_1C25]
cmp dword ptr [_REGHANDLE+eax*4], -4
jne .L_03DD
inc dword ptr [_Lt_1C25]
cmp dword ptr [_Lt_1C25], 6
jne .L_03DF
mov dword ptr [_Lt_1C25], 0
.L_03DF:
jmp .L_03DC
.L_03DD:
mov eax, dword ptr [_Lt_1C25]
movsx ebx, byte ptr [_REG_PRIO+eax]
mov dword ptr [ebp-8], ebx
jmp .L_03D8
.L_03D9:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
.L_03D8:
push dword ptr [ebp-8]
call _REG_SPILLING
add esp, 4
.L_03D7:
.L_03D6:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp+12], ebx
je .L_03E1
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [_REGHANDLE+ebx*4], eax
mov eax, 1
mov cl, byte ptr [ebp-8]
sal eax, cl
or dword ptr [_CTX+128], eax
.L_03E1:
.L_03E0:
cmp byte ptr [_CTX+153], 0
je .L_03E3
push 1
call _REG_ALLOWED
add esp, 4
.L_03E3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03CD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_1C25:
.long -1

.section .text
.balign 16
_REG_CALLPTR:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_03E4:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 1
push 1
push offset _LISTREG
call _fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-16], eax
jmp .L_03E7
.L_03EA:
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03EC
jmp .L_03E8
.L_03EC:
push -1
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [_REGHANDLE+ebx*4]
call _REG_FINDFREE
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
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
mov dword ptr [_REGHANDLE+ebx*4], -4
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+ebx*4]
call _fb_StrLen
add esp, 8
push 0
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add ebx, dword ptr [_LISTREG]
mov ecx, dword ptr [ebx]
push dword ptr [_REGSTRQ+ecx*4]
mov ebx, eax
call _fb_StrLen
add esp, 8
cmp ebx, eax
jne .L_03F3
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push -1
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _fb_StrAssignMid
add esp, 16
jmp .L_03F2
.L_03F3:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-8]
add eax, 2
push eax
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
mov eax, dword ptr [ebp-8]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_03F2:
.L_03E8:
inc dword ptr [ebp-12]
.L_03E7:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_03EA
.L_03E9:
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_03F7
mov dword ptr [ebp-12], 1
push 1
push offset _LISTREG
call _fb_ArrayUBound
add esp, 8
add eax, -2
mov dword ptr [ebp-16], eax
jmp .L_03F9
.L_03FC:
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03FE
jmp .L_03FA
.L_03FE:
push -1
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [_REGHANDLE+ebx*4]
call _REG_FINDFREE
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
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ebx, dword ptr [eax]
mov dword ptr [_REGHANDLE+ebx*4], -4
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+ebx*4]
call _fb_StrLen
add esp, 8
push 0
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add ebx, dword ptr [_LISTREG]
mov ecx, dword ptr [ebx]
push dword ptr [_REGSTRQ+ecx*4]
mov ebx, eax
call _fb_StrLen
add esp, 8
cmp ebx, eax
jne .L_0404
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push -1
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _fb_StrAssignMid
add esp, 16
jmp .L_0403
.L_0404:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-8]
add eax, 2
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
mov eax, dword ptr [ebp-8]
dec eax
push eax
push dword ptr [ebp+12]
call _fb_LEFT
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0403:
.L_03FA:
inc dword ptr [ebp-12]
.L_03F9:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_03FC
.L_03FB:
.L_03F7:
.L_03F6:
.L_03E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_BRANCH:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.L_0407:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_CTX+216]
cmp dword ptr [ebp+8], eax
jne .L_040A
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset _Lt_00EE
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-32], 1
.L_0410:
mov eax, dword ptr [ebp-32]
cmp dword ptr [_REGROOM+eax*8], -3
jne .L_0412
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [_REGROOM+eax*8+4]
push dword ptr [ebx+8]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-32]
mov dword ptr [_REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [_REGROOM+eax*8+4]
mov dword ptr [ebx+12], 0
.L_0412:
.L_0411:
mov ebx, dword ptr [ebp-32]
mov dword ptr [_REGROOM+ebx*8], -1
mov ebx, dword ptr [ebp-32]
mov dword ptr [_REGROOM+ebx*8+4], 0
.L_040E:
inc dword ptr [ebp-32]
.L_040D:
cmp dword ptr [ebp-32], 15
jle .L_0410
.L_040F:
cmp dword ptr [_CTX+220], 0
jne .L_0418
mov dword ptr [_CTX+216], 0
.L_0418:
.L_0417:
jmp .L_0409
.L_040A:
mov ebx, dword ptr [_CTX+220]
cmp dword ptr [ebp+8], ebx
jne .L_0419
cmp dword ptr [_CTX+212], 0
jle .L_041B
lea ebx, [_CTX+156]
push ebx
call _FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-32], eax
.L_041C:
cmp dword ptr [ebp-32], 0
je .L_041D
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+12], 0
je .L_041F
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+4]
call _REG_FINDFREE
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
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_0420
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
.L_041F:
.L_041E:
push dword ptr [ebp-32]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-32], eax
jmp .L_041C
.L_041D:
.L_041B:
.L_041A:
mov dword ptr [_CTX+220], 0
mov dword ptr [_CTX+216], 0
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset _Lt_00EE
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_0419:
.L_0409:
.L_0408:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_TRANSFER:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_0449:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_REGHANDLE+eax*4]
cmp ebx, -2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [_REGHANDLE+eax*4]
cmp ecx, -4
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_044C
jmp .L_044A
.L_044C:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ecx
jne .L_044E
mov ecx, dword ptr [ebp+8]
mov dword ptr [_REGHANDLE+ecx*4], -2
jmp .L_044A
.L_044E:
.L_044D:
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [_REGHANDLE+ecx*4]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
je .L_0450
push 3
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_0450:
.L_044F:
.L_044A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_MEMCLEAR:
push ebp
mov ebp, esp
sub esp, 196
push ebx
.L_0455:
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
push offset _Lt_0457
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_0459
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0458
.L_0459:
push -1
push 999997
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-40], eax
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 1
jne .L_045B
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_045A
.L_045B:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
.L_045A:
mov eax, dword ptr [ebp-40]
mov dword ptr [_REGHANDLE+eax*4], -2
.L_0458:
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
je .L_0465
mov dword ptr [ebp-8], 3
jmp .L_0464
.L_0465:
mov dword ptr [ebp-8], 0
.L_0464:
cmp dword ptr [ebp-4], 7
jbe .L_0467
mov ebx, dword ptr [ebp-4]
shr ebx, 3
mov eax, ebx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 7
jle .L_0469
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push -1
push dword ptr [ebp-36]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset _Lt_046F
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 4
push offset _Lt_0475
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset _Lt_0474
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset _Lt_0479
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call _fb_StrDelete
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
push offset _Lt_047B
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-36]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
jmp .L_0468
.L_0469:
mov dword ptr [ebp-44], 0
mov ebx, dword ptr [ebp-36]
dec ebx
mov dword ptr [ebp-48], ebx
jmp .L_047F
.L_0482:
push dword ptr [ebp-8]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea ebx, [ebp-32]
push ebx
push -1
push 2
push offset _Lt_0135
push -1
push -1
mov ebx, dword ptr [ebp-44]
sal ebx, 3
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.L_0480:
inc dword ptr [ebp-44]
.L_047F:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-44], eax
jle .L_0482
.L_0481:
mov eax, dword ptr [ebp-36]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0489
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
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-32]
push eax
push 5
push offset _Lt_0474
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
.L_0489:
.L_0488:
.L_0468:
.L_0467:
.L_0466:
cmp dword ptr [ebp-4], 3
jbe .L_048F
push dword ptr [ebp-8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset _Lt_0490
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967292
cmp dword ptr [ebp-4], 1
jbe .L_0495
push dword ptr [ebp-8]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset _Lt_0496
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_049B
push dword ptr [ebp-8]
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset _Lt_049C
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
.L_049B:
.L_049A:
jmp .L_0494
.L_0495:
cmp dword ptr [ebp-4], 0
jbe .L_04A0
push dword ptr [ebp-8]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset _Lt_04A1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
.L_04A0:
.L_0494:
jmp .L_048E
.L_048F:
cmp dword ptr [ebp-4], 1
jbe .L_04A5
push dword ptr [ebp-8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 15
push offset _Lt_04A6
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_04AB
push dword ptr [ebp-8]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 16
push offset _Lt_04AC
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
.L_04AB:
.L_04AA:
jmp .L_048E
.L_04A5:
cmp dword ptr [ebp-4], 0
jbe .L_04B0
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea eax, [ebp-32]
push eax
push 15
push offset _Lt_04B1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.L_04B0:
.L_048E:
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0456:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_MEMCOPY:
push ebp
mov ebp, esp
sub esp, 332
push ebx
.L_04B5:
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
jne .L_04B8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_04B6
.L_04B8:
.L_04B7:
push dword ptr [ebp+12]
push 49
push offset _Lt_0457
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_04BA
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_04B9
.L_04BA:
push -1
push 999998
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-60], eax
push 0
push 0
mov eax, dword ptr [ebp-60]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+20], 1
jne .L_04BC
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_04BB
.L_04BC:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.L_04BB:
.L_04B9:
push dword ptr [ebp+16]
push 49
push offset _Lt_0457
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
je .L_04C6
push 0
push -1
push dword ptr [ebp+16]
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_04C5
.L_04C6:
push -1
push 999997
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-64], eax
push 0
push 0
mov eax, dword ptr [ebp-64]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+24], 1
jne .L_04C8
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_04C7
.L_04C8:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.L_04C7:
.L_04C5:
mov eax, dword ptr [ebp-4]
shr eax, 3
mov ebx, eax
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 7
jle .L_04D2
push -1
push 999996
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push 0
mov eax, dword ptr [ebp-68]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-68]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 11
push offset _Lt_04D9
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 7
push offset _Lt_04DE
push -1
push -1
lea eax, [ebp-40]
push eax
push 6
push offset _Lt_04DD
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 4
push offset _Lt_0475
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset _Lt_0474
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 4
push offset _Lt_0475
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset _Lt_0474
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
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
push offset _Lt_04E8
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call _fb_StrDelete
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
push offset _Lt_047B
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-56]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
jmp .L_04D1
.L_04D2:
cmp dword ptr [ebp-56], 0
jle .L_04ED
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp-56]
dec ebx
mov dword ptr [ebp-76], ebx
jmp .L_04EF
.L_04F2:
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea ebx, [ebp-28]
push ebx
push -1
push 2
push offset _Lt_0135
push -1
push -1
mov ebx, dword ptr [ebp-72]
sal ebx, 3
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 7
push offset _Lt_04DE
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 2
push offset _Lt_0135
push -1
push -1
mov eax, dword ptr [ebp-72]
sal eax, 3
push eax
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
.L_04F0:
inc dword ptr [ebp-72]
.L_04EF:
mov eax, dword ptr [ebp-76]
cmp dword ptr [ebp-72], eax
jle .L_04F2
.L_04F1:
mov eax, dword ptr [ebp-56]
sal eax, 3
mov ebx, eax
sub dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_04FE
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
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-28]
push eax
push 5
push offset _Lt_0474
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-40]
push eax
push 5
push offset _Lt_0474
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.L_04FE:
.L_04FD:
.L_04ED:
.L_04D1:
cmp dword ptr [ebp-4], 3
jbe .L_0508
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 21
push offset _Lt_0509
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 7
push offset _Lt_050D
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset _Lt_0490
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967292
cmp dword ptr [ebp-4], 1
jbe .L_0512
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset _Lt_0513
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_0517
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset _Lt_0496
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_051C
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset _Lt_051D
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 6
push offset _Lt_0521
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset _Lt_049C
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
.L_051C:
.L_051B:
jmp .L_0511
.L_0512:
cmp dword ptr [ebp-4], 0
jbe .L_0525
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset _Lt_0526
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_0521
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset _Lt_04A1
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.L_0525:
.L_0511:
jmp .L_0507
.L_0508:
cmp dword ptr [ebp-4], 1
jbe .L_052D
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 19
push offset _Lt_052E
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 6
push offset _Lt_0517
push -1
push -1
lea eax, [ebp-40]
push eax
push 15
push offset _Lt_04A6
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-4], 4294967294
cmp dword ptr [ebp-4], 0
jbe .L_0536
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 20
push offset _Lt_0537
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_0521
push -1
push -1
lea eax, [ebp-40]
push eax
push 16
push offset _Lt_04AC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.L_0536:
.L_0535:
jmp .L_0507
.L_052D:
cmp dword ptr [ebp-4], 0
jbe .L_053E
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-28]
push eax
push 19
push offset _Lt_053F
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 6
push offset _Lt_0521
push -1
push -1
lea eax, [ebp-40]
push eax
push 15
push offset _Lt_04B1
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
.L_053E:
.L_0507:
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0547
mov eax, dword ptr [ebp-60]
mov dword ptr [_REGHANDLE+eax*4], -2
.L_0547:
push -1
push dword ptr [ebp+16]
push -1
lea eax, [ebp-40]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0549
mov eax, dword ptr [ebp-64]
mov dword ptr [_REGHANDLE+eax*4], -2
.L_0549:
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_04B6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__INIT:
.L_054A:
push 16
push 256
lea eax, [_CTX+156]
push eax
call _FLISTINIT
add esp, 12
call _IRHLINIT
or dword ptr [_IR+272], 131840
.L_054B:
ret
.balign 16
__END:
.L_054C:
call _IRHLEND
lea eax, [_CTX+156]
push eax
call _FLISTEND
add esp, 4
.L_054D:
ret
.balign 16
_HEMITVARIABLE:
push ebp
mov ebp, esp
sub esp, 172
push ebx
push esi
push edi
.L_054E:
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
call _SYMBISARRAY
add esp, 4
test eax, eax
je .L_0551
.L_0551:
.L_0550:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_0553
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_0555
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_054F
.L_0555:
.L_0554:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 4
je .L_0559
.L_055A:
cmp dword ptr [ebp-56], 7
jne .L_0558
.L_0559:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 6
push offset _Lt_055B
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-68]
push ebx
call _ASM_SECTION
add esp, 4
lea ebx, [ebp-68]
push ebx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push 9
push offset _Lt_055D
push -1
lea ebx, [ebp-80]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-80]
push ebx
call _HWRITEASM64
add esp, 8
lea ebx, [ebp-80]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 32
test eax, eax
je .L_0560
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset _Lt_0561
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
.L_0560:
.L_055F:
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset _Lt_00EE
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .L_0567
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HESCAPEW
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push 2
push offset _Lt_0569
push -1
push -1
mov eax, dword ptr [_SYMB_DTYPETB+200]
sal eax, 1
push eax
push 8
push offset _Lt_0568
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
push -1
lea eax, [ebp-28]
push eax
push 9
push offset _Lt_02AF
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0566
.L_0567:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HESCAPE
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 4
push offset _Lt_02B2
push -1
push -1
lea eax, [ebp-28]
push eax
push 9
push offset _Lt_02AF
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
.L_0566:
.L_0558:
.L_0556:
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_054F
.L_0553:
.L_0552:
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
je .L_0572
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2
test ebx, ebx
jne .L_0574
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 32
test ecx, ecx
jne .L_0576
lea ecx, [ebp-40]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-28]
push ecx
call _fb_StrDelete
add esp, 4
jmp .L_054F
.L_0576:
.L_0575:
.L_0574:
.L_0573:
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER
add esp, 4
lea ecx, [ebp-40]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-28]
push ecx
call _fb_StrDelete
add esp, 4
jmp .L_054F
.L_0572:
.L_0571:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 16388
test ebx, ebx
je .L_0578
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_054F
.L_0578:
.L_0577:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 59
mov dword ptr [ebp-4], ecx
cmp dword ptr [ebp-4], 0
je .L_057A
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
je .L_057C
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 16
test ebx, ebx
je .L_057E
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_054F
.L_057E:
.L_057D:
jmp .L_057B
.L_057C:
cmp dword ptr [_ENV+148], -1
jne .L_0580
push 2
push dword ptr [ebp+8]
call _EDBGEMITGLOBALVAR_ASM64
add esp, 8
.L_0580:
.L_057B:
jmp .L_0579
.L_057A:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 262144
je .L_0582
mov esi, dword ptr [_SYMB_DTYPETB+368]
mov dword ptr [ebp-12], esi
jmp .L_0581
.L_0582:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+40]
mov dword ptr [ebp-12], ebx
.L_0581:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx]
mov dword ptr [ebp-56], esi
cmp dword ptr [ebp-56], 1
je .L_0586
.L_0587:
cmp dword ptr [ebp-56], 12
jne .L_0585
.L_0586:
mov dword ptr [ebp-60], 1
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+60]
dec ebx
mov dword ptr [ebp-64], ebx
jmp .L_0588
.L_058B:
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
.L_0589:
dec dword ptr [ebp-64]
.L_0588:
cmp dword ptr [ebp-64], 0
jge .L_058B
.L_058A:
mov eax, dword ptr [ebp-60]
imul eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 20
jne .L_058D
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+32]
mov esi, dword ptr [eax+104]
mov dword ptr [ebp-16], esi
cmp dword ptr [ebp-16], 4
jge .L_058F
mov dword ptr [ebp-16], 4
.L_058F:
.L_058E:
mov eax, dword ptr [ebp-8]
mov esi, eax
sar esi, 31
add eax, dword ptr [_CTX+96]
adc esi, dword ptr [_CTX+100]
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
mov dword ptr [_CTX+96], eax
mov dword ptr [_CTX+100], esi
jmp .L_058C
.L_058D:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
add esi, dword ptr [_CTX+96]
adc eax, dword ptr [_CTX+100]
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
mov dword ptr [_CTX+96], esi
mov dword ptr [_CTX+100], eax
.L_058C:
mov eax, dword ptr [_CTX+96]
mov esi, dword ptr [_CTX+100]
neg eax
adc esi, 0
neg esi
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], eax
mov dword ptr [ecx+52], esi
.L_0585:
.L_0583:
cmp dword ptr [_ENV+148], -1
jne .L_0591
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
call _EDBGEMITLOCALVAR_ASM64
add esp, 8
.L_0591:
.L_0579:
cmp dword ptr [ebp-4], 0
je .L_0593
mov dword ptr [_CTX+4], 2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 5
push offset _Lt_0594
push -1
lea esi, [ebp-64]
push esi
call _fb_StrAssign
add esp, 20
lea esi, [ebp-64]
push esi
call _ASM_SECTION
add esp, 4
lea esi, [ebp-64]
push esi
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-76], 1
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
dec eax
mov dword ptr [ebp-80], eax
jmp .L_0596
.L_0599:
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
.L_0597:
dec dword ptr [ebp-80]
.L_0596:
cmp dword ptr [ebp-80], 0
jge .L_0599
.L_0598:
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
jne .L_059B
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+32]
mov eax, dword ptr [edx+104]
mov dword ptr [ebp-72], eax
jmp .L_059A
.L_059B:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+40]
mov dword ptr [ebp-72], edx
.L_059A:
push dword ptr [ebp-72]
call _PW2
add esp, 4
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 8
jle .L_059D
mov dword ptr [ebp-72], 8
.L_059D:
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
je .L_059F
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
push dword ptr [ebp-72]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_05A0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_059E
.L_059F:
cmp byte ptr [_CTX+232], 0
je .L_05A8
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset _Lt_05A9
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push -1
push dword ptr [ebp-72]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_05A0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05A7
.L_05A8:
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
push dword ptr [ebp-72]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset _Lt_05B2
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
.L_05A7:
.L_059E:
.L_0593:
.L_0592:
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_054F:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEEMITGLOBALVAR:
push ebp
mov ebp, esp
.L_05B9:
inc dword ptr [_CTX]
push dword ptr [ebp+8]
call _SYMBISDATADESC
add esp, 4
test eax, eax
jne .L_05BC
push dword ptr [ebp+8]
call _HEMITVARIABLE
add esp, 4
.L_05BC:
.L_05BB:
dec dword ptr [_CTX]
.L_05BA:
mov esp, ebp
pop ebp
ret
.balign 16
_NO_ROUNDSD:
push ebp
mov ebp, esp
sub esp, 108
.L_05BD:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 20
push offset _Lt_05BF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 17
push offset _Lt_05C1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 38
push offset _Lt_05C3
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 20
push offset _Lt_05C5
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 14
push offset _Lt_05C8
push -1
push 0
push dword ptr [ebp+8]
push 5
push offset _Lt_05C7
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 16
push offset _Lt_05CC
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 20
push offset _Lt_05C5
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.L_05BE:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.L_05CF:
lea eax, [_ENV+584]
push eax
call _HFILEEXISTS
add esp, 4
test eax, eax
je .L_05D2
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
.L_05D2:
.L_05D1:
call _fb_FileFree
mov dword ptr [_ENV+580], eax
push 0
push dword ptr [_ENV+580]
push 0
push 3
push 0
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_05D4
mov dword ptr [ebp-4], 0
jmp .L_05D0
.L_05D4:
.L_05D3:
mov dword ptr [_CTX], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+20]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+32]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [_CTX+4], 0
mov dword ptr [_CTX+144], 0
mov dword ptr [_CTX+148], 0
mov byte ptr [_CTX+152], 0
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [_CTX+228], eax
mov eax, dword ptr [_CTX+228]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 2
je .L_05D8
.L_05D9:
cmp dword ptr [ebp-44], 5
jne .L_05D7
.L_05D8:
mov byte ptr [_CTX+232], 1
jmp .L_05D5
.L_05D7:
mov byte ptr [_CTX+232], 0
.L_05DA:
.L_05D5:
mov dword ptr [_CTX+236], 0
mov dword ptr [ebp-44], 0
.L_05DE:
mov eax, dword ptr [ebp-44]
mov dword ptr [_REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp-44]
mov dword ptr [_REGROOM+eax*8], -1
mov eax, dword ptr [ebp-44]
mov dword ptr [_REGROOM+eax*8+4], 0
.L_05DC:
inc dword ptr [ebp-44]
.L_05DB:
cmp dword ptr [ebp-44], 15
jle .L_05DE
.L_05DD:
mov dword ptr [_REGHANDLE+24], -3
mov dword ptr [_REGHANDLE+28], -3
cmp byte ptr [_CTX+232], 0
je .L_05E0
mov dword ptr [_CTX+244], 8388608
push 8
push 1
push 1
push 0
push -1
push 4
push offset _LISTREG
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_05E1
push 0
push 0
push offset _Lt_0295
push 2263
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E1:
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+4], 5
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+8], 4
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+12], 3
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+16], 2
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+20], 8
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+24], 9
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+28], 10
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+32], 11
jmp .L_05DF
.L_05E0:
mov eax, dword ptr [_ENV+244]
mov dword ptr [_CTX+244], eax
push 6
push 1
push 1
push 0
push -1
push 4
push offset _LISTREG
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_05E2
push 0
push 0
push offset _Lt_0295
push 2267
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E2:
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+4], 2
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+8], 3
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+12], 8
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+16], 9
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+20], 10
mov eax, dword ptr [_LISTREG]
mov dword ptr [eax+24], 11
.L_05DF:
inc dword ptr [_CTX]
cmp dword ptr [_ENV+148], -1
jne .L_05E4
lea eax, [_ENV+304]
push eax
call _EDBGEMITHEADER_ASM64
add esp, 4
jmp .L_05E3
.L_05E4:
mov dword ptr [_CTXDBG], 1
mov dword ptr [_CTXDBG+36], -1
mov dword ptr [_CTXDBG+40], 4
push dword ptr [_CTXDBG+40]
push 0
push 1
push offset __ZN7TDBGSTRD1Ev
push offset __ZN7TDBGSTRC1Ev
push 20
push offset _DBGSTR
call _fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_05E5
push 0
push 0
push offset _Lt_0295
push 2280
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E5:
mov dword ptr [_CTXDBG+44], -1
mov dword ptr [_CTXDBG+48], 4
push dword ptr [_CTXDBG+48]
push 0
push 1
push offset __ZN8TDBGSTABD1Ev
push offset __ZN8TDBGSTABC1Ev
push 20
push offset _DBGSTAB
call _fb_ArrayRedimObj
add esp, 28
test eax, eax
je .L_05E6
push 0
push 0
push offset _Lt_0295
push 2283
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05E6:
mov dword ptr [_CTXDBG+52], 1
mov dword ptr [_CTXDBG+56], 0
mov dword ptr [_CTXDBG+4], -1
.L_05E3:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 23
push offset _Lt_05E7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 27
push offset _Lt_05E9
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _CFI_WINDOWS_ASM_CODE
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 6
push offset _Lt_05EB
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_ENV+176], -1
jne .L_05EE
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 38
push offset _Lt_05EF
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_05EE:
.L_05ED:
dec dword ptr [_CTX]
mov dword ptr [ebp-4], -1
.L_05D0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HADDGLOBALCTORDTOR:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.L_05F1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_05F4
jmp .L_05F2
.L_05F4:
.L_05F3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 65536
test eax, eax
je .L_05F6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_05F8
inc dword ptr [_CTX+144]
movzx ebx, byte ptr [_CTX+232]
neg ebx
cmp ebx, -1
jne .L_05F9
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_1C34
.L_05F9:
mov dword ptr [ebp-4], 0
.L_1C34:
cmp dword ptr [ebp-4], 0
je .L_05FC
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 12
push offset _Lt_05FD
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05FB
.L_05FC:
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 7
push offset _Lt_05FF
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.L_05FB:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset _Lt_055D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_027F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 6
push offset _Lt_05EB
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_05F8:
.L_05F7:
jmp .L_05F5
.L_05F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 131072
test ebx, ebx
je .L_0605
inc dword ptr [_CTX+148]
movzx ebx, byte ptr [_CTX+232]
neg ebx
cmp ebx, -1
jne .L_0606
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_1C35
.L_0606:
mov dword ptr [ebp-4], 0
.L_1C35:
cmp dword ptr [ebp-4], 0
je .L_0609
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 12
push offset _Lt_060A
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0608
.L_0609:
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 7
push offset _Lt_060C
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.L_0608:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset _Lt_055D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_027F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 6
push offset _Lt_05EB
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_0605:
.L_05F5:
.L_05F2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND:
push ebp
mov ebp, esp
sub esp, 244
.L_0612:
inc dword ptr [_CTX]
mov dword ptr [_CTX+4], 2
dec dword ptr [_CTX]
push offset _HMAYBEEMITGLOBALVAR
push 1
call _SYMBFOREACHGLOBAL
add esp, 8
inc dword ptr [_CTX]
push offset _HEMITVARIABLE
call _IRFOREACHDATASTMT
add esp, 4
push offset _HADDGLOBALCTORDTOR
push 3
call _SYMBFOREACHGLOBAL
add esp, 8
cmp dword ptr [_ENV+176], -1
jne .L_0615
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 5
push offset _Lt_0594
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CTX+232], 0
je .L_0618
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 23
push offset _Lt_0619
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 26
push offset _Lt_061B
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0617
.L_0618:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 27
push offset _Lt_061D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0617:
.L_0615:
.L_0614:
movzx eax, byte ptr [_CTX+152]
neg eax
cmp eax, -1
jne .L_0620
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 5
push offset _Lt_0594
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CTX+232], 0
je .L_0623
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 14
push offset _Lt_0624
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 17
push offset _Lt_0626
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 14
push offset _Lt_0628
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 17
push offset _Lt_062A
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-244]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0622
.L_0623:
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 18
push offset _Lt_062C
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 18
push offset _Lt_062E
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
.L_0622:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_0630
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_1C38
.L_0630:
mov dword ptr [ebp-16], 0
.L_1C38:
cmp dword ptr [ebp-16], 0
je .L_0633
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 12
push offset _Lt_05FD
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0632
.L_0633:
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 7
push offset _Lt_05FF
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
.L_0632:
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 9
push offset _Lt_055D
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 18
push offset _Lt_0637
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 6
push offset _Lt_05EB
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 13
push offset _Lt_063A
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 9
push offset _Lt_063C
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 9
push offset _Lt_063E
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 9
push offset _Lt_0640
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 12
push offset _Lt_0642
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 6
push offset _Lt_0644
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 32
push offset _Lt_0646
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 21
push offset _Lt_0648
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push 8
push offset _Lt_064A
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset _Lt_064C
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 8
push offset _Lt_064E
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 4
push offset _Lt_0650
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
.L_0620:
.L_061F:
cmp dword ptr [_ENV+148], -1
jne .L_0653
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
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
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DBG_ADDSTAB
add esp, 16
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 6
push offset _Lt_05EB
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
call _DBG_EMITSTAB
call _DBG_EMITSTR
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0653:
.L_0652:
push -1
lea eax, [_CTX+8]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr
add esp, 16
test eax, eax
je .L_0659
.L_0659:
.L_0658:
push -1
lea eax, [_CTX+20]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr
add esp, 16
test eax, eax
je .L_065B
.L_065B:
.L_065A:
push -1
lea eax, [_CTX+32]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr
add esp, 16
test eax, eax
je .L_065D
.L_065D:
.L_065C:
push dword ptr [_ENV+580]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_065F
.L_065F:
.L_065E:
mov dword ptr [_ENV+580], 0
.L_0613:
mov esp, ebp
pop ebp
ret
.balign 16
__GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0660:
cmp dword ptr [ebp+8], 1
jne .L_0663
.L_0664:
mov dword ptr [ebp-4], 0
jmp .L_0661
jmp .L_0662
.L_0663:
push 0
push 1
push 0
push offset _Lt_0666
push 21
call _ERRREPORTEX
add esp, 20
.L_0665:
.L_0662:
.L_0661:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__SUPPORTSOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0667:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_066A
.L_066C:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_066D
mov dword ptr [ebp-12], 24
jmp .L_1C3A
.L_066D:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_1C3A:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0670
mov dword ptr [ebp-4], 0
jmp .L_0668
jmp .L_066F
.L_0670:
mov dword ptr [ebp-4], -1
jmp .L_0668
.L_066F:
jmp .L_0669
.L_0671:
mov dword ptr [ebp-4], 0
jmp .L_0668
jmp .L_0669
.L_0672:
mov dword ptr [ebp-4], -1
jmp .L_0668
jmp .L_0669
.L_0673:
mov dword ptr [ebp-4], -1
jmp .L_0669
.L_066A:
mov eax, dword ptr [ebp-8]
add eax, 4294967244
cmp eax, 15
ja .L_0673
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0674+eax*4-208]
_.L_0674:
.int .L_0672
.int .L_0673
.int .L_0672
.int .L_0673
.int .L_0672
.int .L_066C
.int .L_0673
.int .L_0673
.int .L_0673
.int .L_0673
.int .L_0673
.int .L_0673
.int .L_0673
.int .L_0672
.int .L_0671
.int .L_0671
.L_0669:
.L_0668:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0675:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+4280]
mov dword ptr [ecx+16], ebx
.L_0676:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCEND:
push ebp
mov ebp, esp
push ebx
.L_0677:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+4280]
mov dword ptr [ecx+20], ebx
.L_0678:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PARAM_ANALYZE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0679:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
cmp byte ptr [_CTX+232], 0
je .L_067C
cmp dword ptr [ebp+8], 20
je .L_067E
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_067F
mov dword ptr [ebp-24], 24
jmp .L_1C3B
.L_067F:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_1C3B:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0682
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 8
jge .L_0684
mov eax, dword ptr [ebp+24]
inc dword ptr [eax]
mov dword ptr [ebp-4], 1
jmp .L_067A
jmp .L_0683
.L_0684:
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov dword ptr [ebp-4], 10
jmp .L_067A
.L_0683:
jmp .L_0681
.L_0682:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 6
jge .L_0686
mov eax, dword ptr [ebp+20]
inc dword ptr [eax]
mov dword ptr [ebp-4], 0
jmp .L_067A
jmp .L_0685
.L_0686:
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov dword ptr [ebp-4], 10
jmp .L_067A
.L_0685:
.L_0681:
jmp .L_067D
.L_067E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [_SYMB_DTYPETB+368]
sal ebx, 1
cmp dword ptr [ebp-12], ebx
jg .L_0688
push dword ptr [ebp+12]
call _HGETMAGICSTRUCTNUMBER
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_068A
.L_068C:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 6
jge .L_068E
mov eax, dword ptr [ebp+20]
inc dword ptr [eax]
mov dword ptr [ebp-4], 0
jmp .L_067A
.L_068E:
.L_068D:
jmp .L_0689
.L_068F:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 8
jge .L_0691
mov eax, dword ptr [ebp+24]
inc dword ptr [eax]
mov dword ptr [ebp-4], 1
jmp .L_067A
.L_0691:
.L_0690:
jmp .L_0689
.L_0692:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 5
jge .L_0694
mov eax, dword ptr [ebp+20]
add dword ptr [eax], 2
mov dword ptr [ebp-4], 2
jmp .L_067A
.L_0694:
.L_0693:
jmp .L_0689
.L_0695:
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
je .L_0697
mov ecx, dword ptr [ebp+20]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+24]
inc dword ptr [ecx]
mov dword ptr [ebp-4], 3
jmp .L_067A
.L_0697:
.L_0696:
jmp .L_0689
.L_0698:
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
je .L_069A
mov eax, dword ptr [ebp+24]
inc dword ptr [eax]
mov eax, dword ptr [ebp+20]
inc dword ptr [eax]
mov dword ptr [ebp-4], 4
jmp .L_067A
.L_069A:
.L_0699:
jmp .L_0689
.L_069B:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 7
jge .L_069D
mov eax, dword ptr [ebp+24]
add dword ptr [eax], 2
mov dword ptr [ebp-4], 5
jmp .L_067A
.L_069D:
.L_069C:
jmp .L_0689
.L_068A:
mov eax, dword ptr [ebp-24]
add eax, 4294967295
cmp eax, 9
ja .L_0689
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_069E+eax*4-4]
_.L_069E:
.int .L_068C
.int .L_068F
.int .L_0689
.int .L_0689
.int .L_0692
.int .L_0698
.int .L_0689
.int .L_0689
.int .L_0695
.int .L_069B
.L_0689:
.L_0688:
.L_0687:
mov dword ptr [ebp-4], 10
jmp .L_067A
.L_067D:
jmp .L_067B
.L_067C:
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
je .L_06A0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jle .L_06A2
mov dword ptr [ebp-4], 10
jmp .L_067A
.L_06A2:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_06A3
mov dword ptr [ebp-24], 24
jmp .L_1C3C
.L_06A3:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_1C3C:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_06A6
mov dword ptr [ebp-4], 1
jmp .L_067A
jmp .L_06A5
.L_06A6:
mov dword ptr [ebp-4], 0
jmp .L_067A
.L_06A5:
jmp .L_069F
.L_06A0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp ebx, dword ptr [_SYMB_DTYPETB+368]
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
je .L_06A8
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jle .L_06AA
mov dword ptr [ebp-4], 13
jmp .L_067A
jmp .L_06A9
.L_06AA:
mov dword ptr [ebp-4], 12
jmp .L_067A
.L_06A9:
.L_06A8:
.L_06A7:
push dword ptr [ebp+12]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
.L_06AB:
cmp dword ptr [ebp-8], 0
je .L_06AC
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 480
je .L_06AD
mov dword ptr [ebp-24], 24
jmp .L_1C3D
.L_06AD:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-24], eax
.L_1C3D:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_06B0
inc dword ptr [ebp-20]
jmp .L_06AF
.L_06B0:
inc dword ptr [ebp-16]
.L_06AF:
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_06AB
.L_06AC:
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
je .L_06B2
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
jle .L_06B4
mov dword ptr [ebp-4], 11
jmp .L_067A
jmp .L_06B3
.L_06B4:
mov dword ptr [ebp-4], 1
jmp .L_067A
.L_06B3:
jmp .L_06B1
.L_06B2:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
jle .L_06B6
mov dword ptr [ebp-4], 11
jmp .L_067A
jmp .L_06B5
.L_06B6:
mov dword ptr [ebp-4], 0
.L_06B5:
.L_06B1:
.L_069F:
.L_067B:
.L_067A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_FILLM:
push ebp
mov ebp, esp
sub esp, 220
push ebx
.L_06B7:
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [ebp+24]
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_06BA
.L_06BC:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov ebx, dword ptr [_CTX+84]
sub ebx, dword ptr [ebp+20]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
push dword ptr [_REGSTRB+eax*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov eax, dword ptr [ebp+24]
add eax, dword ptr [ebp+8]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_06C1:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRW+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_06C6:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRW+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset _Lt_06CC
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_06CB
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRB+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 2
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_06D4:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_06D9:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset _Lt_06DE
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_06CB
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRB+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 4
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_06E6:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset _Lt_06DE
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_06CB
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRW+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 4
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_06F2:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset _Lt_06DE
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_06CB
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRW+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 4
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push 5
push offset _Lt_06CC
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_06CB
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea ebx, [ebp-148]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRB+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
add ebx, 6
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_0705:
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sub eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ebx, dword ptr [ebp+24]
add ebx, dword ptr [ebp+8]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06B9
.L_06BA:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 7
ja .L_06B9
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_070A+eax*4-4]
_.L_070A:
.int .L_06BC
.int .L_06C1
.int .L_06C6
.int .L_06D4
.int .L_06D9
.int .L_06E6
.int .L_06F2
.int .L_0705
.L_06B9:
.L_06B8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_FILLR:
push ebp
mov ebp, esp
sub esp, 296
push ebx
.L_070B:
mov dword ptr [ebp-4], 0
push 0
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRQ+ebx*4]
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp+8], 8
jle .L_070E
add dword ptr [ebp+8], -8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
movzx ebx, byte ptr [eax]
cmp ebx, 45
jne .L_0710
push 0
push -1
push 6
push offset _Lt_0421
push -1
push 5
push offset _Lt_0421
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push dword ptr [ebp+12]
call _fb_LEFT
add esp, 8
push eax
call _fb_VALINT
add esp, 4
add eax, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_070F
.L_0710:
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 10
push offset _Lt_0712
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 11
push offset _Lt_0715
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 6
push offset _Lt_0717
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_070F:
.L_070E:
.L_070D:
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
je .L_0719
call _REG_TEMPO
mov dword ptr [ebp-4], eax
.L_0719:
.L_0718:
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
push dword ptr [eax]
call _REG_TRANSFER
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_071B
.L_071D:
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
push offset _Lt_071F
push -1
push -1
lea eax, [ebp-16]
push eax
push 7
push offset _Lt_071E
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_0724:
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
push offset _Lt_0725
push -1
push -1
lea eax, [ebp-16]
push eax
push 7
push offset _Lt_071E
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_072A:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push -1
push 13
push offset _Lt_072F
push -1
push -1
lea eax, [ebp-16]
push eax
push 7
push offset _Lt_071E
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset _Lt_0735
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset _Lt_0739
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_0740:
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
push offset _Lt_0741
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_0746:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push -1
push 14
push offset _Lt_074B
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset _Lt_0751
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset _Lt_0755
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_075A:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push -1
push 14
push offset _Lt_074B
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset _Lt_0764
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset _Lt_0755
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_076C:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push -1
push 14
push offset _Lt_074B
push -1
push 0
mov eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
push dword ptr [_REGSTRD+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset _Lt_0764
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 12
push offset _Lt_0755
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
push dword ptr [ebp-4]
push 23
push offset _Lt_077D
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 12
push offset _Lt_0781
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
lea eax, [ebp-284]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-296]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-296]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-296]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_0786:
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
push offset _Lt_0420
push -1
push -1
lea eax, [ebp-16]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_071A
.L_071B:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 7
ja .L_071A
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_078B+eax*4-4]
_.L_078B:
.int .L_071D
.int .L_0724
.int .L_072A
.int .L_0740
.int .L_0746
.int .L_075A
.int .L_076C
.int .L_0786
.L_071A:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_070C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REG_FILLX:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.L_078C:
cmp dword ptr [ebp+8], 8
jle .L_078F
add dword ptr [ebp+8], -8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 45
jne .L_0791
push 0
push -1
push 6
push offset _Lt_0421
push -1
push 5
push offset _Lt_0421
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push dword ptr [ebp+12]
call _fb_LEFT
add esp, 8
push eax
call _fb_VALINT
add esp, 4
add eax, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_0790
.L_0791:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 10
push offset _Lt_0712
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 11
push offset _Lt_0715
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 6
push offset _Lt_0717
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0790:
.L_078F:
.L_078E:
cmp dword ptr [ebp+8], 4
jne .L_0797
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
push offset _Lt_012A
push -1
push -1
mov eax, dword ptr [ebp+16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 9
push offset _Lt_0798
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0796
.L_0797:
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
push offset _Lt_012A
push -1
push -1
mov eax, dword ptr [ebp+16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 9
push offset _Lt_079D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.L_0796:
.L_078D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCARG:
push ebp
mov ebp, esp
sub esp, 148
push ebx
push esi
push edi
.L_07A2:
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
call _SYMBGETREALTYPE
add esp, 12
cmp byte ptr [_CTX+232], 0
je .L_07A5
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push dword ptr [ebp-20]
push dword ptr [ebp-12]
mov ebx, eax
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_07A7
mov eax, dword ptr [ebp+12]
xor dword ptr [eax+4], 32768
mov eax, dword ptr [ebp+12]
or dword ptr [eax+4], 65536
.L_07A7:
.L_07A6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_07A9
mov ebx, dword ptr [ebp-12]
and ebx, 511
cmp ebx, 20
jne .L_07AB
lea ebx, [_CTX+88]
push ebx
lea ebx, [_CTX+84]
push ebx
mov dword ptr [ebp-48], 0
lea ebx, [ebp-48]
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
push 20
call _PARAM_ANALYZE
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 10
jne .L_07AE
mov ebx, dword ptr [_CTX+92]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+48], ebx
mov dword ptr [ecx+52], eax
mov eax, dword ptr [_CTX+92]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+12]
add eax, dword ptr [ecx+40]
adc ebx, dword ptr [ecx+44]
mov ecx, eax
mov dword ptr [_CTX+92], ecx
jmp .L_07AD
.L_07AE:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebp-4], eax
mov ecx, dword ptr [ebp-4]
mov eax, ecx
sar eax, 31
add ecx, dword ptr [_CTX+96]
adc eax, dword ptr [_CTX+100]
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
mov dword ptr [_CTX+96], ecx
mov dword ptr [_CTX+100], eax
mov eax, dword ptr [_CTX+96]
mov ecx, dword ptr [_CTX+100]
neg eax
adc ecx, 0
neg ecx
mov edi, dword ptr [ebp+12]
mov dword ptr [edi+48], eax
mov dword ptr [edi+52], ecx
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-52], eax
jmp .L_07B0
.L_07B2:
push 0
push 0
push dword ptr [ebp-4]
push offset _LISTREG
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push ecx
call _REG_FILLM
add esp, 20
jmp .L_07AF
.L_07B3:
push 0
push 1
push 8
push offset _LISTREG
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
push eax
call _REG_FILLM
add esp, 20
push 8
push 0
push dword ptr [ebp-4]
push offset _LISTREG
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push ecx
call _REG_FILLM
add esp, 20
jmp .L_07AF
.L_07B4:
push 0
push 0
push 8
push offset _LISTREG
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
push eax
call _REG_FILLM
add esp, 20
cmp dword ptr [ebp-4], 13
jge .L_07B6
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [eax+48]
mov ecx, dword ptr [eax+52]
add edi, 8
adc ecx, 0
push ecx
push edi
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07B5
.L_07B6:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov edi, dword ptr [eax+52]
add ecx, 8
adc edi, 0
push edi
push ecx
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.L_07B5:
jmp .L_07AF
.L_07C2:
cmp dword ptr [ebp-4], 4
jne .L_07C4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07C3
.L_07C4:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.L_07C3:
push 8
push 0
push dword ptr [ebp-4]
push offset _LISTREG
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push ecx
call _REG_FILLM
add esp, 20
jmp .L_07AF
.L_07CD:
cmp dword ptr [ebp-4], 4
jne .L_07CF
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov ecx, dword ptr [_CTX+88]
dec ecx
push ecx
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07CE
.L_07CF:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.L_07CE:
jmp .L_07AF
.L_07D8:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
add eax, -2
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-4], 13
jge .L_07DE
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [eax+48]
mov ecx, dword ptr [eax+52]
add edi, 8
adc ecx, 0
push ecx
push edi
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07DD
.L_07DE:
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov edi, dword ptr [eax+52]
add ecx, 8
adc edi, 0
push edi
push ecx
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
.L_07DD:
jmp .L_07AF
.L_07B0:
cmp dword ptr [ebp-52], 5
ja .L_07AF
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.L_07E7+eax*4]
_.L_07E7:
.int .L_07B2
.int .L_07CD
.int .L_07B3
.int .L_07B4
.int .L_07C2
.int .L_07D8
.L_07AF:
.L_07AD:
jmp .L_07AA
.L_07AB:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_07E8
mov dword ptr [ebp-48], 24
jmp .L_1C4D
.L_07E8:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_1C4D:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 1
jne .L_07EB
inc dword ptr [_CTX+88]
cmp dword ptr [_CTX+88], 8
jg .L_07ED
mov eax, dword ptr [ebp-4]
mov ecx, eax
sar ecx, 31
add eax, dword ptr [_CTX+96]
adc ecx, dword ptr [_CTX+100]
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
mov dword ptr [_CTX+96], eax
mov dword ptr [_CTX+100], ecx
mov ecx, dword ptr [_CTX+96]
mov eax, dword ptr [_CTX+100]
neg ecx
adc eax, 0
neg eax
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+48], ecx
mov dword ptr [esi+52], eax
cmp dword ptr [ebp-4], 4
jne .L_07EF
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov ecx, dword ptr [_CTX+88]
dec ecx
push ecx
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07EE
.L_07EF:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+88]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_07EE:
jmp .L_07EC
.L_07ED:
mov ecx, dword ptr [_CTX+92]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+48], ecx
mov dword ptr [esi+52], eax
add dword ptr [_CTX+92], 8
.L_07EC:
jmp .L_07EA
.L_07EB:
inc dword ptr [_CTX+84]
cmp dword ptr [_CTX+84], 6
jg .L_07F9
mov eax, dword ptr [ebp-4]
mov ecx, eax
sar ecx, 31
add eax, dword ptr [_CTX+96]
adc ecx, dword ptr [_CTX+100]
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
mov dword ptr [_CTX+96], eax
mov dword ptr [_CTX+100], ecx
mov ecx, dword ptr [_CTX+96]
mov eax, dword ptr [_CTX+100]
neg ecx
adc eax, 0
neg eax
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], ecx
mov dword ptr [ebx+52], eax
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebp-52], ecx
jmp .L_07FB
.L_07FD:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov ecx, dword ptr [_CTX+84]
sal ecx, 2
add ecx, dword ptr [_LISTREG]
mov eax, dword ptr [ecx]
push dword ptr [_REGSTRB+eax*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 14
push offset _Lt_07FE
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07FA
.L_0803:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ecx, dword ptr [eax]
push dword ptr [_REGSTRW+ecx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
call _fb_LongintToStr
add esp, 8
push eax
push 14
push offset _Lt_0804
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07FA
.L_0809:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ecx, dword ptr [eax]
push dword ptr [_REGSTRD+ecx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
call _fb_LongintToStr
add esp, 8
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07FA
.L_080F:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov ecx, dword ptr [eax]
push dword ptr [_REGSTRQ+ecx*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
call _fb_LongintToStr
add esp, 8
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07FA
.L_07FB:
mov eax, dword ptr [ebp-52]
add eax, 4294967295
cmp eax, 7
ja .L_07FA
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.L_0814+eax*4-4]
_.L_0814:
.int .L_07FD
.int .L_0803
.int .L_07FA
.int .L_0809
.int .L_07FA
.int .L_07FA
.int .L_07FA
.int .L_080F
.L_07FA:
jmp .L_07F8
.L_07F9:
mov ecx, dword ptr [_CTX+92]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], ecx
mov dword ptr [ebx+52], eax
add dword ptr [_CTX+92], 8
.L_07F8:
.L_07EA:
.L_07AA:
jmp .L_07A8
.L_07A9:
inc dword ptr [_CTX+84]
mov dword ptr [ebp-4], 8
cmp dword ptr [_CTX+84], 6
jg .L_0816
mov eax, dword ptr [ebp-4]
mov ecx, eax
sar ecx, 31
add eax, dword ptr [_CTX+96]
adc ecx, dword ptr [_CTX+100]
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
mov dword ptr [_CTX+96], eax
mov dword ptr [_CTX+100], ecx
mov ecx, dword ptr [_CTX+96]
mov eax, dword ptr [_CTX+100]
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
mov ecx, dword ptr [_CTX+84]
sal ecx, 2
add ecx, dword ptr [_LISTREG]
mov eax, dword ptr [ecx]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr
add esp, 8
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0815
.L_0816:
mov ecx, dword ptr [_CTX+92]
mov eax, ecx
sar eax, 31
mov edi, dword ptr [ebp+12]
mov dword ptr [edi+48], ecx
mov dword ptr [edi+52], eax
add dword ptr [_CTX+92], 8
.L_0815:
.L_07A8:
jmp .L_07A4
.L_07A5:
add dword ptr [_CTX+92], 8
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 32768
test eax, eax
je .L_081C
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 20
jne .L_081E
mov dword ptr [ebp-52], 0
lea eax, [ebp-52]
push eax
mov dword ptr [ebp-48], 0
lea eax, [ebp-48]
push eax
lea eax, [_CTX+84]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push 20
call _PARAM_ANALYZE
add esp, 20
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-56], eax
jmp .L_0822
.L_0824:
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [_CTX+96]
mov ecx, dword ptr [_CTX+100]
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
mov dword ptr [_CTX+96], edi
mov dword ptr [_CTX+100], ecx
mov ecx, dword ptr [_CTX+96]
mov edi, dword ptr [_CTX+100]
neg ecx
adc edi, 0
neg edi
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+48], ecx
mov dword ptr [esi+52], edi
cmp dword ptr [ebp-16], 12
jne .L_0826
push 0
push 0
mov ecx, dword ptr [_CTX+84]
sal ecx, 2
add ecx, dword ptr [_LISTREG]
mov edi, dword ptr [ecx]
push dword ptr [_REGSTRQ+edi*4]
push -1
lea edi, [ebp-32]
push edi
call _fb_StrAssign
add esp, 20
push 1
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov edi, dword ptr [ebp+12]
push dword ptr [edi+52]
push dword ptr [edi+48]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
lea eax, [ebp-32]
push eax
push dword ptr [ebp+12]
call _SYMBGETREALSIZE
add esp, 4
mov edi, eax
push edi
call _MEMCOPY
add esp, 20
lea edi, [ebp-80]
push edi
call _fb_StrDelete
add esp, 4
jmp .L_0825
.L_0826:
push 1
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov edi, dword ptr [ebp+12]
push dword ptr [edi+52]
push dword ptr [edi+48]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
push dword ptr [ebp+12]
call _SYMBGETREALSIZE
add esp, 4
mov edi, eax
push edi
call _MEMCOPY
add esp, 20
lea edi, [ebp-104]
push edi
call _fb_StrDelete
add esp, 4
lea edi, [ebp-80]
push edi
call _fb_StrDelete
add esp, 4
.L_0825:
jmp .L_0821
.L_082D:
mov eax, dword ptr [_CTX+92]
mov edi, eax
sar edi, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], eax
mov dword ptr [edx+52], edi
movzx eax, byte ptr [_CTX+224]
neg eax
test eax, eax
jne .L_082F
mov eax, dword ptr [ebp+12]
mov edi, dword ptr [eax+40]
mov dword ptr [ebp-4], edi
cmp dword ptr [ebp-16], 1
jne .L_0831
cmp dword ptr [ebp-4], 4
jne .L_0833
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push -1
mov edi, dword ptr [_CTX+84]
dec edi
push edi
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0832
.L_0833:
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+84]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
.L_0832:
jmp .L_0830
.L_0831:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-60], eax
jmp .L_083D
.L_083F:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRB+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_07FE
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_083C
.L_0844:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRW+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_0804
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_083C
.L_0849:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRD+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_083C
.L_084E:
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRQ+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_083C
.L_083D:
mov eax, dword ptr [ebp-60]
add eax, 4294967295
cmp eax, 7
ja .L_083C
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_0853+eax*4-4]
_.L_0853:
.int .L_083F
.int .L_0844
.int .L_083C
.int .L_0849
.int .L_083C
.int .L_083C
.int .L_083C
.int .L_084E
.L_083C:
.L_0830:
.L_082F:
.L_082E:
jmp .L_0821
.L_0854:
mov edi, dword ptr [_CTX+92]
mov eax, edi
sar eax, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], edi
mov dword ptr [edx+52], eax
jmp .L_0821
.L_0822:
cmp dword ptr [ebp-56], 13
ja .L_0854
mov edi, dword ptr [ebp-56]
jmp dword ptr [_.L_0855+edi*4]
_.L_0855:
.int .L_082D
.int .L_082D
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0854
.int .L_0824
.int .L_0824
.L_0821:
jmp .L_081D
.L_081E:
mov edi, dword ptr [ebp+12]
mov eax, dword ptr [edi+40]
mov dword ptr [ebp-4], eax
mov edi, dword ptr [_CTX+92]
mov eax, edi
sar eax, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], edi
mov dword ptr [edx+52], eax
inc dword ptr [_CTX+84]
mov edi, dword ptr [_CTX+84]
cmp edi, 4
setle dl
mov edi, edx
shr edi, 1
sbb edi, edi
movzx eax, byte ptr [_CTX+224]
neg eax
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and edi, eax
je .L_0857
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0858
mov dword ptr [ebp-48], 24
jmp .L_1C4E
.L_0858:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-48], eax
.L_1C4E:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_085B
cmp dword ptr [ebp-4], 4
jne .L_085D
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+84]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_085C
.L_085D:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push -1
mov eax, dword ptr [_CTX+84]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_07B8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_085C:
jmp .L_085A
.L_085B:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-52], eax
jmp .L_0867
.L_0869:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRB+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_07FE
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0866
.L_086E:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRW+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_0804
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0866
.L_0873:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRD+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0866
.L_0878:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRQ+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0866
.L_0867:
mov eax, dword ptr [ebp-52]
add eax, 4294967295
cmp eax, 7
ja .L_0866
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.L_087D+eax*4-4]
_.L_087D:
.int .L_0869
.int .L_086E
.int .L_0866
.int .L_0873
.int .L_0866
.int .L_0866
.int .L_0866
.int .L_0878
.L_0866:
.L_085A:
.L_0857:
.L_0856:
.L_081D:
jmp .L_081B
.L_081C:
inc dword ptr [_CTX+84]
mov edi, dword ptr [_CTX+92]
mov eax, edi
sar eax, 31
mov edx, dword ptr [ebp+12]
mov dword ptr [edx+48], edi
mov dword ptr [edx+52], eax
mov edi, dword ptr [_CTX+84]
cmp edi, 4
setle dl
mov edi, edx
shr edi, 1
sbb edi, edi
movzx eax, byte ptr [_CTX+224]
neg eax
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and edi, eax
je .L_087F
push 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 0
mov eax, dword ptr [_CTX+84]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRQ+edi*4]
push -1
push 8
push offset _Lt_03A8
push -1
push -1
push dword ptr [_CTX+92]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
.L_087F:
.L_087E:
.L_081B:
.L_07A4:
cmp dword ptr [_ENV+148], -1
jne .L_0885
push dword ptr [ebp+12]
call _EDBGEMITPROCARG_ASM64
add esp, 4
.L_0885:
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.L_07A3:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCLOCAL:
push ebp
mov ebp, esp
.L_0886:
push dword ptr [ebp+12]
call _HEMITVARIABLE
add esp, 4
.L_0887:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0888:
mov dword ptr [_CTX+4], 2
.L_088A:
cmp dword ptr [ebp+8], 0
je .L_088B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 15
jne .L_088E
.L_088F:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call __PROCALLOCSTATICVARS
add esp, 4
jmp .L_088C
.L_088E:
cmp dword ptr [ebp-4], 1
jne .L_0890
.L_0891:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
je .L_0893
push dword ptr [ebp+8]
call _HMAYBEEMITGLOBALVAR
add esp, 4
.L_0893:
.L_0892:
.L_0890:
.L_088C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
jmp .L_088A
.L_088B:
.L_0889:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__SETVREGDATATYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0894:
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
je .L_0897
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call __EMITCONVERT
add esp, 8
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 17
rep movsd
pop esi
pop edi
.L_0897:
.L_0896:
.L_0895:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLABEL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0898:
mov eax, dword ptr [_CTX+216]
cmp eax, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_CTX+220]
cmp eax, dword ptr [ebp+8]
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_089B
push dword ptr [ebp+8]
call _REG_BRANCH
add esp, 4
jmp .L_089A
.L_089B:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 2
push offset _Lt_00EE
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_089A:
mov eax, dword ptr [ebp+8]
cmp byte ptr [eax+68], 0
je .L_089F
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 29
push offset _Lt_08A0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_089F:
.L_089E:
.L_0899:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PREPARE_IDX:
push ebp
mov ebp, esp
sub esp, 240
push ebx
.L_08A2:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
jne .L_08A5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx+32], 0
jne .L_08A7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
cmp dword ptr [eax+12], -1
je .L_08A9
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_08A3
jmp .L_08A8
.L_08A9:
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_0135
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_08A3
.L_08A8:
jmp .L_08A6
.L_08A7:
push 0
push 0
call _REG_TEMPO
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
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
je .L_08B6
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 6
push offset _Lt_08BE
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_0135
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset _Lt_03ED
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push 3
push offset _Lt_0111
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrConcatByref
add esp, 20
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_08A3
jmp .L_08B5
.L_08B6:
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_08A3
.L_08B5:
.L_08A6:
jmp .L_08A4
.L_08A5:
push 0
push 0
call _REG_TEMPO
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
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
je .L_08D1
push 0
push -1
push 6
push offset _Lt_08BE
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
jmp .L_08D0
.L_08D1:
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
.L_08D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_08DD
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_08DE
push -1
push -1
lea eax, [ebp-12]
push eax
push 2
push offset _Lt_0135
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_08A3
jmp .L_08DC
.L_08DD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 1
jne .L_08E3
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
je .L_08E5
push 0
push -1
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+48]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset _Lt_0474
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push 3
push offset _Lt_0111
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
jmp .L_08E4
.L_08E5:
push 0
push -1
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset _Lt_0474
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push 3
push offset _Lt_0111
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
.L_08E4:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-12]
push eax
push 2
push offset _Lt_0135
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_08A3
.L_08E3:
.L_08DC:
.L_08A4:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 49
push offset _Lt_08FA
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_08FE
push 0
push 4
push offset _Lt_08FF
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_08FE:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_08A3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETBOPCODE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0900:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0903
.L_0905:
mov eax, offset _Lt_0224
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0906:
mov eax, offset _Lt_0225
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0907:
mov eax, offset _Lt_0908
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0909:
mov eax, offset _Lt_090A
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_090B:
mov eax, offset _Lt_090C
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_090D:
mov eax, offset _Lt_090E
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_090F:
mov eax, offset _Lt_0910
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0911:
mov eax, offset _Lt_0912
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0913:
mov eax, offset _Lt_0914
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0915:
mov eax, offset _Lt_0916
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0917:
mov eax, offset _Lt_0918
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0919:
mov eax, offset _Lt_091A
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_091B:
mov eax, offset _Lt_091C
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_091D:
mov eax, offset _Lt_091E
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_091F:
mov eax, offset _Lt_0920
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0921:
mov eax, offset _Lt_0922
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0923:
mov eax, offset _Lt_0924
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0925:
mov eax, offset _Lt_0926
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0927:
mov eax, offset _Lt_0928
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0929:
mov eax, offset _Lt_010A
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_092A:
mov eax, offset _Lt_092B
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_092C:
mov eax, offset _Lt_092D
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_092E:
mov eax, offset _Lt_092F
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0930:
mov eax, offset _Lt_0931
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0932:
mov eax, offset _Lt_0933
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0934:
mov eax, offset _Lt_0935
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0936:
mov eax, offset _Lt_0937
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0938:
mov eax, offset _Lt_0939
mov dword ptr [ebp-4], eax
jmp .L_0902
.L_0903:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 71
ja .L_0938
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_093A+eax*4-112]
_.L_093A:
.int .L_0905
.int .L_0906
.int .L_0907
.int .L_0909
.int .L_090B
.int .L_090D
.int .L_0913
.int .L_0915
.int .L_0938
.int .L_0938
.int .L_0917
.int .L_0925
.int .L_0927
.int .L_090F
.int .L_0911
.int .L_0938
.int .L_0938
.int .L_0919
.int .L_091D
.int .L_091F
.int .L_091B
.int .L_0921
.int .L_0923
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_0938
.int .L_092A
.int .L_092C
.int .L_092E
.int .L_0930
.int .L_0932
.int .L_0934
.int .L_0929
.int .L_0936
.L_0902:
.L_0901:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_RESTORE_VRREG:
push ebp
mov ebp, esp
push ebx
.L_093B:
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+236], eax
mov dword ptr [_CTX+240], 1
mov eax, dword ptr [ebp+12]
cmp dword ptr [_REGHANDLE+eax*4], -2
jne .L_093E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov dword ptr [_REGHANDLE+ebx*4], ecx
.L_093E:
.L_093D:
.L_093C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_BOP_FLOAT:
push ebp
mov ebp, esp
sub esp, 228
push ebx
.L_093F:
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
je .L_0942
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-124], eax
.L_0942:
.L_0941:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-128], ebx
cmp dword ptr [ebp-128], 16
jne .L_0944
push 0
push 6
push offset _Lt_07BD
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_0945
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 9
push offset _Lt_0946
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_009F
push -1
lea ebx, [ebp-72]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_0947
push -1
lea ebx, [ebp-84]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_0948
push -1
lea ebx, [ebp-96]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_0949
push -1
lea ebx, [ebp-108]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_094A
push -1
lea ebx, [ebp-120]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_0943
.L_0944:
push 0
push 6
push offset _Lt_07B7
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_094B
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 9
push offset _Lt_094C
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_00B2
push -1
lea ebx, [ebp-72]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_094D
push -1
lea ebx, [ebp-84]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_094E
push -1
lea ebx, [ebp-96]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_094F
push -1
lea ebx, [ebp-108]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push 7
push offset _Lt_0950
push -1
lea ebx, [ebp-120]
push ebx
call _fb_StrAssign
add esp, 20
.L_0943:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_0952
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
push offset _Lt_0953
push -1
lea ebx, [ebp-36]
push ebx
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea ebx, [ebp-144]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0951
.L_0952:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0957
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-72]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
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
push offset _Lt_0953
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0951
.L_0957:
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
push offset _Lt_0953
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
.L_0951:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .L_0963
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
push offset _Lt_0964
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0962
.L_0963:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0968
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-72]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
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
push offset _Lt_0964
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0962
.L_0968:
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
push offset _Lt_0964
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
.L_0962:
cmp dword ptr [ebp+8], 45
je .L_0975
.L_0976:
cmp dword ptr [ebp+8], 48
je .L_0975
.L_0977:
cmp dword ptr [ebp+8], 47
je .L_0975
.L_0978:
cmp dword ptr [ebp+8], 50
je .L_0975
.L_0979:
cmp dword ptr [ebp+8], 46
je .L_0975
.L_097A:
cmp dword ptr [ebp+8], 49
jne .L_0974
.L_0975:
cmp dword ptr [ebp+44], 0
jne .L_097C
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 5
push offset _Lt_097D
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
.L_097C:
.L_097B:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset _Lt_0981
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+8], 45
jne .L_0985
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_0986
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0984
.L_0985:
cmp dword ptr [ebp+8], 48
jne .L_0989
cmp dword ptr [ebp+44], 0
jne .L_098B
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
push offset _Lt_0986
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_098A
.L_098B:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 0
push dword ptr [ebp+44]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 4
push offset _Lt_0986
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_098A:
.L_0989:
.L_0984:
cmp dword ptr [ebp+8], 45
jne .L_0991
.L_0992:
mov eax, offset _Lt_0993
mov dword ptr [ebp-132], eax
jmp .L_0990
.L_0991:
cmp dword ptr [ebp+8], 48
jne .L_0994
.L_0995:
mov eax, offset _Lt_0996
mov dword ptr [ebp-132], eax
jmp .L_0990
.L_0994:
cmp dword ptr [ebp+8], 47
jne .L_0997
.L_0998:
mov eax, offset _Lt_0999
mov dword ptr [ebp-132], eax
jmp .L_0990
.L_0997:
cmp dword ptr [ebp+8], 50
jne .L_099A
.L_099B:
mov eax, offset _Lt_099C
mov dword ptr [ebp-132], eax
jmp .L_0990
.L_099A:
cmp dword ptr [ebp+8], 46
jne .L_099D
.L_099E:
mov eax, offset _Lt_099F
mov dword ptr [ebp-132], eax
jmp .L_0990
.L_099D:
cmp dword ptr [ebp+8], 49
jne .L_09A0
.L_09A1:
mov eax, offset _Lt_09A2
mov dword ptr [ebp-132], eax
.L_09A0:
.L_0990:
cmp dword ptr [ebp+44], 0
jne .L_09A4
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09A3
.L_09A4:
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 0
push dword ptr [ebp+44]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 0
push dword ptr [ebp-132]
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp+44]
call _REG_MARK
add esp, 4
.L_09A3:
cmp dword ptr [ebp+8], 45
jne .L_09AA
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09AA:
cmp dword ptr [ebp+44], 0
jne .L_09AE
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_09AF
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-124]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
.L_09AE:
.L_09AD:
jmp .L_0973
.L_0974:
cmp dword ptr [ebp+8], 28
je .L_09B7
.L_09B8:
cmp dword ptr [ebp+8], 29
je .L_09B7
.L_09B9:
cmp dword ptr [ebp+8], 30
je .L_09B7
.L_09BA:
cmp dword ptr [ebp+8], 31
jne .L_09B6
.L_09B7:
cmp dword ptr [ebp+8], 28
jne .L_09BC
.L_09BD:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset _Lt_0981
push -1
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09BB
.L_09BC:
cmp dword ptr [ebp+8], 29
jne .L_09C0
.L_09C1:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset _Lt_0981
push -1
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09BB
.L_09C0:
cmp dword ptr [ebp+8], 30
jne .L_09C4
.L_09C5:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset _Lt_0981
push -1
lea eax, [ebp-108]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09BB
.L_09C4:
cmp dword ptr [ebp+8], 31
jne .L_09C8
.L_09C9:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 11
push offset _Lt_0981
push -1
lea eax, [ebp-120]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.L_09C8:
.L_09BB:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 16
jne .L_09CD
cmp dword ptr [ebp-128], 15
jne .L_09CF
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 20
push offset _Lt_09D0
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09CF:
.L_09CE:
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRQ+eax*4]
push 6
push offset _Lt_07BD
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09CC
.L_09CD:
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRD+eax*4]
push 6
push offset _Lt_07B7
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
.L_09CC:
push dword ptr [ebp-124]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
jmp .L_0973
.L_09B6:
cmp dword ptr [ebp+8], 64
jne .L_09D9
.L_09DA:
cmp dword ptr [ebp-128], 16
jne .L_09DC
push dword ptr [ebp-124]
push dword ptr [ebp+20]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 6
push offset _Lt_09DD
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRQ+eax*4]
push 6
push offset _Lt_07BD
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09DB
.L_09DC:
push dword ptr [ebp-124]
push dword ptr [ebp+20]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 7
push offset _Lt_09E2
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRQ+eax*4]
push 6
push offset _Lt_07B7
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09DB:
jmp .L_0973
.L_09D9:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETBOPCODE
add esp, 4
push eax
push 51
push offset _Lt_09EA
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09E7:
.L_0973:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0940:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADOPERANDSANDWRITEBOP:
push ebp
mov ebp, esp
sub esp, 324
push ebx
.L_09EE:
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
je .L_09F1
mov dword ptr [ebp-124], 8
.L_09F1:
cmp dword ptr [ebp-124], 8
je .L_09F4
.L_09F5:
cmp dword ptr [ebp-124], 9
je .L_09F4
.L_09F6:
cmp dword ptr [ebp-124], 13
je .L_09F4
.L_09F7:
cmp dword ptr [ebp-124], 14
je .L_09F4
.L_09F8:
cmp dword ptr [ebp-124], 10
je .L_09F4
.L_09F9:
cmp dword ptr [ebp-124], 16
jne .L_09F3
.L_09F4:
push 0
push 11
push offset _Lt_09FA
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_09F2
.L_09F3:
cmp dword ptr [ebp-124], 11
je .L_09FC
.L_09FD:
cmp dword ptr [ebp-124], 12
je .L_09FC
.L_09FE:
cmp dword ptr [ebp-124], 15
jne .L_09FB
.L_09FC:
push 0
push 11
push offset _Lt_09FF
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_09F2
.L_09FB:
cmp dword ptr [ebp-124], 5
je .L_0A01
.L_0A02:
cmp dword ptr [ebp-124], 6
jne .L_0A00
.L_0A01:
push 0
push 10
push offset _Lt_0A03
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_09F2
.L_0A00:
cmp dword ptr [ebp-124], 2
je .L_0A05
.L_0A06:
cmp dword ptr [ebp-124], 3
je .L_0A05
.L_0A07:
cmp dword ptr [ebp-124], 1
je .L_0A05
.L_0A08:
cmp dword ptr [ebp-124], 4
jne .L_0A04
.L_0A05:
push 0
push 10
push offset _Lt_0A09
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_09F2
.L_0A04:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-188]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-188]
push ebx
call _HWRITEASM64
add esp, 8
lea ebx, [ebp-188]
push ebx
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 48
push offset _Lt_0A0E
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.L_0A0A:
.L_09F2:
push 0
push -1
lea eax, [ebp-60]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-180], ebx
cmp dword ptr [ebp-180], 4
jne .L_0A14
.L_0A15:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-124], 8
je .L_0A18
.L_0A19:
cmp dword ptr [ebp-124], 9
je .L_0A18
.L_0A1A:
cmp dword ptr [ebp-124], 13
je .L_0A18
.L_0A1B:
cmp dword ptr [ebp-124], 14
je .L_0A18
.L_0A1C:
cmp dword ptr [ebp-124], 10
je .L_0A18
.L_0A1D:
cmp dword ptr [ebp-124], 16
jne .L_0A17
.L_0A18:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A16
.L_0A17:
cmp dword ptr [ebp-124], 11
je .L_0A1F
.L_0A20:
cmp dword ptr [ebp-124], 12
je .L_0A1F
.L_0A21:
cmp dword ptr [ebp-124], 15
jne .L_0A1E
.L_0A1F:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A16
.L_0A1E:
cmp dword ptr [ebp-124], 5
je .L_0A23
.L_0A24:
cmp dword ptr [ebp-124], 6
jne .L_0A22
.L_0A23:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A16
.L_0A22:
cmp dword ptr [ebp-124], 2
je .L_0A26
.L_0A27:
cmp dword ptr [ebp-124], 3
je .L_0A26
.L_0A28:
cmp dword ptr [ebp-124], 1
je .L_0A26
.L_0A29:
cmp dword ptr [ebp-124], 4
jne .L_0A25
.L_0A26:
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A16
.L_0A25:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 47
push offset _Lt_0A2E
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
.L_0A2A:
.L_0A16:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A12
.L_0A14:
cmp dword ptr [ebp-180], 2
jne .L_0A32
.L_0A33:
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _PREPARE_IDX
add esp, 12
jmp .L_0A12
.L_0A32:
cmp dword ptr [ebp-180], 3
jne .L_0A34
.L_0A35:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A12
.L_0A34:
cmp dword ptr [ebp-180], 5
jne .L_0A39
.L_0A3A:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A12
.L_0A39:
cmp dword ptr [ebp-180], 0
jne .L_0A3E
.L_0A3F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0A40
mov dword ptr [ebp-184], 24
jmp .L_1C5F
.L_0A40:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-184], eax
.L_1C5F:
mov eax, dword ptr [ebp-184]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0A43
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A42
.L_0A43:
cmp dword ptr [ebp-124], 1
jne .L_0A45
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_1C68
cmp dword ptr [eax+24], 0
je .L_0A47
.L_1C68:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], 1
mov dword ptr [eax+28], 0
.L_0A47:
.L_0A46:
.L_0A45:
.L_0A44:
push 0
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0A42:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A12
.L_0A3E:
cmp dword ptr [ebp-180], 1
jne .L_0A48
.L_0A49:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_0A4A
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-184], eax
jmp .L_1C60
.L_0A4A:
mov dword ptr [ebp-184], 0
.L_1C60:
cmp dword ptr [ebp-184], 0
je .L_0A4C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-188], eax
jmp .L_1C61
.L_0A4C:
mov dword ptr [ebp-188], 0
.L_1C61:
cmp dword ptr [ebp-188], 0
je .L_0A4F
push -1
push 999994
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-140], eax
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0135
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0A4E
.L_0A4F:
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
je .L_0A56
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A55
.L_0A56:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0A55:
.L_0A4E:
jmp .L_0A12
.L_0A48:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 51
push offset _Lt_0A5E
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
.L_0A5B:
.L_0A12:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-180], ebx
cmp dword ptr [ebp-180], 4
jne .L_0A63
.L_0A64:
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-140], eax
cmp dword ptr [ebp-124], 8
je .L_0A67
.L_0A68:
cmp dword ptr [ebp-124], 9
je .L_0A67
.L_0A69:
cmp dword ptr [ebp-124], 13
je .L_0A67
.L_0A6A:
cmp dword ptr [ebp-124], 14
je .L_0A67
.L_0A6B:
cmp dword ptr [ebp-124], 10
je .L_0A67
.L_0A6C:
cmp dword ptr [ebp-124], 16
jne .L_0A66
.L_0A67:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A65
.L_0A66:
cmp dword ptr [ebp-124], 11
je .L_0A6E
.L_0A6F:
cmp dword ptr [ebp-124], 12
je .L_0A6E
.L_0A70:
cmp dword ptr [ebp-124], 15
jne .L_0A6D
.L_0A6E:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A65
.L_0A6D:
cmp dword ptr [ebp-124], 5
je .L_0A72
.L_0A73:
cmp dword ptr [ebp-124], 6
jne .L_0A71
.L_0A72:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A65
.L_0A71:
cmp dword ptr [ebp-124], 2
je .L_0A75
.L_0A76:
cmp dword ptr [ebp-124], 3
je .L_0A75
.L_0A77:
cmp dword ptr [ebp-124], 1
je .L_0A75
.L_0A78:
cmp dword ptr [ebp-124], 4
jne .L_0A74
.L_0A75:
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A65
.L_0A74:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 47
push offset _Lt_0A7D
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
.L_0A79:
.L_0A65:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A61
.L_0A63:
cmp dword ptr [ebp-180], 0
jne .L_0A81
.L_0A82:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0A83
mov dword ptr [ebp-184], 24
jmp .L_1C62
.L_0A83:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-184], eax
.L_1C62:
mov eax, dword ptr [ebp-184]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0A86
push 0
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A85
.L_0A86:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 1
jne .L_0A88
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jne .L_1C6D
cmp dword ptr [eax+24], 0
je .L_0A8A
.L_1C6D:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+24], 1
mov dword ptr [eax+28], 0
.L_0A8A:
.L_0A89:
.L_0A88:
.L_0A87:
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0A85:
jmp .L_0A61
.L_0A81:
cmp dword ptr [ebp-180], 3
jne .L_0A8B
.L_0A8C:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A61
.L_0A8B:
cmp dword ptr [ebp-180], 5
jne .L_0A90
.L_0A91:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0A61
.L_0A90:
cmp dword ptr [ebp-180], 2
jne .L_0A95
.L_0A96:
lea eax, [ebp-48]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _PREPARE_IDX
add esp, 12
jmp .L_0A61
.L_0A95:
cmp dword ptr [ebp-180], 1
jne .L_0A97
.L_0A98:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_0A99
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-184], eax
jmp .L_1C63
.L_0A99:
mov dword ptr [ebp-184], 0
.L_1C63:
cmp dword ptr [ebp-184], 0
je .L_0A9B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-188], eax
jmp .L_1C64
.L_0A9B:
mov dword ptr [ebp-188], 0
.L_1C64:
cmp dword ptr [ebp-188], 0
je .L_0A9E
push -1
push 999993
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-140], eax
push 0
push 0
mov eax, dword ptr [ebp-140]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0135
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0A9D
.L_0A9E:
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
je .L_0AA4
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0AA3
.L_0AA4:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0AA3:
.L_0A9D:
jmp .L_0A61
.L_0A97:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 51
push offset _Lt_0AAC
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
.L_0AA9:
.L_0A61:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0AB0
lea eax, [ebp-36]
push eax
call _EMITOP3_OP4
add esp, 4
.L_0AB0:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0AB2
lea eax, [ebp-48]
push eax
call _EMITOP3_OP4
add esp, 4
.L_0AB2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0AB3
mov dword ptr [ebp-148], 24
jmp .L_1C65
.L_0AB3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-148], eax
.L_1C65:
mov eax, dword ptr [ebp-148]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-180], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0AB5
mov dword ptr [ebp-152], 24
jmp .L_1C66
.L_0AB5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-152], ebx
.L_1C66:
mov ebx, dword ptr [ebp-152]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-180]
je .L_0AB8
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
call _BOP_FLOAT
add esp, 40
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09EF
.L_0AB8:
.L_0AB7:
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+20], 0
je .L_0ABC
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0ABE
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
jmp .L_0ABD
.L_0ABE:
push -1
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+12]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_0AC0
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0ABF
.L_0AC0:
cmp dword ptr [ebp-124], 8
je .L_0AC7
.L_0AC8:
cmp dword ptr [ebp-124], 9
je .L_0AC7
.L_0AC9:
cmp dword ptr [ebp-124], 13
je .L_0AC7
.L_0ACA:
cmp dword ptr [ebp-124], 14
je .L_0AC7
.L_0ACB:
cmp dword ptr [ebp-124], 10
jne .L_0AC6
.L_0AC7:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0AC5
.L_0AC6:
cmp dword ptr [ebp-124], 11
je .L_0AD1
.L_0AD2:
cmp dword ptr [ebp-124], 12
jne .L_0AD0
.L_0AD1:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRD+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0AC5
.L_0AD0:
cmp dword ptr [ebp-124], 5
je .L_0AD8
.L_0AD9:
cmp dword ptr [ebp-124], 6
jne .L_0AD7
.L_0AD8:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRW+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0AC5
.L_0AD7:
cmp dword ptr [ebp-124], 2
je .L_0ADF
.L_0AE0:
cmp dword ptr [ebp-124], 3
je .L_0ADF
.L_0AE1:
cmp dword ptr [ebp-124], 1
je .L_0ADF
.L_0AE2:
cmp dword ptr [ebp-124], 4
jne .L_0ADE
.L_0ADF:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRB+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0AC5
.L_0ADE:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 49
push offset _Lt_0AEB
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.L_0AE7:
.L_0AC5:
.L_0ABF:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
.L_0ABD:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .L_0AF0
push -1
push 99999
call _REG_FINDFREE
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0AF0:
.L_0AEF:
jmp .L_0ABB
.L_0ABC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_0AF6
push -1
push 99999
call _REG_FINDFREE
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-136]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0AF6:
.L_0AF5:
cmp dword ptr [ebp+8], 30
jne .L_0AFC
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0AFE
push 0
push 8
call _IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp+20], eax
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0AFE:
.L_0AFD:
jmp .L_0AFB
.L_0AFC:
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
je .L_0B04
push 0
push dword ptr [ebp-124]
call _IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-144], eax
push -1
mov eax, dword ptr [ebp-144]
push dword ptr [eax+12]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .L_0B06
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B05
.L_0B06:
cmp dword ptr [ebp-124], 8
je .L_0B0D
.L_0B0E:
cmp dword ptr [ebp-124], 9
je .L_0B0D
.L_0B0F:
cmp dword ptr [ebp-124], 13
je .L_0B0D
.L_0B10:
cmp dword ptr [ebp-124], 14
je .L_0B0D
.L_0B11:
cmp dword ptr [ebp-124], 10
jne .L_0B0C
.L_0B0D:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B0B
.L_0B0C:
cmp dword ptr [ebp-124], 11
je .L_0B17
.L_0B18:
cmp dword ptr [ebp-124], 12
jne .L_0B16
.L_0B17:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRD+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B0B
.L_0B16:
cmp dword ptr [ebp-124], 5
je .L_0B1E
.L_0B1F:
cmp dword ptr [ebp-124], 6
jne .L_0B1D
.L_0B1E:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRW+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B0B
.L_0B1D:
cmp dword ptr [ebp-124], 2
je .L_0B25
.L_0B26:
cmp dword ptr [ebp-124], 3
je .L_0B25
.L_0B27:
cmp dword ptr [ebp-124], 1
je .L_0B25
.L_0B28:
cmp dword ptr [ebp-124], 4
jne .L_0B24
.L_0B25:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRB+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B0B
.L_0B24:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 49
push offset _Lt_0B31
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.L_0B2D:
.L_0B0B:
.L_0B05:
.L_0B04:
.L_0B03:
.L_0AFB:
.L_0ABB:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0B36
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 4294967295
mov ebx, -1
jl .L_1C76
jg .L_1C77
cmp dword ptr [eax+24], 2147483648
jb .L_1C76
.L_1C77:
xor ebx, ebx
.L_1C76:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
mov ecx, -1
jg .L_1C78
jl .L_1C79
cmp dword ptr [eax+24], 2147483648
jae .L_1C78
.L_1C79:
xor ecx, ecx
.L_1C78:
or ebx, ecx
je .L_0B38
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 4294967295
mov ebx, -1
jl .L_1C7A
jg .L_1C7B
cmp dword ptr [ecx+24], 2147483648
jb .L_1C7A
.L_1C7B:
xor ebx, ebx
.L_1C7A:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 0
mov eax, -1
jg .L_1C7C
jl .L_1C7D
cmp dword ptr [ecx+24], 4294967295
ja .L_1C7C
.L_1C7D:
xor eax, eax
.L_1C7C:
or ebx, eax
je .L_0B3A
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
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0B39
.L_0B3A:
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
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_0B3D
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
.L_0B39:
push 0
push 4
push offset _Lt_009F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-124], 8
je .L_0B42
.L_0B43:
cmp dword ptr [ebp-124], 9
je .L_0B42
.L_0B44:
cmp dword ptr [ebp-124], 13
je .L_0B42
.L_0B45:
cmp dword ptr [ebp-124], 14
je .L_0B42
.L_0B46:
cmp dword ptr [ebp-124], 10
je .L_0B42
.L_0B47:
cmp dword ptr [ebp-124], 16
jne .L_0B41
.L_0B42:
jmp .L_0B40
.L_0B41:
cmp dword ptr [ebp-124], 11
je .L_0B49
.L_0B4A:
cmp dword ptr [ebp-124], 12
je .L_0B49
.L_0B4B:
cmp dword ptr [ebp-124], 15
jne .L_0B48
.L_0B49:
push 0
push 4
push offset _Lt_00B2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B40
.L_0B48:
cmp dword ptr [ebp-124], 5
je .L_0B4D
.L_0B4E:
cmp dword ptr [ebp-124], 6
jne .L_0B4C
.L_0B4D:
push 0
push 3
push offset _Lt_00C4
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B40
.L_0B4C:
cmp dword ptr [ebp-124], 2
je .L_0B50
.L_0B51:
cmp dword ptr [ebp-124], 3
je .L_0B50
.L_0B52:
cmp dword ptr [ebp-124], 1
je .L_0B50
.L_0B53:
cmp dword ptr [ebp-124], 4
jne .L_0B4F
.L_0B50:
push 0
push 3
push offset _Lt_00D6
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B40
.L_0B4F:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 50
push offset _Lt_0B58
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.L_0B54:
.L_0B40:
.L_0B38:
.L_0B37:
.L_0B36:
.L_0B35:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-180], eax
jmp .L_0B5D
.L_0B5F:
push 2
push offset _Lt_0004
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0B61
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
push offset _Lt_0B62
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0B60
.L_0B61:
push 3
push offset _Lt_0B66
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0B65
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
push offset _Lt_04E8
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0B60
.L_0B65:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0474
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
.L_0B60:
cmp dword ptr [ebp+20], 0
je .L_0B6E
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0B6E:
jmp .L_0B5C
.L_0B6F:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0B70
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0B76
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0B76:
jmp .L_0B5C
.L_0B77:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0B7D
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0B7D:
jmp .L_0B5C
.L_0B7E:
cmp dword ptr [ebp+20], 0
je .L_0B80
cmp dword ptr [ebp-124], 1
jne .L_0B82
push 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
push 0
push -1
push 4
push offset _Lt_0B83
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_09AF
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-264]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-264]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0B81
.L_0B82:
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
push offset _Lt_0B87
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
.L_0B81:
cmp dword ptr [ebp-124], 8
je .L_0B8C
.L_0B8D:
cmp dword ptr [ebp-124], 9
je .L_0B8C
.L_0B8E:
cmp dword ptr [ebp-124], 13
je .L_0B8C
.L_0B8F:
cmp dword ptr [ebp-124], 14
je .L_0B8C
.L_0B90:
cmp dword ptr [ebp-124], 10
jne .L_0B8B
.L_0B8C:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRQ]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRQ]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B8A
.L_0B8B:
cmp dword ptr [ebp-124], 11
je .L_0B96
.L_0B97:
cmp dword ptr [ebp-124], 12
jne .L_0B95
.L_0B96:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRD]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRD]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B8A
.L_0B95:
cmp dword ptr [ebp-124], 5
je .L_0B9D
.L_0B9E:
cmp dword ptr [ebp-124], 6
jne .L_0B9C
.L_0B9D:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRW]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRW]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B8A
.L_0B9C:
cmp dword ptr [ebp-124], 2
je .L_0BA4
.L_0BA5:
cmp dword ptr [ebp-124], 3
je .L_0BA4
.L_0BA6:
cmp dword ptr [ebp-124], 1
je .L_0BA4
.L_0BA7:
cmp dword ptr [ebp-124], 4
jne .L_0BA3
.L_0BA4:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRB]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRB]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0B8A
.L_0BA3:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 49
push offset _Lt_0B31
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-264]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-264]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
.L_0BAC:
.L_0B8A:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0B7F
.L_0B80:
cmp dword ptr [ebp-124], 8
je .L_0BB7
.L_0BB8:
cmp dword ptr [ebp-124], 9
je .L_0BB7
.L_0BB9:
cmp dword ptr [ebp-124], 13
je .L_0BB7
.L_0BBA:
cmp dword ptr [ebp-124], 14
je .L_0BB7
.L_0BBB:
cmp dword ptr [ebp-124], 10
jne .L_0BB6
.L_0BB7:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRQ]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRQ]
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BB5
.L_0BB6:
cmp dword ptr [ebp-124], 11
je .L_0BC1
.L_0BC2:
cmp dword ptr [ebp-124], 12
jne .L_0BC0
.L_0BC1:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRD]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRD]
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BB5
.L_0BC0:
cmp dword ptr [ebp-124], 5
je .L_0BC8
.L_0BC9:
cmp dword ptr [ebp-124], 6
jne .L_0BC7
.L_0BC8:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRW]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRW]
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BB5
.L_0BC7:
cmp dword ptr [ebp-124], 2
je .L_0BCF
.L_0BD0:
cmp dword ptr [ebp-124], 3
je .L_0BCF
.L_0BD1:
cmp dword ptr [ebp-124], 1
je .L_0BCF
.L_0BD2:
cmp dword ptr [ebp-124], 4
jne .L_0BCE
.L_0BCF:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRB]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRB]
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BB5
.L_0BCE:
push 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-288]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-288]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 49
push offset _Lt_0B31
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
.L_0BD7:
.L_0BB5:
cmp dword ptr [ebp-124], 1
jne .L_0BDD
push 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
push 4
push offset _Lt_0B83
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset _Lt_09AF
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0BDC
.L_0BDD:
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
push offset _Lt_0B87
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-300]
push eax
call _fb_StrDelete
add esp, 4
.L_0BDC:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-120]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
.L_0B7F:
cmp dword ptr [ebp+20], 0
je .L_0BEC
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0BEC:
jmp .L_0B5C
.L_0BED:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_09AF
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0BF3
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0BF3:
jmp .L_0B5C
.L_0BF4:
cmp dword ptr [ebp-124], 8
je .L_0BF7
.L_0BF8:
cmp dword ptr [ebp-124], 9
je .L_0BF7
.L_0BF9:
cmp dword ptr [ebp-124], 13
je .L_0BF7
.L_0BFA:
cmp dword ptr [ebp-124], 14
je .L_0BF7
.L_0BFB:
cmp dword ptr [ebp-124], 10
jne .L_0BF6
.L_0BF7:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRQ]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRQ]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BF5
.L_0BF6:
cmp dword ptr [ebp-124], 11
je .L_0C01
.L_0C02:
cmp dword ptr [ebp-124], 12
jne .L_0C00
.L_0C01:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRD]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRD]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BF5
.L_0C00:
cmp dword ptr [ebp-124], 5
je .L_0C08
.L_0C09:
cmp dword ptr [ebp-124], 6
jne .L_0C07
.L_0C08:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRW]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRW]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BF5
.L_0C07:
cmp dword ptr [ebp-124], 2
je .L_0C0F
.L_0C10:
cmp dword ptr [ebp-124], 3
je .L_0C0F
.L_0C11:
cmp dword ptr [ebp-124], 1
je .L_0C0F
.L_0C12:
cmp dword ptr [ebp-124], 4
jne .L_0C0E
.L_0C0F:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRB]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRB]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0BF5
.L_0C0E:
push 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-288]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-288]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 49
push offset _Lt_0B31
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
.L_0C17:
.L_0BF5:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_09AF
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-124], 1
jne .L_0C21
push 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
push 4
push offset _Lt_0B83
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_09AF
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-312]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0C20
.L_0C21:
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
push offset _Lt_0B87
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-300]
push eax
call _fb_StrDelete
add esp, 4
.L_0C20:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0C2C
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0C2C:
jmp .L_0B5C
.L_0C2D:
push 2
push offset _Lt_0004
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0C2F
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
push offset _Lt_04E8
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0C2E
.L_0C2F:
push 3
push offset _Lt_0B66
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0C32
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
push offset _Lt_0B62
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0C2E
.L_0C32:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0C35
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
.L_0C2E:
cmp dword ptr [ebp+20], 0
je .L_0C3B
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0C3B:
jmp .L_0B5C
.L_0C3C:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0C3D
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-96]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0C43
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
.L_0C43:
jmp .L_0B5C
.L_0C48:
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
je .L_0C4A
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-232], ecx
jmp .L_0C4C
.L_0C4E:
push 0
push 3
push offset _Lt_0C4F
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C4B
.L_0C50:
push 0
push 2
push offset _Lt_0C51
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C4B
.L_0C52:
push 0
push 3
push offset _Lt_0C53
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C4B
.L_0C54:
push 0
push 3
push offset _Lt_0C55
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C4B
.L_0C56:
push 0
push 2
push offset _Lt_0C57
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C4B
.L_0C58:
push 0
push 2
push offset _Lt_016E
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C4B
.L_0C4C:
mov ecx, dword ptr [ebp-232]
add ecx, 4294967251
cmp ecx, 5
ja .L_0C4B
mov ecx, dword ptr [ebp-232]
jmp dword ptr [_.L_0C59+ecx*4-180]
_.L_0C59:
.int .L_0C58
.int .L_0C56
.int .L_0C50
.int .L_0C52
.int .L_0C54
.int .L_0C4E
.L_0C4B:
jmp .L_0C49
.L_0C4A:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-232], ecx
jmp .L_0C5B
.L_0C5D:
push 0
push 3
push offset _Lt_0C5E
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C5A
.L_0C5F:
push 0
push 2
push offset _Lt_0C60
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C5A
.L_0C61:
push 0
push 3
push offset _Lt_0C53
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C5A
.L_0C62:
push 0
push 3
push offset _Lt_0C63
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C5A
.L_0C64:
push 0
push 2
push offset _Lt_0C65
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C5A
.L_0C66:
push 0
push 2
push offset _Lt_016E
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0C5A
.L_0C5B:
mov ecx, dword ptr [ebp-232]
add ecx, 4294967251
cmp ecx, 5
ja .L_0C5A
mov ecx, dword ptr [ebp-232]
jmp dword ptr [_.L_0C67+ecx*4-180]
_.L_0C67:
.int .L_0C66
.int .L_0C64
.int .L_0C5F
.int .L_0C61
.int .L_0C62
.int .L_0C5D
.L_0C5A:
.L_0C49:
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
push offset _Lt_012A
push -1
push -1
lea ecx, [ebp-12]
push ecx
push 5
push offset _Lt_0129
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+24], 0
jne .L_0C6D
push 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
push 0
push -1
push 4
push offset _Lt_0C6F
push -1
push -1
lea eax, [ebp-84]
push eax
push 4
push offset _Lt_0C6E
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-264]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-264]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push -1
push 5
push offset _Lt_0C73
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 7
push offset _Lt_071E
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
lea eax, [ebp-276]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-300]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-124], 1
je .L_0C78
push 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_0C79
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
.L_0C78:
.L_0C77:
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
jmp .L_0C6C
.L_0C6D:
push 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F8
push -1
push -1
lea eax, [ebp-84]
push eax
push 2
push offset _Lt_0C7C
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp+24]
call _REG_MARK
add esp, 4
.L_0C6C:
jmp .L_0B5C
.L_0C81:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_0C83
push 0
push dword ptr [_REGSTRQ+8]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0C85
cmp dword ptr [_REGHANDLE+8], -2
je .L_0C87
mov eax, dword ptr [_REGHANDLE+8]
mov dword ptr [ebp-140], eax
push -1
push dword ptr [ebp-140]
call _REG_FINDFREE
add esp, 8
mov dword ptr [_REGHANDLE+8], -2
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 0
push dword ptr [_REGSTRQ+8]
push -1
push 3
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-132], 2
jne .L_0C8D
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
.L_0C8D:
jmp .L_0C86
.L_0C87:
or dword ptr [_CTX+128], 4
.L_0C86:
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
push offset _Lt_0C8E
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
.L_0C85:
.L_0C84:
push 0
push 3
push offset _Lt_00D8
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0C83:
.L_0C82:
cmp dword ptr [ebp+8], 41
jne .L_0C92
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0C93
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0C91
.L_0C92:
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
je .L_0C99
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
push offset _Lt_012A
push -1
push -1
lea ecx, [ebp-12]
push ecx
push 5
push offset _Lt_0C9A
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0C98
.L_0C99:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_06CB
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
.L_0C98:
.L_0C91:
jmp .L_0B5C
.L_0CA3:
cmp dword ptr [_REGHANDLE+12], -2
je .L_0CA5
push 0
push dword ptr [_REGSTRQ+12]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0CA7
mov eax, dword ptr [_REGHANDLE+12]
mov dword ptr [ebp-140], eax
push -1
push dword ptr [ebp-140]
call _REG_FINDFREE
add esp, 8
mov dword ptr [_REGHANDLE+12], -2
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 0
push dword ptr [_REGSTRQ+12]
push -1
push 3
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
push 0
push dword ptr [_REGSTRQ+12]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0CAD
push 0
push 0
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0CAD:
.L_0CAC:
cmp dword ptr [ebp-132], 3
jne .L_0CAF
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
.L_0CAF:
.L_0CA7:
.L_0CA6:
jmp .L_0CA4
.L_0CA5:
or dword ptr [_CTX+128], 8
.L_0CA4:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0CB1
cmp dword ptr [_REGHANDLE+12], -2
jne .L_0CB3
mov dword ptr [_REGHANDLE+12], -3
.L_0CB3:
push 0
push 0
call _REG_TEMPO
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [_REGHANDLE+12], -3
jne .L_0CB5
mov dword ptr [_REGHANDLE+12], -2
.L_0CB5:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0CB1:
.L_0CB0:
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
push offset _Lt_046A
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-128], ecx
mov ecx, dword ptr [ebp-128]
and ecx, 480
test ecx, ecx
je .L_0CBD
mov dword ptr [ebp-128], 8
.L_0CBD:
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
je .L_0CBF
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 11
push offset _Lt_0CC0
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
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
push offset _Lt_0CC2
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0CBE
.L_0CBF:
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 4
push offset _Lt_0CC5
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
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
push offset _Lt_0CC7
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
.L_0CBE:
cmp dword ptr [ebp+20], 0
jne .L_0CCB
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0CCA
.L_0CCB:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0CCA:
jmp .L_0B5C
.L_0CD2:
cmp dword ptr [_REGHANDLE+12], -2
je .L_0CD4
push 0
push dword ptr [_REGSTRQ+12]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0CD6
mov eax, dword ptr [_REGHANDLE+12]
mov dword ptr [ebp-140], eax
push -1
push dword ptr [ebp-140]
call _REG_FINDFREE
add esp, 8
mov dword ptr [_REGHANDLE+12], -2
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 0
push dword ptr [_REGSTRQ+12]
push -1
push 3
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
push 0
push dword ptr [_REGSTRQ+12]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0CDC
push 0
push 0
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0CDC:
.L_0CDB:
cmp dword ptr [ebp-132], 3
jne .L_0CDE
push dword ptr [ebp-140]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-132], eax
.L_0CDE:
.L_0CD6:
.L_0CD5:
jmp .L_0CD3
.L_0CD4:
or dword ptr [_CTX+128], 8
.L_0CD3:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0CE0
cmp dword ptr [_REGHANDLE+12], -2
jne .L_0CE2
mov dword ptr [_REGHANDLE+12], -3
.L_0CE2:
push 0
push 0
call _REG_TEMPO
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [_REGHANDLE+12], -3
jne .L_0CE4
mov dword ptr [_REGHANDLE+12], -2
.L_0CE4:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-108]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-108]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0CE0:
.L_0CDF:
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
push offset _Lt_046A
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-128], ecx
mov ecx, dword ptr [ebp-128]
and ecx, 480
test ecx, ecx
je .L_0CEC
mov dword ptr [ebp-128], 8
.L_0CEC:
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
je .L_0CEE
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 11
push offset _Lt_0CC0
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
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
push offset _Lt_0CC2
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0CED
.L_0CEE:
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 4
push offset _Lt_0CC5
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
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
push offset _Lt_0CC7
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
.L_0CED:
cmp dword ptr [ebp+20], 0
jne .L_0CF6
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_0CF7
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0CF5
.L_0CF6:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_0CF7
push -1
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-132]
push dword ptr [ebp+20]
call _RESTORE_VRREG
add esp, 8
.L_0CF5:
jmp .L_0B5C
.L_0CFE:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETBOPCODE
add esp, 4
push eax
push 45
push offset _Lt_0D01
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0B5C
.L_0B5D:
mov eax, dword ptr [ebp-180]
add eax, 4294967268
cmp eax, 22
ja .L_0CFE
mov eax, dword ptr [ebp-180]
jmp dword ptr [_.L_0D05+eax*4-112]
_.L_0D05:
.int .L_0B5F
.int .L_0C2D
.int .L_0C3C
.int .L_0CFE
.int .L_0CA3
.int .L_0CD2
.int .L_0B6F
.int .L_0B77
.int .L_0CFE
.int .L_0CFE
.int .L_0BED
.int .L_0BF4
.int .L_0B7E
.int .L_0C81
.int .L_0C81
.int .L_0CFE
.int .L_0CFE
.int .L_0C48
.int .L_0C48
.int .L_0C48
.int .L_0C48
.int .L_0C48
.int .L_0C48
.L_0B5C:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_09EF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBOP:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0D06:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
je .L_0D09
jmp .L_0D08
.L_0D09:
cmp dword ptr [ebp+20], 0
jne .L_0D0A
.L_0D0A:
.L_0D08:
cmp dword ptr [ebp+20], 0
jne .L_0D0C
.L_0D0C:
.L_0D0B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
je .L_0D13
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
je .L_0D0D
mov dword ptr [ebp-8], 24
jmp .L_1C8D
.L_0D0D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_1C8D:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0D0F
mov dword ptr [ebp-12], 24
jmp .L_1C8E
.L_0D0F:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_1C8E:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 480
je .L_0D11
mov dword ptr [ebp-16], 24
jmp .L_1C8F
.L_0D11:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-16], eax
.L_1C8F:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [ebp-32]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-28]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-20], ecx
jmp .L_1C8C
.L_0D13:
mov dword ptr [ebp-20], 0
.L_1C8C:
cmp dword ptr [ebp-20], 0
je .L_0D16
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 480
test ecx, ecx
je .L_0D18
jmp .L_0D17
.L_0D18:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
mov dword ptr [ecx+4], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call __SETVREGDATATYPE
add esp, 12
.L_0D17:
.L_0D16:
.L_0D15:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOADOPERANDSANDWRITEBOP
add esp, 20
.L_0D07:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITUOP:
push ebp
mov ebp, esp
sub esp, 252
push ebx
.L_0D19:
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
jne .L_0D1C
.L_0D1C:
.L_0D1B:
cmp dword ptr [ebp+16], 0
je .L_0D1E
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0D20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-64], ebx
cmp dword ptr [ebp-64], 4
jne .L_0D23
.L_0D24:
push -1
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+12]
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_0D21
.L_0D23:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 47
push offset _Lt_0D28
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.L_0D25:
.L_0D21:
jmp .L_0D1F
.L_0D20:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-40], eax
.L_0D1F:
.L_0D1E:
.L_0D1D:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp-48]
and ecx, 480
test ecx, ecx
je .L_0D2C
mov dword ptr [ebp-48], 8
.L_0D2C:
cmp dword ptr [ebp-48], 8
je .L_0D2F
.L_0D30:
cmp dword ptr [ebp-48], 9
je .L_0D2F
.L_0D31:
cmp dword ptr [ebp-48], 13
je .L_0D2F
.L_0D32:
cmp dword ptr [ebp-48], 14
je .L_0D2F
.L_0D33:
cmp dword ptr [ebp-48], 16
je .L_0D2F
.L_0D34:
cmp dword ptr [ebp-48], 10
jne .L_0D2E
.L_0D2F:
push 0
push 11
push offset _Lt_09FA
push -1
lea ecx, [ebp-36]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0D2D
.L_0D2E:
cmp dword ptr [ebp-48], 11
je .L_0D36
.L_0D37:
cmp dword ptr [ebp-48], 12
je .L_0D36
.L_0D38:
cmp dword ptr [ebp-48], 15
jne .L_0D35
.L_0D36:
push 0
push 11
push offset _Lt_09FF
push -1
lea ecx, [ebp-36]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0D2D
.L_0D35:
cmp dword ptr [ebp-48], 5
je .L_0D3A
.L_0D3B:
cmp dword ptr [ebp-48], 6
jne .L_0D39
.L_0D3A:
push 0
push 10
push offset _Lt_0A03
push -1
lea ecx, [ebp-36]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0D2D
.L_0D39:
cmp dword ptr [ebp-48], 2
je .L_0D3D
.L_0D3E:
cmp dword ptr [ebp-48], 3
je .L_0D3D
.L_0D3F:
cmp dword ptr [ebp-48], 1
je .L_0D3D
.L_0D40:
cmp dword ptr [ebp-48], 4
jne .L_0D3C
.L_0D3D:
push 0
push 10
push offset _Lt_0A09
push -1
lea ecx, [ebp-36]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_0D2D
.L_0D3C:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-72]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-72]
push ecx
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 48
push offset _Lt_0D45
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.L_0D41:
.L_0D2D:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-64], ecx
cmp dword ptr [ebp-64], 4
jne .L_0D4B
.L_0D4C:
cmp dword ptr [ebp-48], 1
jne .L_0D4E
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D4D
.L_0D4E:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0D4D:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D49
.L_0D4B:
cmp dword ptr [ebp-64], 2
jne .L_0D4F
.L_0D50:
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _PREPARE_IDX
add esp, 12
jmp .L_0D49
.L_0D4F:
cmp dword ptr [ebp-64], 3
jne .L_0D51
.L_0D52:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D49
.L_0D51:
cmp dword ptr [ebp-64], 5
jne .L_0D56
.L_0D57:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D49
.L_0D56:
cmp dword ptr [ebp-64], 0
jne .L_0D5B
.L_0D5C:
jmp .L_0D49
.L_0D5B:
cmp dword ptr [ebp-64], 1
jne .L_0D5D
.L_0D5E:
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
je .L_0D60
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D5F
.L_0D60:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0D5F:
jmp .L_0D49
.L_0D5D:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 43
push offset _Lt_0D68
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.L_0D65:
.L_0D49:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0D6C
lea eax, [ebp-24]
push eax
call _EMITOP3_OP4
add esp, 4
.L_0D6C:
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 52
jne .L_0D6F
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
je .L_0D71
cmp dword ptr [ebp-48], 8
je .L_0D74
.L_0D75:
cmp dword ptr [ebp-48], 9
je .L_0D74
.L_0D76:
cmp dword ptr [ebp-48], 13
je .L_0D74
.L_0D77:
cmp dword ptr [ebp-48], 14
je .L_0D74
.L_0D78:
cmp dword ptr [ebp-48], 10
jne .L_0D73
.L_0D74:
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
push offset _Lt_012A
push -1
push 0
mov ebx, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D72
.L_0D73:
cmp dword ptr [ebp-48], 11
je .L_0D7E
.L_0D7F:
cmp dword ptr [ebp-48], 12
jne .L_0D7D
.L_0D7E:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRD+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D72
.L_0D7D:
cmp dword ptr [ebp-48], 5
je .L_0D85
.L_0D86:
cmp dword ptr [ebp-48], 6
jne .L_0D84
.L_0D85:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRW+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D72
.L_0D84:
cmp dword ptr [ebp-48], 2
je .L_0D8C
.L_0D8D:
cmp dword ptr [ebp-48], 3
je .L_0D8C
.L_0D8E:
cmp dword ptr [ebp-48], 1
je .L_0D8C
.L_0D8F:
cmp dword ptr [ebp-48], 4
jne .L_0D8B
.L_0D8C:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRB+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0D72
.L_0D8B:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 49
push offset _Lt_0D98
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.L_0D94:
.L_0D72:
.L_0D71:
.L_0D70:
cmp dword ptr [ebp-48], 1
jne .L_0D9D
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0D9E
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
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
push offset _Lt_0DA3
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0D9C
.L_0D9D:
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
push offset _Lt_0B87
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
.L_0D9C:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0D1A
.L_0D6F:
.L_0D6E:
cmp dword ptr [ebp-48], 15
jne .L_0DA9
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0DAB
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
push offset _Lt_0DAC
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DAA
.L_0DAB:
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
push offset _Lt_0DAF
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
.L_0DAA:
cmp dword ptr [ebp+8], 60
jne .L_0DB3
.L_0DB4:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0DB5
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DB3:
cmp dword ptr [ebp+8], 58
jne .L_0DB7
.L_0DB8:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0DB9
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DB7:
cmp dword ptr [ebp+8], 69
jne .L_0DBB
.L_0DBC:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0DBD
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DBB:
cmp dword ptr [ebp+8], 68
jne .L_0DBF
.L_0DC0:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0DC1
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DBF:
cmp dword ptr [ebp+8], 61
jne .L_0DC3
.L_0DC4:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset _Lt_0DC5
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DC3:
cmp dword ptr [ebp+8], 59
jne .L_0DC7
.L_0DC8:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset _Lt_0DC9
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DC7:
cmp dword ptr [ebp+8], 62
jne .L_0DCB
.L_0DCC:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0DCD
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DCB:
cmp dword ptr [ebp+8], 63
jne .L_0DCF
.L_0DD0:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset _Lt_0DD1
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DCF:
cmp dword ptr [ebp+8], 65
jne .L_0DD3
.L_0DD4:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 21
push offset _Lt_0DD5
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
jmp .L_0DB2
.L_0DD3:
cmp dword ptr [ebp+8], 56
jne .L_0DD7
.L_0DD8:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 20
push offset _Lt_0DD9
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset _Lt_0DDB
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset _Lt_0DDD
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 16
push offset _Lt_0DDF
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
jmp .L_0DB2
.L_0DD7:
cmp dword ptr [ebp+8], 57
jne .L_0DE1
.L_0DE2:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset _Lt_0DE3
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DE1:
cmp dword ptr [ebp+8], 72
jne .L_0DE5
.L_0DE6:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 9
push offset _Lt_0DE7
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DE5:
cmp dword ptr [ebp+8], 71
jne .L_0DE9
.L_0DEA:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset _Lt_0DEB
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DE9:
cmp dword ptr [ebp+8], 70
jne .L_0DED
.L_0DEE:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 7
push offset _Lt_0DEF
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DB2
.L_0DED:
cmp dword ptr [ebp+8], 54
jne .L_0DF1
.L_0DF2:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 20
push offset _Lt_0DF4
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset _Lt_0DDB
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset _Lt_0DF7
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
jmp .L_0DB2
.L_0DF1:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 47
push offset _Lt_0DFC
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_0DF9:
.L_0DB2:
cmp dword ptr [ebp+8], 57
jne .L_0E00
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset _Lt_0E01
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRD+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0DFF
.L_0E00:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRD+eax*4]
push 6
push offset _Lt_07B7
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_0DFF:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0D1A
.L_0DA9:
.L_0DA8:
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
je .L_0E09
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
push offset _Lt_046A
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_REGHANDLE+12], -2
je .L_0E0D
mov eax, dword ptr [_REGHANDLE+12]
mov dword ptr [ebp-44], eax
push -1
push dword ptr [ebp-44]
call _REG_FINDFREE
add esp, 8
mov dword ptr [_REGHANDLE+12], -2
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 0
push dword ptr [_REGSTRQ+12]
push -1
push 3
push offset _Lt_012A
push -1
push 0
push dword ptr [ebp-44]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-40], 3
jne .L_0E13
push dword ptr [ebp-44]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-40], eax
.L_0E13:
jmp .L_0E0C
.L_0E0D:
or dword ptr [_CTX+128], 8
.L_0E0C:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 4
push offset _Lt_0CC5
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 13
push offset _Lt_0E15
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 13
push offset _Lt_0E17
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+16], 0
jne .L_0E1A
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E19
.L_0E1A:
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
.L_0E19:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0D1A
.L_0E09:
.L_0E08:
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
je .L_0E22
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
je .L_0E24
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
push offset _Lt_012A
push -1
push 0
mov ecx, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+ecx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ecx, [ebp-96]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0E24:
.L_0E23:
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
push offset _Lt_0C79
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_0E2C
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
.L_0E2C:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0D1A
.L_0E22:
.L_0E21:
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
je .L_0E2E
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0E30
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 4
push offset _Lt_0E31
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0129
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
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
push offset _Lt_0993
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 4
push offset _Lt_0B83
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
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
push offset _Lt_0E3A
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push 5
push offset _Lt_097D
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
jmp .L_0E2F
.L_0E30:
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
push offset _Lt_046A
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 11
push offset _Lt_0E44
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
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
push offset _Lt_0993
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 11
push offset _Lt_0E48
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
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
push offset _Lt_0E3A
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 12
push offset _Lt_0E4C
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+16], 0
jne .L_0E51
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E50
.L_0E51:
push 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
.L_0E50:
.L_0E2F:
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0D1A
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.L_0E2E:
.L_0E2D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0E59
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
push offset _Lt_0E5A
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E58
.L_0E59:
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
push offset _Lt_0E5D
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
.L_0E58:
cmp dword ptr [ebp+8], 60
jne .L_0E61
.L_0E62:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset _Lt_0E63
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E61:
cmp dword ptr [ebp+8], 58
jne .L_0E65
.L_0E66:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset _Lt_0E67
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E65:
cmp dword ptr [ebp+8], 69
jne .L_0E69
.L_0E6A:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset _Lt_0E6B
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E69:
cmp dword ptr [ebp+8], 68
jne .L_0E6D
.L_0E6E:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset _Lt_0E6F
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E6D:
cmp dword ptr [ebp+8], 61
jne .L_0E71
.L_0E72:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0E73
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E71:
cmp dword ptr [ebp+8], 59
jne .L_0E75
.L_0E76:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0E77
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E75:
cmp dword ptr [ebp+8], 62
jne .L_0E79
.L_0E7A:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 4
push offset _Lt_0E7B
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E79:
cmp dword ptr [ebp+8], 63
jne .L_0E7D
.L_0E7E:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0E7F
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E7D:
cmp dword ptr [ebp+8], 56
jne .L_0E81
.L_0E82:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 28
push offset _Lt_0E83
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset _Lt_0E85
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset _Lt_0E87
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 16
push offset _Lt_0E89
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
jmp .L_0E60
.L_0E81:
cmp dword ptr [ebp+8], 65
jne .L_0E8B
.L_0E8C:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 21
push offset _Lt_0E8D
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
jmp .L_0E60
.L_0E8B:
cmp dword ptr [ebp+8], 57
jne .L_0E8F
.L_0E90:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset _Lt_0E91
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E8F:
cmp dword ptr [ebp+8], 72
jne .L_0E93
.L_0E94:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 9
push offset _Lt_0E95
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E93:
cmp dword ptr [ebp+8], 71
jne .L_0E97
.L_0E98:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 13
push offset _Lt_0E99
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E97:
cmp dword ptr [ebp+8], 70
jne .L_0E9B
.L_0E9C:
push dword ptr [ebp-40]
push dword ptr [ebp+16]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 6
push offset _Lt_0E9D
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _SAVE_CALL
add esp, 12
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0E60
.L_0E9B:
cmp dword ptr [ebp+8], 54
jne .L_0E9F
.L_0EA0:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 28
push offset _Lt_0EA2
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 15
push offset _Lt_0E85
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 17
push offset _Lt_0EA5
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp+16]
call _RESTORE_VRREG
add esp, 8
jmp .L_0E60
.L_0E9F:
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 47
push offset _Lt_0EAA
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_0EA7:
.L_0E60:
cmp dword ptr [ebp+8], 57
jne .L_0EAE
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset _Lt_0E01
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+eax*4]
push 8
push offset _Lt_0EAF
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EAD
.L_0EAE:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [_REGSTRQ+eax*4]
push 6
push offset _Lt_07BD
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_0EAD:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0D1A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITROUNDFLOAT:
push ebp
mov ebp, esp
sub esp, 156
.L_0EB6:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov byte ptr [_CTX+152], 1
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 51
push offset _Lt_0EB8
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
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
push offset _Lt_0993
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+8], 16
jne .L_0EBD
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 20
push offset _Lt_0EBE
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+12], 14
je .L_0EC1
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 20
push offset _Lt_0EC2
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.L_0EC1:
.L_0EC0:
jmp .L_0EBC
.L_0EBD:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 20
push offset _Lt_0EC4
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+12], 14
je .L_0EC7
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 20
push offset _Lt_0EC8
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.L_0EC7:
.L_0EC6:
.L_0EBC:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_0112
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+8], 16
jne .L_0ECF
cmp dword ptr [ebp+12], 14
je .L_0ED1
push offset _Lt_01A9
call _NO_ROUNDSD
add esp, 4
jmp .L_0ED0
.L_0ED1:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 15
push offset _Lt_0ED2
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.L_0ED0:
jmp .L_0ECE
.L_0ECF:
cmp dword ptr [ebp+12], 14
je .L_0ED5
push offset _Lt_0ED6
call _NO_ROUNDSD
add esp, 4
jmp .L_0ED4
.L_0ED5:
push 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 16
push offset _Lt_0ED7
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.L_0ED4:
.L_0ECE:
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0EB7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 512
push ebx
.L_0EDB:
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
je .L_0EDE
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 44
push offset _Lt_0EE1
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
.L_0EDE:
.L_0EDD:
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
je .L_0EE5
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
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_0EE5:
.L_0EE4:
mov ebx, dword ptr [ebp-4]
and ebx, 480
test ebx, ebx
je .L_0EE7
mov dword ptr [ebp-4], 13
.L_0EE7:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .L_0EE9
mov dword ptr [ebp-8], 13
.L_0EE9:
cmp dword ptr [ebp-4], 8
jne .L_0EEB
mov dword ptr [ebp-4], 13
jmp .L_0EEA
.L_0EEB:
cmp dword ptr [ebp-4], 10
jne .L_0EEC
mov dword ptr [ebp-4], 13
jmp .L_0EEA
.L_0EEC:
cmp dword ptr [ebp-4], 9
jne .L_0EED
mov dword ptr [ebp-4], 14
.L_0EED:
.L_0EEA:
cmp dword ptr [ebp-8], 8
jne .L_0EEF
mov dword ptr [ebp-8], 13
jmp .L_0EEE
.L_0EEF:
cmp dword ptr [ebp-8], 10
jne .L_0EF0
mov dword ptr [ebp-8], 13
jmp .L_0EEE
.L_0EF0:
cmp dword ptr [ebp-8], 9
jne .L_0EF1
mov dword ptr [ebp-8], 14
.L_0EF1:
.L_0EEE:
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
je .L_0EF2
mov dword ptr [ebp-136], 24
jmp .L_1CA3
.L_0EF2:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-136], eax
.L_1CA3:
mov eax, dword ptr [ebp-136]
imul eax, 28
mov dword ptr [ebp-180], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0EF4
mov dword ptr [ebp-140], 24
jmp .L_1CA4
.L_0EF4:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-140], eax
.L_1CA4:
mov eax, dword ptr [ebp-140]
imul eax, 28
mov ecx, dword ptr [ebp-180]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, dword ptr [_SYMB_DTYPETB+ecx+4]
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-176]
mov dword ptr [ebp-184], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .L_0EF6
mov dword ptr [ebp-144], 24
jmp .L_1CA5
.L_0EF6:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-144], ebx
.L_1CA5:
mov ebx, dword ptr [ebp-144]
imul ebx, 28
mov dword ptr [ebp-188], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_0EF8
mov dword ptr [ebp-148], 24
jmp .L_1CA6
.L_0EF8:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-148], ebx
.L_1CA6:
mov ebx, dword ptr [ebp-148]
imul ebx, 28
mov ecx, dword ptr [ebp-188]
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
cmp eax, dword ptr [_SYMB_DTYPETB+ecx]
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-184]
je .L_0EFB
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ecx+12], ebx
lea ebx, [ebp-120]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_0EFB:
.L_0EFA:
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
je .L_0EFD
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
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-108]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-96]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-84]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-72]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-60]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-48]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-36]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-24]
push ecx
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_0EFD:
.L_0EFC:
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
je .L_0EFF
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
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_0EFF:
.L_0EFE:
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
je .L_0F01
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
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-108]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-96]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-84]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-72]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-60]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-48]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-36]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-24]
push ecx
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_0F01:
.L_0F00:
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
je .L_0F03
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
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-108]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-96]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-84]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-72]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-48]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_0F03:
.L_0F02:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _REG_FINDFREE
add esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-4], 17
jne .L_0F05
mov dword ptr [ebp-4], 13
.L_0F05:
cmp dword ptr [ebp-4], 13
je .L_0F08
.L_0F09:
cmp dword ptr [ebp-4], 14
je .L_0F08
.L_0F0A:
cmp dword ptr [ebp-4], 16
je .L_0F08
.L_0F0B:
cmp dword ptr [ebp-4], 20
jne .L_0F07
.L_0F08:
push 0
push 11
push offset _Lt_09FA
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F06
.L_0F07:
cmp dword ptr [ebp-4], 11
je .L_0F0D
.L_0F0E:
cmp dword ptr [ebp-4], 12
je .L_0F0D
.L_0F0F:
cmp dword ptr [ebp-4], 15
jne .L_0F0C
.L_0F0D:
push 0
push 11
push offset _Lt_09FF
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F06
.L_0F0C:
cmp dword ptr [ebp-4], 5
je .L_0F11
.L_0F12:
cmp dword ptr [ebp-4], 6
jne .L_0F10
.L_0F11:
push 0
push 10
push offset _Lt_0A03
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F06
.L_0F10:
cmp dword ptr [ebp-4], 2
je .L_0F14
.L_0F15:
cmp dword ptr [ebp-4], 3
je .L_0F14
.L_0F16:
cmp dword ptr [ebp-4], 1
je .L_0F14
.L_0F17:
cmp dword ptr [ebp-4], 4
jne .L_0F13
.L_0F14:
push 0
push 10
push offset _Lt_0A09
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp-124]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F06
.L_0F13:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_0F1C
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
.L_0F18:
.L_0F06:
cmp dword ptr [ebp-8], 13
je .L_0F22
.L_0F23:
cmp dword ptr [ebp-8], 14
je .L_0F22
.L_0F24:
cmp dword ptr [ebp-8], 16
je .L_0F22
.L_0F25:
cmp dword ptr [ebp-8], 20
jne .L_0F21
.L_0F22:
push 0
push 11
push offset _Lt_09FA
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F20
.L_0F21:
cmp dword ptr [ebp-8], 11
je .L_0F27
.L_0F28:
cmp dword ptr [ebp-8], 12
je .L_0F27
.L_0F29:
cmp dword ptr [ebp-8], 15
jne .L_0F26
.L_0F27:
push 0
push 11
push offset _Lt_09FF
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F20
.L_0F26:
cmp dword ptr [ebp-8], 5
je .L_0F2B
.L_0F2C:
cmp dword ptr [ebp-8], 6
jne .L_0F2A
.L_0F2B:
push 0
push 10
push offset _Lt_0A03
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F20
.L_0F2A:
cmp dword ptr [ebp-8], 2
je .L_0F2E
.L_0F2F:
cmp dword ptr [ebp-8], 3
je .L_0F2E
.L_0F30:
cmp dword ptr [ebp-8], 1
je .L_0F2E
.L_0F31:
cmp dword ptr [ebp-8], 4
jne .L_0F2D
.L_0F2E:
push 0
push 10
push offset _Lt_0A09
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F20
.L_0F2D:
cmp dword ptr [ebp-8], 7
jne .L_0F32
.L_0F33:
cmp dword ptr [_SYMB_DTYPETB+200], 2
jne .L_0F35
push 0
push 10
push offset _Lt_0A03
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 6
jmp .L_0F34
.L_0F35:
cmp dword ptr [_SYMB_DTYPETB+200], 4
jne .L_0F36
push 0
push 11
push offset _Lt_09FF
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 12
jmp .L_0F34
.L_0F36:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 55
push offset _Lt_0F39
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
.L_0F34:
jmp .L_0F20
.L_0F32:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_0F40
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
.L_0F3C:
.L_0F20:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-176], ebx
cmp dword ptr [ebp-176], 2
jne .L_0F46
.L_0F47:
lea ebx, [ebp-96]
push ebx
lea ebx, [ebp-72]
push ebx
push dword ptr [ebp+12]
call _PREPARE_IDX
add esp, 12
jmp .L_0F44
.L_0F46:
cmp dword ptr [ebp-176], 4
jne .L_0F48
.L_0F49:
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-120]
push ebx
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-128], eax
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
je .L_0F4B
mov dword ptr [ebp-8], 13
.L_0F4B:
cmp dword ptr [ebp-8], 13
je .L_0F4E
.L_0F4F:
cmp dword ptr [ebp-8], 14
je .L_0F4E
.L_0F50:
cmp dword ptr [ebp-8], 16
jne .L_0F4D
.L_0F4E:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F4C
.L_0F4D:
cmp dword ptr [ebp-8], 11
je .L_0F52
.L_0F53:
cmp dword ptr [ebp-8], 12
je .L_0F52
.L_0F54:
cmp dword ptr [ebp-8], 15
jne .L_0F51
.L_0F52:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F4C
.L_0F51:
cmp dword ptr [ebp-8], 5
je .L_0F56
.L_0F57:
cmp dword ptr [ebp-8], 6
jne .L_0F55
.L_0F56:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F4C
.L_0F55:
cmp dword ptr [ebp-8], 2
je .L_0F59
.L_0F5A:
cmp dword ptr [ebp-8], 3
je .L_0F59
.L_0F5B:
cmp dword ptr [ebp-8], 1
je .L_0F59
.L_0F5C:
cmp dword ptr [ebp-8], 4
jne .L_0F58
.L_0F59:
push 0
push 0
mov eax, dword ptr [ebp-128]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F4C
.L_0F58:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_0F61
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.L_0F5D:
.L_0F4C:
jmp .L_0F44
.L_0F48:
cmp dword ptr [ebp-176], 1
jne .L_0F65
.L_0F66:
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
je .L_0F68
movzx ebx, byte ptr [_CTX+232]
neg ebx
cmp ebx, -1
jne .L_0F69
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-180], eax
jmp .L_1CAB
.L_0F69:
mov dword ptr [ebp-180], 0
.L_1CAB:
cmp dword ptr [ebp-180], 0
je .L_0F6C
push 0
push -1
push 15
push offset _Lt_0A50
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F6B
.L_0F6C:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
.L_0F6B:
jmp .L_0F67
.L_0F68:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
.L_0F67:
jmp .L_0F44
.L_0F65:
cmp dword ptr [ebp-176], 3
jne .L_0F72
.L_0F73:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F44
.L_0F72:
cmp dword ptr [ebp-176], 5
jne .L_0F77
.L_0F78:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
cmp ebx, 22
jne .L_0F7C
movzx ebx, byte ptr [_CTX+232]
neg ebx
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-216], ebx
jmp .L_1CAC
.L_0F7C:
mov dword ptr [ebp-216], 0
.L_1CAC:
cmp dword ptr [ebp-216], 0
je .L_0F7E
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-220], eax
jmp .L_1CAD
.L_0F7E:
mov dword ptr [ebp-220], 0
.L_1CAD:
cmp dword ptr [ebp-220], 0
je .L_0F81
push 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push -1
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-72]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-72]
push eax
call _fb_LEFT
add esp, 8
push eax
push 20
push offset _Lt_0F82
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
push 3
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
lea eax, [ebp-280]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-292]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-292]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0F80
.L_0F81:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-268]
push eax
call _fb_StrDelete
add esp, 4
.L_0F80:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
jmp .L_0F44
.L_0F77:
cmp dword ptr [ebp-176], 0
jne .L_0F8D
.L_0F8E:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0F8F
mov dword ptr [ebp-180], 24
jmp .L_1CAE
.L_0F8F:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-180], eax
.L_1CAE:
mov eax, dword ptr [ebp-180]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0F92
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0F91
.L_0F92:
push 0
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
.L_0F91:
jmp .L_0F44
.L_0F8D:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 29
push offset _Lt_0F96
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.L_0F93:
.L_0F44:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-96]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0F9A
lea eax, [ebp-96]
push eax
call _EMITOP3_OP4
add esp, 4
.L_0F9A:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_0F9B
mov dword ptr [ebp-152], 24
jmp .L_1CAF
.L_0F9B:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-152], eax
.L_1CAF:
mov eax, dword ptr [ebp-152]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0F9E
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0F9F
mov dword ptr [ebp-176], 24
jmp .L_1CB0
.L_0F9F:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-176], eax
.L_1CB0:
mov eax, dword ptr [ebp-176]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0FA2
cmp dword ptr [ebp-4], 16
jne .L_0FA4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0FA6
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
push offset _Lt_0DAC
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 5
push offset _Lt_0FA9
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
.L_0FA6:
.L_0FA5:
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
push offset _Lt_0FAA
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0FA3
.L_0FA4:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0FB1
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
push offset _Lt_0FB2
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 5
push offset _Lt_0FB5
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
.L_0FB1:
.L_0FB0:
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
push offset _Lt_0FB6
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
.L_0FA3:
jmp .L_0FA1
.L_0FA2:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 15
push offset _Lt_0FBC
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-8], 14
jne .L_0FBF
.L_0FC0:
cmp dword ptr [ebp-4], 16
jne .L_0FC2
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
push offset _Lt_046A
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 15
push offset _Lt_0FC5
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_0FC7
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 19
push offset _Lt_0FCA
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
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
push offset _Lt_0112
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call _fb_StrDelete
add esp, 4
push -1
push 999999
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
lea eax, [ebp-332]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-344]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call _fb_StrDelete
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
push offset _Lt_06CB
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-368]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push 11
push offset _Lt_0FD5
push -1
lea eax, [ebp-380]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-380]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-380]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-48]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
lea eax, [ebp-404]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-416]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-416]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-416]
push eax
call _fb_StrDelete
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
push offset _Lt_0FDA
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
lea eax, [ebp-428]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-440]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-440]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-440]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push 17
push offset _Lt_0FDD
push -1
lea eax, [ebp-452]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-476]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-476]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-476]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
lea eax, [ebp-488]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
lea eax, [ebp-500]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-512]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-512]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-512]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0FC1
.L_0FC2:
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
push offset _Lt_046A
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 14
push offset _Lt_0FE6
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_0FC7
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 20
push offset _Lt_0FEA
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
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
push offset _Lt_0112
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call _fb_StrDelete
add esp, 4
push -1
push 999999
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
lea eax, [ebp-332]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-344]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call _fb_StrDelete
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
push offset _Lt_06CB
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-368]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push 11
push offset _Lt_0FD5
push -1
lea eax, [ebp-380]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-380]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-380]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-48]
push eax
push 4
push offset _Lt_073B
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
lea eax, [ebp-404]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-416]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-416]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-416]
push eax
call _fb_StrDelete
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
push offset _Lt_0FF9
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
lea eax, [ebp-428]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-440]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-440]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-440]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push 17
push offset _Lt_0FFC
push -1
lea eax, [ebp-452]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-476]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-476]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-476]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
lea eax, [ebp-488]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
lea eax, [ebp-500]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-512]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-512]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-512]
push eax
call _fb_StrDelete
add esp, 4
.L_0FC1:
jmp .L_0FBE
.L_0FBF:
cmp dword ptr [ebp-8], 13
jne .L_1003
.L_1004:
cmp dword ptr [ebp-4], 16
jne .L_1006
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
push offset _Lt_0FDA
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1005
.L_1006:
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
push offset _Lt_0FF9
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
.L_1005:
jmp .L_0FBE
.L_1003:
cmp dword ptr [ebp-8], 11
je .L_1014
.L_1015:
cmp dword ptr [ebp-8], 12
jne .L_1013
.L_1014:
cmp dword ptr [ebp-4], 16
jne .L_1017
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
push offset _Lt_0FDA
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1016
.L_1017:
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
push offset _Lt_0FF9
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
.L_1016:
jmp .L_0FBE
.L_1013:
cmp dword ptr [ebp-8], 2
je .L_1025
.L_1026:
cmp dword ptr [ebp-8], 5
je .L_1025
.L_1027:
cmp dword ptr [ebp-8], 3
je .L_1025
.L_1028:
cmp dword ptr [ebp-8], 6
je .L_1025
.L_1029:
cmp dword ptr [ebp-8], 1
je .L_1025
.L_102A:
cmp dword ptr [ebp-8], 4
jne .L_1024
.L_1025:
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
je .L_102C
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
push offset _Lt_102D
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea ebx, [ebp-200]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_102B
.L_102C:
cmp dword ptr [ebp-8], 1
jne .L_1031
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 4
push offset _Lt_0E31
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset _Lt_0129
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 9
push offset _Lt_1036
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 7
push offset _Lt_1038
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push 14
push offset _Lt_103A
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_102B
.L_1031:
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
push offset _Lt_103C
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.L_102B:
cmp dword ptr [ebp-4], 16
jne .L_1041
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 19
push offset _Lt_1042
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1040
.L_1041:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 19
push offset _Lt_1047
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
lea eax, [ebp-60]
push eax
push 6
push offset _Lt_07B7
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
.L_1040:
jmp .L_0FBE
.L_1024:
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 52
push offset _Lt_104F
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.L_104C:
.L_0FBE:
.L_0FA1:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_0F9E:
.L_0F9D:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_1052
mov dword ptr [ebp-156], 24
jmp .L_1CB1
.L_1052:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-156], eax
.L_1CB1:
mov eax, dword ptr [ebp-156]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-176], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .L_1054
mov dword ptr [ebp-160], 24
jmp .L_1CB2
.L_1054:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-160], ebx
.L_1CB2:
mov ebx, dword ptr [ebp-160]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-176]
je .L_1057
cmp dword ptr [ebp-8], 16
jne .L_1059
cmp dword ptr [ebp-4], 14
jne .L_105B
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 29
push offset _Lt_105C
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 15
push offset _Lt_105E
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
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
push offset _Lt_046A
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 15
push offset _Lt_1062
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
push 14
push 16
call _HEMITROUNDFLOAT
add esp, 8
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 19
push offset _Lt_1064
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_1066
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 20
push offset _Lt_0EC2
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
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
push offset _Lt_0112
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push 17
push offset _Lt_106E
push -1
lea eax, [ebp-344]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
push 0
push 17
push offset _Lt_1070
push -1
lea eax, [ebp-356]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-356]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-356]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push 20
push offset _Lt_0EC2
push -1
lea eax, [ebp-368]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call _fb_StrDelete
add esp, 4
push -1
push 999999
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
push 0
push -1
push 23
push offset _Lt_1074
push -1
push -1
lea eax, [ebp-48]
push eax
push 8
push offset _Lt_1073
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-404]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-404]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-404]
push eax
call _fb_StrDelete
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
push offset _Lt_1078
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
lea eax, [ebp-416]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-428]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-428]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-428]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
lea eax, [ebp-440]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-452]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
lea eax, [ebp-476]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-488]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-488]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-488]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_105A
.L_105B:
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
je .L_1080
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_1082
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
push offset _Lt_0E5A
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1081
.L_1082:
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
push offset _Lt_0E5D
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
.L_1081:
push -2147483648
push 16
call _HEMITROUNDFLOAT
add esp, 8
cmp dword ptr [ebp-4], 13
jne .L_1088
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1087
.L_1088:
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
je .L_108C
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_0E01
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1087
.L_108C:
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
je .L_1090
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset _Lt_1091
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1087
.L_1090:
cmp dword ptr [ebp-4], 1
jne .L_1096
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 11
push offset _Lt_0E44
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 9
push offset _Lt_1036
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
.L_1096:
.L_1095:
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset _Lt_0C73
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.L_1087:
jmp .L_105A
.L_1080:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 44
push offset _Lt_109E
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.L_105A:
jmp .L_1058
.L_1059:
cmp dword ptr [ebp-4], 14
jne .L_10A2
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 20
push offset _Lt_10A3
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 15
push offset _Lt_105E
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
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
push offset _Lt_0B3D
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 15
push offset _Lt_10A8
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
push 14
push 15
call _HEMITROUNDFLOAT
add esp, 8
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 19
push offset _Lt_10AA
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_1066
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 20
push offset _Lt_0EC8
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
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
push offset _Lt_0112
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push 17
push offset _Lt_10B3
push -1
lea eax, [ebp-344]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-344]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-344]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
push 0
push 17
push offset _Lt_10B5
push -1
lea eax, [ebp-356]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-356]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-356]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push 20
push offset _Lt_0EC8
push -1
lea eax, [ebp-368]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-368]
push eax
call _fb_StrDelete
add esp, 4
push -1
push 999999
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-132], eax
push 0
push 0
mov eax, dword ptr [ebp-132]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-132]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
push 0
push -1
push 23
push offset _Lt_1074
push -1
push -1
lea eax, [ebp-48]
push eax
push 8
push offset _Lt_1073
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-404]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-404]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-404]
push eax
call _fb_StrDelete
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
push offset _Lt_1078
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
lea eax, [ebp-416]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-428]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-428]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-428]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
lea eax, [ebp-440]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-452]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-452]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-452]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
lea eax, [ebp-476]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-488]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-488]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-488]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_10A1
.L_10A2:
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
je .L_10C2
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_10C4
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
push offset _Lt_0DAC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_10C3
.L_10C4:
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
push offset _Lt_0DAF
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
.L_10C3:
push -2147483648
push 15
call _HEMITROUNDFLOAT
add esp, 8
cmp dword ptr [ebp-4], 13
jne .L_10CA
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_10C9
.L_10CA:
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
je .L_10CE
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 6
push offset _Lt_0E01
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_10C9
.L_10CE:
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
je .L_10D2
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset _Lt_1091
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea ebx, [ebp-188]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_10C9
.L_10D2:
cmp dword ptr [ebp-4], 1
jne .L_10D7
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 11
push offset _Lt_0E44
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 9
push offset _Lt_1036
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
.L_10D7:
.L_10D6:
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push offset _Lt_0C73
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.L_10C9:
jmp .L_10A1
.L_10C2:
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 44
push offset _Lt_10DF
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.L_10A1:
.L_1058:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_1057:
.L_1056:
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
je .L_10E3
cmp dword ptr [ebp-8], 20
jne .L_10E5
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
push offset _Lt_012A
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 5
push offset _Lt_017B
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea ebx, [ebp-184]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-4], 13
jne .L_10EB
push 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
push 14
push offset _Lt_10EC
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_10EA
.L_10EB:
cmp dword ptr [ebp-4], 20
je .L_10F2
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 62
push offset _Lt_10F5
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-244]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
.L_10F2:
.L_10EA:
jmp .L_10E4
.L_10E5:
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 53
push offset _Lt_10FA
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
.L_10E4:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_10E3:
.L_10E2:
cmp dword ptr [ebp-4], 1
jne .L_10FE
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_1100
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-72]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 19
push offset _Lt_1101
push -1
lea ebx, [ebp-72]
push ebx
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 11
push offset _Lt_1102
push -1
lea eax, [ebp-72]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_1104
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 4
push offset _Lt_0E31
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1103
.L_1104:
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 4
push offset _Lt_0B83
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
.L_1103:
jmp .L_10FF
.L_1100:
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 4
push offset _Lt_0E31
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset _Lt_0129
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 9
push offset _Lt_1036
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push -1
push 5
push offset _Lt_0C73
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-268]
push eax
call _fb_StrDelete
add esp, 4
.L_10FF:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_10FE:
.L_10FD:
cmp dword ptr [ebp-8], 1
jne .L_1114
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 4
push offset _Lt_0E31
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
push -1
lea eax, [ebp-120]
push eax
push 5
push offset _Lt_0129
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 9
push offset _Lt_1036
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 7
push offset _Lt_1038
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-244]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_111B
mov dword ptr [ebp-248], 24
jmp .L_1CB4
.L_111B:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-248], eax
.L_1CB4:
mov eax, dword ptr [ebp-248]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
jne .L_111E
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 5
push offset _Lt_0C73
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_111D
.L_111E:
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 5
push offset _Lt_0C73
push -1
push -1
lea eax, [ebp-60]
push eax
push 7
push offset _Lt_1122
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
.L_111D:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_1114:
.L_1113:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_1126
mov dword ptr [ebp-164], 24
jmp .L_1CB5
.L_1126:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-164], eax
.L_1CB5:
mov eax, dword ptr [ebp-164]
imul eax, 28
mov dword ptr [ebp-176], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_1128
mov dword ptr [ebp-168], 24
jmp .L_1CB6
.L_1128:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-168], eax
.L_1CB6:
mov eax, dword ptr [ebp-168]
imul eax, 28
mov ebx, dword ptr [ebp-176]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jg .L_112B
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 4
jne .L_112D
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-108]
push ecx
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-4], 11
je .L_1130
.L_1131:
cmp dword ptr [ebp-4], 12
je .L_1130
.L_1132:
cmp dword ptr [ebp-4], 15
jne .L_112F
.L_1130:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [_REGSTRD+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_112E
.L_112F:
cmp dword ptr [ebp-4], 5
je .L_1134
.L_1135:
cmp dword ptr [ebp-4], 6
jne .L_1133
.L_1134:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [_REGSTRW+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_112E
.L_1133:
cmp dword ptr [ebp-4], 2
je .L_1137
.L_1138:
cmp dword ptr [ebp-4], 3
je .L_1137
.L_1139:
cmp dword ptr [ebp-4], 4
jne .L_1136
.L_1137:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [_REGSTRB+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_112E
.L_1136:
cmp dword ptr [ebp-4], 1
jne .L_113A
.L_113B:
jmp .L_112E
.L_113A:
cmp dword ptr [ebp-4], 13
je .L_113D
.L_113E:
cmp dword ptr [ebp-4], 14
je .L_113D
.L_113F:
cmp dword ptr [ebp-4], 16
jne .L_113C
.L_113D:
push 0
push 0
mov ecx, dword ptr [ebp-128]
push dword ptr [_REGSTRQ+ecx*4]
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_112E
.L_113C:
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-248]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-248]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-248]
push ecx
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_0F61
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
.L_1140:
.L_112E:
.L_112D:
.L_112C:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0EDC
.L_112B:
.L_112A:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_114A
mov dword ptr [ebp-172], 24
jmp .L_1CB8
.L_114A:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-172], eax
.L_1CB8:
mov eax, dword ptr [ebp-172]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_114D
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_114E
mov dword ptr [ebp-176], 24
jmp .L_1CB9
.L_114E:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-176], eax
.L_1CB9:
mov eax, dword ptr [ebp-176]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-180], ecx
cmp dword ptr [ebp-180], 1
je .L_1153
.L_1154:
cmp dword ptr [ebp-180], 2
jne .L_1152
.L_1153:
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
push offset _Lt_012A
push -1
push -1
lea ecx, [ebp-60]
push ecx
push 7
push offset _Lt_1122
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1150
.L_1152:
cmp dword ptr [ebp-180], 4
jne .L_115A
.L_115B:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-60]
push eax
push 8
push offset _Lt_0EAF
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1150
.L_115A:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 46
push offset _Lt_1164
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
.L_1161:
.L_1150:
jmp .L_114C
.L_114D:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_1167
mov dword ptr [ebp-176], 24
jmp .L_1CBA
.L_1167:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-176], eax
.L_1CBA:
mov eax, dword ptr [ebp-176]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-180], ecx
cmp dword ptr [ebp-180], 1
je .L_116C
.L_116D:
cmp dword ptr [ebp-180], 2
jne .L_116B
.L_116C:
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
push offset _Lt_012A
push -1
push -1
lea ecx, [ebp-60]
push ecx
push 7
push offset _Lt_071E
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ecx, [ebp-192]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1169
.L_116B:
cmp dword ptr [ebp-180], 4
jne .L_1173
.L_1174:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_1176
mov eax, dword ptr [ebp-124]
mov dword ptr [_REGHANDLE+eax*4], -2
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ecx+12], ebx
jmp .L_1175
.L_1176:
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
push offset _Lt_012A
push -1
push 0
mov ebx, dword ptr [ebp-124]
push dword ptr [_REGSTRD+ebx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea ebx, [ebp-192]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
.L_1175:
jmp .L_1169
.L_1173:
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 46
push offset _Lt_117E
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
.L_117B:
.L_1169:
.L_114C:
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0EDC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTORESTRUCT:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_1181:
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
push offset _Lt_0000
push -1
push dword ptr [ebp+20]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_1184
push dword ptr [ebp+20]
call _EMITOP3_OP4
add esp, 4
.L_1184:
cmp dword ptr [ebp-24], 2
jne .L_1186
.L_1187:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
push dword ptr [ebp+16]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1185
.L_1186:
cmp dword ptr [ebp-24], 3
jne .L_118B
.L_118C:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
push dword ptr [ebp+16]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 15
push offset _Lt_1190
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1185
.L_118B:
cmp dword ptr [ebp-24], 6
jne .L_1192
.L_1193:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
push dword ptr [ebp+16]
push 6
push offset _Lt_07BD
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 15
push offset _Lt_1197
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1185
.L_1192:
cmp dword ptr [ebp-24], 5
jne .L_1199
.L_119A:
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_09D2
push -1
push -1
push dword ptr [ebp+16]
push 6
push offset _Lt_07BD
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 14
push offset _Lt_119E
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.L_1199:
.L_11A0:
.L_1185:
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
je .L_11A2
push 0
push -1
push 6
push offset _Lt_0421
push -1
push 5
push offset _Lt_0421
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push dword ptr [ebp+16]
call _fb_LEFT
add esp, 8
push eax
call _fb_VALINT
add esp, 4
add eax, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-124], eax
jmp .L_11A5
.L_11A7:
push 0
push 3
push offset _Lt_00D9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11A4
.L_11A8:
push 0
push 3
push offset _Lt_00C7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11A4
.L_11A9:
push 0
push 4
push offset _Lt_00B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11A4
.L_11AA:
push 0
push 4
push offset _Lt_00A2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11A4
.L_11A5:
mov eax, dword ptr [ebp-124]
add eax, 4294967287
cmp eax, 7
ja .L_11A4
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.L_11AB+eax*4-36]
_.L_11AB:
.int .L_11A7
.int .L_11A8
.int .L_11A4
.int .L_11A9
.int .L_11A4
.int .L_11A4
.int .L_11A4
.int .L_11AA
.L_11A4:
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
push offset _Lt_012A
push -1
push -1
push dword ptr [ebp+16]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1182
.L_11A2:
.L_11A1:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
push 10
push offset _Lt_0712
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 11
push offset _Lt_0715
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-64], eax
jmp .L_11B4
.L_11B6:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 14
push offset _Lt_11B7
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11B9:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 14
push offset _Lt_11BA
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11BC:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 14
push offset _Lt_11BA
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset _Lt_11BE
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset _Lt_11C0
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11C2:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset _Lt_11C3
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11C5:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset _Lt_11C3
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset _Lt_11C7
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset _Lt_11C9
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11CB:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset _Lt_11C3
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset _Lt_11C7
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset _Lt_11CE
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11D0:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset _Lt_11C3
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 11
push offset _Lt_11C7
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 16
push offset _Lt_11CE
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 11
push offset _Lt_11BE
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 16
push offset _Lt_11D5
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11D7:
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 15
push offset _Lt_11D8
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_11B3
.L_11B4:
mov eax, dword ptr [ebp-64]
add eax, 4294967287
cmp eax, 7
ja .L_11B3
mov eax, dword ptr [ebp-64]
jmp dword ptr [_.L_11DA+eax*4-36]
_.L_11DA:
.int .L_11B6
.int .L_11B9
.int .L_11BC
.int .L_11C2
.int .L_11C5
.int .L_11CB
.int .L_11D0
.int .L_11D7
.L_11B3:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_1182:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HISSTRUCTIN2REGS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_11DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_11DE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+128]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_11DC
.L_11DE:
.L_11DD:
mov dword ptr [ebp-4], 0
.L_11DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORE:
push ebp
mov ebp, esp
sub esp, 260
push ebx
push esi
.L_11DF:
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
je .L_11E1
mov dword ptr [ebp-108], 24
jmp .L_1CFB
.L_11E1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-108], eax
.L_1CFB:
mov eax, dword ptr [ebp-108]
imul eax, 28
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_11E3
mov dword ptr [ebp-112], 24
jmp .L_1CFC
.L_11E3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-112], eax
.L_1CFC:
mov eax, dword ptr [ebp-112]
imul eax, 28
mov ebx, dword ptr [ebp-116]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jge .L_11E6
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
call _IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-120], eax
push dword ptr [ebp+12]
push dword ptr [ebp-120]
call __EMITCONVERT
add esp, 8
push edi
mov edi, dword ptr [ebp+12]
mov esi, dword ptr [ebp-120]
mov ecx, 17
rep movsd
pop edi
.L_11E6:
.L_11E5:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-116], ecx
cmp dword ptr [ebp-116], 2
jne .L_11E9
.L_11EA:
lea ecx, [ebp-36]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call _PREPARE_IDX
add esp, 12
jmp .L_11E7
.L_11E9:
cmp dword ptr [ebp-116], 4
jne .L_11EB
.L_11EC:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .L_11EE
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-128]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-128]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-128]
push ecx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 96
push offset _Lt_11F1
push -1
lea ecx, [ebp-140]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-140]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-140]
push ecx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-152]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-152]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-152]
push ecx
call _fb_StrDelete
add esp, 4
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+28], 0
mov eax, -1
jg .L_1D09
jl .L_1D0A
cmp dword ptr [ecx+24], 0
jae .L_1D09
.L_1D0A:
xor eax, eax
.L_1D09:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+28], 0
mov ebx, -1
jl .L_1D0B
jg .L_1D0C
cmp dword ptr [ecx+24], 2147483647
jbe .L_1D0B
.L_1D0C:
xor ebx, ebx
.L_1D0B:
and eax, ebx
je .L_11F5
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11F4
.L_11F5:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_11F4:
jmp .L_11ED
.L_11EE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-104], ebx
mov ebx, dword ptr [ebp-104]
and ebx, 480
test ebx, ebx
je .L_11F7
mov dword ptr [ebp-104], 8
.L_11F7:
cmp dword ptr [ebp-104], 8
je .L_11FA
.L_11FB:
cmp dword ptr [ebp-104], 9
je .L_11FA
.L_11FC:
cmp dword ptr [ebp-104], 13
je .L_11FA
.L_11FD:
cmp dword ptr [ebp-104], 14
je .L_11FA
.L_11FE:
cmp dword ptr [ebp-104], 16
je .L_11FA
.L_11FF:
cmp dword ptr [ebp-104], 10
jne .L_11F9
.L_11FA:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11F8
.L_11F9:
cmp dword ptr [ebp-104], 11
je .L_1201
.L_1202:
cmp dword ptr [ebp-104], 12
je .L_1201
.L_1203:
cmp dword ptr [ebp-104], 15
jne .L_1200
.L_1201:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11F8
.L_1200:
cmp dword ptr [ebp-104], 5
je .L_1205
.L_1206:
cmp dword ptr [ebp-104], 6
jne .L_1204
.L_1205:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11F8
.L_1204:
cmp dword ptr [ebp-104], 2
je .L_1208
.L_1209:
cmp dword ptr [ebp-104], 3
je .L_1208
.L_120A:
cmp dword ptr [ebp-104], 1
je .L_1208
.L_120B:
cmp dword ptr [ebp-104], 4
jne .L_1207
.L_1208:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11F8
.L_1207:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 52
push offset _Lt_1210
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.L_120C:
.L_11F8:
.L_11ED:
jmp .L_11E7
.L_11EB:
cmp dword ptr [ebp-116], 1
jne .L_1214
.L_1215:
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
je .L_1217
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1216
.L_1217:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_1216:
jmp .L_11E7
.L_1214:
cmp dword ptr [ebp-116], 3
jne .L_121C
.L_121D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_1D0F
cmp dword ptr [eax+36], 0
je .L_121F
.L_1D0F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
jne .L_1221
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 4294967295
mov ebx, -1
jl .L_1D10
jg .L_1D11
cmp dword ptr [eax+36], 2147483648
jb .L_1D10
.L_1D11:
xor ebx, ebx
.L_1D10:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
mov ecx, -1
jg .L_1D12
jl .L_1D13
cmp dword ptr [eax+36], 4294967295
ja .L_1D12
.L_1D13:
xor ecx, ecx
.L_1D12:
or ebx, ecx
je .L_1223
push 0
push -1
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1222
.L_1223:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_0B3D
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.L_1222:
push 0
push 6
push offset _Lt_0717
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1220
.L_1221:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_1220:
jmp .L_121E
.L_121F:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 2
push offset _Lt_0135
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_121E:
jmp .L_11E7
.L_121C:
cmp dword ptr [ebp-116], 5
jne .L_122B
.L_122C:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_11E7
.L_122B:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 26
push offset _Lt_1233
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
.L_1230:
.L_11E7:
push dword ptr [ebp+12]
call _HISSTRUCTIN2REGS
add esp, 4
test eax, eax
je .L_1237
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+12]
and eax, 16
je .L_1239
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
mov esi, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
mov dword ptr [ebx+48], esi
mov dword ptr [ebx+52], ecx
jmp .L_1238
.L_1239:
lea esi, [ebp-36]
push esi
lea esi, [ebp-12]
push esi
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITSTORESTRUCT
add esp, 16
.L_1238:
lea esi, [ebp-96]
push esi
call _fb_StrDelete
add esp, 4
lea esi, [ebp-84]
push esi
call _fb_StrDelete
add esp, 4
lea esi, [ebp-72]
push esi
call _fb_StrDelete
add esp, 4
lea esi, [ebp-60]
push esi
call _fb_StrDelete
add esp, 4
lea esi, [ebp-48]
push esi
call _fb_StrDelete
add esp, 4
lea esi, [ebp-36]
push esi
call _fb_StrDelete
add esp, 4
lea esi, [ebp-24]
push esi
call _fb_StrDelete
add esp, 4
lea esi, [ebp-12]
push esi
call _fb_StrDelete
add esp, 4
jmp .L_11E0
.L_1237:
.L_1236:
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi]
mov dword ptr [ebp-116], ecx
cmp dword ptr [ebp-116], 2
jne .L_123C
.L_123D:
lea ecx, [ebp-48]
push ecx
lea ecx, [ebp-24]
push ecx
push dword ptr [ebp+12]
call _PREPARE_IDX
add esp, 12
jmp .L_123A
.L_123C:
cmp dword ptr [ebp-116], 4
jne .L_123E
.L_123F:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+4]
and esi, 511
mov dword ptr [ebp-104], esi
mov esi, dword ptr [ebp-104]
and esi, 480
test esi, esi
je .L_1241
mov dword ptr [ebp-104], 8
.L_1241:
cmp dword ptr [ebp-104], 8
je .L_1244
.L_1245:
cmp dword ptr [ebp-104], 9
je .L_1244
.L_1246:
cmp dword ptr [ebp-104], 13
je .L_1244
.L_1247:
cmp dword ptr [ebp-104], 14
je .L_1244
.L_1248:
cmp dword ptr [ebp-104], 16
je .L_1244
.L_1249:
cmp dword ptr [ebp-104], 10
jne .L_1243
.L_1244:
push 0
push 0
mov esi, dword ptr [ebp+12]
push dword ptr [esi+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1242
.L_1243:
cmp dword ptr [ebp-104], 11
je .L_124B
.L_124C:
cmp dword ptr [ebp-104], 12
je .L_124B
.L_124D:
cmp dword ptr [ebp-104], 15
jne .L_124A
.L_124B:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1242
.L_124A:
cmp dword ptr [ebp-104], 5
je .L_124F
.L_1250:
cmp dword ptr [ebp-104], 6
jne .L_124E
.L_124F:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1242
.L_124E:
cmp dword ptr [ebp-104], 2
je .L_1252
.L_1253:
cmp dword ptr [ebp-104], 3
je .L_1252
.L_1254:
cmp dword ptr [ebp-104], 1
je .L_1252
.L_1255:
cmp dword ptr [ebp-104], 4
jne .L_1251
.L_1252:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1242
.L_1251:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 52
push offset _Lt_125A
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.L_1256:
.L_1242:
jmp .L_123A
.L_123E:
cmp dword ptr [ebp-116], 1
jne .L_125E
.L_125F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
je .L_1260
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
jmp .L_1CFE
.L_1260:
mov dword ptr [ebp-120], 0
.L_1CFE:
cmp dword ptr [ebp-120], 0
je .L_1263
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1262
.L_1263:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_1262:
jmp .L_123A
.L_125E:
cmp dword ptr [ebp-116], 3
jne .L_1268
.L_1269:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+48], 0
je .L_126B
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+48]
push dword ptr [esi+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_126A
.L_126B:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push 2
push offset _Lt_0135
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_126A:
jmp .L_123A
.L_1268:
cmp dword ptr [ebp-116], 5
jne .L_1271
.L_1272:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_123A
.L_1271:
cmp dword ptr [ebp-116], 0
jne .L_1276
.L_1277:
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
jne .L_1D18
cmp dword ptr [eax+24], 0
jne .L_1D18
.L_1D19:
xor ecx, ecx
.L_1D18:
and esi, ecx
je .L_1279
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], 1
mov dword ptr [ecx+28], 0
.L_1279:
.L_1278:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+4]
and esi, 480
je .L_127A
mov dword ptr [ebp-120], 24
jmp .L_1CFF
.L_127A:
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-120], ecx
.L_1CFF:
mov ecx, dword ptr [ebp-120]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 1
jne .L_127D
push 0
push -1
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+4]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call _HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_127C
.L_127D:
push 0
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_127C:
jmp .L_123A
.L_1276:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 29
push offset _Lt_0F96
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
.L_127E:
.L_123A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-104], ecx
mov ecx, dword ptr [ebp-104]
and ecx, 480
test ecx, ecx
je .L_1283
mov dword ptr [ebp-104], 8
.L_1283:
cmp dword ptr [ebp-104], 8
je .L_1286
.L_1287:
cmp dword ptr [ebp-104], 9
je .L_1286
.L_1288:
cmp dword ptr [ebp-104], 13
je .L_1286
.L_1289:
cmp dword ptr [ebp-104], 14
je .L_1286
.L_128A:
cmp dword ptr [ebp-104], 16
je .L_1286
.L_128B:
cmp dword ptr [ebp-104], 10
jne .L_1285
.L_1286:
push 0
push 11
push offset _Lt_09FA
push -1
lea ecx, [ebp-60]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 10
push offset _Lt_046A
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 6
push offset _Lt_073C
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_1284
.L_1285:
cmp dword ptr [ebp-104], 11
je .L_128D
.L_128E:
cmp dword ptr [ebp-104], 12
je .L_128D
.L_128F:
cmp dword ptr [ebp-104], 15
jne .L_128C
.L_128D:
push 0
push 11
push offset _Lt_09FF
push -1
lea ecx, [ebp-60]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 10
push offset _Lt_0B3D
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 6
push offset _Lt_0E01
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_1284
.L_128C:
cmp dword ptr [ebp-104], 5
je .L_1291
.L_1292:
cmp dword ptr [ebp-104], 6
jne .L_1290
.L_1291:
push 0
push 10
push offset _Lt_0A03
push -1
lea ecx, [ebp-60]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 12
push offset _Lt_103C
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_1091
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_1284
.L_1290:
cmp dword ptr [ebp-104], 2
je .L_1294
.L_1295:
cmp dword ptr [ebp-104], 3
je .L_1294
.L_1296:
cmp dword ptr [ebp-104], 1
je .L_1294
.L_1297:
cmp dword ptr [ebp-104], 4
jne .L_1293
.L_1294:
push 0
push 10
push offset _Lt_0A09
push -1
lea ecx, [ebp-60]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 9
push offset _Lt_1298
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_0C73
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_1284
.L_1293:
cmp dword ptr [ebp-104], 7
jne .L_1299
.L_129A:
cmp dword ptr [_SYMB_DTYPETB+200], 2
jne .L_129C
push 0
push 10
push offset _Lt_0A03
push -1
lea ecx, [ebp-60]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 12
push offset _Lt_103C
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_1091
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_129B
.L_129C:
cmp dword ptr [_SYMB_DTYPETB+200], 4
jne .L_129D
push 0
push 11
push offset _Lt_09FF
push -1
lea ecx, [ebp-60]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 10
push offset _Lt_0B3D
push -1
lea ecx, [ebp-72]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push 6
push offset _Lt_0E01
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
jmp .L_129B
.L_129D:
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-124]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-124]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-124]
push ecx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 54
push offset _Lt_12A0
push -1
lea ecx, [ebp-136]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-136]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-136]
push ecx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-148]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-148]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-148]
push ecx
call _fb_StrDelete
add esp, 4
.L_129B:
jmp .L_1284
.L_1299:
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-124]
push ecx
call _fb_StrAssign
add esp, 20
lea ecx, [ebp-124]
push ecx
call _HWRITEASM64
add esp, 8
lea ecx, [ebp-124]
push ecx
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
push dword ptr [ebp-104]
call _fb_IntToStr
add esp, 4
push eax
push 53
push offset _Lt_12A7
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
.L_12A3:
.L_1284:
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
je .L_12AC
movzx esi, byte ptr [_CTX+232]
neg esi
cmp esi, -1
jne .L_12AD
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
jmp .L_1D00
.L_12AD:
mov dword ptr [ebp-116], 0
.L_1D00:
cmp dword ptr [ebp-116], 0
je .L_12B0
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+32]
mov eax, dword ptr [esi+4]
and eax, 8
test eax, eax
je .L_12B2
push -1
push 999998
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-100], eax
push 0
push 0
mov eax, dword ptr [ebp-100]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-100]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 2
push offset _Lt_0135
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-96]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_12B2:
.L_12B1:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+32]
mov eax, dword ptr [esi+4]
and eax, 8
test eax, eax
je .L_12B9
push 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 6
push offset _Lt_0717
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_12B9:
.L_12B8:
.L_12B0:
.L_12AF:
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
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
push offset _Lt_03ED
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12AB
.L_12AC:
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
je .L_12C4
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-48]
push ecx
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12C6
lea eax, [ebp-48]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12C6:
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12CB
lea eax, [ebp-36]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12CB:
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
push offset _Lt_03ED
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12AB
.L_12C4:
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
je .L_12D0
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
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
push offset _Lt_03ED
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12AB
.L_12D0:
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
je .L_12D8
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12DA
lea eax, [ebp-48]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12DA:
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12DF
lea eax, [ebp-36]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12DF:
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
push offset _Lt_03ED
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12AB
.L_12D8:
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
je .L_12E4
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12E6
lea eax, [ebp-48]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12E6:
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12EB
lea eax, [ebp-36]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12EB:
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
push offset _Lt_03ED
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12AB
.L_12E4:
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
je .L_12F0
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-148]
push eax
call _fb_StrDelete
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
push offset _Lt_03ED
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12AB
.L_12F0:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12F9
lea eax, [ebp-36]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12F9:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_12FB
lea eax, [ebp-48]
push eax
call _EMITOP3_OP4
add esp, 4
.L_12FB:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_12FD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-116], ebx
cmp dword ptr [ebp-116], 4
jne .L_1300
.L_1301:
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
push offset _Lt_012A
push -1
push -1
lea ebx, [ebp-12]
push ebx
push -1
push -1
lea ebx, [ebp-60]
push ebx
push 13
push offset _Lt_1302
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea ebx, [ebp-128]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12FE
.L_1300:
cmp dword ptr [ebp-116], 1
je .L_1309
.L_130A:
cmp dword ptr [ebp-116], 2
je .L_1309
.L_130B:
cmp dword ptr [ebp-116], 3
jne .L_1308
.L_1309:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_130C
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-120], eax
jmp .L_1D01
.L_130C:
mov dword ptr [ebp-120], 0
.L_1D01:
cmp dword ptr [ebp-120], 0
je .L_130F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_1310
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
jmp .L_1D02
.L_1310:
mov dword ptr [ebp-124], 0
.L_1D02:
cmp dword ptr [ebp-124], 0
je .L_1313
push -1
push 999998
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-100], eax
push 0
push 0
mov eax, dword ptr [ebp-100]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-100]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 2
push offset _Lt_0135
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-96]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_1313:
.L_1312:
.L_130F:
.L_130E:
cmp dword ptr [ebp-104], 15
jne .L_131A
.L_131B:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1319
.L_131A:
cmp dword ptr [ebp-104], 16
jne .L_1321
.L_1322:
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
push offset _Lt_046A
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1319
.L_1321:
cmp dword ptr [ebp-104], 8
je .L_132A
.L_132B:
cmp dword ptr [ebp-104], 9
je .L_132A
.L_132C:
cmp dword ptr [ebp-104], 13
je .L_132A
.L_132D:
cmp dword ptr [ebp-104], 14
je .L_132A
.L_132E:
cmp dword ptr [ebp-104], 10
jne .L_1329
.L_132A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 4294967295
mov ebx, -1
jl .L_1D2F
jg .L_1D30
cmp dword ptr [eax+24], 2147483648
jb .L_1D2F
.L_1D30:
xor ebx, ebx
.L_1D2F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jg .L_1D31
jl .L_1D32
cmp dword ptr [eax+24], 4294967295
ja .L_1D31
.L_1D32:
xor ecx, ecx
.L_1D31:
or ebx, ecx
je .L_1330
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
push offset _Lt_046A
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea ecx, [ebp-132]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_132F
.L_1330:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jl .L_1337
jg .L_1D33
cmp dword ptr [eax+24], 2147483648
jb .L_1337
.L_1D33:
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
push offset _Lt_0B3D
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_132F
.L_1337:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_132F:
jmp .L_1319
.L_1329:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
lea eax, [ebp-60]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_1343:
.L_1319:
jmp .L_12FE
.L_1308:
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 50
push offset _Lt_134C
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
.L_1349:
.L_12FE:
jmp .L_12FC
.L_12FD:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_134F
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 31
cmp ecx, 22
jne .L_1350
movzx ecx, byte ptr [_CTX+232]
neg ecx
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-116], ecx
jmp .L_1D03
.L_1350:
mov dword ptr [ebp-116], 0
.L_1D03:
cmp dword ptr [ebp-116], 0
je .L_1352
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-120], eax
jmp .L_1D04
.L_1352:
mov dword ptr [ebp-120], 0
.L_1D04:
cmp dword ptr [ebp-120], 0
je .L_1355
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push -1
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-24]
push eax
call _fb_LEFT
add esp, 8
push eax
push 20
push offset _Lt_0F82
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1354
.L_1355:
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
push offset _Lt_0712
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
.L_1354:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_135B
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
jmp .L_1D05
.L_135B:
mov dword ptr [ebp-124], 0
.L_1D05:
cmp dword ptr [ebp-124], 0
je .L_135E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_135F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-164], eax
jmp .L_1D06
.L_135F:
mov dword ptr [ebp-164], 0
.L_1D06:
cmp dword ptr [ebp-164], 0
je .L_1362
push -1
push 999998
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-100], eax
push 0
push 0
mov eax, dword ptr [ebp-100]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-100]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-96]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 2
push offset _Lt_0135
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-96]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_1362:
.L_1361:
.L_135E:
.L_135D:
push 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_12FC
.L_134F:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_136B
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
jmp .L_1D07
.L_136B:
mov dword ptr [ebp-116], 0
.L_1D07:
cmp dword ptr [ebp-116], 0
je .L_136E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_136F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-168], eax
jmp .L_1D08
.L_136F:
mov dword ptr [ebp-168], 0
.L_1D08:
cmp dword ptr [ebp-168], 0
je .L_1372
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 6
push offset _Lt_0717
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_1372:
.L_1371:
.L_136E:
.L_136D:
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.L_12FC:
.L_12AB:
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_11E0:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADRES:
push ebp
mov ebp, esp
sub esp, 136
push ebx
.L_137A:
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
jne .L_137E
.L_137F:
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _PREPARE_IDX
add esp, 12
jmp .L_137C
.L_137E:
cmp dword ptr [ebp-48], 1
jne .L_1380
.L_1381:
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
je .L_1383
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1382
.L_1383:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_1382:
jmp .L_137C
.L_1380:
cmp dword ptr [ebp-48], 3
jne .L_1388
.L_1389:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 44
push offset _Lt_138F
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_137C
.L_1388:
cmp dword ptr [ebp-48], 4
jne .L_1392
.L_1393:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_137C
.L_1392:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 44
push offset _Lt_1397
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
.L_1394:
.L_137C:
push dword ptr [ebp+8]
call _HISSTRUCTIN2REGS
add esp, 4
test eax, eax
je .L_139B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
jne .L_139C
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
jmp .L_1D3A
.L_139C:
mov dword ptr [ebp-48], -1
.L_1D3A:
cmp dword ptr [ebp-48], 0
je .L_139F
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 64
push offset _Lt_13A2
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_139F:
.L_139E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-44], eax
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+36]
mov ebx, dword ptr [eax+40]
add ecx, 8
adc ebx, 0
push ebx
push ecx
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+128]
mov dword ptr [ebp-64], ecx
jmp .L_13A7
.L_13A9:
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
push offset _Lt_046A
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ecx, [ebp-76]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
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
push offset _Lt_13AC
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13A6
.L_13AF:
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
push offset _Lt_046A
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-44], 12
jne .L_13B3
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
push offset _Lt_0DAF
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13B2
.L_13B3:
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
push offset _Lt_0E5D
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
.L_13B2:
jmp .L_13A6
.L_13B8:
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
push offset _Lt_0E5D
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRQ]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13A6
.L_13BF:
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
push offset _Lt_0E5D
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-44], 12
jne .L_13C3
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
push offset _Lt_13C4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13C2
.L_13C3:
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
push offset _Lt_13C7
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
.L_13C2:
jmp .L_13A6
.L_13A7:
mov eax, dword ptr [ebp-64]
add eax, 4294967294
cmp eax, 4
ja .L_13A6
mov eax, dword ptr [ebp-64]
jmp dword ptr [_.L_13CA+eax*4-8]
_.L_13CA:
.int .L_13A9
.int .L_13AF
.int .L_13A6
.int .L_13B8
.int .L_13BF
.L_13A6:
jmp .L_139A
.L_139B:
mov eax, dword ptr [ebp-40]
and eax, 480
je .L_13CB
mov dword ptr [ebp-48], 24
jmp .L_1D3B
.L_13CB:
mov eax, dword ptr [ebp-40]
and eax, 31
mov dword ptr [ebp-48], eax
.L_1D3B:
cmp dword ptr [ebp-48], 24
jne .L_13CE
mov dword ptr [ebp-40], 8
.L_13CE:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_13D0
lea eax, [ebp-36]
push eax
call _EMITOP3_OP4
add esp, 4
.L_13D0:
cmp dword ptr [ebp-40], 16
jne .L_13D2
.L_13D3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 20
je .L_13D5
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
push offset _Lt_0E5A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13D4
.L_13D5:
mov eax, dword ptr [_ENV+284]
and eax, 16
test eax, eax
je .L_13D9
mov eax, dword ptr [_ENV+284]
and eax, 32
test eax, eax
je .L_13DB
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
push offset _Lt_0E5A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13DA
.L_13DB:
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
push offset _Lt_046A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.L_13DA:
jmp .L_13D8
.L_13D9:
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
push offset _Lt_0E5A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.L_13D8:
.L_13D4:
jmp .L_13D1
.L_13D2:
cmp dword ptr [ebp-40], 15
jne .L_13E2
.L_13E3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 20
je .L_13E5
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
push offset _Lt_0DAC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13E4
.L_13E5:
mov eax, dword ptr [_ENV+284]
and eax, 16
test eax, eax
je .L_13E9
mov eax, dword ptr [_ENV+284]
and eax, 32
test eax, eax
je .L_13EB
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
push offset _Lt_0DAC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13EA
.L_13EB:
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
push offset _Lt_0B3D
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.L_13EA:
jmp .L_13E8
.L_13E9:
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
push offset _Lt_0DAC
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.L_13E8:
.L_13E4:
jmp .L_13D1
.L_13E2:
cmp dword ptr [ebp-40], 8
je .L_13F3
.L_13F4:
cmp dword ptr [ebp-40], 9
je .L_13F3
.L_13F5:
cmp dword ptr [ebp-40], 13
je .L_13F3
.L_13F6:
cmp dword ptr [ebp-40], 14
je .L_13F3
.L_13F7:
cmp dword ptr [ebp-40], 10
jne .L_13F2
.L_13F3:
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
push offset _Lt_012A
push -1
push 0
push dword ptr [_REGSTRQ]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13D1
.L_13F2:
cmp dword ptr [ebp-40], 11
je .L_13FD
.L_13FE:
cmp dword ptr [ebp-40], 12
jne .L_13FC
.L_13FD:
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
push offset _Lt_0741
push -1
push 0
push dword ptr [_REGSTRD]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13D1
.L_13FC:
cmp dword ptr [ebp-40], 5
je .L_1404
.L_1405:
cmp dword ptr [ebp-40], 6
jne .L_1403
.L_1404:
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
push offset _Lt_0725
push -1
push 0
push dword ptr [_REGSTRQ]
push 7
push offset _Lt_071E
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13D1
.L_1403:
cmp dword ptr [ebp-40], 2
je .L_140B
.L_140C:
cmp dword ptr [ebp-40], 3
je .L_140B
.L_140D:
cmp dword ptr [ebp-40], 1
je .L_140B
.L_140E:
cmp dword ptr [ebp-40], 4
jne .L_140A
.L_140B:
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
push offset _Lt_071F
push -1
push 0
push dword ptr [_REGSTRQ]
push 7
push offset _Lt_071E
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_13D1
.L_140A:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push 52
push offset _Lt_1417
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_1413:
.L_13D1:
.L_139A:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_137B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITADDR:
push ebp
mov ebp, esp
sub esp, 152
push ebx
.L_141B:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
je .L_141E
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 46
push offset _Lt_1421
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_141C
.L_141E:
.L_141D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
je .L_1424
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
push dword ptr [eax+28]
call _SYMBGETVALISTTYPE
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
jmp .L_1D41
.L_1424:
mov dword ptr [ebp-28], 0
.L_1D41:
cmp dword ptr [ebp-28], 0
je .L_1427
cmp dword ptr [ebp+8], 22
jne .L_1429
mov dword ptr [ebp+8], 76
.L_1429:
.L_1428:
.L_1427:
.L_1426:
push -1
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+12]
call _REG_FINDFREE
add esp, 8
cmp dword ptr [ebp+8], 22
jne .L_142B
.L_142C:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-80], ecx
cmp dword ptr [ebp-80], 2
jne .L_142F
.L_1430:
lea ecx, [ebp-24]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+12]
call _PREPARE_IDX
add esp, 12
jmp .L_142D
.L_142F:
cmp dword ptr [ebp-80], 1
jne .L_1431
.L_1432:
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
je .L_1434
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1433
.L_1434:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_1433:
jmp .L_142D
.L_1431:
cmp dword ptr [ebp-80], 3
jne .L_1439
.L_143A:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_142D
.L_1439:
cmp dword ptr [ebp-80], 5
jne .L_143E
.L_143F:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 45
push offset _Lt_1445
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_142D
.L_143E:
push 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push 43
push offset _Lt_144B
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.L_1448:
.L_142D:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_144F
lea eax, [ebp-24]
push eax
call _EMITOP3_OP4
add esp, 4
.L_144F:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_142A
.L_142B:
cmp dword ptr [ebp+8], 76
jne .L_1454
.L_1455:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 2
jne .L_1458
.L_1459:
lea ebx, [ebp-24]
push ebx
lea ebx, [ebp-12]
push ebx
push dword ptr [ebp+12]
call _PREPARE_IDX
add esp, 12
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_145B
lea eax, [ebp-24]
push eax
call _EMITOP3_OP4
add esp, 4
.L_145B:
jmp .L_1456
.L_1458:
cmp dword ptr [ebp-32], 1
jne .L_145C
.L_145D:
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
je .L_145F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+4]
and ebx, 8
test ebx, ebx
je .L_1460
movzx ebx, byte ptr [_CTX+232]
neg ebx
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .L_1D42
.L_1460:
mov dword ptr [ebp-36], 0
.L_1D42:
cmp dword ptr [ebp-36], 0
je .L_1462
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_1D43
.L_1462:
mov dword ptr [ebp-40], 0
.L_1D43:
cmp dword ptr [ebp-40], 0
je .L_1465
push 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 6
push offset _Lt_0717
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1464
.L_1465:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_1464:
jmp .L_145E
.L_145F:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_145E:
jmp .L_1456
.L_145C:
cmp dword ptr [ebp-32], 3
jne .L_146D
.L_146E:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1456
.L_146D:
cmp dword ptr [ebp-32], 5
jne .L_1472
.L_1473:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1456
.L_1472:
cmp dword ptr [ebp-32], 4
jne .L_1477
.L_1478:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 2
push offset _Lt_0135
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1456
.L_1477:
push 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 42
push offset _Lt_147E
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
.L_147B:
.L_1456:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_1482
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1481
.L_1482:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.L_1481:
.L_1454:
.L_142A:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_141C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDOCALL:
push ebp
mov ebp, esp
sub esp, 3940
push ebx
push esi
push edi
.L_14A0:
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
mov byte ptr [_CTX+153], 1
cmp byte ptr [ebp+32], 0
je .L_14A4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _REG_CALLPTR
add esp, 8
.L_14A4:
mov ebx, dword ptr [_CTX+96]
mov eax, dword ptr [_CTX+100]
add ebx, 104
adc eax, 0
mov dword ptr [_CTX+120], ebx
mov dword ptr [_CTX+124], eax
mov eax, dword ptr [_CTX+120]
mov ebx, dword ptr [_CTX+124]
mov dword ptr [_CTX+112], eax
mov dword ptr [_CTX+116], ebx
lea eax, [_IRHL+60]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-24], eax
.L_14A5:
cmp dword ptr [ebp-24], 0
je .L_14A7
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
jmp .L_1D4E
.L_14A7:
mov dword ptr [ebp-3752], 0
.L_1D4E:
cmp dword ptr [ebp-3752], 0
je .L_14A6
push dword ptr [ebp-24]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-32], ebx
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-56]
push ebx
call _fb_StrAssign
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
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_14AA
push 0
push 8
call _IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-3744], eax
push dword ptr [ebp-3744]
push dword ptr [ebp-32]
push 22
call __EMITADDR
add esp, 12
mov edi, dword ptr [ebp-32]
mov esi, dword ptr [ebp-3744]
mov ecx, 17
rep movsd
.L_14AA:
.L_14A9:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-3764], eax
cmp dword ptr [ebp-3764], 2
jne .L_14AD
.L_14AE:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+32], 0
jne .L_14B0
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx+32], 0
jne .L_14B2
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+48]
cmp dword ptr [eax+12], -1
je .L_14B4
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_14B3
.L_14B4:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3860], 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
lea eax, [ebp-3860]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
.L_14B3:
jmp .L_14B1
.L_14B2:
push 0
push 0
call _REG_TEMPO
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
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
je .L_14C1
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ecx, dword ptr [ebp-32]
mov ebx, dword ptr [ecx+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push -1
push 0
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0111
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_03ED
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-68]
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_012A
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0135
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-68]
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_14C8
push -1
lea eax, [ebp-56]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3860], 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
lea eax, [ebp-3860]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3872], 0
mov dword ptr [ebp-3868], 0
mov dword ptr [ebp-3864], 0
lea eax, [ebp-3872]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_14C0
.L_14C1:
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
.L_14C0:
.L_14B1:
jmp .L_14AF
.L_14B0:
push 0
push 0
call _REG_TEMPO
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
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
je .L_14D4
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp-32]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push -1
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_14D3
.L_14D4:
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-68]
push eax
push 5
push offset _Lt_017B
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
.L_14D3:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_14E0
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+48]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_08DE
push -1
push -1
lea eax, [ebp-68]
push eax
push 2
push offset _Lt_0135
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_14DF
.L_14E0:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 1
jne .L_14E5
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
je .L_14E7
push 0
push -1
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ecx, dword ptr [ebp-32]
mov eax, dword ptr [ecx+48]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push -1
push 0
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 5
push offset _Lt_0474
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push 3
push offset _Lt_0111
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3860], 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
lea eax, [ebp-3860]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_14E6
.L_14E7:
push 0
push -1
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+40]
push dword ptr [ecx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset _Lt_00F9
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 5
push offset _Lt_0474
push -1
push -1
push 32
mov eax, dword ptr [_CTX]
imul eax, 3
push eax
call _fb_StrFill1
add esp, 8
push eax
push 3
push offset _Lt_0111
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
.L_14E6:
push 0
push 2
push offset _Lt_0135
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-68]
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
lea eax, [ebp-44]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_14DF
.L_14E5:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push 40
push offset _Lt_14FA
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
.L_14DF:
.L_14AF:
jmp .L_14AB
.L_14AD:
cmp dword ptr [ebp-3764], 4
jne .L_14FD
.L_14FE:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_14FF
mov dword ptr [ebp-3768], 24
jmp .L_1D4F
.L_14FF:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3768], eax
.L_1D4F:
cmp dword ptr [ebp-3768], 24
jne .L_1502
mov dword ptr [ebp-20], 8
.L_1502:
mov eax, dword ptr [ebp-32]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-20], 8
je .L_1505
.L_1506:
cmp dword ptr [ebp-20], 9
je .L_1505
.L_1507:
cmp dword ptr [ebp-20], 13
je .L_1505
.L_1508:
cmp dword ptr [ebp-20], 14
je .L_1505
.L_1509:
cmp dword ptr [ebp-20], 16
je .L_1505
.L_150A:
cmp dword ptr [ebp-20], 10
je .L_1505
.L_150B:
cmp dword ptr [ebp-20], 20
jne .L_1504
.L_1505:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1503
.L_1504:
cmp dword ptr [ebp-20], 11
je .L_150D
.L_150E:
cmp dword ptr [ebp-20], 12
je .L_150D
.L_150F:
cmp dword ptr [ebp-20], 15
jne .L_150C
.L_150D:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1503
.L_150C:
cmp dword ptr [ebp-20], 5
je .L_1511
.L_1512:
cmp dword ptr [ebp-20], 6
jne .L_1510
.L_1511:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1503
.L_1510:
cmp dword ptr [ebp-20], 2
je .L_1514
.L_1515:
cmp dword ptr [ebp-20], 3
je .L_1514
.L_1516:
cmp dword ptr [ebp-20], 1
je .L_1514
.L_1517:
cmp dword ptr [ebp-20], 4
jne .L_1513
.L_1514:
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1503
.L_1513:
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3780]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push -1
push -1
push dword ptr [ebp-20]
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_151C
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3804]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
.L_1518:
.L_1503:
jmp .L_14AB
.L_14FD:
cmp dword ptr [ebp-3764], 1
jne .L_1520
.L_1521:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+32], 0
je .L_1522
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
jmp .L_1D50
.L_1522:
mov dword ptr [ebp-3768], 0
.L_1D50:
cmp dword ptr [ebp-3768], 0
je .L_1525
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1524
.L_1525:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
.L_1524:
jmp .L_14AB
.L_1520:
cmp dword ptr [ebp-3764], 3
jne .L_152A
.L_152B:
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+48]
push dword ptr [ecx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_14AB
.L_152A:
cmp dword ptr [ebp-3764], 5
jne .L_152F
.L_1530:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_14AB
.L_152F:
cmp dword ptr [ebp-3764], 0
jne .L_1534
.L_1535:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_1536
mov dword ptr [ebp-3768], 24
jmp .L_1D51
.L_1536:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3768], eax
.L_1D51:
mov eax, dword ptr [ebp-3768]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_1539
push 0
push -1
push 0
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _HFLOATTOHEX_ASM64
add esp, 16
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1538
.L_1539:
cmp dword ptr [ebp-20], 1
jne .L_153B
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
jne .L_1D6C
cmp dword ptr [eax+24], 0
je .L_153D
.L_1D6C:
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+24], 1
mov dword ptr [eax+28], 0
.L_153D:
.L_153C:
.L_153B:
.L_153A:
push 0
push -1
mov eax, dword ptr [ebp-32]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
.L_1538:
jmp .L_14AB
.L_1534:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push 45
push offset _Lt_1541
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
.L_153E:
.L_14AB:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_1544
mov dword ptr [ebp-3760], 24
jmp .L_1D52
.L_1544:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3760], eax
.L_1D52:
cmp dword ptr [ebp-3760], 24
jne .L_1547
mov dword ptr [ebp-20], 8
.L_1547:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp-32]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call _PARAM_ANALYZE
add esp, 20
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 10
jl .L_1549
cmp byte ptr [_CTX+232], 0
je .L_154B
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
jne .L_154D
add dword ptr [ebp-3740], 8
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_154E
mov dword ptr [ebp-3764], 24
jmp .L_1D53
.L_154E:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3764], eax
.L_1D53:
mov eax, dword ptr [ebp-3764]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_1551
cmp dword ptr [ebp-20], 15
jne .L_1553
inc dword ptr [ebp-3736]
push 0
push 6
push offset _Lt_1554
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ecx, [ebp+eax-3696]
push ecx
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
jmp .L_1552
.L_1553:
inc dword ptr [ebp-3736]
push 0
push 9
push offset _Lt_1555
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ecx, [ebp+eax-3696]
push ecx
call _fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 10
push offset _Lt_046A
push -1
mov ecx, dword ptr [ebp-3736]
imul ecx, 12
lea eax, [ebp+ecx-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
.L_1552:
jmp .L_1550
.L_1551:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ecx+28], 4294967295
mov eax, -1
jg .L_1D6D
jl .L_1D6E
cmp dword ptr [ecx+24], 2147483648
jae .L_1D6D
.L_1D6E:
xor eax, eax
.L_1D6D:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ecx+28], 0
mov ebx, -1
jl .L_1D6F
jg .L_1D70
cmp dword ptr [ecx+24], 2147483648
jb .L_1D6F
.L_1D70:
xor ebx, ebx
.L_1D6F:
and eax, ebx
je .L_1556
inc dword ptr [ebp-3736]
push 0
push 6
push offset _Lt_1554
push -1
mov ebx, dword ptr [ebp-3736]
imul ebx, 12
lea eax, [ebp+ebx-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
jmp .L_1550
.L_1556:
inc dword ptr [ebp-3736]
push 0
push 9
push offset _Lt_1555
push -1
mov ebx, dword ptr [ebp-3736]
imul ebx, 12
lea eax, [ebp+ebx-3696]
push eax
call _fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 10
push offset _Lt_046A
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ebx, [ebp+eax-3696]
push ebx
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
.L_1550:
jmp .L_154C
.L_154D:
cmp dword ptr [ebp-20], 20
jne .L_1558
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-80]
add dword ptr [ebp-3740], eax
cmp dword ptr [ebp-80], 8
jle .L_155A
mov eax, dword ptr [ebp-80]
mov ecx, 8
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp-84], eax
cmp dword ptr [ebp-84], 0
jne .L_155C
mov dword ptr [ebp-84], 8
.L_155C:
.L_155D:
cmp dword ptr [ebp-80], 0
jle .L_155E
inc dword ptr [ebp-3736]
push 0
push 11
push offset _Lt_155F
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea ebx, [ebp+eax-3696]
push ebx
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-80], 8
jle .L_1561
inc dword ptr [ebp-3736]
push 0
push 11
push offset _Lt_1562
push -1
mov ebx, dword ptr [ebp-3736]
imul ebx, 12
lea eax, [ebp+ebx-3696]
push eax
call _fb_StrAssign
add esp, 20
.L_1561:
.L_1560:
add dword ptr [ebp-80], -8
jmp .L_155D
.L_155E:
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
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_1563
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call _fb_StrAssign
add esp, 20
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 4
jne .L_1566
inc dword ptr [ebp-3736]
push 0
push 10
push offset _Lt_046A
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
jmp .L_1565
.L_1566:
inc dword ptr [ebp-3736]
push 0
push 10
push offset _Lt_0712
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
.L_1565:
jmp .L_1559
.L_155A:
inc dword ptr [ebp-3736]
push 0
push 6
push offset _Lt_1554
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
.L_1559:
jmp .L_1557
.L_1558:
add dword ptr [ebp-3740], 8
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 5
jne .L_1568
mov edi, dword ptr [ebp-32]
mov eax, dword ptr [edi+4]
and eax, 31
cmp eax, 22
jne .L_1569
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3764], eax
jmp .L_1D54
.L_1569:
mov dword ptr [ebp-3764], 0
.L_1D54:
cmp dword ptr [ebp-3764], 0
je .L_156C
inc dword ptr [ebp-3736]
push 0
push 9
push offset _Lt_1555
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call _fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 20
push offset _Lt_0F82
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-44]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-44]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call _fb_StrConcatAssign
add esp, 20
push 0
push 15
push offset _Lt_0A50
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_156B
.L_156C:
inc dword ptr [ebp-3736]
push 0
push 9
push offset _Lt_1555
push -1
mov eax, dword ptr [ebp-3736]
imul eax, 12
lea edi, [ebp+eax-3696]
push edi
call _fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 10
push offset _Lt_0712
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
.L_156B:
jmp .L_1567
.L_1568:
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 4
jne .L_156E
push 0
push 0
mov edi, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+edi*4]
push -1
lea edi, [ebp-44]
push edi
call _fb_StrAssign
add esp, 20
inc dword ptr [ebp-3736]
push 0
push 6
push offset _Lt_1554
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
jmp .L_156D
.L_156E:
inc dword ptr [ebp-3736]
push 0
push 6
push offset _Lt_1554
push -1
mov edi, dword ptr [ebp-3736]
imul edi, 12
lea eax, [ebp+edi-3696]
push eax
call _fb_StrAssign
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
call _fb_StrConcatAssign
add esp, 20
.L_156D:
.L_1567:
.L_1557:
push 1
push offset _Lt_0000
push -1
lea edi, [ebp-56]
push edi
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_1570
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
call _fb_StrAssign
add esp, 20
.L_1570:
.L_156F:
.L_154C:
jmp .L_154A
.L_154B:
push 1
push offset _Lt_0000
push -1
lea edi, [ebp-56]
push edi
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_1572
lea eax, [ebp-56]
push eax
call _EMITOP3_OP4
add esp, 4
.L_1572:
cmp dword ptr [ebp-76], 11
jne .L_1574
cmp dword ptr [ebp-20], 20
jne .L_1576
mov eax, dword ptr [ebp-32]
mov edi, dword ptr [eax+8]
mov eax, dword ptr [edi+40]
mov dword ptr [ebp-80], eax
jmp .L_1575
.L_1576:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov edi, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-80], edi
.L_1575:
mov edi, dword ptr [ebp-32]
cmp dword ptr [edi], 4
jne .L_1578
mov edi, dword ptr [ebp-80]
mov dword ptr [ebp-3764], edi
jmp .L_157A
.L_157C:
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
push offset _Lt_157E
push -1
push -1
mov edi, dword ptr [ebp-8]
sal edi, 3
add edi, -8
push edi
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_157D
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1579
.L_1583:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_0804
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1579
.L_1588:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1579
.L_158D:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1579
.L_157A:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_1579
mov eax, dword ptr [ebp-3764]
jmp dword ptr [_.L_1592+eax*4-4]
_.L_1592:
.int .L_157C
.int .L_1583
.int .L_1579
.int .L_1588
.int .L_1579
.int .L_1579
.int .L_1579
.int .L_158D
.L_1579:
jmp .L_1577
.L_1578:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-3764], eax
jmp .L_1594
.L_1596:
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
push offset _Lt_1298
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset _Lt_1599
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_157D
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1593
.L_159D:
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
push offset _Lt_159E
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset _Lt_15A1
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_0804
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1593
.L_15A5:
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
push offset _Lt_0B3D
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset _Lt_15A8
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1593
.L_15AC:
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
push offset _Lt_046A
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1593
.L_1594:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_1593
mov eax, dword ptr [ebp-3764]
jmp dword ptr [_.L_15B3+eax*4-4]
_.L_15B3:
.int .L_1596
.int .L_159D
.int .L_1593
.int .L_15A5
.int .L_1593
.int .L_1593
.int .L_1593
.int .L_15AC
.L_1593:
.L_1577:
jmp .L_1573
.L_1574:
cmp dword ptr [ebp-76], 12
jne .L_15B4
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
push dword ptr [eax]
call _REG_TRANSFER
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edi, dword ptr [eax]
push dword ptr [_REGSTRQ+edi*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edi, [ebp-3772]
push edi
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-32]
mov edi, dword ptr [eax+8]
mov esi, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
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
mov dword ptr [_CTX+120], esi
mov dword ptr [_CTX+124], eax
push 0
push 8
push dword ptr [_CTX+124]
push dword ptr [_CTX+120]
call ___moddi3
add esp, 16
neg eax
adc edx, 0
neg edx
add eax, dword ptr [_CTX+120]
adc edx, dword ptr [_CTX+124]
add eax, 8
adc edx, 0
mov dword ptr [_CTX+120], eax
mov dword ptr [_CTX+124], edx
push 0
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRQ+edx*4]
push -1
lea edx, [ebp-68]
push edx
call _fb_StrAssign
add esp, 20
push 1
push 1
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [_CTX+120]
mov edx, dword ptr [_CTX+124]
neg eax
adc edx, 0
neg edx
push edx
push eax
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
lea eax, [ebp-3820]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3832]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3832]
push eax
lea eax, [ebp-68]
push eax
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
push eax
call _MEMCOPY
add esp, 20
lea eax, [ebp-3832]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3892], 0
mov dword ptr [ebp-3888], 0
mov dword ptr [ebp-3884], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov edx, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRQ+edx*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
mov dword ptr [ebp-3836], 0
lea edx, [ebp-3844]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
mov dword ptr [ebp-3848], 0
lea eax, [ebp-3856]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3868], 0
mov dword ptr [ebp-3864], 0
mov dword ptr [ebp-3860], 0
lea eax, [ebp-3868]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3880], 0
mov dword ptr [ebp-3876], 0
mov dword ptr [ebp-3872], 0
lea eax, [ebp-3880]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3892]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3892]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3892]
push eax
call _fb_StrDelete
add esp, 4
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_15C1
push 3
mov dword ptr [ebp-3940], 0
mov dword ptr [ebp-3936], 0
mov dword ptr [ebp-3932], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [_LISTREG]
mov eax, dword ptr [edx]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 8
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3904], 0
mov dword ptr [ebp-3900], 0
mov dword ptr [ebp-3896], 0
lea eax, [ebp-3904]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3916], 0
mov dword ptr [ebp-3912], 0
mov dword ptr [ebp-3908], 0
lea eax, [ebp-3916]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3928], 0
mov dword ptr [ebp-3924], 0
mov dword ptr [ebp-3920], 0
lea eax, [ebp-3928]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3940]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3940]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3940]
push eax
call _fb_StrDelete
add esp, 4
.L_15C1:
.L_15C0:
jmp .L_1573
.L_15B4:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
jne .L_15C7
cmp dword ptr [ebp-20], 15
jne .L_15C9
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [_Lt_1C08]
fcomip st, st(1)
fstp st(0)
jnz .L_15CB
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset _Lt_15CC
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_15CA
.L_15CB:
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
push offset _Lt_0B3D
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call _fb_StrDelete
add esp, 4
.L_15CA:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 11
push offset _Lt_15A8
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_15C8
.L_15C9:
cmp dword ptr [ebp-20], 16
jne .L_15D3
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [_Lt_1C08]
fcomip st, st(1)
fstp st(0)
jnz .L_15D5
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset _Lt_15D6
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_15D4
.L_15D5:
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
push offset _Lt_046A
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call _fb_StrDelete
add esp, 4
.L_15D4:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_15C8
.L_15D3:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 4294967295
mov edx, -1
jl .L_1D74
jg .L_1D75
cmp dword ptr [eax+24], 2147483648
jb .L_1D74
.L_1D75:
xor edx, edx
.L_1D74:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
mov esi, -1
jg .L_1D76
jl .L_1D77
cmp dword ptr [eax+24], 4294967295
ja .L_1D76
.L_1D77:
xor esi, esi
.L_1D76:
or edx, esi
je .L_15DE
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
push offset _Lt_046A
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea esi, [ebp-3772]
push esi
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_15DD
.L_15DE:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
jl .L_15E4
jg .L_1D78
cmp dword ptr [eax+24], 2147483648
jb .L_15E4
.L_1D78:
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
push offset _Lt_0B3D
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_15DD
.L_15E4:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
.L_15DD:
.L_15C8:
jmp .L_15C6
.L_15C7:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_15EF
cmp dword ptr [ebp-20], 20
jne .L_15F1
mov eax, dword ptr [ebp-32]
mov esi, dword ptr [eax+8]
mov edx, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
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
mov dword ptr [_CTX+120], edx
mov dword ptr [_CTX+124], eax
push 0
push 8
push dword ptr [_CTX+124]
push dword ptr [_CTX+120]
call ___moddi3
add esp, 16
neg eax
adc edx, 0
neg edx
add eax, dword ptr [_CTX+120]
adc edx, dword ptr [_CTX+124]
add eax, 8
adc edx, 0
mov dword ptr [_CTX+120], eax
mov dword ptr [_CTX+124], edx
push 1
push 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov edx, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
push eax
call _MEMCOPY
add esp, 20
lea eax, [ebp-3784]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov edx, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
mov dword ptr [ebp-3848], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
lea eax, [ebp-3832]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
mov dword ptr [ebp-3836], 0
lea eax, [ebp-3844]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3856]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3856]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3856]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_15F0
.L_15F1:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
.L_15F0:
jmp .L_15EE
.L_15EF:
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
je .L_15FF
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+4]
and edx, 31
cmp edx, 22
jne .L_1600
movzx edx, byte ptr [_CTX+232]
neg edx
cmp edx, -1
sete dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-3764], edx
jmp .L_1D55
.L_1600:
mov dword ptr [ebp-3764], 0
.L_1D55:
cmp dword ptr [ebp-3764], 0
je .L_1602
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3768], eax
jmp .L_1D56
.L_1602:
mov dword ptr [ebp-3768], 0
.L_1D56:
cmp dword ptr [ebp-3768], 0
je .L_1605
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push -1
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-44]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-44]
push eax
call _fb_LEFT
add esp, 8
push eax
push 20
push offset _Lt_0F82
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3804]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1604
.L_1605:
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
push offset _Lt_0712
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3792]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3792]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3792]
push eax
call _fb_StrDelete
add esp, 4
.L_1604:
jmp .L_15FE
.L_15FF:
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
push offset _Lt_046A
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call _fb_StrDelete
add esp, 4
.L_15FE:
cmp dword ptr [ebp-20], 20
jne .L_160E
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov ecx, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
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
mov dword ptr [_CTX+120], ecx
mov dword ptr [_CTX+124], eax
push 0
push 8
push dword ptr [_CTX+124]
push dword ptr [_CTX+120]
call ___moddi3
add esp, 16
neg eax
adc edx, 0
neg edx
add eax, dword ptr [_CTX+120]
adc edx, dword ptr [_CTX+124]
add eax, 8
adc edx, 0
mov dword ptr [_CTX+120], eax
mov dword ptr [_CTX+124], edx
push 1
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov edx, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 4
push offset _Lt_009F
push -1
lea eax, [ebp-3772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
push eax
call _MEMCOPY
add esp, 20
lea eax, [ebp-3796]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-3772]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
push -1
mov edx, dword ptr [_CTX+120]
mov eax, dword ptr [_CTX+124]
neg edx
adc eax, 0
neg eax
push eax
push edx
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_0712
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
lea eax, [ebp-3820]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3832]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3832]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3832]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3868], 0
mov dword ptr [ebp-3864], 0
mov dword ptr [ebp-3860], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
mov dword ptr [ebp-3836], 0
lea eax, [ebp-3844]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3856], 0
mov dword ptr [ebp-3852], 0
mov dword ptr [ebp-3848], 0
lea eax, [ebp-3856]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3868]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3868]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3868]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_160D
.L_160E:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call _fb_StrDelete
add esp, 4
.L_160D:
.L_15EE:
.L_15C6:
.L_1573:
.L_154A:
jmp .L_1548
.L_1549:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-56]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_161C
lea eax, [ebp-56]
push eax
call _EMITOP3_OP4
add esp, 4
.L_161C:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
jne .L_161E
cmp dword ptr [ebp-20], 15
jne .L_1620
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [_Lt_1C08]
fcomip st, st(1)
fstp st(0)
jnz .L_1622
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset _Lt_15CC
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1621
.L_1622:
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
push offset _Lt_0B3D
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call _fb_StrDelete
add esp, 4
.L_1621:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 6
push offset _Lt_0E01
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 9
push offset _Lt_0798
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_161F
.L_1620:
cmp dword ptr [ebp-20], 16
jne .L_1629
mov eax, dword ptr [ebp-32]
fld qword ptr [eax+24]
fld qword ptr [_Lt_1C08]
fcomip st, st(1)
fstp st(0)
jnz .L_162B
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push 13
push offset _Lt_15CC
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_162A
.L_162B:
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
push offset _Lt_046A
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3820]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3820]
push eax
call _fb_StrDelete
add esp, 4
.L_162A:
push 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 9
push offset _Lt_079D
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3796]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3796]
push eax
call _fb_StrDelete
add esp, 4
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_1633
push 3
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov edx, dword ptr [ebp-8]
sal edx, 3
add edx, -8
push edx
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
lea eax, [ebp-3808]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
lea eax, [ebp-3820]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3832]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3832]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3832]
push eax
call _fb_StrDelete
add esp, 4
.L_1633:
.L_1632:
jmp .L_161F
.L_1629:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
push dword ptr [eax]
call _REG_TRANSFER
add esp, 8
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
jne .L_1638
cmp dword ptr [eax+24], 0
jne .L_1638
.L_1D7F:
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRD+edx*4]
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [_LISTREG]
mov eax, dword ptr [edx]
push dword ptr [_REGSTRD+eax*4]
push 5
push offset _Lt_09AF
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1637
.L_1638:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
mov edx, -1
jg .L_1D80
jl .L_1D81
cmp dword ptr [eax+24], 0
ja .L_1D80
.L_1D81:
xor edx, edx
.L_1D80:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .L_1D82
jg .L_1D83
cmp dword ptr [eax+24], 2147483647
jbe .L_1D82
.L_1D83:
xor ecx, ecx
.L_1D82:
and edx, ecx
je .L_163D
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
push offset _Lt_012A
push -1
push 0
mov ecx, dword ptr [ebp-12]
sal ecx, 2
add ecx, dword ptr [_LISTREG]
mov edx, dword ptr [ecx]
push dword ptr [_REGSTRD+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edx, [ebp-3772]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1637
.L_163D:
cmp dword ptr [ebp-20], 8
je .L_1644
.L_1645:
cmp dword ptr [ebp-20], 9
je .L_1644
.L_1646:
cmp dword ptr [ebp-20], 13
je .L_1644
.L_1647:
cmp dword ptr [ebp-20], 14
je .L_1644
.L_1648:
cmp dword ptr [ebp-20], 10
jne .L_1643
.L_1644:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRQ+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edx, [ebp-3772]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1642
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRD+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea edx, [ebp-3772]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
.L_164D:
.L_1642:
.L_1637:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_1653
push 3
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [_LISTREG]
mov eax, dword ptr [edx]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 8
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
.L_1653:
.L_1652:
.L_161F:
jmp .L_161D
.L_161E:
cmp dword ptr [ebp-20], 20
jne .L_1658
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+40]
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_165A
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
lea eax, [ebp-44]
push eax
push 2
push offset _Lt_0135
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
.L_165A:
.L_1659:
cmp byte ptr [_CTX+232], 0
je .L_165E
mov eax, dword ptr [ebp-76]
mov dword ptr [ebp-3764], eax
jmp .L_1660
.L_1662:
push dword ptr [ebp-4]
push offset _LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLR
add esp, 20
jmp .L_165F
.L_1663:
push dword ptr [ebp-4]
push offset _LISTREG
mov eax, dword ptr [ebp-12]
dec eax
push eax
lea eax, [ebp-44]
push eax
push 8
call _REG_FILLR
add esp, 20
push dword ptr [ebp-4]
push offset _LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLR
add esp, 20
jmp .L_165F
.L_1664:
push dword ptr [ebp-4]
push offset _LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push 8
call _REG_FILLR
add esp, 20
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLX
add esp, 12
jmp .L_165F
.L_1665:
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLX
add esp, 12
jmp .L_165F
.L_1666:
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push 8
call _REG_FILLX
add esp, 12
push dword ptr [ebp-4]
push offset _LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLR
add esp, 20
jmp .L_165F
.L_1667:
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-44]
push eax
push 8
call _REG_FILLX
add esp, 12
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLX
add esp, 12
jmp .L_165F
.L_1660:
cmp dword ptr [ebp-3764], 5
ja .L_165F
mov eax, dword ptr [ebp-3764]
jmp dword ptr [_.L_1668+eax*4]
_.L_1668:
.int .L_1662
.int .L_1665
.int .L_1663
.int .L_1664
.int .L_1666
.int .L_1667
.L_165F:
jmp .L_165D
.L_165E:
cmp dword ptr [ebp-76], 0
jne .L_166A
push dword ptr [ebp-4]
push offset _LISTREG
push dword ptr [ebp-12]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLR
add esp, 20
jmp .L_1669
.L_166A:
cmp dword ptr [ebp-76], 1
jne .L_166B
push dword ptr [ebp-16]
lea eax, [ebp-44]
push eax
push dword ptr [ebp-80]
call _REG_FILLX
add esp, 12
jmp .L_1669
.L_166B:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_166D
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-3764], eax
jmp .L_166F
.L_1671:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_157D
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_166E
.L_1676:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_0804
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_166E
.L_167B:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_166E
.L_1680:
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
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_166E
.L_166F:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_166E
mov eax, dword ptr [ebp-3764]
jmp dword ptr [_.L_1685+eax*4-4]
_.L_1685:
.int .L_1671
.int .L_1676
.int .L_166E
.int .L_167B
.int .L_166E
.int .L_166E
.int .L_166E
.int .L_1680
.L_166E:
jmp .L_166C
.L_166D:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-3764], eax
jmp .L_1687
.L_1689:
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
push offset _Lt_1298
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset _Lt_1599
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_157D
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1686
.L_168F:
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
push offset _Lt_159E
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 10
push offset _Lt_15A1
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 14
push offset _Lt_0804
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1686
.L_1695:
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
push offset _Lt_0B3D
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset _Lt_15A8
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_080A
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1686
.L_169B:
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
push offset _Lt_046A
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
push 0
push -1
push 11
push offset _Lt_15AF
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3824]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3824]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1686
.L_1687:
mov eax, dword ptr [ebp-3764]
add eax, 4294967295
cmp eax, 7
ja .L_1686
mov eax, dword ptr [ebp-3764]
jmp dword ptr [_.L_16A1+eax*4-4]
_.L_16A1:
.int .L_1689
.int .L_168F
.int .L_1686
.int .L_1695
.int .L_1686
.int .L_1686
.int .L_1686
.int .L_169B
.L_1686:
.L_166C:
.L_1669:
.L_165D:
jmp .L_161D
.L_1658:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 5
jne .L_16A3
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
push dword ptr [eax]
call _REG_TRANSFER
add esp, 8
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+4]
and edx, 31
cmp edx, 22
jne .L_16A4
movzx edx, byte ptr [_CTX+232]
neg edx
cmp edx, -1
sete dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-3764], edx
jmp .L_1D57
.L_16A4:
mov dword ptr [ebp-3764], 0
.L_1D57:
cmp dword ptr [ebp-3764], 0
je .L_16A6
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3768], eax
jmp .L_1D58
.L_16A6:
mov dword ptr [ebp-3768], 0
.L_1D58:
cmp dword ptr [ebp-3768], 0
je .L_16A9
push 0
mov dword ptr [ebp-3828], 0
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push -1
push 1
push offset _Lt_0135
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-44]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
lea eax, [ebp-44]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
push 13
push offset _Lt_0420
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRQ+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
lea eax, [ebp-3816]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3828]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3828]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3828]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16A8
.L_16A9:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRQ+edx*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
.L_16A8:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_16B4
push 3
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [_LISTREG]
mov eax, dword ptr [edx]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 8
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
.L_16B4:
.L_16B3:
jmp .L_16A2
.L_16A3:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_16B9
mov dword ptr [ebp-3764], 24
jmp .L_1D59
.L_16B9:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-3764], eax
.L_1D59:
mov eax, dword ptr [ebp-3764]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_16BC
cmp dword ptr [ebp-20], 16
jne .L_16BE
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_16C0
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
push offset _Lt_012A
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 9
push offset _Lt_079D
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16BF
.L_16C0:
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
push offset _Lt_012A
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_16C5
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
.L_16BF:
jmp .L_16BD
.L_16BE:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 4
jne .L_16CB
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
push offset _Lt_012A
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 9
push offset _Lt_0798
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16CA
.L_16CB:
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
push offset _Lt_012A
push -1
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_16D0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
.L_16CA:
.L_16BD:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_16D6
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
call _fb_IntToStr
add esp, 4
push eax
push -1
push 11
push offset _Lt_16D8
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 17
push offset _Lt_16D7
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
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
call _fb_IntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_16DD
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRQ+edx*4]
push 6
push offset _Lt_07BD
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea edx, [ebp-3824]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
lea eax, [ebp-3836]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3848], 0
mov dword ptr [ebp-3844], 0
mov dword ptr [ebp-3840], 0
lea eax, [ebp-3848]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3860]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3860]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3860]
push eax
call _fb_StrDelete
add esp, 4
.L_16D6:
.L_16D5:
jmp .L_16BB
.L_16BC:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
push dword ptr [eax]
call _REG_TRANSFER
add esp, 8
cmp dword ptr [ebp-20], 19
jne .L_16E3
cmp byte ptr [_CTX+232], 0
je .L_16E5
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3780]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
push 0
push 72
push offset _Lt_16E8
push -1
lea eax, [ebp-3792]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3792]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3792]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3804]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16E4
.L_16E5:
mov dword ptr [ebp-20], 8
.L_16E4:
.L_16E3:
.L_16E2:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_16EB
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3768], eax
jmp .L_1D5A
.L_16EB:
mov dword ptr [ebp-3768], 0
.L_1D5A:
cmp dword ptr [ebp-3768], 0
je .L_16EE
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+32], 0
je .L_16EF
mov eax, dword ptr [ebp-32]
mov edx, dword ptr [eax+32]
mov eax, dword ptr [edx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3772], eax
jmp .L_1D5B
.L_16EF:
mov dword ptr [ebp-3772], 0
.L_1D5B:
cmp dword ptr [ebp-3772], 0
je .L_16F2
push 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
push 0
push -1
push 15
push offset _Lt_0A50
push -1
push 0
mov eax, dword ptr [ebp-32]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 10
push offset _Lt_046A
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
lea eax, [ebp-3784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
lea eax, [ebp-3796]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3808]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3808]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 6
push offset _Lt_0717
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
.L_16F2:
.L_16F1:
.L_16EE:
.L_16ED:
cmp dword ptr [ebp-20], 8
je .L_16F8
.L_16F9:
cmp dword ptr [ebp-20], 9
je .L_16F8
.L_16FA:
cmp dword ptr [ebp-20], 13
je .L_16F8
.L_16FB:
cmp dword ptr [ebp-20], 14
je .L_16F8
.L_16FC:
cmp dword ptr [ebp-20], 10
jne .L_16F7
.L_16F8:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRQ+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16F6
.L_16F7:
cmp dword ptr [ebp-20], 11
je .L_1702
.L_1703:
cmp dword ptr [ebp-20], 12
jne .L_1701
.L_1702:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRD+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16F6
.L_1701:
cmp dword ptr [ebp-20], 5
je .L_1709
.L_170A:
cmp dword ptr [ebp-20], 6
jne .L_1708
.L_1709:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRW+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16F6
.L_1708:
cmp dword ptr [ebp-20], 2
je .L_1710
.L_1711:
cmp dword ptr [ebp-20], 3
je .L_1710
.L_1712:
cmp dword ptr [ebp-20], 1
je .L_1710
.L_1713:
cmp dword ptr [ebp-20], 4
jne .L_170F
.L_1710:
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
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, dword ptr [_LISTREG]
mov edx, dword ptr [eax]
push dword ptr [_REGSTRB+edx*4]
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea edx, [ebp-3780]
push edx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_16F6
.L_170F:
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3780]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
push 0
push -1
push -1
push dword ptr [ebp-20]
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_171C
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3804]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3804]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3804]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
.L_1718:
.L_16F6:
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_CTX+228]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_1721
push 3
mov dword ptr [ebp-3816], 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
push 0
push -1
push 0
mov edx, dword ptr [ebp-12]
sal edx, 2
add edx, dword ptr [_LISTREG]
mov eax, dword ptr [edx]
push dword ptr [_REGSTRQ+eax*4]
push -1
push 8
push offset _Lt_157E
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 3
add eax, -8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_03A7
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
lea eax, [ebp-3792]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3804], 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
lea eax, [ebp-3804]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3816]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3816]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3816]
push eax
call _fb_StrDelete
add esp, 4
.L_1721:
.L_1720:
.L_16BB:
.L_16A2:
.L_161D:
.L_1548:
push dword ptr [ebp-24]
lea eax, [_IRHL+60]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
jmp .L_14A5
.L_14A6:
mov eax, dword ptr [_CTX+80]
cmp dword ptr [ebp-8], eax
jle .L_1727
mov eax, dword ptr [ebp-8]
mov dword ptr [_CTX+80], eax
.L_1727:
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+16]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_1729
push 0
push dword ptr [ebp+16]
call _HWRITEASM64
add esp, 8
.L_1729:
cmp byte ptr [ebp+32], 0
je .L_172B
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 6
push offset _Lt_1495
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3780]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call _REG_FREEABLE
add esp, 4
lea eax, [ebp-3780]
push eax
call _fb_StrDelete
add esp, 4
.L_172B:
cmp dword ptr [ebp-3740], 0
je .L_172F
mov eax, dword ptr [ebp-3740]
mov ecx, 16
cdq
idiv ecx
mov eax, edx
test eax, eax
je .L_1731
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
push offset _Lt_1732
push -1
lea eax, [ebp-3768]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3768]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3768]
push eax
call _fb_StrDelete
add esp, 4
.L_1731:
.L_1730:
mov eax, dword ptr [ebp-3736]
mov dword ptr [ebp-3760], eax
jmp .L_1734
.L_1737:
push 4
push offset _Lt_0248
push -1
push 3
mov eax, dword ptr [ebp-3760]
imul eax, 12
lea edx, [ebp+eax-3696]
push edx
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_1739
push 3
mov eax, dword ptr [ebp-3760]
imul eax, 12
lea edx, [ebp+eax-3696]
push edx
call _HWRITEASM64
add esp, 8
jmp .L_1738
.L_1739:
push 0
mov edx, dword ptr [ebp-3760]
imul edx, 12
lea eax, [ebp+edx-3696]
push eax
call _HWRITEASM64
add esp, 8
.L_1738:
.L_1735:
dec dword ptr [ebp-3760]
.L_1734:
cmp dword ptr [ebp-3760], 1
jge .L_1737
.L_1736:
.L_172F:
.L_172E:
cmp byte ptr [ebp+32], 0
je .L_173B
push 1
call _REG_ALLOWED
add esp, 4
.L_173B:
call _REG_SAVE
movzx eax, byte ptr [ebp+28]
neg eax
cmp eax, -1
jne .L_173D
cmp byte ptr [_CTX+232], 0
je .L_173F
push 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
push 0
push -1
push -1
cmp dword ptr [ebp-16], 8
jg .L_1740
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-3760], eax
jmp .L_1D5C
.L_1740:
mov dword ptr [ebp-3760], 8
.L_1D5C:
push dword ptr [ebp-3760]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0B3D
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
lea eax, [ebp-3772]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3784]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3784]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3784]
push eax
call _fb_StrDelete
add esp, 4
.L_173F:
.L_173E:
.L_173D:
.L_173C:
movzx eax, byte ptr [_CTX+232]
neg eax
cmp eax, -1
jne .L_1744
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-3756], eax
jmp .L_1D5D
.L_1744:
mov dword ptr [ebp-3756], 0
.L_1D5D:
cmp dword ptr [ebp-3756], 0
je .L_1747
push 1
mov dword ptr [ebp-3792], 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
push 0
push -1
push 5
push offset _Lt_1496
push -1
push -1
push dword ptr [ebp+12]
push 6
push offset _Lt_1495
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
lea eax, [ebp-3780]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3792]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3792]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3792]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1746
.L_1747:
push 1
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 6
push offset _Lt_1495
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3780]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call _fb_StrDelete
add esp, 4
.L_1746:
cmp dword ptr [ebp-3740], 0
je .L_174E
push 0
mov dword ptr [ebp-3780], 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
push 0
push -1
push -1
push dword ptr [ebp-3740]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_174F
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
mov dword ptr [ebp-3760], 0
lea eax, [ebp-3768]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3780]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3780]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3780]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-3740], 0
mov dword ptr [ebp-3736], 0
.L_174E:
.L_174D:
mov edx, dword ptr [_CTX+104]
mov eax, dword ptr [_CTX+108]
cmp dword ptr [_CTX+124], eax
jl .L_1753
jg .L_1D91
cmp dword ptr [_CTX+120], edx
jbe .L_1753
.L_1D91:
mov eax, dword ptr [_CTX+120]
mov edx, dword ptr [_CTX+124]
mov dword ptr [_CTX+104], eax
mov dword ptr [_CTX+108], edx
.L_1753:
mov dword ptr [_CTX+112], 0
mov dword ptr [_CTX+116], 0
mov byte ptr [_CTX+153], 0
cmp dword ptr [ebp+20], 0
je .L_1755
push dword ptr [ebp+20]
call _HISSTRUCTIN2REGS
add esp, 4
test eax, eax
je .L_1757
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 1
mov eax, dword ptr [_SYMB_DTYPETB+368]
sal eax, 1
mov ecx, eax
mov edx, ecx
sar edx, 31
add dword ptr [_CTX+96], ecx
adc dword ptr [_CTX+100], edx
mov edx, dword ptr [_CTX+96]
mov ecx, dword ptr [_CTX+100]
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
jmp .L_1759
.L_175B:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 11
push offset _Lt_175C
push -1
push -1
mov edx, dword ptr [ebp+20]
push dword ptr [edx+40]
push dword ptr [edx+36]
call _fb_LongintToStr
add esp, 8
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 11
push offset _Lt_1760
push -1
push -1
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+36]
mov edx, dword ptr [eax+40]
add ecx, 8
adc edx, 0
push edx
push ecx
call _fb_LongintToStr
add esp, 8
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1758
.L_1764:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 11
push offset _Lt_175C
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 12
push offset _Lt_1768
push -1
push -1
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
add edx, 8
adc ecx, 0
push ecx
push edx
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1758
.L_176C:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 12
push offset _Lt_1768
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 11
push offset _Lt_175C
push -1
push -1
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+36]
mov edx, dword ptr [eax+40]
add ecx, 8
adc edx, 0
push edx
push ecx
call _fb_LongintToStr
add esp, 8
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1758
.L_1773:
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push 12
push offset _Lt_1768
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3836], 0
mov dword ptr [ebp-3832], 0
mov dword ptr [ebp-3828], 0
push 0
push -1
push 12
push offset _Lt_1777
push -1
push -1
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
add edx, 8
adc ecx, 0
push ecx
push edx
call _fb_LongintToStr
add esp, 8
push eax
push 6
push offset _Lt_07BD
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
lea eax, [ebp-3812]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3824], 0
mov dword ptr [ebp-3820], 0
mov dword ptr [ebp-3816], 0
lea eax, [ebp-3824]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3836]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3836]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3836]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1758
.L_1759:
mov eax, dword ptr [ebp-3764]
add eax, 4294967294
cmp eax, 4
ja .L_1758
mov eax, dword ptr [ebp-3764]
jmp dword ptr [_.L_177B+eax*4-8]
_.L_177B:
.int .L_175B
.int .L_1764
.int .L_1758
.int .L_176C
.int .L_1773
.L_1758:
lea eax, [ebp-3732]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_14A1
.L_1757:
.L_1756:
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-20], edx
mov edx, dword ptr [ebp-20]
and edx, 480
je .L_177C
mov dword ptr [ebp-3760], 24
jmp .L_1D5E
.L_177C:
mov edx, dword ptr [ebp-20]
and edx, 31
mov dword ptr [ebp-3760], edx
.L_1D5E:
cmp dword ptr [ebp-3760], 24
jne .L_177F
mov dword ptr [ebp-20], 8
.L_177F:
cmp dword ptr [ebp-20], 16
jne .L_1781
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+28]
and eax, 511
cmp eax, 20
je .L_1783
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset _Lt_1784
push -1
lea eax, [ebp-3772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3772]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1782
.L_1783:
mov eax, dword ptr [_ENV+284]
and eax, 16
test eax, eax
je .L_1787
mov eax, dword ptr [_ENV+284]
and eax, 32
test eax, eax
je .L_1789
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset _Lt_1784
push -1
lea eax, [ebp-3772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3772]
push eax
call _fb_StrDelete
add esp, 4
.L_1789:
.L_1788:
jmp .L_1786
.L_1787:
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset _Lt_1784
push -1
lea eax, [ebp-3772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3772]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3772]
push eax
call _fb_StrDelete
add esp, 4
.L_1786:
.L_1782:
jmp .L_1780
.L_1781:
cmp dword ptr [ebp-20], 15
jne .L_178C
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+28]
and edx, 511
cmp edx, 20
je .L_178E
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset _Lt_178F
push -1
lea edx, [ebp-3772]
push edx
call _fb_StrAssign
add esp, 20
lea edx, [ebp-3772]
push edx
call _HWRITEASM64
add esp, 8
lea edx, [ebp-3772]
push edx
call _fb_StrDelete
add esp, 4
jmp .L_178D
.L_178E:
mov edx, dword ptr [_ENV+284]
and edx, 16
test edx, edx
je .L_1792
mov edx, dword ptr [_ENV+284]
and edx, 32
test edx, edx
je .L_1794
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset _Lt_178F
push -1
lea edx, [ebp-3772]
push edx
call _fb_StrAssign
add esp, 20
lea edx, [ebp-3772]
push edx
call _HWRITEASM64
add esp, 8
lea edx, [ebp-3772]
push edx
call _fb_StrDelete
add esp, 4
.L_1794:
.L_1793:
jmp .L_1791
.L_1792:
push 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
mov dword ptr [ebp-3764], 0
push 0
push 15
push offset _Lt_178F
push -1
lea edx, [ebp-3772]
push edx
call _fb_StrAssign
add esp, 20
lea edx, [ebp-3772]
push edx
call _HWRITEASM64
add esp, 8
lea edx, [ebp-3772]
push edx
call _fb_StrDelete
add esp, 4
.L_1791:
.L_178D:
.L_178C:
.L_1780:
push -1
mov edx, dword ptr [ebp+20]
push dword ptr [edx+12]
call _REG_FINDFREE
add esp, 8
mov edx, dword ptr [ebp+20]
mov eax, dword ptr [edx]
mov dword ptr [ebp-3764], eax
cmp dword ptr [ebp-3764], 4
jne .L_1799
.L_179A:
cmp dword ptr [ebp-20], 8
je .L_179D
.L_179E:
cmp dword ptr [ebp-20], 9
je .L_179D
.L_179F:
cmp dword ptr [ebp-20], 13
je .L_179D
.L_17A0:
cmp dword ptr [ebp-20], 14
je .L_179D
.L_17A1:
cmp dword ptr [ebp-20], 16
je .L_179D
.L_17A2:
cmp dword ptr [ebp-20], 10
jne .L_179C
.L_179D:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [_REGSTRQ]
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_179B
.L_179C:
cmp dword ptr [ebp-20], 11
je .L_17A8
.L_17A9:
cmp dword ptr [ebp-20], 12
je .L_17A8
.L_17AA:
cmp dword ptr [ebp-20], 15
jne .L_17A7
.L_17A8:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRD+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [_REGSTRD]
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_179B
.L_17A7:
cmp dword ptr [ebp-20], 5
je .L_17B0
.L_17B1:
cmp dword ptr [ebp-20], 6
jne .L_17AF
.L_17B0:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRW+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [_REGSTRW]
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_179B
.L_17AF:
cmp dword ptr [ebp-20], 2
je .L_17B7
.L_17B8:
cmp dword ptr [ebp-20], 3
je .L_17B7
.L_17B9:
cmp dword ptr [ebp-20], 1
je .L_17B7
.L_17BA:
cmp dword ptr [ebp-20], 4
jne .L_17B6
.L_17B7:
push 0
push 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRB+eax*4]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push -1
push 0
push dword ptr [_REGSTRB]
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-44]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
lea eax, [ebp-3776]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
lea eax, [ebp-3800]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_179B
.L_17B6:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push -1
push -1
push dword ptr [ebp-20]
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_17C3
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
lea eax, [ebp-3788]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3812], 0
mov dword ptr [ebp-3808], 0
mov dword ptr [ebp-3804], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3812]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3812]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [_REGSTRQ+68]
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
.L_17BF:
.L_179B:
jmp .L_1797
.L_1799:
push 0
mov dword ptr [ebp-3776], 0
mov dword ptr [ebp-3772], 0
mov dword ptr [ebp-3768], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3776]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3776]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3776]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3788], 0
mov dword ptr [ebp-3784], 0
mov dword ptr [ebp-3780], 0
push 0
push 62
push offset _Lt_17CA
push -1
lea eax, [ebp-3788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3788]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3788]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-3800], 0
mov dword ptr [ebp-3796], 0
mov dword ptr [ebp-3792], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-3800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-3800]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-3800]
push eax
call _fb_StrDelete
add esp, 4
.L_17C7:
.L_1797:
.L_1755:
.L_1754:
lea eax, [ebp-3732]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
.L_14A1:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALL:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_17CD:
mov byte ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_17D0
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 4
jne .L_17D2
mov byte ptr [ebp-4], 1
.L_17D2:
.L_17D1:
.L_17D0:
.L_17CF:
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
push offset _Lt_0000
push -1
lea ebx, [ebp-32]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-32]
push ebx
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call _HDOCALL
add esp, 28
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_17CE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALLPTR:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.L_17D5:
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
jne .L_17D9
.L_17DA:
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_17D7
.L_17D9:
cmp dword ptr [ebp-36], 2
jne .L_17DB
.L_17DC:
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _PREPARE_IDX
add esp, 12
jmp .L_17D7
.L_17DB:
cmp dword ptr [ebp-36], 3
jne .L_17DD
.L_17DE:
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+48]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
push 2
push offset _Lt_0135
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_17D7
.L_17DD:
cmp dword ptr [ebp-36], 5
jne .L_17E2
.L_17E3:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_17D7
.L_17E2:
cmp dword ptr [ebp-36], 0
jne .L_17E4
.L_17E5:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 44
push offset _Lt_17E8
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_17D7
.L_17E4:
cmp dword ptr [ebp-36], 1
jne .L_17EB
.L_17EC:
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
je .L_17EE
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_17ED
.L_17EE:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_17ED:
jmp .L_17D7
.L_17EB:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 51
push offset _Lt_0A5E
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.L_17F3:
.L_17D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_17F8
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebx+56], 4
jne .L_17FA
mov byte ptr [ebp-28], 1
.L_17FA:
.L_17F9:
.L_17F8:
.L_17F7:
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
call _HDOCALL
add esp, 28
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
.L_17D6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJUMPPTR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_17FB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_CTX+136]
cmp dword ptr [eax+12], ebx
jne .L_17FE
mov ebx, dword ptr [_CTX+132]
mov dword ptr [ebp-4], ebx
mov dword ptr [_CTX+140], 0
mov dword ptr [_CTX+136], -2
jmp .L_17FD
.L_17FE:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-4], eax
.L_17FD:
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_0112
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_17FC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 36
.L_1801:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset _Lt_00F8
push 0
push dword ptr [ebp+8]
call _HGETBOPCODE
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CTX+236], 0
je .L_1807
mov eax, dword ptr [_CTX+236]
mov dword ptr [_REGHANDLE+eax*4], -2
mov dword ptr [_CTX+236], 0
.L_1807:
.L_1806:
cmp dword ptr [_CTX+216], 0
je .L_1809
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+220], eax
.L_1809:
.L_1808:
cmp dword ptr [ebp+8], 98
je .L_180B
push dword ptr [ebp+12]
call _REG_MARK
add esp, 4
.L_180B:
.L_180A:
.L_1802:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITRETURN:
push ebp
mov ebp, esp
sub esp, 24
.L_180C:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 38
push offset _Lt_180E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 4
push offset _Lt_0650
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_180D:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 356
push ebx
push esi
push edi
.L_1811:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
cmp dword ptr [ebp+24], 0
jne .L_1815
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 5
push offset _Lt_0112
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1814
.L_1815:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
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
push offset _Lt_046A
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp+36], 0
mov eax, -1
ja .L_1D94
jb .L_1D95
cmp dword ptr [ebp+32], 2147483647
ja .L_1D94
.L_1D95:
xor eax, eax
.L_1D94:
cmp dword ptr [ebp+36], 4294967295
mov ebx, -1
jb .L_1D96
ja .L_1D97
cmp dword ptr [ebp+32], 2147483648
jb .L_1D96
.L_1D97:
xor ebx, ebx
.L_1D96:
and eax, ebx
je .L_181B
push 0
push 0
push -1
push 999998
call _REG_FINDFREE
add esp, 8
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
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
call _fb_ULongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-332]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-332]
push eax
call _fb_StrDelete
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
push offset _Lt_1820
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
lea eax, [ebp-344]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-356]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-356]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-356]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_181A
.L_181B:
push 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push -1
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call _fb_ULongintToStr
add esp, 8
push eax
push 10
push offset _Lt_1820
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-308]
push eax
call _fb_StrDelete
add esp, 4
.L_181A:
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push -1
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call _fb_ULongintToStr
add esp, 8
push eax
push 10
push offset _Lt_1825
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 4
push offset _Lt_099F
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push -1
push 999997
call _REG_FINDFREE
add esp, 8
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov dword ptr [_REGHANDLE+eax*4], -2
push 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push 6
push offset _Lt_182A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_012A
push -1
push 0
mov eax, dword ptr [ebp-56]
push dword ptr [_REGSTRQ+eax*4]
push 5
push offset _Lt_017B
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 2
push offset _Lt_0169
push -1
push 0
mov eax, dword ptr [ebp-56]
push dword ptr [_REGSTRQ+eax*4]
push 22
push offset _Lt_1830
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 6
push offset _Lt_055B
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 9
push offset _Lt_055D
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-272]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-288], 0
mov eax, dword ptr [ebp+40]
mov dword ptr [ebp-292], eax
jmp .L_1839
.L_183C:
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
jne .L_183E
cmp ebx, edi
jne .L_183E
.L_1D98:
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
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_027F
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-316]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-316]
push eax
call _fb_StrDelete
add esp, 4
inc dword ptr [ebp-52]
jmp .L_183D
.L_183E:
push 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_027F
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-316]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-316]
push eax
call _fb_StrDelete
add esp, 4
.L_183D:
.L_183A:
inc dword ptr [ebp-288]
.L_1839:
mov eax, dword ptr [ebp-292]
cmp dword ptr [ebp-288], eax
jle .L_183C
.L_183B:
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 6
push offset _Lt_05EB
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _ASM_SECTION
add esp, 4
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
.L_1814:
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_1812:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMEM:
push ebp
mov ebp, esp
sub esp, 304
push ebx
.L_1844:
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
push offset _Lt_03ED
push -1
lea eax, [ebp-72]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
cmp dword ptr [ebp+8], 107
jne .L_1847
.L_1848:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_184A
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
mov dword ptr [ebp-88], eax
push 0
push 0
mov eax, dword ptr [ebp-88]
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-84], 1
jmp .L_1849
.L_184A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 1
jne .L_184B
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
je .L_184D
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_184C
.L_184D:
push 0
push -1
push 6
push offset _Lt_0421
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_184C:
mov dword ptr [ebp-84], 0
jmp .L_1849
.L_184B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .L_1852
push 0
push -1
push 2
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push 6
push offset _Lt_08B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-84], 1
push 0
push 5
push offset _Lt_017B
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_1849
.L_1852:
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 49
push offset _Lt_1858
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1845
.L_1849:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .L_185C
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+12]
call _REG_FINDREAL
add esp, 4
push dword ptr [_REGSTRQ+eax*4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
push offset _Lt_012A
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0D9E
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
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
push offset _Lt_1861
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-160]
push eax
call _fb_StrDelete
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
push offset _Lt_046A
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 22
push offset _Lt_1868
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 8
push offset _Lt_186A
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-232]
push eax
call _fb_StrDelete
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
push offset _Lt_04E8
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-256]
push eax
call _fb_StrDelete
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
push offset _Lt_047B
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
push 0
push -1
push 2
push offset _Lt_00EE
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-304]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-304]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-304]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1845
.L_185C:
.L_185B:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_1873
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 54
push offset _Lt_1876
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1845
.L_1873:
.L_1872:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jne .L_187A
cmp dword ptr [eax+24], 0
jne .L_187A
.L_1D9B:
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1845
.L_187A:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-96], ecx
mov dword ptr [ebp-92], ebx
cmp dword ptr [ebp-92], 0
jg .L_187E
jl .L_1D9C
cmp dword ptr [ebp-96], 8
ja .L_187E
.L_1D9C:
.L_187F:
cmp dword ptr [ebp-92], 0
jne .L_1D9D
cmp dword ptr [ebp-96], 3
je .L_187E
.L_1D9D:
.L_1880:
cmp dword ptr [ebp-92], 0
jne .L_1D9E
cmp dword ptr [ebp-96], 5
je .L_187E
.L_1D9E:
.L_1881:
cmp dword ptr [ebp-92], 0
jne .L_1D9F
cmp dword ptr [ebp-96], 6
je .L_187E
.L_1D9F:
.L_1882:
cmp dword ptr [ebp-92], 0
jne .L_187D
cmp dword ptr [ebp-96], 7
jne .L_187D
.L_1DA0:
.L_187E:
push dword ptr [ebp-84]
lea ecx, [ebp-12]
push ecx
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+24]
push ebx
call _MEMCLEAR
add esp, 12
jmp .L_187B
.L_187D:
cmp dword ptr [ebp-92], 0
jne .L_1883
cmp dword ptr [ebp-96], 1
jne .L_1883
.L_1DA1:
.L_1884:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_1886
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 5
push offset _Lt_0470
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset _Lt_1887
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea ebx, [ebp-108]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITEASM64
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_1885
.L_1886:
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
push offset _Lt_188B
push -1
push 0