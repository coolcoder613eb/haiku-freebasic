	.intel_syntax noprefix

.section .text
.balign 16
fb_ctor__irzllvm:
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
_ZN13IRLLVMCONTEXTC1Ev:
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
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 32
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 152
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 164
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 176
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 180
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 184
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 196
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 200
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 204
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 216
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 228
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
.L_007B:
.L_007C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN13IRLLVMCONTEXTaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_007D:
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
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 24
lea ebx, [ecx]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 24
lea ecx, [ebx]
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-4], 0
.L_0080:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
inc dword ptr [ebp-8]
inc dword ptr [ebp-12]
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 128
jne .L_0080
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 152
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 152
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 164
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 164
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
add ebx, 176
mov ecx, dword ptr [ebp+8]
add ecx, 176
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 180
mov ecx, dword ptr [ebp+8]
add ecx, 180
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 184
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 184
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
add ebx, 196
mov ecx, dword ptr [ebp+8]
add ecx, 196
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 200
mov ecx, dword ptr [ebp+8]
add ecx, 200
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 204
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 204
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 216
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 216
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 228
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 228
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 20
.L_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN13IRLLVMCONTEXTD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0085:
.L_0086:
mov eax, dword ptr [ebp+8]
add eax, 228
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 216
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 204
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 184
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 164
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 152
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
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
_INIT:
.L_0090:
call IRHLINIT
or dword ptr [IR+272], 131074
call FBIS64BIT
test eax, eax
je .L_0093
mov eax, dword ptr [DTYPENAME+52]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+56]
mov dword ptr [DTYPENAME+36], eax
jmp .L_0092
.L_0093:
mov eax, dword ptr [DTYPENAME+44]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+48]
mov dword ptr [DTYPENAME+36], eax
.L_0092:
.L_0091:
ret
.balign 16
_END:
.L_0094:
call IRHLEND
.L_0095:
ret
.balign 16
HWRITELINE:
push ebp
mov ebp, esp
sub esp, 20
.L_0096:
cmp dword ptr [CTX], 0
jle .L_0098
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_052C
.L_0098:
mov dword ptr [ebp-4], 0
.L_052C:
cmp dword ptr [ebp-4], 0
je .L_009B
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
push 1
push offset Lt_009C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [CTX]
call fb_StrFill2
add esp, 8
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
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_009B:
.L_009A:
push 0
push 2
push offset Lt_009E
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [CTX+200]
mov dword ptr [ebp-8], eax
jmp .L_00A0
.L_00A2:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [CTX+204]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+204]
push eax
call fb_StrAssign
add esp, 20
jmp .L_009F
.L_00A4:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [CTX+216]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+216]
push eax
call fb_StrAssign
add esp, 20
jmp .L_009F
.L_00A6:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [CTX+228]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+228]
push eax
call fb_StrAssign
add esp, 20
jmp .L_009F
.L_00A0:
cmp dword ptr [ebp-8], 2
ja .L_009F
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00A8+eax*4]
.L_00A8:
.int .L_00A2
.int .L_00A4
.int .L_00A6
.L_009F:
.L_0097:
mov esp, ebp
pop ebp
ret
.balign 16
HINTERNALCOMMAND:
push ebp
mov ebp, esp
sub esp, 24
.L_00A9:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
push 3
push offset Lt_00AB
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
call HWRITELINE
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_00AA:
mov esp, ebp
pop ebp
ret
.balign 16
HASTCOMMAND:
push ebp
mov ebp, esp
sub esp, 12
.L_00AE:
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
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+8]
call HINTERNALCOMMAND
add esp, 4
.L_00AF:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITELABEL:
push ebp
mov ebp, esp
sub esp, 24
.L_00B1:
dec dword ptr [CTX]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 2
push offset Lt_00B3
push 0
push dword ptr [ebp+8]
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
call HWRITELINE
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
inc dword ptr [CTX]
.L_00B2:
mov esp, ebp
pop ebp
ret
.balign 16
HSYMNAME:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_00B9
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00B8
.L_00B9:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00B8:
.L_00B7:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
VREGPRETTY:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00BA:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
jne .L_00BE
.L_00BF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00C0
mov dword ptr [ebp-32], 24
jmp .L_052E
.L_00C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_052E:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .L_00C3
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00C2
.L_00C3:
push 0
push -1
mov eax, dword ptr [ebp+8]
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
.L_00C2:
jmp .L_00BC
.L_00BE:
cmp dword ptr [ebp-28], 4
jne .L_00C4
.L_00C5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_00C7
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call HSYMNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00C6
.L_00C7:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 4
push eax
push 3
push offset Lt_00C8
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_00C6:
jmp .L_00BC
.L_00C4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_00CC
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call HSYMNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_00CC:
.L_00CB:
.L_00CA:
.L_00BC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00CE
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_00D0
push 0
push 2
push offset Lt_00D1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_00D0:
.L_00CF:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call VREGPRETTY
add esp, 4
push eax
push -1
lea eax, [ebp-24]
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
call fb_StrAssign
add esp, 20
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_052F
cmp dword ptr [eax+36], 0
je .L_00D4
.L_052F:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_00D1
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_00D4:
.L_00D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
je .L_00D8
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call fb_IntToStr
add esp, 4
push eax
push 2
push offset Lt_00D9
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_00D8:
.L_00D7:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_00BB:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITPARAMNAME:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DC:
push 0
push -1
push 2
push offset Lt_00DE
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00DD:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HEMITPROCCALLCONV:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E0:
call FBGETCPUFAMILY
test eax, eax
je .L_00E3
jmp .L_00E1
.L_00E3:
.L_00E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-16], ebx
jmp .L_00E5
.L_00E7:
push 0
push 15
push offset Lt_00E8
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_00E4
.L_00E9:
push 0
push 14
push offset Lt_00EA
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_00E4
.L_00EB:
push 0
push 14
push offset Lt_00EC
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_00E4
.L_00E5:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967295
cmp ebx, 5
ja .L_00E4
mov ebx, dword ptr [ebp-16]
jmp dword ptr [.L_00ED+ebx*4-4]
.L_00ED:
.int .L_00E7
.int .L_00E7
.int .L_00E4
.int .L_00E7
.int .L_00E9
.int .L_00EB
.L_00E4:
.L_00E1:
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITPROCHEADER:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call HEMITPROCCALLCONV
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
push ebx
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+16], 0
jne .L_00F3
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_00F3:
.L_00F2:
push 0
push 3
push offset Lt_00F5
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-48], 0
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_00F7
cmp dword ptr [ebp+12], 0
je .L_00F9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-48], ebx
push 0
push -1
push -1
push dword ptr [ebp-48]
mov ebx, dword ptr [ebp-48]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 32505856
or eax, ecx
push eax
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00F8
.L_00F9:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-48], eax
push 0
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 31
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp-48]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 32505856
or ecx, ebx
push ecx
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-48]
call HEMITPARAMNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_00F8:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_00FD
push 0
push 3
push offset Lt_00FE
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_00FD:
.L_00FC:
.L_00F7:
.L_00F6:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .L_00FF
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-52], eax
jmp .L_0530
.L_00FF:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-52], ecx
.L_0530:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
.L_0101:
cmp dword ptr [ebp-56], 0
je .L_0102
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ecx+56], 4
jne .L_0104
push 0
push 4
push offset Lt_0105
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
jmp .L_0103
.L_0104:
lea ecx, [ebp-32]
push ecx
lea ecx, [ebp-28]
push ecx
push dword ptr [ebp-56]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+12], 0
jne .L_0107
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-56]
push dword ptr [eax+60]
call HEMITPARAMNAME
add esp, 4
push eax
push 2
push offset Lt_00F1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0107:
.L_0106:
.L_0103:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_010A
mov eax, dword ptr [ebp-56]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-60], ecx
jmp .L_0531
.L_010A:
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-60], eax
.L_0531:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
je .L_010D
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_010D:
.L_010C:
jmp .L_0101
.L_0102:
push 0
push 3
push offset Lt_010E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+16], 0
jne .L_0110
push 0
push 10
push offset Lt_0111
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 128
je .L_0113
push 0
push 7
push offset Lt_0114
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_0113:
.L_0112:
.L_0110:
.L_010F:
push 0
push -1
lea ecx, [ebp-24]
push ecx
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrAssign
add esp, 20
lea ecx, [ebp-24]
push ecx
call fb_StrDelete
add esp, 4
.L_00EF:
lea ecx, [ebp-12]
push ecx
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETUDTNAME:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0115:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
push 0
push 2
push offset Lt_0117
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 20
.L_0118:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-16], eax
je .L_0119
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0007
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .L_0118
.L_0119:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_011C
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
jmp .L_011B
.L_011C:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
.L_011B:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_0116:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITUDT:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_011F:
cmp dword ptr [ebp+8], 0
jne .L_0122
jmp .L_0120
.L_0122:
.L_0121:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_0124
jmp .L_0120
.L_0124:
.L_0123:
mov ebx, dword ptr [CTX+200]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
jne .L_0126
mov dword ptr [CTX+200], 0
.L_0126:
.L_0125:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0128
.L_012A:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push 0
push 10
call HEMITTYPE
add esp, 8
push eax
push -1
push 9
push offset Lt_012B
push -1
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0127
.L_012F:
push dword ptr [ebp+8]
call HEMITSTRUCT
add esp, 4
jmp .L_0127
.L_0128:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 1
ja .L_0127
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0130+eax*4-36]
.L_0130:
.int .L_012A
.int .L_012F
.L_0127:
mov eax, dword ptr [ebp-4]
mov dword ptr [CTX+200], eax
.L_0120:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDSTRLIT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0131:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .L_0134
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0134:
.L_0133:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_0136
.L_0139:
mov eax, dword ptr [ebp+16]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_013C
push 0
push -1
push -1
push 2
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 8
push eax
push 2
push offset Lt_013D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_013B
.L_013C:
push 0
push -1
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_013B:
.L_0137:
inc dword ptr [ebp-8]
.L_0136:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_0139
.L_0138:
.L_013F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .L_0140
push 0
push 4
push offset Lt_0141
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
inc dword ptr [ebp+20]
jmp .L_013F
.L_0140:
.L_0132:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDWSTRLIT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0142:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .L_0145
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0145:
.L_0144:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-16], eax
jmp .L_0147
.L_014A:
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, dword ptr [ebp+16]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_014C
cmp dword ptr [ebp-8], 1
jb .L_014E
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
and eax, 255
push eax
call fb_HEXEx_i
add esp, 8
push eax
push 2
push offset Lt_013D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_014E:
.L_014D:
cmp dword ptr [ebp-8], 2
jb .L_0151
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 8
and eax, 255
push eax
call fb_HEXEx_i
add esp, 8
push eax
push 2
push offset Lt_013D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0151:
.L_0150:
cmp dword ptr [ebp-8], 4
jb .L_0154
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 16
and eax, 255
push eax
call fb_HEXEx_i
add esp, 8
push eax
push 2
push offset Lt_013D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 24
and eax, 255
push eax
call fb_HEXEx_i
add esp, 8
push eax
push 2
push offset Lt_013D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0154:
.L_0153:
jmp .L_014B
.L_014C:
push 0
push -1
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-20], 2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
jmp .L_0158
.L_015B:
push 0
push 4
push offset Lt_0141
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0159:
inc dword ptr [ebp-20]
.L_0158:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_015B
.L_015A:
.L_014B:
.L_0148:
inc dword ptr [ebp-12]
.L_0147:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_014A
.L_0149:
.L_015C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .L_015D
mov dword ptr [ebp-12], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .L_015F
.L_0162:
push 0
push 4
push offset Lt_0141
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0160:
inc dword ptr [ebp-12]
.L_015F:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_0162
.L_0161:
inc dword ptr [ebp+20]
jmp .L_015C
.L_015D:
.L_0143:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTRLITTYPE:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0163:
push 0
push 2
push offset Lt_0165
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset Lt_0166
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0164:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSYMTYPE:
push ebp
mov ebp, esp
sub esp, 92
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0167:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_016A
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-28]
and eax, 31
mov ebx, dword ptr [ebp-28]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-28]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-28]
and ebx, 32505856
or eax, ebx
push eax
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0169
.L_016A:
cmp dword ptr [ebp-28], 18
je .L_016D
.L_016E:
cmp dword ptr [ebp-28], 4
je .L_016D
.L_016F:
cmp dword ptr [ebp-28], 7
jne .L_016C
.L_016D:
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
push ebx
call HEMITSTRLITTYPE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_016B
.L_016C:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-28]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0170:
.L_016B:
.L_0169:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_0172
jmp .L_0171
.L_0172:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
je .L_0176
.L_0177:
cmp dword ptr [ebp-32], 12
jne .L_0175
.L_0176:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-36], ebx
jmp .L_0178
.L_017B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
sal eax, 4
mov ecx, dword ptr [ebx+64]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov esi, dword ptr [eax+64]
add esi, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
sub eax, dword ptr [esi]
sbb ebx, dword ptr [esi+4]
add eax, 1
adc ebx, 0
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], ebx
push 0
push -1
push -1
push 2
push offset Lt_017D
push -1
push -1
lea eax, [ebp-24]
push eax
push 4
push offset Lt_017C
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
push -1
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_0165
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0179:
dec dword ptr [ebp-36]
.L_0178:
cmp dword ptr [ebp-36], 0
jge .L_017B
.L_017A:
.L_0175:
.L_0173:
.L_0171:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0168:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITVARIABLE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0182:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_0185
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_0187
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0183
.L_0187:
.L_0186:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
je .L_018B
.L_018C:
cmp dword ptr [ebp-24], 7
jne .L_018A
.L_018B:
push 0
push -1
push 4
push offset Lt_018D
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
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
push 18
push offset Lt_018F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_0190
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .L_0192
mov eax, dword ptr [SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call __divdi3
add esp, 16
mov ebx, eax
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
mov dword ptr [ebp-40], 0
lea ebx, [ebp-40]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HUNESCAPEW
add esp, 8
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call HBUILDWSTRLIT
add esp, 16
jmp .L_0191
.L_0192:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
mov dword ptr [ebp-40], 0
lea ebx, [ebp-40]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 8
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call HBUILDSTRLIT
add esp, 16
.L_0191:
push 0
push 2
push offset Lt_013A
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
.L_018A:
.L_0195:
.L_0188:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0183
.L_0185:
.L_0184:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 128
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or edx, ecx
and ebx, edx
je .L_0197
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 128
test ebx, ebx
jne .L_0199
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+12]
and edx, 2
test edx, edx
jne .L_019B
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 32
test ebx, ebx
jne .L_019D
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0183
.L_019D:
.L_019C:
.L_019B:
.L_019A:
.L_0199:
.L_0198:
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 4
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0183
.L_0197:
.L_0196:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+4]
and edx, 16388
test edx, edx
je .L_019F
lea edx, [ebp-12]
push edx
call fb_StrDelete
add esp, 4
jmp .L_0183
.L_019F:
.L_019E:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 59
mov dword ptr [ebp-16], ebx
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_018D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-16], 0
je .L_01A1
push 0
push 7
push offset Lt_01A2
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01A0
.L_01A1:
push 0
push 7
push offset Lt_01A3
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01A0:
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-16], 0
je .L_01A5
push 0
push 17
push offset Lt_01A6
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01A5:
.L_01A4:
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0183:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITGLOBALVAR:
push ebp
mov ebp, esp
.L_01A7:
push dword ptr [ebp+8]
call SYMBISDATADESC
add esp, 4
test eax, eax
jne .L_01AA
push dword ptr [ebp+8]
call HEMITVARIABLE
add esp, 4
.L_01AA:
.L_01A9:
.L_01A8:
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITPROCPROTO:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_01AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_01AE
jmp .L_01AC
.L_01AE:
.L_01AD:
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
test eax, eax
jne .L_01B0
jmp .L_01AC
.L_01B0:
.L_01AF:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 128
test ecx, ecx
je .L_01B2
jmp .L_01AC
.L_01B2:
.L_01B1:
mov ecx, dword ptr [CTX+200]
mov dword ptr [ebp-4], ecx
mov dword ptr [CTX+200], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push 0
push -1
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 12
push eax
push 9
push offset Lt_01B3
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
call HWRITELINE
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-4]
mov dword ptr [CTX+200], eax
.L_01AC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTRUCT:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_01B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .L_01B9
jmp .L_01B7
.L_01B9:
.L_01B8:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 134217728
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.L_01BA:
cmp dword ptr [ebp-4], 0
je .L_01BB
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call HEMITUDT
add esp, 4
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01BA
.L_01BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_01BD
jmp .L_01B7
.L_01BD:
.L_01BC:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .L_01BF
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01BE
.L_01BF:
push 0
push -1
push -1
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push 2
push offset Lt_0117
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
.L_01BE:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
push 0
push 9
push offset Lt_012B
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-20], 0
je .L_01C3
push 0
push 2
push offset Lt_01C4
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_01C3:
push 0
push 3
push offset Lt_01C5
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.L_01C6:
cmp dword ptr [ebp-4], 0
je .L_01C7
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_01C9
push 0
push -1
push dword ptr [ebp-4]
call HEMITSYMTYPE
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01C9:
.L_01C8:
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_01CB
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01CB:
.L_01CA:
jmp .L_01C6
.L_01C7:
push 0
push 3
push offset Lt_01CC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-20], 0
je .L_01CE
push 0
push 2
push offset Lt_01CF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01CE:
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 4
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_01B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITCTORDTORARRAYELEMENT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_01D0:
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
test eax, eax
jle .L_01D3
push 0
push 3
push offset Lt_00FE
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
.L_01D3:
.L_01D2:
push 0
push 25
push offset Lt_01D4
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+56]
call fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
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
push 0
push 12
push offset Lt_01D6
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
push 0
push 3
push offset Lt_01CC
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
.L_01D1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDGLOBALCTORDTOR:
push ebp
mov ebp, esp
push ebx
.L_01D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_01DB
jmp .L_01D9
.L_01DB:
.L_01DA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 65536
test eax, eax
je .L_01DD
inc dword ptr [CTX+176]
lea eax, [CTX+152]
push eax
push dword ptr [ebp+8]
call HEMITCTORDTORARRAYELEMENT
add esp, 8
jmp .L_01DC
.L_01DD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 131072
test ebx, ebx
je .L_01DE
inc dword ptr [CTX+180]
lea ebx, [CTX+164]
push ebx
push dword ptr [ebp+8]
call HEMITCTORDTORARRAYELEMENT
add esp, 8
.L_01DE:
.L_01DC:
.L_01D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_01DF:
lea eax, [ENV+584]
push eax
call HFILEEXISTS
add esp, 4
test eax, eax
je .L_01E2
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 4
.L_01E2:
.L_01E1:
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
je .L_01E4
mov dword ptr [ebp-4], 0
jmp .L_01E0
.L_01E4:
.L_01E3:
mov dword ptr [CTX], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+152]
push eax
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+164]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [CTX+176], 0
mov dword ptr [CTX+180], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+204]
push eax
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+216]
push eax
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+228]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [CTX+4], 0
mov dword ptr [CTX+200], 0
mov dword ptr [ebp-8], 0
.L_01E8:
mov eax, dword ptr [ebp-8]
mov dword ptr [BUILTINS+eax*8+4], 0
.L_01E6:
inc dword ptr [ebp-8]
.L_01E5:
cmp dword ptr [ebp-8], 17
jle .L_01E8
.L_01E7:
cmp dword ptr [ENV+148], 0
je .L_01EA
push 0
push 0
push 0
push 113
call _EMITDBG
add esp, 16
.L_01EA:
.L_01E9:
call FBIS64BIT
test eax, eax
je .L_01EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset Lt_01ED
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01EB
.L_01EC:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset Lt_01EF
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_01EB:
mov dword ptr [CTX+200], 1
mov dword ptr [ebp-4], -1
.L_01E0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_EMITEND:
push ebp
mov ebp, esp
sub esp, 84
.L_01F1:
mov dword ptr [CTX+200], 0
mov dword ptr [ebp-28], 0
.L_01F6:
mov eax, dword ptr [ebp-28]
cmp dword ptr [BUILTINS+eax*8+4], 0
je .L_01F8
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 0
mov eax, dword ptr [ebp-28]
push dword ptr [BUILTINS+eax*8]
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_01F8:
.L_01F7:
.L_01F4:
inc dword ptr [ebp-28]
.L_01F3:
cmp dword ptr [ebp-28], 17
jle .L_01F6
.L_01F5:
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
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push offset HMAYBEEMITPROCPROTO
push 3
call SYMBFOREACHGLOBAL
add esp, 8
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
call HWRITELINE
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push offset HMAYBEEMITGLOBALVAR
push 1
call SYMBFOREACHGLOBAL
add esp, 8
push offset HEMITVARIABLE
call IRFOREACHDATASTMT
add esp, 4
push offset HADDGLOBALCTORDTOR
push 3
call SYMBFOREACHGLOBAL
add esp, 8
cmp dword ptr [CTX+176], 0
jle .L_01FD
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push 2
push offset Lt_017D
push -1
push -1
lea eax, [CTX+152]
push eax
push 24
push offset Lt_01FF
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
push -1
push dword ptr [CTX+176]
call fb_IntToStr
add esp, 4
push eax
push 40
push offset Lt_01FE
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
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
call HWRITELINE
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_01FD:
.L_01FC:
cmp dword ptr [CTX+180], 0
jle .L_0206
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push 2
push offset Lt_017D
push -1
push -1
lea eax, [CTX+164]
push eax
push 24
push offset Lt_01FF
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
push -1
push dword ptr [CTX+180]
call fb_IntToStr
add esp, 4
push eax
push 40
push offset Lt_0207
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
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
call HWRITELINE
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0206:
.L_0205:
mov dword ptr [CTX+200], 2
push -1
lea eax, [CTX+204]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_020E
.L_020E:
.L_020D:
push -1
lea eax, [CTX+216]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_0210
.L_0210:
.L_020F:
push -1
lea eax, [CTX+228]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_0212
.L_0212:
.L_0211:
push dword ptr [ENV+580]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0214
.L_0214:
.L_0213:
mov dword ptr [ENV+580], 0
.L_01F2:
mov esp, ebp
pop ebp
ret
.balign 16
_GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0215:
cmp dword ptr [ebp+8], 1
jne .L_0218
.L_0219:
mov dword ptr [ebp-4], 0
jmp .L_0216
jmp .L_0217
.L_0218:
push 0
push 1
push 0
push offset Lt_021B
push 21
call ERRREPORTEX
add esp, 20
.L_021A:
.L_0217:
.L_0216:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SUPPORTSOP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_021C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_021F
.L_0221:
mov dword ptr [ebp-4], 0
jmp .L_021E
.L_0222:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0223
mov dword ptr [ebp-12], 24
jmp .L_0538
.L_0223:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0538:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_021E
.L_0225:
mov dword ptr [ebp-4], -1
jmp .L_021E
.L_021F:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967240
cmp ebx, 16
ja .L_0225
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_0226+ebx*4-224]
.L_0226:
.int .L_0222
.int .L_0221
.int .L_0225
.int .L_0221
.int .L_0225
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0225
.int .L_0225
.int .L_0221
.int .L_0221
.int .L_0225
.int .L_0225
.int .L_0225
.int .L_0221
.int .L_0221
.L_021E:
.L_021D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0227:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+16], ebx
.L_0228:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCEND:
push ebp
mov ebp, esp
push ebx
.L_0229:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+20], ebx
.L_022A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCARG:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.L_022B:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call HSYMNAME
add esp, 4
push eax
push 10
push offset Lt_022D
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+12]
call SYMBGETREALTYPE
add esp, 12
push 0
push -1
push 11
push offset Lt_0230
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
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
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
push 0
push 7
push offset Lt_0232
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HEMITPARAMNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00F1
push -1
push dword ptr [ebp-44]
mov eax, dword ptr [ebp-40]
and eax, 31
mov ebx, dword ptr [ebp-40]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-40]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-40]
and ebx, 32505856
or eax, ebx
push eax
call HEMITTYPE
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_022C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCLOCAL:
push ebp
mov ebp, esp
sub esp, 24
.L_0236:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call HSYMNAME
add esp, 4
push eax
push 10
push offset Lt_0238
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+12]
call HEMITVARIABLE
add esp, 4
.L_0237:
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEBEGIN:
push ebp
mov ebp, esp
.L_023B:
.L_023C:
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEEND:
push ebp
mov ebp, esp
.L_023D:
.L_023E:
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
.L_023F:
.L_0240:
mov esp, ebp
pop ebp
ret
.balign 16
_SETVREGDATATYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0241:
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
je .L_0244
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HEMITCONVERT
add esp, 8
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 17
rep movsd
pop esi
pop edi
.L_0244:
.L_0243:
.L_0242:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDOFFSET:
push ebp
mov ebp, esp
sub esp, 12
.L_0245:
push 0
push 8
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HEMITCONVERT
add esp, 8
cmp dword ptr [ebp+24], 0
jne .L_053C
cmp dword ptr [ebp+20], 0
je .L_0248
.L_053C:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 8
call IRHLALLOCVRIMM
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 8
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 28
call HEMITBOP
add esp, 20
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0248:
.L_0247:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _SETVREGDATATYPE
add esp, 12
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 17
rep movsd
pop esi
pop edi
.L_0246:
mov esp, ebp
pop ebp
ret
.balign 16
HPREPAREADDRESS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0249:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+36]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+48]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 5
jne .L_024C
jmp .L_024B
.L_024C:
mov ecx, dword ptr [ebp-4]
and ecx, 31
mov ebx, dword ptr [ebp-4]
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 261632
sal ebx, 1
or ecx, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 32505856
or ecx, ebx
mov dword ptr [ebp-4], ecx
.L_024B:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .L_024E
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov ecx, 17
rep movsd
pop esi
pop edi
jmp .L_024D
.L_024E:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], -1
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+36], 0
mov dword ptr [ecx+40], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], 0
cmp dword ptr [ebp-24], 0
je .L_0250
mov ecx, dword ptr [ebp+8]
lea ebx, [ecx+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+4]
push ecx
push dword ptr [ebp-24]
call SYMBGETREALTYPE
add esp, 12
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SETVREGDATATYPE
add esp, 12
jmp .L_024F
.L_0250:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_024F:
.L_024D:
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-12], 0
mov eax, -1
jne .L_053E
cmp dword ptr [ebp-16], 0
jne .L_053E
.L_053F:
xor eax, eax
.L_053E:
or ebx, eax
je .L_0252
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HADDOFFSET
add esp, 20
.L_0252:
.L_0251:
.L_024A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADVREG:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_0253:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 4
je .L_0258
.L_0259:
cmp dword ptr [ebp-4], 0
jne .L_0257
.L_0258:
jmp .L_0255
.L_0257:
cmp dword ptr [ebp-4], 5
jne .L_025A
.L_025B:
push dword ptr [ebp+8]
call HPREPAREADDRESS
add esp, 4
jmp .L_0255
.L_025A:
push dword ptr [ebp+8]
call HPREPAREADDRESS
add esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 480
add ecx, -32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 32505856
or eax, ecx
push eax
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push -1
push 9
push offset Lt_025D
push -1
push dword ptr [ebp-8]
call HVREGTOSTR
add esp, 4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push -1
push 3
push offset Lt_00FE
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
add ebx, -32
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32505856
or ecx, ebx
push ecx
call HEMITTYPE
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
lea eax, [ebp-20]
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
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_00F1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
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
lea eax, [ebp-20]
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
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-20]
push eax
call HWRITELINE
add esp, 4
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-8]
mov ecx, 17
rep movsd
pop esi
pop edi
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_025C:
.L_0255:
.L_0254:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITTYPE:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0263:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0266
.L_0268:
cmp dword ptr [ebp-28], 0
jne .L_026A
push 0
push 5
push offset Lt_026B
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0269
.L_026A:
push 0
push 0
push dword ptr [DTYPENAME]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0269:
jmp .L_0265
.L_026C:
cmp dword ptr [ebp+12], 0
je .L_026E
push dword ptr [ebp+12]
call HEMITUDT
add esp, 4
push 0
push -1
push dword ptr [ebp+12]
call HGETUDTNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_026D
.L_026E:
cmp dword ptr [ebp+8], 10
jne .L_026F
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0270
mov dword ptr [ebp-36], 24
jmp .L_0540
.L_0270:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0540:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_026D
.L_026F:
push 0
push 0
push dword ptr [DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
.L_026D:
jmp .L_0265
.L_0272:
dec dword ptr [ebp-28]
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
call HEMITPROCHEADER
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00D9
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0265
.L_0273:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0274
mov dword ptr [ebp-36], 24
jmp .L_0541
.L_0274:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0541:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0265
.L_0276:
push 0
push 0
push dword ptr [DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0265
.L_0277:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0265
.L_0266:
cmp dword ptr [ebp-32], 22
ja .L_0277
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.L_0278+ebx*4]
.L_0278:
.int .L_0268
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0273
.int .L_0277
.int .L_0277
.int .L_0273
.int .L_0277
.int .L_0277
.int .L_026C
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0276
.int .L_0277
.int .L_026C
.int .L_0277
.int .L_0272
.L_0265:
cmp dword ptr [ebp-28], 0
jle .L_027A
push 0
push -1
push 1
push offset Lt_00D9
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-28]
call fb_StrFill2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_027A:
.L_0279:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0264:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITINT:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_027B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 8
je .L_027F
.L_0280:
cmp dword ptr [ebp+8], 9
je .L_027F
.L_0281:
cmp dword ptr [ebp+8], 11
je .L_027F
.L_0282:
cmp dword ptr [ebp+8], 12
je .L_027F
.L_0283:
cmp dword ptr [ebp+8], 10
jne .L_027E
.L_027F:
push 0
push -1
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_027D
.L_027E:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0286
push 0
push 10
push offset Lt_0287
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0285
.L_0286:
push 0
push 7
push offset Lt_0288
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0285:
push 0
push 2
push offset Lt_0289
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push 8
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_028A
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_028B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0284:
.L_027D:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_027C:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HEMITLONG:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_028C:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_028D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HEMITFLOAT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_028E:
push 0
push 3
push offset Lt_0290
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_028F:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HISFIXLENSTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0291:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
jne .L_0294
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .L_0298
.L_0299:
cmp dword ptr [ebp-8], 4
je .L_0298
.L_029A:
cmp dword ptr [ebp-8], 7
jne .L_0297
.L_0298:
mov dword ptr [ebp-4], -1
jmp .L_0292
.L_0297:
.L_0295:
.L_0294:
.L_0293:
mov dword ptr [ebp-4], 0
.L_0292:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HVREGTOSTR:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_029B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_029E
.L_02A0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02A1
mov dword ptr [ebp-24], 24
jmp .L_0542
.L_02A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_0542:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .L_02A4
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call HEMITFLOAT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_029C
.L_02A4:
.L_02A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_02A5
mov dword ptr [ebp-28], 24
jmp .L_0543
.L_02A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0543:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_02A8
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call HEMITLONG
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_029C
.L_02A8:
.L_02A7:
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call HEMITINT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_029C
jmp .L_029D
.L_02A9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
jne .L_02AB
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_02AC
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_029C
.L_02AB:
.L_02AA:
jmp .L_029D
.L_029E:
cmp dword ptr [ebp-20], 4
ja .L_029D
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_02AE+eax*4]
.L_02AE:
.int .L_02A0
.int .L_029D
.int .L_029D
.int .L_029D
.int .L_02A9
.L_029D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call HISFIXLENSTR
add esp, 4
test eax, eax
je .L_02B0
push 0
push 10
push offset Lt_02B1
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push dword ptr [ebp-16]
call HEMITSYMTYPE
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_02B2
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-16]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 0
push 5
push offset Lt_028A
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_028B
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .L_029C
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_02B0:
.L_02AF:
push 0
push 0
push dword ptr [ebp-16]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.L_029C:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLABEL:
push ebp
mov ebp, esp
sub esp, 48
.L_02B5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call HSYMNAME
add esp, 4
push eax
push 7
push offset Lt_02B7
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 11
push offset Lt_02BA
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
call HWRITELINE
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HWRITELABEL
add esp, 4
.L_02B6:
mov esp, ebp
pop ebp
ret
.balign 16
HGETBOPCODE:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_02BD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_02C0
.L_02C2:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02C3
mov dword ptr [ebp-12], 24
jmp .L_0544
.L_02C3:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0544:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_02C6
mov eax, offset Lt_02C7
mov dword ptr [ebp-4], eax
jmp .L_02C5
.L_02C6:
mov eax, offset Lt_02C8
mov dword ptr [ebp-4], eax
.L_02C5:
jmp .L_02BF
.L_02C9:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02CA
mov dword ptr [ebp-12], 24
jmp .L_0545
.L_02CA:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0545:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_02CD
mov eax, offset Lt_02CE
mov dword ptr [ebp-4], eax
jmp .L_02CC
.L_02CD:
mov eax, offset Lt_02CF
mov dword ptr [ebp-4], eax
.L_02CC:
jmp .L_02BF
.L_02D0:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02D1
mov dword ptr [ebp-12], 24
jmp .L_0546
.L_02D1:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0546:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_02D4
mov eax, offset Lt_02D5
mov dword ptr [ebp-4], eax
jmp .L_02D3
.L_02D4:
mov eax, offset Lt_02D6
mov dword ptr [ebp-4], eax
.L_02D3:
jmp .L_02BF
.L_02D7:
mov eax, offset Lt_02D8
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02D9:
mov eax, offset Lt_02DA
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02DB:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02DC
mov dword ptr [ebp-12], 24
jmp .L_0547
.L_02DC:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0547:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_02DF
mov eax, offset Lt_02E0
mov dword ptr [ebp-4], eax
jmp .L_02DE
.L_02DF:
mov eax, offset Lt_02E1
mov dword ptr [ebp-4], eax
.L_02DE:
jmp .L_02BF
.L_02E2:
mov eax, offset Lt_02E3
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02E4:
mov eax, offset Lt_02E5
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02E6:
mov eax, offset Lt_02E7
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02E8:
mov eax, offset Lt_02E9
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02EA:
mov eax, offset Lt_02EB
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02EC:
mov eax, offset Lt_02ED
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02EE:
mov eax, offset Lt_02EF
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02F0:
mov eax, offset Lt_02F1
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02F2:
mov eax, offset Lt_02F3
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02F4:
mov eax, offset Lt_02F5
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02F6:
mov eax, offset Lt_02F7
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02F8:
mov eax, offset Lt_02F9
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02FA:
mov eax, offset Lt_02FB
mov dword ptr [ebp-4], eax
jmp .L_02BF
.L_02C0:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .L_02BF
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_02FC+eax*4-112]
.L_02FC:
.int .L_02C2
.int .L_02C9
.int .L_02D0
.int .L_02D7
.int .L_02D9
.int .L_02DB
.int .L_02E6
.int .L_02E8
.int .L_02BF
.int .L_02BF
.int .L_02EA
.int .L_02F8
.int .L_02FA
.int .L_02E2
.int .L_02E4
.int .L_02BF
.int .L_02BF
.int .L_02EC
.int .L_02F0
.int .L_02F2
.int .L_02EE
.int .L_02F4
.int .L_02F6
.L_02BF:
.L_02BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HLOADOPERANDSANDWRITEBOP:
push ebp
mov ebp, esp
sub esp, 24
.L_02FD:
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
push dword ptr [ebp+16]
call HLOADVREG
add esp, 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call _SETVREGDATATYPE
add esp, 12
push 0
push -1
push dword ptr [ebp+20]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
push 0
push 4
push offset Lt_018D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call HGETBOPCODE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_02FE:
mov esp, ebp
pop ebp
ret
.balign 16
HEMITBOP:
push ebp
mov ebp, esp
sub esp, 132
push ebx
.L_0300:
cmp dword ptr [ebp+24], 0
je .L_0303
push 0
push 8
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOADOPERANDSANDWRITEBOP
add esp, 24
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+20]
call HVREGTOSTR
add esp, 4
push eax
push 7
push offset Lt_0304
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrInit
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 0
push dword ptr [ebp+24]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset Lt_0306
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
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
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset Lt_0306
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-84]
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITELINE
add esp, 4
push dword ptr [ebp-84]
call HWRITELABEL
add esp, 4
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0301
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0303:
.L_0302:
mov dword ptr [ebp-4], 0
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
cmp dword ptr [ebp+20], 0
jne .L_030A
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp+20], eax
lea eax, [ebp-72]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
.L_030A:
.L_0309:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOADOPERANDSANDWRITEBOP
add esp, 24
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_030C
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+4]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-76], eax
push 0
push -1
push dword ptr [ebp-76]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrInit
add esp, 20
push 0
push 9
push offset Lt_030D
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_030E
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+20]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_028A
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-88]
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
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 4
push edi
push esi
mov edi, dword ptr [ebp+20]
mov esi, dword ptr [ebp-76]
mov ecx, 17
rep movsd
pop esi
pop edi
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
.L_030C:
.L_030B:
cmp dword ptr [ebp-4], 0
je .L_0311
push dword ptr [ebp+20]
lea eax, [ebp-72]
push eax
call HEMITSTORE
add esp, 8
.L_0311:
.L_0310:
.L_0301:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBOP:
push ebp
mov ebp, esp
sub esp, 84
.L_0312:
push 0
push -1
push -1
push dword ptr [ebp+16]
call VREGPRETTY
add esp, 4
push eax
push -1
push 2
push offset Lt_00F1
push -1
push -1
push dword ptr [ebp+8]
call ASTDUMPOPTOSTR
add esp, 4
push eax
push -1
push 2
push offset Lt_00F1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
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
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
cmp dword ptr [ebp+24], 0
je .L_0319
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset Lt_031A
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0318
.L_0319:
cmp dword ptr [ebp+20], 0
jne .L_031D
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 9
push offset Lt_031E
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0318
.L_031D:
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0321
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0318:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITBOP
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0313:
mov esp, ebp
pop ebp
ret
.balign 16
HBUILTINUOP:
push ebp
mov ebp, esp
sub esp, 12
.L_0324:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
push 0
push -1
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 9
push offset Lt_0326
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .L_0328
push 0
push 13
push offset Lt_0329
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+8], 56
jne .L_032B
.L_032C:
mov dword ptr [BUILTINS+116], -1
push 0
push 5
push offset Lt_032D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_032A
.L_032B:
cmp dword ptr [ebp+8], 58
jne .L_032E
.L_032F:
mov dword ptr [BUILTINS+20], -1
push 0
push 4
push offset Lt_0330
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_032A
.L_032E:
cmp dword ptr [ebp+8], 60
jne .L_0331
.L_0332:
mov dword ptr [BUILTINS+36], -1
push 0
push 4
push offset Lt_0333
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_032A
.L_0331:
cmp dword ptr [ebp+8], 69
jne .L_0334
.L_0335:
mov dword ptr [BUILTINS+52], -1
push 0
push 4
push offset Lt_0336
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_032A
.L_0334:
cmp dword ptr [ebp+8], 68
jne .L_0337
.L_0338:
mov dword ptr [BUILTINS+68], -1
push 0
push 4
push offset Lt_0339
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_032A
.L_0337:
cmp dword ptr [ebp+8], 65
jne .L_033A
.L_033B:
mov dword ptr [BUILTINS+84], -1
push 0
push 5
push offset Lt_033C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_032A
.L_033A:
cmp dword ptr [ebp+8], 70
jne .L_033D
.L_033E:
mov dword ptr [BUILTINS+100], -1
push 0
push 6
push offset Lt_033F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_033D:
.L_0340:
.L_032A:
push 0
push 12
push offset Lt_0341
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0327
.L_0328:
push 0
push 14
push offset Lt_0342
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+8], 56
jne .L_0344
.L_0345:
mov dword ptr [BUILTINS+124], -1
push 0
push 5
push offset Lt_032D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0343
.L_0344:
cmp dword ptr [ebp+8], 58
jne .L_0346
.L_0347:
mov dword ptr [BUILTINS+28], -1
push 0
push 4
push offset Lt_0330
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0343
.L_0346:
cmp dword ptr [ebp+8], 60
jne .L_0348
.L_0349:
mov dword ptr [BUILTINS+44], -1
push 0
push 4
push offset Lt_0333
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0343
.L_0348:
cmp dword ptr [ebp+8], 69
jne .L_034A
.L_034B:
mov dword ptr [BUILTINS+60], -1
push 0
push 4
push offset Lt_0336
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0343
.L_034A:
cmp dword ptr [ebp+8], 68
jne .L_034C
.L_034D:
mov dword ptr [BUILTINS+76], -1
push 0
push 4
push offset Lt_0339
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0343
.L_034C:
cmp dword ptr [ebp+8], 65
jne .L_034E
.L_034F:
mov dword ptr [BUILTINS+92], -1
push 0
push 5
push offset Lt_033C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0343
.L_034E:
cmp dword ptr [ebp+8], 70
jne .L_0350
.L_0351:
mov dword ptr [BUILTINS+108], -1
push 0
push 6
push offset Lt_033F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0350:
.L_0352:
.L_0343:
push 0
push 13
push offset Lt_0353
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0327:
push 0
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_028B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0325:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITUOP:
push ebp
mov ebp, esp
sub esp, 112
.L_0354:
push 0
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push -1
push 2
push offset Lt_00F1
push -1
push dword ptr [ebp+8]
call ASTDUMPOPTOSTR
add esp, 4
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
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
cmp dword ptr [ebp+16], 0
jne .L_0359
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 9
push offset Lt_035A
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0358
.L_0359:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_035D
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
.L_0358:
cmp dword ptr [ebp+8], 54
jne .L_0361
.L_0362:
lea eax, [ebp-104]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov dword ptr [ebp-108], 0
cmp dword ptr [ebp+16], 0
jne .L_0364
mov dword ptr [ebp-108], -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp+16], eax
lea eax, [ebp-104]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
.L_0364:
.L_0363:
push 0
push 0
push 0
push 8
call IRHLALLOCVRIMM
add esp, 16
mov dword ptr [ebp-112], eax
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-112]
push 29
call HEMITBOP
add esp, 20
cmp dword ptr [ebp-108], 0
je .L_0366
push dword ptr [ebp+16]
lea eax, [ebp-104]
push eax
call HEMITSTORE
add esp, 8
.L_0366:
.L_0365:
jmp .L_0360
.L_0361:
cmp dword ptr [ebp+8], 52
jne .L_0367
.L_0368:
push 4294967295
push 4294967295
push 0
push 8
call IRHLALLOCVRIMM
add esp, 16
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-40]
push dword ptr [ebp+12]
push 38
call HEMITBOP
add esp, 20
jmp .L_0360
.L_0367:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILTINUOP
add esp, 12
.L_0369:
.L_0360:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0355:
mov esp, ebp
pop ebp
ret
.balign 16
HGETCONVOPCODE:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.L_036A:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_036C
mov dword ptr [ebp-8], 24
jmp .L_0548
.L_036C:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0548:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_036F
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0370
mov dword ptr [ebp-40], 24
jmp .L_0549
.L_0370:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0549:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0373
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0374
mov dword ptr [ebp-52], 24
jmp .L_054A
.L_0374:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-52], eax
.L_054A:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0376
mov dword ptr [ebp-56], 24
jmp .L_054B
.L_0376:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-56], eax
.L_054B:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [ebp-72]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], ecx
jne .L_0379
mov dword ptr [ebp-4], 0
jmp .L_036B
.L_0379:
.L_0378:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_037A
mov dword ptr [ebp-60], 24
jmp .L_054D
.L_037A:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-60], ecx
.L_054D:
mov ecx, dword ptr [ebp-60]
imul ecx, 28
mov dword ptr [ebp-72], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .L_037C
mov dword ptr [ebp-64], 24
jmp .L_054E
.L_037C:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-64], ecx
.L_054E:
mov ecx, dword ptr [ebp-64]
imul ecx, 28
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], eax
jge .L_0380
mov eax, offset Lt_037E
mov dword ptr [ebp-68], eax
jmp .L_054F
.L_0380:
mov eax, offset Lt_037F
mov dword ptr [ebp-68], eax
.L_054F:
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-4], eax
jmp .L_036B
.L_0373:
.L_0372:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0382
mov dword ptr [ebp-44], 24
jmp .L_0551
.L_0382:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-44], eax
.L_0551:
mov eax, dword ptr [ebp-44]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0386
mov eax, offset Lt_0384
mov dword ptr [ebp-48], eax
jmp .L_0552
.L_0386:
mov eax, offset Lt_0385
mov dword ptr [ebp-48], eax
.L_0552:
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-4], eax
jmp .L_036B
.L_036F:
.L_036E:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0388
mov dword ptr [ebp-12], 24
jmp .L_0553
.L_0388:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0553:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_038B
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_038C
mov dword ptr [ebp-40], 24
jmp .L_0554
.L_038C:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0554:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0390
mov eax, offset Lt_038E
mov dword ptr [ebp-44], eax
jmp .L_0555
.L_0390:
mov eax, offset Lt_038F
mov dword ptr [ebp-44], eax
.L_0555:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
jmp .L_036B
.L_038B:
.L_038A:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0393
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_0395
mov eax, offset Lt_0396
mov dword ptr [ebp-4], eax
jmp .L_036B
.L_0395:
.L_0394:
mov eax, offset Lt_0397
mov dword ptr [ebp-4], eax
jmp .L_036B
jmp .L_0392
.L_0393:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_0398
mov eax, offset Lt_0399
mov dword ptr [ebp-4], eax
jmp .L_036B
.L_0398:
.L_0392:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_039A
mov dword ptr [ebp-16], 24
jmp .L_0556
.L_039A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0556:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_039C
mov dword ptr [ebp-20], 24
jmp .L_0557
.L_039C:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0557:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], ecx
jne .L_039F
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_03A0
mov dword ptr [ebp-44], 24
jmp .L_0559
.L_03A0:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_0559:
mov ecx, dword ptr [ebp-44]
imul ecx, 28
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .L_03A2
mov dword ptr [ebp-48], 24
jmp .L_055A
.L_03A2:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_055A:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
mov ebx, dword ptr [ebp-52]
mov eax, dword ptr [SYMB_DTYPETB+ecx+20]
cmp dword ptr [SYMB_DTYPETB+ebx+20], eax
jne .L_03A5
mov dword ptr [ebp-4], 0
jmp .L_036B
.L_03A5:
.L_03A4:
mov eax, offset Lt_0396
mov dword ptr [ebp-4], eax
jmp .L_036B
.L_039F:
.L_039E:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03A6
mov dword ptr [ebp-24], 24
jmp .L_055C
.L_03A6:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_055C:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03A8
mov dword ptr [ebp-28], 24
jmp .L_055D
.L_03A8:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-28], eax
.L_055D:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], ecx
jge .L_03AB
mov ecx, offset Lt_03AC
mov dword ptr [ebp-4], ecx
jmp .L_036B
.L_03AB:
.L_03AA:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_03AD
mov dword ptr [ebp-32], 24
jmp .L_055F
.L_03AD:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-32], ecx
.L_055F:
mov ecx, dword ptr [ebp-32]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_03B1
mov ecx, offset Lt_03AF
mov dword ptr [ebp-36], ecx
jmp .L_0560
.L_03B1:
mov ecx, offset Lt_03B0
mov dword ptr [ebp-36], ecx
.L_0560:
mov ecx, dword ptr [ebp-36]
mov dword ptr [ebp-4], ecx
.L_036B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITCONVERT:
push ebp
mov ebp, esp
sub esp, 120
push ebx
.L_03B3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03B5
mov dword ptr [ebp-4], 24
jmp .L_0561
.L_03B5:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0561:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03B7
mov dword ptr [ebp-8], 24
jmp .L_0562
.L_03B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0562:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-92]
je .L_03BA
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-96], eax
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
push 0
push -1
push 9
push offset Lt_0326
push -1
push dword ptr [ebp-96]
call HVREGTOSTR
add esp, 4
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
lea eax, [ebp-108]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .L_03BD
mov dword ptr [BUILTINS+132], -1
push 0
push 33
push offset Lt_03BE
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_03BC
.L_03BD:
mov dword ptr [BUILTINS+140], -1
push 0
push 35
push offset Lt_03BF
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 20
.L_03BC:
push 0
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_028B
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-108]
push eax
call HWRITELINE
add esp, 4
push edi
push esi
mov edi, dword ptr [ebp+12]
mov esi, dword ptr [ebp-96]
mov ecx, 17
rep movsd
pop esi
pop edi
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 4
.L_03BA:
.L_03B9:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HGETCONVOPCODE
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_03C1
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
jmp .L_03B4
.L_03C1:
.L_03C0:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_03C3
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_03C2
.L_03C3:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-16], eax
.L_03C2:
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
push 0
push -1
push 2
push offset Lt_00F1
push -1
push 0
push dword ptr [ebp-12]
push -1
push 4
push offset Lt_018D
push -1
push dword ptr [ebp-16]
call HVREGTOSTR
add esp, 4
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
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_028A
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_03CA
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HEMITSTORE
add esp, 8
.L_03CA:
.L_03C9:
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_03B4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 48
.L_03CB:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 4
push eax
push -1
push 5
push offset Lt_03CE
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push 6
push offset Lt_03CD
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITCONVERT
add esp, 8
.L_03CC:
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTORE:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_03D3:
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 12
push dword ptr [ebp+8]
call HPREPAREADDRESS
add esp, 4
push 0
push 7
push offset Lt_0232
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_00F1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call HEMITTYPE
add esp, 8
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
lea eax, [ebp-12]
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
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_00F1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
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
push 0
push -1
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_03D4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTORE:
push ebp
mov ebp, esp
sub esp, 48
.L_03D9:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push -1
push 5
push offset Lt_03DB
push -1
push -1
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 4
push eax
push 7
push offset Lt_0232
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITSTORE
add esp, 8
.L_03DA:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSPILLREGS:
.L_03E0:
.L_03E1:
ret
.balign 16
_EMITLOAD:
push ebp
mov ebp, esp
.L_03E2:
.L_03E3:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLOADRES:
push ebp
mov ebp, esp
sub esp, 72
.L_03E4:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 4
push eax
push 9
push offset Lt_03E6
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+8]
call HLOADVREG
add esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _SETVREGDATATYPE
add esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 4
push eax
push -1
push 2
push offset Lt_00F1
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push 5
push offset Lt_03E9
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
call HWRITELINE
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_03E5:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITADDR:
push ebp
mov ebp, esp
sub esp, 36
.L_03EE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .L_03F1
.L_03F2:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push 8
push offset Lt_03F3
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+12]
call HPREPAREADDRESS
add esp, 4
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 12
jmp .L_03F0
.L_03F1:
cmp dword ptr [ebp+8], 76
jne .L_03F6
.L_03F7:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push 7
push offset Lt_03F8
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
.L_03F6:
.L_03F0:
push edi
push esi
mov edi, dword ptr [ebp+16]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_03EF:
mov esp, ebp
pop ebp
ret
.balign 16
HDOCALL:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_03FB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .L_03FE
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0400
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+88]
and eax, 511
push eax
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp+20], eax
.L_0400:
.L_03FF:
.L_03FE:
.L_03FD:
cmp dword ptr [ebp+20], 0
je .L_0402
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 4
jne .L_0404
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-28], eax
jmp .L_0403
.L_0404:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 8
mov dword ptr [ebp-28], eax
.L_0403:
push 0
push -1
push dword ptr [ebp-28]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 9
push offset Lt_0326
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HEMITPROCCALLCONV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_00F1
push -1
mov eax, dword ptr [ebp-28]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-28]
push dword ptr [eax+4]
call HEMITTYPE
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
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0401
.L_0402:
push 0
push 6
push offset Lt_0407
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HEMITPROCCALLCONV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 6
push offset Lt_0408
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0401:
push 0
push -1
push -1
push 3
push offset Lt_00F5
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [IRHL+60]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-16], eax
.L_040B:
cmp dword ptr [ebp-16], 0
je .L_040D
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+8]
cmp ebx, dword ptr [ebp+24]
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .L_0566
.L_040D:
mov dword ptr [ebp-56], 0
.L_0566:
cmp dword ptr [ebp-56], 0
je .L_040C
push dword ptr [ebp-16]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
push dword ptr [ebp-24]
call VREGPRETTY
add esp, 4
push eax
push 5
push offset Lt_040F
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
call HINTERNALCOMMAND
add esp, 4
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
call HLOADVREG
add esp, 4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 0
je .L_0413
lea eax, [ebp-88]
push eax
lea eax, [ebp-84]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
jmp .L_0412
.L_0413:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-88], eax
.L_0412:
push 0
push -1
push dword ptr [ebp-88]
push dword ptr [ebp-84]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-88]
push dword ptr [ebp-84]
push dword ptr [ebp-24]
call _SETVREGDATATYPE
add esp, 12
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-24]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-16]
lea eax, [IRHL+60]
push eax
call LISTDELNODE
add esp, 8
cmp dword ptr [ebp-20], 0
je .L_0415
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+24]
cmp dword ptr [eax+8], ebx
jne .L_0417
push 0
push 3
push offset Lt_00FE
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0417:
.L_0416:
.L_0415:
.L_0414:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-16], ebx
jmp .L_040B
.L_040C:
push 0
push 3
push offset Lt_010E
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 4
cmp dword ptr [ebp+20], 0
je .L_0419
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 4
je .L_041B
push dword ptr [ebp-28]
push dword ptr [ebp+20]
call HEMITSTORE
add esp, 8
.L_041B:
.L_041A:
.L_0419:
.L_0418:
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
.L_03FC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALL:
push ebp
mov ebp, esp
sub esp, 36
.L_041C:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 3
push offset Lt_041E
push -1
push -1
push dword ptr [ebp+8]
call HSYMNAME
add esp, 4
push eax
push 6
push offset Lt_0407
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HDOCALL
add esp, 20
.L_041D:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALLPTR:
push ebp
mov ebp, esp
sub esp, 36
.L_0422:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push 9
push offset Lt_0424
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call HDOCALL
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0423:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJUMPPTR:
push ebp
mov ebp, esp
sub esp, 48
.L_0428:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 4
push eax
push 9
push offset Lt_042A
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+8]
call HLOADVREG
add esp, 4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 4
push eax
push 7
push offset Lt_042D
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
call HWRITELINE
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
.L_0429:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 48
.L_0430:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call HSYMNAME
add esp, 4
push eax
push 6
push offset Lt_0432
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 11
push offset Lt_02BA
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
call HWRITELINE
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
call SYMBUNIQUELABEL
push eax
call HWRITELABEL
add esp, 4
.L_0431:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 164
push ebx
.L_0437:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 4
push eax
push 7
push offset Lt_0439
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call HLOADVREG
add esp, 4
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrInit
add esp, 20
push 0
push 8
push offset Lt_043C
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_00F1
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset Lt_0306
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
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0165
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 4
inc dword ptr [CTX]
mov dword ptr [ebp-100], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-104], eax
jmp .L_0441
.L_0444:
push 0
push -1
push 3
push offset Lt_00FE
push -1
push -1
mov eax, dword ptr [ebp-100]
sal eax, 3
mov ebx, dword ptr [ebp+16]
add ebx, eax
mov ecx, dword ptr [ebp+32]
mov eax, dword ptr [ebp+36]
add ecx, dword ptr [ebx]
adc eax, dword ptr [ebx+4]
push eax
push ecx
call fb_ULongintToStr
add esp, 8
push eax
push -1
push 2
push offset Lt_00F1
push -1
lea eax, [ebp-48]
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
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
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
push 0
mov eax, dword ptr [ebp-100]
sal eax, 2
mov ecx, dword ptr [ebp+20]
add ecx, eax
push dword ptr [ecx]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 8
push offset Lt_0306
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 4
.L_0442:
inc dword ptr [ebp-100]
.L_0441:
mov eax, dword ptr [ebp-104]
cmp dword ptr [ebp-100], eax
jle .L_0444
.L_0443:
dec dword ptr [CTX]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset Lt_017D
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-96]
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
.L_0438:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMEM:
push ebp
mov ebp, esp
sub esp, 60
.L_044B:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 11
push offset Lt_044D
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 107
jne .L_044F
.L_0450:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push 10
push offset Lt_0451
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .L_044E
.L_044F:
cmp dword ptr [ebp+8], 105
jne .L_0454
.L_0455:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call VREGPRETTY
add esp, 4
push eax
push -1
push 5
push offset Lt_0457
push -1
push -1
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 4
push eax
push 9
push offset Lt_0456
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
call HASTCOMMAND
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
.L_0454:
.L_044E:
push dword ptr [ebp+12]
call HLOADVREG
add esp, 4
push dword ptr [ebp+16]
call HLOADVREG
add esp, 4
cmp dword ptr [ebp+8], 107
jne .L_045D
.L_045E:
mov dword ptr [BUILTINS+4], -1
push 0
push 34
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 12
push 0
push 8
push dword ptr [ebp+16]
call _SETVREGDATATYPE
add esp, 12
push 0
push 24
push offset Lt_045F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_0460
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset Lt_0461
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_0462
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_045C
.L_045D:
cmp dword ptr [ebp+8], 105
jne .L_0463
.L_0464:
mov dword ptr [BUILTINS+12], -1
push 0
push 34
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 12
push 0
push 34
push dword ptr [ebp+16]
call _SETVREGDATATYPE
add esp, 12
push 0
push 30
push offset Lt_0465
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_0460
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_0460
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_0462
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call fb_ULongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0463:
.L_045C:
push 0
push 18
push offset Lt_0466
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_044C:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMACRO:
push ebp
mov ebp, esp
.L_0467:
.L_0468:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDECL:
push ebp
mov ebp, esp
.L_0469:
.L_046A:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDBG:
push ebp
mov ebp, esp
sub esp, 60
.L_046B:
cmp dword ptr [ebp+8], 113
jne .L_046E
cmp dword ptr [ebp+20], 0
je .L_0470
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_013A
push -1
push -1
push offset Lt_0473
push offset Lt_013D
push dword ptr [ebp+20]
call HREPLACE
add esp, 12
push eax
push -1
push 3
push offset Lt_0472
push -1
push -1
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 4
push eax
push 7
push offset Lt_0471
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
call HWRITELINE
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
jmp .L_046F
.L_0470:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_013A
push -1
push -1
push offset Lt_0473
push offset Lt_013D
lea eax, [ENV+304]
push eax
call HREPLACE
add esp, 12
push eax
push -1
push 3
push offset Lt_0472
push -1
push -1
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 4
push eax
push 7
push offset Lt_0471
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
call HWRITELINE
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
.L_046F:
mov eax, dword ptr [ebp+16]
mov dword ptr [CTX+4], eax
.L_046E:
.L_046D:
.L_046C:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCOMMENT:
push ebp
mov ebp, esp
sub esp, 24
.L_047E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset Lt_00AB
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
call HWRITELINE
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_047F:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITASMLINE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0482:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_0484:
cmp dword ptr [ebp-16], 0
je .L_0485
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_0488
.L_0489:
push 0
push -1
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+4]
push -1
lea ebx, [ebp-12]
push ebx
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0486
.L_0488:
cmp dword ptr [ebp-20], 1
jne .L_048B
.L_048C:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_0569
cmp dword ptr [ebp-40], 0
je .L_048F
.L_0569:
cmp dword ptr [ebp-36], 0
jl .L_0491
jg .L_056A
cmp dword ptr [ebp-40], 0
jbe .L_0491
.L_056A:
push 0
push 2
push offset Lt_00D1
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_0491:
.L_0490:
push 0
push -1
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_048F:
.L_048E:
.L_048B:
.L_0486:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .L_0484
.L_0485:
lea ecx, [ebp-12]
push ecx
call HWRITELINE
add esp, 4
lea ecx, [ebp-12]
push ecx
call fb_StrDelete
add esp, 4
.L_0483:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIBEGIN:
push ebp
mov ebp, esp
.L_0492:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 20
push 0
push 11
push offset Lt_0494
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 4
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
mov dword ptr [CTX+20], 0
mov byte ptr [CTX+24], 0
.L_0493:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIEND:
push ebp
mov ebp, esp
.L_0495:
lea eax, [CTX+8]
push eax
call HWRITELINE
add esp, 4
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 20
.L_0496:
mov esp, ebp
pop ebp
ret
.balign 16
HVARINIELEMENTTYPE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0497:
cmp dword ptr [CTX+20], 0
jle .L_049A
mov eax, offset CTX
add eax, dword ptr [CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .L_049C
push 0
push -1
push -1
push 2
push offset Lt_00F1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call HEMITTYPE
add esp, 8
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
lea eax, [CTX+8]
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
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 20
jmp .L_049B
.L_049C:
push 0
push -1
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 4
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 20
.L_049B:
.L_049A:
.L_0499:
.L_0498:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HVARINISEPARATOR:
.L_049F:
cmp dword ptr [CTX+20], 0
jle .L_04A2
push 0
push 3
push offset Lt_00FE
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
.L_04A2:
.L_04A1:
.L_04A0:
ret
.balign 16
_EMITVARINII:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_04A3:
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+16], 0
mov eax, -1
jne .L_056D
cmp dword ptr [ebp+12], 0
jne .L_056D
.L_056E:
xor eax, eax
.L_056D:
and ebx, eax
je .L_04A6
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_04A6:
.L_04A5:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_04A7
mov dword ptr [ebp-8], 24
jmp .L_056B
.L_04A7:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_056B:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_04AA
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HEMITLONG
add esp, 8
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_04A9
.L_04AA:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call HEMITINT
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 20
.L_04A9:
call HVARINISEPARATOR
.L_04A4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIF:
push ebp
mov ebp, esp
.L_04AC:
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 4
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HEMITFLOAT
add esp, 8
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_04AD:
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEADDCONV:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_04AE:
mov eax, dword ptr [ebp+24]
cmp eax, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [ebp+28]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_04B1
jmp .L_04AF
.L_04B1:
.L_04B0:
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call HGETCONVOPCODE
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_04B3
jmp .L_04AF
.L_04B3:
.L_04B2:
push 0
push -1
push 2
push offset Lt_028B
push -1
push -1
push dword ptr [ebp+20]
push -1
push 5
push offset Lt_028A
push -1
push -1
push dword ptr [ebp+8]
push -1
push 2
push offset Lt_00F1
push -1
push -1
push dword ptr [ebp+32]
push -1
push 3
push offset Lt_04B4
push 0
push dword ptr [ebp-4]
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
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_04AF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIOFS:
push ebp
mov ebp, esp
sub esp, 308
push ebx
.L_04BC:
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 4
push 0
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-16]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-32], ebx
push 0
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
push dword ptr [ebp-32]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrInit
add esp, 20
cmp dword ptr [ebp+20], 0
jne .L_0571
cmp dword ptr [ebp+16], 0
je .L_04BF
.L_0571:
push 0
push -1
push 0
push 9
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push 2
push offset Lt_028B
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 5
push offset Lt_028A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_00F1
push -1
push -1
lea eax, [ebp-44]
push eax
push 11
push offset Lt_04C0
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
push 0
push -1
push 2
push offset Lt_028B
push -1
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset Lt_00F1
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 3
push offset Lt_00FE
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_00F1
push -1
push -1
lea eax, [ebp-68]
push eax
push 6
push offset Lt_04C7
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
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
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
push 2
push offset Lt_028B
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 5
push offset Lt_028A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_00F1
push -1
push -1
lea eax, [ebp-68]
push eax
push 11
push offset Lt_04D0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
lea eax, [ebp-284]
push eax
call fb_StrConcat
add esp, 20
push eax
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
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
.L_04BF:
.L_04BE:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-16]
lea eax, [ebp-12]
push eax
call HMAYBEADDCONV
add esp, 28
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_04BD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISTR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_04D8:
cmp dword ptr [CTX+20], 0
jle .L_04DB
push 0
push -1
mov eax, dword ptr [ebp+8]
push eax
call HEMITSTRLITTYPE
add esp, 4
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 20
.L_04DB:
.L_04DA:
push 0
push 3
push offset Lt_04DC
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
mov ecx, ebx
push ecx
mov dword ptr [ebp-4], 0
lea ecx, [ebp-4]
push ecx
push dword ptr [ebp+16]
call HUNESCAPE
add esp, 8
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [CTX+8]
push ebx
call HBUILDSTRLIT
add esp, 16
push 0
push 2
push offset Lt_013A
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_04D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_04DE:
cmp dword ptr [CTX+20], 0
jle .L_04E1
push 0
push -1
mov eax, dword ptr [ebp+8]
push eax
call HEMITSTRLITTYPE
add esp, 4
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F1
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 20
.L_04E1:
.L_04E0:
push 0
push 3
push offset Lt_04DC
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
mov ecx, ebx
push ecx
mov dword ptr [ebp-4], 0
lea ecx, [ebp-4]
push ecx
push dword ptr [ebp+16]
call HUNESCAPEW
add esp, 8
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [CTX+8]
push ebx
call HBUILDWSTRLIT
add esp, 16
push 0
push 2
push offset Lt_013A
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_04DF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIPAD:
push ebp
mov ebp, esp
.L_04E3:
.L_04E4:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEBEGIN:
push ebp
mov ebp, esp
push ebx
.L_04E5:
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 4
inc dword ptr [CTX+20]
cmp dword ptr [CTX+20], 128
jl .L_04E8
push offset Lt_04EC
push 0
push 21
call ERRREPORT
add esp, 12
dec dword ptr [CTX+20]
.L_04E8:
.L_04E7:
mov al, byte ptr [ebp+12]
mov ebx, offset CTX
add ebx, dword ptr [CTX+20]
mov byte ptr [ebx+24], al
cmp dword ptr [ebp+12], 0
je .L_04EE
push 0
push 3
push offset Lt_04EF
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_04ED
.L_04EE:
push 0
push 3
push offset Lt_01C5
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatByref
add esp, 20
.L_04ED:
.L_04E6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEEND:
push ebx
.L_04F0:
push 3
push offset Lt_00FE
push -1
push 2
lea eax, [CTX+8]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F3
push 0
push -1
push -1
lea eax, [CTX+8]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+8]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 20
.L_04F3:
.L_04F2:
mov eax, offset CTX
add eax, dword ptr [CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .L_04F5
push 0
push 3
push offset Lt_04F6
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatByref
add esp, 20
jmp .L_04F4
.L_04F5:
push 0
push 3
push offset Lt_01CC
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatByref
add esp, 20
.L_04F4:
cmp dword ptr [CTX+20], 0
jle .L_04F8
dec dword ptr [CTX+20]
.L_04F8:
.L_04F7:
call HVARINISEPARATOR
.L_04F1:
pop ebx
ret
.balign 16
_EMITFBCTINFBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.L_04F9:
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
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_04FA:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITFBCTINFSTRING:
push ebp
mov ebp, esp
sub esp, 24
.L_04FC:
push 0
push -1
push -1
push 4
push offset Lt_0141
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+184]
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
lea eax, [CTX+184]
push eax
call fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
add eax, dword ptr [CTX+196]
inc eax
mov dword ptr [CTX+196], eax
.L_04FD:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITFBCTINFEND:
push ebp
mov ebp, esp
sub esp, 12
.L_0500:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 32
push offset Lt_0502
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [CTX+196]
call HEMITSTRLITTYPE
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_0190
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [CTX+184]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_013A
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0504
push 0
push 27
push offset Lt_0507
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0503
.L_0504:
push 0
push 21
push offset Lt_050A
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0503:
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
push 0
push 41
push offset Lt_050B
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0165
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 14
push offset Lt_050C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [CTX+196]
call HEMITSTRLITTYPE
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 21
push offset Lt_050D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_017D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 26
push offset Lt_050E
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 4
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+184]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [CTX+196], 0
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0501:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITPROCBEGIN:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_050F:
call IRHLEMITPROCBEGIN
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
call HWRITELINE
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset Lt_0512
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .L_0514
push 0
push 11
push offset Lt_0515
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0513
.L_0514:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 64
test eax, eax
je .L_0516
push 0
push 9
push offset Lt_0517
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0516:
.L_0513:
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 2
push offset Lt_0518
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
inc dword ptr [CTX]
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0510:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITPROCEND:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_051A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .L_051D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset Lt_051E
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-24]
push ebx
call HWRITELINE
add esp, 4
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
.L_051D:
.L_051C:
dec dword ptr [CTX]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0520
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 4
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
call IRHLEMITPROCEND
.L_051B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEBEGIN:
push ebp
mov ebp, esp
.L_0522:
.L_0523:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEEND:
push ebp
mov ebp, esp
.L_0524:
.L_0525:
mov esp, ebp
pop ebp
ret
.balign 16
_GLOBAL__I:
.L_0527:
push offset CTX
call _ZN13IRLLVMCONTEXTC1Ev
add esp, 4
.L_0528:
ret
.balign 16
_GLOBAL__D:
.L_052A:
push offset CTX
call _ZN13IRLLVMCONTEXTD1Ev
add esp, 4
.L_052B:
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"
.balign 4

.globl IRLLVM_VTBL
IRLLVM_VTBL:
.int _INIT
.int _END
.int _EMITBEGIN
.int _EMITEND
.int _GETOPTIONVALUE
.int _SUPPORTSOP
.int _PROCBEGIN
.int _PROCEND
.int _PROCALLOCARG
.int _PROCALLOCLOCAL
.long 0
.int _SCOPEBEGIN
.int _SCOPEEND
.int _PROCALLOCSTATICVARS
.int _EMITCONVERT
.int _EMITLABEL
.int _EMITLABEL
.long 0
.int _EMITPROCBEGIN
.int _EMITPROCEND
.int IRHLEMITPUSHARG
.int _EMITASMLINE
.int _EMITCOMMENT
.int _EMITBOP
.int _EMITUOP
.int _EMITSTORE
.int _EMITSPILLREGS
.int _EMITLOAD
.int _EMITLOADRES
.long 0
.int _EMITADDR
.int _EMITCALL
.int _EMITCALLPTR
.long 0
.int _EMITJUMPPTR
.int _EMITBRANCH
.int _EMITJMPTB
.int _EMITMEM
.int _EMITMACRO
.int _EMITSCOPEBEGIN
.int _EMITSCOPEEND
.int _EMITDECL
.int _EMITDBG
.int _EMITVARINIBEGIN
.int _EMITVARINIEND
.int _EMITVARINII
.int _EMITVARINIF
.int _EMITVARINIOFS
.int _EMITVARINISTR
.int _EMITVARINIWSTR
.int _EMITVARINIPAD
.int _EMITVARINISCOPEBEGIN
.int _EMITVARINISCOPEEND
.int _EMITFBCTINFBEGIN
.int _EMITFBCTINFSTRING
.int _EMITFBCTINFEND
.int IRHLALLOCVREG
.int IRHLALLOCVRIMM
.int IRHLALLOCVRIMMF
.int IRHLALLOCVRVAR
.int IRHLALLOCVRIDX
.int IRHLALLOCVRPTR
.int IRHLALLOCVROFS
.int _SETVREGDATATYPE
.long 0
.long 0
.long 0
.long 0

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
BUILTINS:
.int Lt_0069
.skip 4,0
.int Lt_006A
.skip 4,0
.int Lt_006B
.skip 4,0
.int Lt_006C
.skip 4,0
.int Lt_006D
.skip 4,0
.int Lt_006E
.skip 4,0
.int Lt_006F
.skip 4,0
.int Lt_0070
.skip 4,0
.int Lt_0071
.skip 4,0
.int Lt_0072
.skip 4,0
.int Lt_0073
.skip 4,0
.int Lt_0074
.skip 4,0
.int Lt_0075
.skip 4,0
.int Lt_0076
.skip 4,0
.int Lt_0077
.skip 4,0
.int Lt_0078
.skip 4,0
.int Lt_0079
.skip 4,0
.int Lt_007A
.skip 4,0
.balign 4
Lt_0069:	.ascii	"declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1) nounwind\0"
.balign 4
Lt_006A:	.ascii	"declare void @llvm.memmove.p0i8.p0i8.i32(i8*, i8*, i32, i32, i1) nounwind\0"
.balign 4
Lt_006B:	.ascii	"declare float  @llvm.sin.f32(float ) nounwind\0"
.balign 4
Lt_006C:	.ascii	"declare double @llvm.sin.f64(double) nounwind\0"
.balign 4
Lt_006D:	.ascii	"declare float  @llvm.cos.f32(float ) nounwind\0"
.balign 4
Lt_006E:	.ascii	"declare double @llvm.cos.f64(double) nounwind\0"
.balign 4
Lt_006F:	.ascii	"declare float  @llvm.exp.f32(float ) nounwind\0"
.balign 4
Lt_0070:	.ascii	"declare double @llvm.exp.f64(double) nounwind\0"
.balign 4
Lt_0071:	.ascii	"declare float  @llvm.log.f32(float ) nounwind\0"
.balign 4
Lt_0072:	.ascii	"declare double @llvm.log.f64(double) nounwind\0"
.balign 4
Lt_0073:	.ascii	"declare float  @llvm.sqrt.f32(float ) nounwind\0"
.balign 4
Lt_0074:	.ascii	"declare double @llvm.sqrt.f64(double) nounwind\0"
.balign 4
Lt_0075:	.ascii	"declare float  @llvm.floor.f32(float ) nounwind\0"
.balign 4
Lt_0076:	.ascii	"declare double @llvm.floor.f64(double) nounwind\0"
.balign 4
Lt_0077:	.ascii	"declare float  @llvm.fabs.f32(float ) nounwind\0"
.balign 4
Lt_0078:	.ascii	"declare double @llvm.fabs.f64(double) nounwind\0"
.balign 4
Lt_0079:	.ascii	"declare float  @llvm.nearbyint.f32(float ) nounwind\0"
.balign 4
Lt_007A:	.ascii	"declare double @llvm.nearbyint.f64(double) nounwind\0"

.section .bss
.balign 4
	.lcomm	CTX,240

.section .data
.balign 4
DTYPENAME:
.int Lt_0088
.int Lt_0088
.int Lt_0088
.int Lt_0088
.int Lt_0088
.int Lt_0089
.int Lt_0089
.long 0
.long 0
.long 0
.long 0
.int Lt_008A
.int Lt_008A
.int Lt_008B
.int Lt_008B
.int Lt_008C
.int Lt_008D
.int Lt_008E
.int Lt_0088
.int Lt_008F
.long 0
.long 0
.long 0
.int Lt_0088
.long 0
.skip 4,0
.balign 4
Lt_0088:	.ascii	"i8\0"
.balign 4
Lt_0089:	.ascii	"i16\0"
.balign 4
Lt_008A:	.ascii	"i32\0"
.balign 4
Lt_008B:	.ascii	"i64\0"
.balign 4
Lt_008C:	.ascii	"float\0"
.balign 4
Lt_008D:	.ascii	"double\0"
.balign 4
Lt_008E:	.ascii	"%FBSTRING\0"
.balign 4
Lt_008F:	.ascii	"%struct.va_list\0"
.balign 4
Lt_009C:	.ascii	"\t\0"
.balign 4
Lt_009E:	.ascii	"\n\0"
.balign 4
Lt_00AB:	.ascii	"; \0"
.balign 4
Lt_00B3:	.ascii	":\0"
.balign 4
Lt_00C8:	.ascii	"vr\0"
.balign 4
Lt_00D1:	.ascii	"+\0"
.balign 4
Lt_00D9:	.ascii	"*\0"
.balign 4
Lt_00DE:	.ascii	"$\0"
.balign 4
Lt_00E8:	.ascii	"x86_stdcallcc \0"
.balign 4
Lt_00EA:	.ascii	"x86_thiscall \0"
.balign 4
Lt_00EC:	.ascii	"x86_fastcall \0"
.balign 4
Lt_00F1:	.ascii	" \0"
.balign 4
Lt_00F5:	.ascii	"( \0"
.balign 4
Lt_00FE:	.ascii	", \0"
.balign 4
Lt_0105:	.ascii	"...\0"
.balign 4
Lt_010E:	.ascii	" )\0"
.balign 4
Lt_0111:	.ascii	" nounwind\0"
.balign 4
Lt_0114:	.ascii	" naked\0"
.balign 4
Lt_0117:	.ascii	"%\0"
.balign 4
Lt_012B:	.ascii	" = type \0"
.balign 4
Lt_013A:	.ascii	"\"\0"
.balign 4
Lt_013D:	.ascii	"\\\0"
.balign 4
Lt_0141:	.ascii	"\\00\0"
.balign 4
Lt_0165:	.ascii	"[\0"
.balign 4
Lt_0166:	.ascii	" x i8]\0"
.balign 4
Lt_017C:	.ascii	" x \0"
.balign 4
Lt_017D:	.ascii	"]\0"
.balign 4
Lt_018D:	.ascii	" = \0"
.balign 4
Lt_018F:	.ascii	"private constant \0"
.balign 4
Lt_0190:	.ascii	" c\"\0"
.balign 4
Lt_01A2:	.ascii	"global\0"
.balign 4
Lt_01A3:	.ascii	"alloca\0"
.balign 4
Lt_01A6:	.ascii	" zeroinitializer\0"
.balign 4
Lt_01B3:	.ascii	"declare \0"
.balign 4
Lt_01C4:	.ascii	"<\0"
.balign 4
Lt_01C5:	.ascii	"{ \0"
.balign 4
Lt_01CC:	.ascii	" }\0"
.balign 4
Lt_01CF:	.ascii	">\0"
.balign 4
Lt_01D4:	.ascii	"{ i32, void ()* } { i32 \0"
.balign 4
Lt_01D6:	.ascii	", void ()* \0"
.balign 4
Lt_01ED:	.ascii	"%FBSTRING = type { i8*, i64, i64 }\0"
.balign 4
Lt_01EF:	.ascii	"%FBSTRING = type { i8*, i32, i32 }\0"
.balign 4
Lt_01FE:	.ascii	"@llvm.global_ctors = appending global [\0"
.balign 4
Lt_01FF:	.ascii	" x { i32, void ()* }] [\0"
.balign 4
Lt_0207:	.ascii	"@llvm.global_dtors = appending global [\0"
.balign 4
Lt_021B:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
Lt_022D:	.ascii	"paramvar \0"
.balign 4
Lt_0230:	.ascii	" = alloca \0"
.balign 4
Lt_0232:	.ascii	"store \0"
.balign 4
Lt_0238:	.ascii	"localvar \0"
.balign 4
Lt_025D:	.ascii	" = load \0"
.balign 4
Lt_026B:	.ascii	"void\0"
.balign 4
Lt_0287:	.ascii	"inttoptr \0"
.balign 4
Lt_0288:	.ascii	"trunc \0"
.balign 4
Lt_0289:	.ascii	"(\0"
.balign 4
Lt_028A:	.ascii	" to \0"
.balign 4
Lt_028B:	.ascii	")\0"
.balign 4
Lt_0290:	.ascii	"0x\0"
.balign 4
Lt_02AC:	.ascii	"%vr\0"
.balign 4
Lt_02B1:	.ascii	"bitcast (\0"
.balign 4
Lt_02B2:	.ascii	"* \0"
.balign 4
Lt_02B7:	.ascii	"label \0"
.balign 4
Lt_02BA:	.ascii	"br label %\0"
.balign 4
Lt_02C7:	.ascii	"fadd\0"
.balign 4
Lt_02C8:	.ascii	"add\0"
.balign 4
Lt_02CE:	.ascii	"fsub\0"
.balign 4
Lt_02CF:	.ascii	"sub\0"
.balign 4
Lt_02D5:	.ascii	"fmul\0"
.balign 4
Lt_02D6:	.ascii	"mul\0"
.balign 4
Lt_02D8:	.ascii	"fdiv\0"
.balign 4
Lt_02DA:	.ascii	"sdiv\0"
.balign 4
Lt_02E0:	.ascii	"frem\0"
.balign 4
Lt_02E1:	.ascii	"srem\0"
.balign 4
Lt_02E3:	.ascii	"shl\0"
.balign 4
Lt_02E5:	.ascii	"ashr\0"
.balign 4
Lt_02E7:	.ascii	"and\0"
.balign 4
Lt_02E9:	.ascii	"or\0"
.balign 4
Lt_02EB:	.ascii	"xor\0"
.balign 4
Lt_02ED:	.ascii	"icmp eq\0"
.balign 4
Lt_02EF:	.ascii	"icmp ne\0"
.balign 4
Lt_02F1:	.ascii	"icmp sgt\0"
.balign 4
Lt_02F3:	.ascii	"icmp slt\0"
.balign 4
Lt_02F5:	.ascii	"icmp sge\0"
.balign 4
Lt_02F7:	.ascii	"icmp sle\0"
.balign 4
Lt_02F9:	.ascii	"eqv\0"
.balign 4
Lt_02FB:	.ascii	"imp\0"
.balign 4
Lt_0304:	.ascii	"br i1 \0"
.balign 4
Lt_0306:	.ascii	"label %\0"
.balign 4
Lt_030D:	.ascii	" = sext \0"
.balign 4
Lt_030E:	.ascii	"i1 \0"
.balign 4
Lt_031A:	.ascii	"branchbop \0"
.balign 4
Lt_031E:	.ascii	"selfbop \0"
.balign 4
Lt_0321:	.ascii	"bop \0"
.balign 4
Lt_0326:	.ascii	" = call \0"
.balign 4
Lt_0329:	.ascii	"float @llvm.\0"
.balign 4
Lt_032D:	.ascii	"fabs\0"
.balign 4
Lt_0330:	.ascii	"sin\0"
.balign 4
Lt_0333:	.ascii	"cos\0"
.balign 4
Lt_0336:	.ascii	"exp\0"
.balign 4
Lt_0339:	.ascii	"log\0"
.balign 4
Lt_033C:	.ascii	"sqrt\0"
.balign 4
Lt_033F:	.ascii	"floor\0"
.balign 4
Lt_0341:	.ascii	".f32(float \0"
.balign 4
Lt_0342:	.ascii	"double @llvm.\0"
.balign 4
Lt_0353:	.ascii	".f64(double \0"
.balign 4
Lt_035A:	.ascii	"selfuop \0"
.balign 4
Lt_035D:	.ascii	"uop \0"
.balign 4
Lt_037E:	.ascii	"fptrunc\0"
.balign 4
Lt_037F:	.ascii	"fpext\0"
.balign 4
Lt_0384:	.ascii	"sitofp\0"
.balign 4
Lt_0385:	.ascii	"uitofp\0"
.balign 4
Lt_038E:	.ascii	"fptosi\0"
.balign 4
Lt_038F:	.ascii	"fptoui\0"
.balign 4
Lt_0396:	.ascii	"bitcast\0"
.balign 4
Lt_0397:	.ascii	"inttoptr\0"
.balign 4
Lt_0399:	.ascii	"ptrtoint\0"
.balign 4
Lt_03AC:	.ascii	"trunc\0"
.balign 4
Lt_03AF:	.ascii	"sext\0"
.balign 4
Lt_03B0:	.ascii	"zext\0"
.balign 4
Lt_03BE:	.ascii	"float @llvm.nearbyint.f32(float \0"
.balign 4
Lt_03BF:	.ascii	"double @llvm.nearbyint.f64(double \0"
.balign 4
Lt_03CD:	.ascii	"conv \0"
.balign 4
Lt_03CE:	.ascii	" => \0"
.balign 4
Lt_03DB:	.ascii	" := \0"
.balign 4
Lt_03E6:	.ascii	"loadres \0"
.balign 4
Lt_03E9:	.ascii	"ret \0"
.balign 4
Lt_03F3:	.ascii	"addrof \0"
.balign 4
Lt_03F8:	.ascii	"deref \0"
.balign 4
Lt_0407:	.ascii	"call \0"
.balign 4
Lt_0408:	.ascii	"void \0"
.balign 4
Lt_040F:	.ascii	"arg \0"
.balign 4
Lt_041E:	.ascii	"()\0"
.balign 4
Lt_0424:	.ascii	"callptr \0"
.balign 4
Lt_042A:	.ascii	"jumpptr \0"
.balign 4
Lt_042D:	.ascii	"goto *\0"
.balign 4
Lt_0432:	.ascii	"goto \0"
.balign 4
Lt_0439:	.ascii	"jmptb \0"
.balign 4
Lt_043C:	.ascii	"switch \0"
.balign 4
Lt_044D:	.ascii	"call void \0"
.balign 4
Lt_0451:	.ascii	"memclear \0"
.balign 4
Lt_0456:	.ascii	"memmove \0"
.balign 4
Lt_0457:	.ascii	" <= \0"
.balign 4
Lt_045F:	.ascii	"@llvm.memset.p0i8.i32( \0"
.balign 4
Lt_0460:	.ascii	"i8* \0"
.balign 4
Lt_0461:	.ascii	"i8 0, \0"
.balign 4
Lt_0462:	.ascii	"i32 \0"
.balign 4
Lt_0465:	.ascii	"@llvm.memmove.p0i8.p0i8.i32( \0"
.balign 4
Lt_0466:	.ascii	"i32 1, i1 false )\0"
.balign 4
Lt_0471:	.ascii	"#line \0"
.balign 4
Lt_0472:	.ascii	" \"\0"
.balign 4
Lt_0473:	.ascii	"\\\\\0"
.balign 4
Lt_0494:	.ascii	" = global \0"
.balign 4
Lt_04B4:	.ascii	" (\0"
.balign 4
Lt_04C0:	.ascii	"ptrtoint (\0"
.balign 4
Lt_04C7:	.ascii	"add (\0"
.balign 4
Lt_04D0:	.ascii	"inttoptr (\0"
.balign 4
Lt_04DC:	.ascii	"c\"\0"
.balign 4
Lt_04EC:	.ascii	"global variable/array initializer nesting level too deep (MAXVARINISCOPES=128)\0"
.balign 4
Lt_04EF:	.ascii	"[ \0"
.balign 4
Lt_04F6:	.ascii	" ]\0"
.balign 4
Lt_0502:	.ascii	"@__fbctinf = internal constant \0"
.balign 4
Lt_0507:	.ascii	", section \"__DATA,fbctinf\"\0"
.balign 4
Lt_050A:	.ascii	", section \".fbctinf\"\0"
.balign 4
Lt_050B:	.ascii	"@llvm.used = appending global [1 x i8*] \0"
.balign 4
Lt_050C:	.ascii	"i8* bitcast (\0"
.balign 4
Lt_050D:	.ascii	"* @__fbctinf to i8*)\0"
.balign 4
Lt_050E:	.ascii	", section \"llvm.metadata\"\0"
.balign 4
Lt_0512:	.ascii	"define \0"
.balign 4
Lt_0515:	.ascii	"dllexport \0"
.balign 4
Lt_0517:	.ascii	"private \0"
.balign 4
Lt_0518:	.ascii	"{\0"
.balign 4
Lt_051E:	.ascii	"ret void\0"
.balign 4
Lt_0520:	.ascii	"}\0"

.section .ctors
.int fb_ctor__irzllvm
.int _GLOBAL__I

.section .dtors
.int _GLOBAL__D
