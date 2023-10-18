	.intel_syntax noprefix

.section .text
.balign 16
fb_ctor__irzhlc:
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
_ZN12SECTIONENTRYC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
.L_0066:
.L_0067:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN12SECTIONENTRYaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0068:
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
.L_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN12SECTIONENTRYD1Ev:
push ebp
mov ebp, esp
push ebx
.L_006C:
.L_006D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8IRHLCCTXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_0074:
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYC1Ev
add esp, 4
add dword ptr [ebp-8], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0074
mov ebx, dword ptr [ebp+8]
add ebx, 2580
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2584
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2588
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2592
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2604
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2608
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2640
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2652
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2656
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2668
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2680
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2712
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2724
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2756
mov dword ptr [eax], 0
.L_0071:
.L_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8IRHLCCTXaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0076:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.L_0079:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYaSERKS_
add esp, 8
add dword ptr [ebp-8], 20
add dword ptr [ebp-12], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0079
mov eax, dword ptr [ebp+12]
add eax, 2580
mov ebx, dword ptr [ebp+8]
add ebx, 2580
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2584
mov ebx, dword ptr [ebp+8]
add ebx, 2584
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2588
mov ebx, dword ptr [ebp+8]
add ebx, 2588
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2592
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2592
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+12]
add ecx, 2604
mov ebx, dword ptr [ebp+8]
add ebx, 2604
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
add eax, 2608
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 2608
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2640
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+12]
add ecx, 2652
mov ebx, dword ptr [ebp+8]
add ebx, 2652
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2656
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2656
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2668
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 2680
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 2680
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2712
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2712
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+8]
add ecx, 2724
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 2724
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+12]
add eax, 2756
mov ebx, dword ptr [ebp+8]
add ebx, 2756
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.L_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8IRHLCCTXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0081:
.L_0082:
mov eax, dword ptr [ebp+8]
add eax, 2712
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2656
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2592
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2560
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], 0
.L_0084:
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYD1Ev
add esp, 4
add dword ptr [ebp-8], -20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0084
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_INIT:
.L_0095:
call IRHLINIT
push 6
push 4
push 8
lea eax, [CTX+2608]
push eax
call LISTINIT
add esp, 16
push 7
push 28
push 32
lea eax, [CTX+2680]
push eax
call LISTINIT
add esp, 16
push 6
push 8
push 8
lea eax, [CTX+2724]
push eax
call LISTINIT
add esp, 16
or dword ptr [IR+272], 131074
call FBIS64BIT
test eax, eax
je .L_0098
mov eax, dword ptr [DTYPENAME+52]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+56]
mov dword ptr [DTYPENAME+36], eax
jmp .L_0097
.L_0098:
mov eax, dword ptr [DTYPENAME+44]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+48]
mov dword ptr [DTYPENAME+36], eax
.L_0097:
.L_0096:
ret
.balign 16
_END:
.L_0099:
lea eax, [CTX+2724]
push eax
call LISTEND
add esp, 4
lea eax, [CTX+2680]
push eax
call LISTEND
add esp, 4
lea eax, [CTX+2608]
push eax
call LISTEND
add esp, 4
call IRHLEND
.L_009A:
ret
.balign 16
SECTIONBEGIN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_009B:
inc dword ptr [CTX+2580]
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], -1
cmp dword ptr [CTX+2580], 0
jle .L_009F
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx-4]
mov dword ptr [eax+16], ecx
jmp .L_009E
.L_009F:
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+16], 0
.L_009E:
.L_009C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONWRITELINE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_00A0:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00A4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00A6
push 0
push -1
push 1
push offset Lt_00A7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call fb_StrFill2
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_00A5
.L_00A6:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
.L_00A5:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00A3
.L_00A4:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00AA
push 0
push -1
push -1
push 1
push offset Lt_00A7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call fb_StrFill2
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00AA:
.L_00A9:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00A3:
push 0
push -1
push 2
push offset Lt_00AD
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00A1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONINDENT:
push ebx
.L_00AF:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
inc dword ptr [ebx+16]
.L_00B0:
pop ebx
ret
.balign 16
SECTIONUNINDENT:
push ebx
.L_00B1:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
dec dword ptr [ebx+16]
.L_00B2:
pop ebx
ret
.balign 16
SECTIONINSIDEPROC:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B3:
mov eax, dword ptr [CTX+2580]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00B4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00B5:
cmp dword ptr [CTX+2580], 0
jle .L_00B8
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx-20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_00BA
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00BC
push 0
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00BB
.L_00BC:
push 0
push -1
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00BB:
.L_00BA:
.L_00B9:
.L_00B8:
.L_00B7:
dec dword ptr [CTX+2580]
.L_00B6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONGOSUB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00BE:
mov eax, dword ptr [CTX+2580]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+2580], eax
inc dword ptr [CTX+2584]
.L_00BF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONRETURN:
push ebp
mov ebp, esp
.L_00C0:
dec dword ptr [CTX+2584]
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+2580], eax
.L_00C1:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITELINE:
push ebp
mov ebp, esp
.L_00C2:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ENV+148]
je .L_00C5
push 0
push 7
push offset Lt_00C6
push -1
push offset Lt_0765
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [CTX+2588]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_0765
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00C7
push -1
push offset Lt_0765
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [CTX+2592]
push eax
push -1
push offset Lt_0765
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00C8
push -1
push offset Lt_0765
call fb_StrConcatAssign
add esp, 20
push offset Lt_0765
call SECTIONWRITELINE
add esp, 4
.L_00C5:
.L_00C4:
push dword ptr [ebp+8]
call SECTIONWRITELINE
add esp, 4
.L_00C3:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0765,12

.section .text
.balign 16
HUPDATECURRENTFILENAME:
push ebp
mov ebp, esp
.L_00C9:
push 0
push -1
push offset Lt_00CC
push offset Lt_00CB
push dword ptr [ebp+8]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [CTX+2592]
push eax
call fb_StrAssign
add esp, 20
.L_00CA:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITESTATICASSERT:
push ebp
mov ebp, esp
sub esp, 52
.L_00CD:
mov eax, dword ptr [CTX+2604]
and eax, 64
test eax, eax
jne .L_00D0
or dword ptr [CTX+2604], 64
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 85
push offset Lt_00D1
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
.L_00D0:
.L_00CF:
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset Lt_00D4
push -1
push -1
push dword ptr [ebp+8]
push 21
push offset Lt_00D3
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
call HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_00CE:
mov esp, ebp
pop ebp
ret
.balign 16
HAPPENDCTORATTRIB:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00D8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 196608
je .L_00DB
cmp dword ptr [ebp+16], 0
jne .L_00DD
push 0
push 2
push offset Lt_00DE
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00DD:
.L_00DC:
push 0
push 17
push offset Lt_00DF
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 65536
je .L_00E1
push 0
push 12
push offset Lt_00E2
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_00E0
.L_00E1:
push 0
push 11
push offset Lt_00E3
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00E0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00E5
push 0
push -1
push 3
push offset Lt_00E7
push -1
push -1
push dword ptr [ebp-4]
call fb_IntToStr
add esp, 4
push eax
push 3
push offset Lt_00E6
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
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00E5:
.L_00E4:
push 0
push 4
push offset Lt_00EA
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp+16], 0
je .L_00EC
push 0
push 2
push offset Lt_00DE
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00EC:
.L_00EB:
.L_00DB:
.L_00DA:
.L_00D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETMANGLEDNAMEFORASM:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00ED:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ENV+292]
and eax, dword ptr [ebp+12]
je .L_00F0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 2
push offset Lt_00F1
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
.L_00F0:
.L_00EF:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_00F4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 1
jne .L_00F6
push 0
push 2
push offset Lt_00F7
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call SYMBPROCCALCSTDCALLSUFFIXN
add esp, 4
push edx
push eax
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_00F6:
.L_00F5:
.L_00F4:
.L_00F3:
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
.L_00EE:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HNEEDALIAS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F8:
mov dword ptr [ebp-4], 0
call FBGETCPUFAMILY
test eax, eax
je .L_00FB
jmp .L_00F9
.L_00FB:
.L_00FA:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00FF
.L_0100:
cmp dword ptr [ebp-8], 1
je .L_00FF
.L_0101:
cmp dword ptr [ebp-8], 4
jne .L_00FE
.L_00FF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0103
jmp .L_00F9
.L_0103:
.L_0102:
jmp .L_00FC
.L_00FE:
jmp .L_00F9
.L_0104:
.L_00FC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .L_0108
.L_0109:
cmp dword ptr [ebp-8], 4
jne .L_0107
.L_0108:
mov dword ptr [ebp-4], -1
jmp .L_0105
.L_0107:
cmp dword ptr [ebp-8], 1
jne .L_010A
.L_010B:
mov dword ptr [ebp-4], -1
.L_010A:
.L_0105:
.L_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITPROCHEADER:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_010C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+12], 0
jne .L_010F
push -1
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HAPPENDCTORATTRIB
add esp, 12
.L_010F:
.L_010E:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
jne .L_0111
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .L_0113
push 0
push 8
push offset Lt_0114
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0113:
.L_0112:
.L_0111:
.L_0110:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+88]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
call FBGETCPUFAMILY
test eax, eax
jne .L_0117
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-72], ebx
cmp dword ptr [ebp-72], 1
je .L_011B
.L_011C:
cmp dword ptr [ebp-72], 2
je .L_011B
.L_011D:
cmp dword ptr [ebp-72], 4
jne .L_011A
.L_011B:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0121
.L_0122:
cmp dword ptr [ebp-76], 4
jne .L_0120
.L_0121:
push 0
push 11
push offset Lt_0123
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_011E
.L_0120:
push 0
push 26
push offset Lt_0125
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0124:
.L_011E:
jmp .L_0118
.L_011A:
cmp dword ptr [ebp-72], 5
jne .L_0126
.L_0127:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_012B
.L_012C:
cmp dword ptr [ebp-76], 4
jne .L_012A
.L_012B:
push 0
push 12
push offset Lt_012D
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0128
.L_012A:
push 0
push 27
push offset Lt_012F
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_012E:
.L_0128:
jmp .L_0118
.L_0126:
cmp dword ptr [ebp-72], 6
jne .L_0130
.L_0131:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0135
.L_0136:
cmp dword ptr [ebp-76], 4
jne .L_0134
.L_0135:
push 0
push 12
push offset Lt_0137
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0132
.L_0134:
push 0
push 27
push offset Lt_0139
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0138:
.L_0132:
.L_0130:
.L_0118:
.L_0117:
.L_0116:
push 0
push 2
push offset Lt_00DE
push -1
lea ebx, [ebp-24]
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
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_013B
push 0
push 3
push offset Lt_013C
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_013D
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_013A
.L_013B:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_013A:
push 0
push 3
push offset Lt_00E6
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-60], 0
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_013F
mov eax, dword ptr [ebp+12]
and eax, 1
je .L_0141
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-60], ebx
push 0
push -1
push -1
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-60]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-60]
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0140
.L_0141:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-60], eax
push 0
push -1
push -1
mov eax, dword ptr [ebp-60]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-60]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 31
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp-60]
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
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
push -1
push -1
push 0
push dword ptr [ebp-60]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_00DE
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0140:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_0147
push 0
push 3
push offset Lt_0148
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_0147:
.L_0146:
.L_013F:
.L_013E:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .L_0149
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-64], eax
jmp .L_0768
.L_0149:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-64], ecx
.L_0768:
mov ecx, dword ptr [ebp-64]
mov dword ptr [ebp-68], ecx
cmp dword ptr [ebp-60], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-68], 0
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_014C
push 0
push 5
push offset Lt_0087
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_014C:
.L_014B:
.L_014D:
cmp dword ptr [ebp-68], 0
je .L_014E
mov eax, dword ptr [ebp-68]
cmp dword ptr [eax+56], 4
jne .L_0150
push 0
push 4
push offset Lt_0151
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_014F
.L_0150:
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+12]
and ecx, 524288
je .L_0153
push 0
push 7
push offset Lt_0154
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
jmp .L_0152
.L_0153:
lea ecx, [ebp-44]
push ecx
lea ecx, [ebp-40]
push ecx
push dword ptr [ebp-68]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0152:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0156
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-68]
push dword ptr [eax+60]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_00DE
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0156:
.L_0155:
.L_014F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_0159
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-72], ecx
jmp .L_0769
.L_0159:
mov ecx, dword ptr [ebp-68]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-72], eax
.L_0769:
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .L_015C
push 0
push 3
push offset Lt_0148
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_015C:
.L_015B:
jmp .L_014D
.L_014E:
push 0
push 3
push offset Lt_00E7
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_015E
push dword ptr [ebp+8]
call HNEEDALIAS
add esp, 4
test eax, eax
je .L_0160
push 0
push 7
push offset Lt_0161
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0162
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0160:
.L_015F:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HAPPENDCTORATTRIB
add esp, 12
.L_015E:
.L_015D:
push 0
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_010D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETUDTTAG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0163:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0166
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .L_0168
push 0
push 7
push offset Lt_0169
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0167
.L_0168:
push 0
push 8
push offset Lt_016A
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
.L_0167:
.L_0166:
.L_0165:
.L_0164:
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETUDTID:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_016B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
jne .L_016E
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
je .L_0172
.L_0173:
cmp dword ptr [ebp-28], 4
je .L_0172
.L_0174:
cmp dword ptr [ebp-28], 5
jne .L_0171
.L_0172:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_016C
.L_0171:
.L_016F:
.L_016E:
.L_016D:
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_0175
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
.L_016C:
lea eax, [ebp-12]
push eax
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
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0177:
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTID
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0178:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HEMITUDT:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.L_0179:
cmp dword ptr [ebp+8], 0
jne .L_017C
jmp .L_017A
.L_017C:
.L_017B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_017E
jmp .L_017A
.L_017E:
.L_017D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_0180
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
inc ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_0182
inc dword ptr [ebp-4]
jmp .L_0181
.L_0182:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
jne .L_0183
inc dword ptr [ebp-4]
.L_0183:
.L_0181:
mov eax, dword ptr [CTX+2580]
cmp dword ptr [ebp-4], eax
jle .L_0185
mov eax, dword ptr [CTX+2580]
mov dword ptr [ebp-4], eax
.L_0185:
.L_0184:
jmp .L_017F
.L_0180:
mov dword ptr [ebp-4], 0
.L_017F:
push dword ptr [ebp-4]
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0187
.L_0189:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push -1
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00DE
push -1
push -1
push 0
push 10
call HEMITTYPE
add esp, 8
push eax
push 9
push offset Lt_018A
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
call HWRITELINE
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0186
.L_0191:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITSTRUCT
add esp, 8
jmp .L_0186
.L_0192:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_0194
push 0
push -1
push 3
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
jne .L_0196
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push -1
lea ebx, [ebp-20]
push ebx
push 9
push offset Lt_018A
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
.L_0196:
.L_0195:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0194:
.L_0193:
jmp .L_0186
.L_0187:
mov eax, dword ptr [ebp-8]
add eax, 4294967293
cmp eax, 7
ja .L_0186
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_019A+eax*4-12]
.L_019A:
.int .L_0192
.int .L_0186
.int .L_0186
.int .L_0186
.int .L_0186
.int .L_0186
.int .L_0189
.int .L_0191
.L_0186:
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
.L_017A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITARRAYDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_019B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_019E
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_019C
.L_019E:
.L_019D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
je .L_01A2
.L_01A3:
cmp dword ptr [ebp-28], 12
jne .L_01A1
.L_01A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
jne .L_01A5
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-36], eax
jmp .L_01A7
.L_01AA:
push 0
push -1
push -1
push 2
push offset Lt_01AC
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
sal eax, 4
mov esi, dword ptr [ebx+64]
add esi, eax
mov ebx, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
sub ebx, dword ptr [esi]
sbb eax, dword ptr [esi+4]
add ebx, 1
adc eax, 0
push eax
push ebx
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_01AB
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
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_01A8:
inc dword ptr [ebp-32]
.L_01A7:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .L_01AA
.L_01A9:
.L_01A5:
.L_01A4:
.L_01A1:
.L_019F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
jne .L_01B1
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 18
je .L_01B5
.L_01B6:
cmp dword ptr [ebp-36], 4
jne .L_01B4
.L_01B5:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], ebx
jmp .L_01B2
.L_01B4:
cmp dword ptr [ebp-36], 7
jne .L_01B7
.L_01B8:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov esi, ebx
sar esi, 31
push esi
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
.L_01B7:
.L_01B2:
cmp dword ptr [ebp-28], 0
jl .L_01BA
jg .L_076E
cmp dword ptr [ebp-32], 0
jbe .L_01BA
.L_076E:
push 0
push 2
push offset Lt_01AB
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_01AC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01BA:
.L_01B9:
.L_01B1:
.L_01B0:
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
.L_019C:
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
HEMITVARDECL:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_01BB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01BE
push 0
push 8
push offset Lt_01BF
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01BD
.L_01BE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 56
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_01C0
push 0
push 8
push offset Lt_0114
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_01C0:
.L_01BD:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
lea ecx, [ebp-20]
push ecx
lea ecx, [ebp-16]
push ecx
push dword ptr [ebp+12]
call SYMBGETREALTYPE
add esp, 12
push 0
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
push dword ptr [ebp-16]
call HEMITTYPE
add esp, 8
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
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_00DE
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
push dword ptr [ebp+12]
call HEMITARRAYDECL
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
not eax
and ecx, eax
je .L_01C5
push 0
push 25
push offset Lt_01C6
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01C5:
.L_01C4:
cmp dword ptr [ebp+16], 0
je .L_01C8
push 0
push -1
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_01C9
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
.L_01C8:
.L_01C7:
push 0
push 2
push offset Lt_018B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_01BC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITLOCALVAR:
push ebp
mov ebp, esp
push ebx
.L_01CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_01CF
jmp .L_01CD
.L_01CF:
.L_01CE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01D1
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .L_01D0
.L_01D1:
push 0
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 12
.L_01D0:
.L_01CD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HALLOCGLOBALVAR:
push ebp
mov ebp, esp
push ebx
.L_01D2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_01D5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_01D7
jmp .L_01D3
.L_01D7:
.L_01D6:
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .L_01D4
.L_01D5:
push 0
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 12
.L_01D4:
.L_01D3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITGLOBALVAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.L_01D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
and esi, 2
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 16388
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .L_01DB
jmp .L_01D9
.L_01DB:
.L_01DA:
mov esi, dword ptr [CTX+2756]
mov dword ptr [ebp-4], esi
cmp dword ptr [ebp-4], 1
jne .L_01DE
.L_01DF:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 56
je .L_01E1
push 0
push dword ptr [ebp+8]
push -1
call HEMITVARDECL
add esp, 12
jmp .L_01E0
.L_01E1:
push dword ptr [ebp+8]
call HALLOCGLOBALVAR
add esp, 4
.L_01E0:
jmp .L_01DC
.L_01DE:
cmp dword ptr [ebp-4], 2
jne .L_01E2
.L_01E3:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 40
je .L_01E5
push dword ptr [ebp+8]
call HALLOCGLOBALVAR
add esp, 4
.L_01E5:
.L_01E4:
.L_01E2:
.L_01DC:
.L_01D9:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITGLOBALVAREXCEPTDATASTMT:
push ebp
mov ebp, esp
.L_01E6:
push dword ptr [ebp+8]
call SYMBISDATADESC
add esp, 4
test eax, eax
je .L_01E9
jmp .L_01E7
.L_01E9:
.L_01E8:
push dword ptr [ebp+8]
call HMAYBEEMITGLOBALVAR
add esp, 4
.L_01E7:
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITPROCPROTO:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_01EA:
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
je .L_01ED
jmp .L_01EB
.L_01ED:
.L_01EC:
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
test eax, eax
jne .L_01EF
jmp .L_01EB
.L_01EF:
.L_01EE:
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 1
push dword ptr [ebp+8]
call HEMITPROCHEADER
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
.L_01EB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITFIELDTYPES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F2:
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.L_01F4:
cmp dword ptr [ebp-4], 0
je .L_01F5
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
call HEMITUDT
add esp, 8
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01F4
.L_01F5:
.L_01F3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFINDPARENTANONALREADYONSTACK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.L_01F8:
lea ebx, [CTX+2608]
push ebx
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-8], eax
.L_01FB:
cmp dword ptr [ebp-8], 0
je .L_01FC
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
jne .L_01FE
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01F7
.L_01FE:
.L_01FD:
push dword ptr [ebp-8]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_01FB
.L_01FC:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.L_01FA:
cmp dword ptr [ebp-12], 0
jne .L_01F8
.L_01F9:
mov dword ptr [ebp-4], 0
.L_01F7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPUSHANONPARENTS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01FF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+12], eax
jne .L_0202
jmp .L_0200
.L_0202:
.L_0201:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+164]
push dword ptr [ebp+8]
call HPUSHANONPARENTS
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .L_0204
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset Lt_0205
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0203
.L_0204:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset Lt_0207
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
.L_0203:
call SECTIONINDENT
lea ebx, [CTX+2608]
push ebx
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_0200:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPOPANONPARENTS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0209:
.L_020B:
lea eax, [CTX+2608]
push eax
call LISTGETTAIL
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
je .L_020C
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 3
push offset Lt_020D
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [CTX+2608]
push ebx
call LISTGETTAIL
add esp, 4
push eax
lea eax, [CTX+2608]
push eax
call LISTDELNODE
add esp, 8
jmp .L_020B
.L_020C:
.L_020A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTRUCTWITHFIELDS:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_020F:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-20], eax
.L_0211:
cmp dword ptr [ebp-20], 0
je .L_0212
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+164], ebx
jne .L_0214
push 0
call HPOPANONPARENTS
add esp, 4
jmp .L_0213
.L_0214:
push dword ptr [ebp-20]
call HFINDPARENTANONALREADYONSTACK
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call HPOPANONPARENTS
add esp, 4
mov eax, dword ptr [ebp-20]
push dword ptr [eax+164]
cmp dword ptr [ebp-24], 0
je .L_0215
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
jmp .L_077D
.L_0215:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-40], ebx
.L_077D:
push dword ptr [ebp-40]
call HPUSHANONPARENTS
add esp, 8
.L_0213:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0218
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call HEMITTYPE
add esp, 8
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
mov eax, dword ptr [ebp-20]
push dword ptr [eax+16]
push 2
push offset Lt_00DE
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
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
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-20]
call HEMITARRAYDECL
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jle .L_021C
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call TYPECALCNATURALALIGN
add esp, 8
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_021D
mov dword ptr [ebp-68], 24
jmp .L_077E
.L_021D:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_077E:
cmp dword ptr [ebp-68], 20
jne .L_0220
mov ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx+121]
mov byte ptr [ebp-72], al
movzx eax, byte ptr [ebp-72]
test eax, eax
jle .L_0222
movzx eax, byte ptr [ebp-72]
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
or dword ptr [ebp-4], ebx
.L_0222:
.L_0221:
.L_0220:
.L_021F:
cmp dword ptr [ebp-4], 0
jne .L_0224
push 0
push 33
push offset Lt_0225
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-12]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_0226
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0224:
.L_0223:
.L_021C:
.L_021B:
cmp dword ptr [ebp-12], 0
jle .L_0227
mov eax, dword ptr [ebp-4]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_077F
.L_0227:
mov dword ptr [ebp-64], -1
.L_077F:
cmp dword ptr [ebp-64], 0
je .L_022A
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_022B
mov dword ptr [ebp-68], 24
jmp .L_0780
.L_022B:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0780:
cmp dword ptr [ebp-68], 20
jne .L_022E
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call TYPECALCNATURALALIGN
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-12], 0
jle .L_022F
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-72]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .L_0781
.L_022F:
mov dword ptr [ebp-76], 0
.L_0781:
cmp dword ptr [ebp-76], 0
je .L_0232
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-72], eax
.L_0232:
.L_0231:
mov eax, dword ptr [ebp-16]
mov bl, byte ptr [eax+121]
mov byte ptr [ebp-80], bl
movzx ebx, byte ptr [ebp-80]
test ebx, ebx
jle .L_0233
movzx ebx, byte ptr [ebp-80]
mov eax, dword ptr [ebp-72]
cmp eax, ebx
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
jmp .L_0782
.L_0233:
mov dword ptr [ebp-84], 0
.L_0782:
cmp dword ptr [ebp-84], 0
je .L_0236
push 0
push 25
push offset Lt_0237
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-72]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_0226
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0236:
.L_0235:
.L_022E:
.L_022D:
.L_022A:
.L_0229:
push 0
push 2
push offset Lt_018B
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push -1
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 8
.L_0218:
.L_0217:
push dword ptr [ebp-20]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_0211
.L_0212:
push 0
call HPOPANONPARENTS
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0210:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTRUCT:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_0238:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .L_023B
cmp dword ptr [ebp+12], 0
je .L_023D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_023F
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push dword ptr [ebp+8]
call HGETUDTNAME
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
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
.L_023F:
.L_023E:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0239
.L_023D:
.L_023C:
.L_023B:
.L_023A:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 134217728
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 32768
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0243
push dword ptr [ebp+8]
call HEMITFIELDTYPES
add esp, 4
.L_0243:
.L_0242:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 67108864
test eax, eax
je .L_0245
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0239
.L_0245:
.L_0244:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx+121]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0247
push 0
push 29
push offset Lt_0248
push -1
lea ecx, [ebp-16]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_0247:
.L_0246:
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTID
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0249
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push -1
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 8
call SECTIONINDENT
cmp dword ptr [ebp-4], 0
je .L_024B
push dword ptr [ebp+8]
call HEMITSTRUCTWITHFIELDS
add esp, 4
jmp .L_024A
.L_024B:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 3
push offset Lt_024D
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_LongintToStr
add esp, 8
push eax
push 24
push offset Lt_024C
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
call HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
.L_024A:
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 3
push offset Lt_020D
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_ULongintToStr
add esp, 8
push eax
push -1
push 7
push offset Lt_0253
push -1
push -1
push dword ptr [ebp+8]
call HGETUDTID
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 4
push eax
push 9
push offset Lt_0252
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
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITESTATICASSERT
add esp, 4
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0239:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HWRITEX86F2I:
push ebp
mov ebp, esp
sub esp, 356
push ebx
.L_0259:
push 0
push -1
push 0
push dword ptr [ebp+12]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+16]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [ENV+132], 1
jne .L_025C
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_025D
mov dword ptr [ebp-352], 24
jmp .L_078C
.L_025D:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-352], eax
.L_078C:
mov eax, dword ptr [ebp-352]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-356], ebx
cmp dword ptr [ebp-356], 4
jne .L_0261
.L_0262:
push 0
push 2
push offset Lt_0263
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_025F
.L_0261:
cmp dword ptr [ebp-356], 8
jne .L_0264
.L_0265:
push 0
push 2
push offset Lt_0266
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
.L_0264:
.L_025F:
cmp dword ptr [ebp+16], 15
jne .L_0268
push 0
push 2
push offset Lt_0269
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0267
.L_0268:
push 0
push 2
push offset Lt_0263
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 20
.L_0267:
.L_025C:
.L_025B:
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-60]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-60]
push ebx
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 9
push offset Lt_026D
push -1
push -1
lea ebx, [ebp-24]
push ebx
push -1
push 3
push offset Lt_00E6
push -1
push -1
push dword ptr [ebp+8]
push -1
push 5
push offset Lt_026C
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset Lt_026B
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
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 2
push offset Lt_0275
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
push -1
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 9
push offset Lt_0278
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0277
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
call HWRITELINE
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 9
push offset Lt_027C
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
push -1
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_027F
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_027E
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
call HWRITELINE
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 6
push offset Lt_0284
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset Lt_0283
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
call HWRITELINE
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 15
push offset Lt_0288
push -1
lea eax, [ebp-288]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-288]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 13
push offset Lt_028A
push -1
lea eax, [ebp-300]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-300]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push 6
push offset Lt_028C
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 4
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 3
push offset Lt_028E
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
push 0
push 15
push offset Lt_0290
push -1
lea eax, [ebp-336]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-336]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-336]
push eax
call fb_StrDelete
add esp, 4
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
push 0
push 2
push offset Lt_0292
push -1
lea eax, [ebp-348]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-348]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-348]
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
.L_025A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HWRITEGENERICF2I:
push ebp
mov ebp, esp
sub esp, 96
.L_0294:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 15
jne .L_0297
push 0
push 11
push offset Lt_0298
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0296
.L_0297:
push 0
push 10
push offset Lt_0299
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0296:
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 11
push offset Lt_029D
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 12
push offset Lt_029C
push -1
push -1
push 0
push dword ptr [ebp+12]
call HEMITTYPE
add esp, 8
push eax
push -1
push 13
push offset Lt_029B
push -1
push -1
push dword ptr [ebp+8]
push 12
push offset Lt_029A
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
call HWRITELINE
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0295:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITEF2I:
push ebp
mov ebp, esp
.L_02A5:
call FBGETCPUFAMILY
test eax, eax
jne .L_02A8
cmp dword ptr [ebp+12], 11
je .L_02AB
.L_02AC:
cmp dword ptr [ebp+12], 13
jne .L_02AA
.L_02AB:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWRITEX86F2I
add esp, 12
jmp .L_02A6
.L_02AA:
.L_02A9:
.L_02A8:
.L_02A7:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWRITEGENERICF2I
add esp, 12
.L_02A6:
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITPROCEXPORT:
push ebp
mov ebp, esp
push ebx
.L_02AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
jne .L_02B0
jmp .L_02AE
.L_02B0:
.L_02AF:
push 0
push 3
push offset Lt_02B1
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push 10
push offset Lt_02B2
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push 16
push offset Lt_02B3
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push 7
push offset Lt_02B4
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push 3
push offset Lt_02B5
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push 3
push offset Lt_02B6
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
.L_02AE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 124
mov dword ptr [ebp-4], 0
.L_02B7:
lea eax, [ENV+584]
push eax
call HFILEEXISTS
add esp, 4
test eax, eax
je .L_02BA
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 4
.L_02BA:
.L_02B9:
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
je .L_02BC
mov dword ptr [ebp-4], 0
jmp .L_02B8
.L_02BC:
.L_02BB:
mov dword ptr [CTX+2580], -1
mov dword ptr [CTX+2584], 0
mov dword ptr [CTX+2588], 0
mov dword ptr [CTX+2604], 0
mov dword ptr [CTX+2756], 0
lea eax, [ENV+304]
push eax
call HUPDATECURRENTFILENAME
add esp, 4
call SECTIONBEGIN
cmp dword ptr [ENV+148], 0
je .L_02BE
push 0
push 0
push 0
push 113
call _EMITDBG
add esp, 16
.L_02BE:
.L_02BD:
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 34
push offset Lt_02BF
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 34
push offset Lt_02C1
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 35
push offset Lt_02C3
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 35
push offset Lt_02C5
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 35
push offset Lt_02C7
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 35
push offset Lt_02C9
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 35
push offset Lt_02CB
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 35
push offset Lt_02CD
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
call FBIS64BIT
test eax, eax
je .L_02D0
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset Lt_02D1
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
jmp .L_02CF
.L_02D0:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset Lt_02D3
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
.L_02CF:
push -1
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 22
push offset Lt_02D5
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
call SECTIONBEGIN
mov dword ptr [ebp-4], -1
.L_02B8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_EMITEND:
push ebp
mov ebp, esp
sub esp, 52
.L_02D7:
lea eax, [ENV+304]
push eax
call HUPDATECURRENTFILENAME
add esp, 4
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [CTX+2604]
and eax, 1
je .L_02DA
push 15
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02DB
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02DA:
mov eax, dword ptr [CTX+2604]
and eax, 2
je .L_02DE
push 15
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02DF
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02DE:
mov eax, dword ptr [CTX+2604]
and eax, 4
je .L_02E2
push 15
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset Lt_02E3
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02E2:
mov eax, dword ptr [CTX+2604]
and eax, 8
je .L_02E6
push 16
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02E7
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02E6:
mov eax, dword ptr [CTX+2604]
and eax, 16
je .L_02EA
push 16
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02EB
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02EA:
mov eax, dword ptr [CTX+2604]
and eax, 32
je .L_02EE
push 16
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset Lt_02EF
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02EE:
push offset HMAYBEEMITPROCPROTO
push 3
call SYMBFOREACHGLOBAL
add esp, 8
mov dword ptr [CTX+2756], 1
push offset HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call SYMBFOREACHGLOBAL
add esp, 8
push offset HMAYBEEMITGLOBALVAR
call IRFOREACHDATASTMT
add esp, 4
mov dword ptr [CTX+2756], 2
push offset HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call SYMBFOREACHGLOBAL
add esp, 8
push offset HMAYBEEMITGLOBALVAR
call IRFOREACHDATASTMT
add esp, 4
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
mov eax, dword ptr [ENV+284]
and eax, 4
and eax, dword ptr [ENV+224]
je .L_02F2
push offset HMAYBEEMITPROCEXPORT
push 3
call SYMBFOREACHGLOBAL
add esp, 8
push -1
lea eax, [CTX+2668]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_02F4
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 3
push offset Lt_028E
push -1
push -1
lea eax, [CTX+2668]
push eax
push 35
push offset Lt_02F5
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
call HWRITELINE
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
push 20
push offset Lt_02F9
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
.L_02F4:
.L_02F3:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2668]
push eax
call fb_StrAssign
add esp, 20
.L_02F2:
.L_02F1:
call SECTIONEND
cmp dword ptr [CTX+12], 0
jne .L_02FC
push -1
lea eax, [CTX]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_02FE
.L_02FE:
.L_02FD:
.L_02FC:
.L_02FB:
call SECTIONEND
push dword ptr [ENV+580]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0300
.L_0300:
.L_02FF:
mov dword ptr [ENV+580], 0
.L_02D8:
mov esp, ebp
pop ebp
ret
.balign 16
_GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0301:
cmp dword ptr [ebp+8], 1
jne .L_0304
.L_0305:
mov dword ptr [ebp-4], 0
jmp .L_0302
jmp .L_0303
.L_0304:
push 0
push 1
push 0
push offset Lt_0307
push 21
call ERRREPORTEX
add esp, 20
.L_0306:
.L_0303:
.L_0302:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SUPPORTSOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0308:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_030B
.L_030D:
mov dword ptr [ebp-4], 0
jmp .L_030A
.L_030E:
mov dword ptr [ebp-4], -1
jmp .L_030A
.L_030B:
mov eax, dword ptr [ebp-8]
add eax, 4294967239
cmp eax, 15
ja .L_030E
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_030F+eax*4-228]
.L_030F:
.int .L_030D
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030D
.int .L_030D
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030D
.int .L_030D
.L_030A:
.L_0309:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0310:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+16], ebx
.L_0311:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCEND:
push ebp
mov ebp, esp
push ebx
.L_0312:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+20], ebx
.L_0313:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEBEGIN:
push ebp
mov ebp, esp
.L_0314:
.L_0315:
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEEND:
push ebp
mov ebp, esp
.L_0316:
.L_0317:
mov esp, ebp
pop ebp
ret
.balign 16
HISSTATICWITHDTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0318:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 262144
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 4
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_0319:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_031A:
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-8], eax
.L_031C:
cmp dword ptr [ebp+8], 0
je .L_031D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 15
jne .L_0320
.L_0321:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _PROCALLOCSTATICVARS
add esp, 4
jmp .L_031E
.L_0320:
cmp dword ptr [ebp-12], 1
jne .L_0322
.L_0323:
push dword ptr [ebp+8]
call HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .L_0325
push dword ptr [ebp+8]
call HMAYBEEMITLOCALVAR
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0327
push dword ptr [ebp-4]
call HMAYBEEMITLOCALVAR
add esp, 4
.L_0327:
.L_0326:
.L_0325:
.L_0324:
.L_0322:
.L_031E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .L_031C
.L_031D:
push dword ptr [ebp-8]
call SECTIONRETURN
add esp, 4
.L_031B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SETVREGDATATYPE:
push ebp
mov ebp, esp
push ebx
.L_0328:
cmp dword ptr [ebp+8], 0
je .L_032B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.L_032B:
.L_032A:
.L_0329:
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
.L_032C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_032F
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
jne .L_0332
.L_0333:
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
jmp .L_0330
.L_0332:
mov eax, dword ptr [ebp+8]
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
.L_0334:
.L_0330:
.L_032F:
.L_032E:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0336
.L_0338:
cmp dword ptr [ebp+12], 0
je .L_033A
mov eax, dword ptr [ebp-28]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call HEMITUDT
add esp, 8
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
jmp .L_0339
.L_033A:
cmp dword ptr [ebp+8], 10
jne .L_033B
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_033C
mov dword ptr [ebp-36], 24
jmp .L_078F
.L_033C:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_078F:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0339
.L_033B:
push 0
push 0
push dword ptr [DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
.L_0339:
jmp .L_0335
.L_033E:
dec dword ptr [ebp-28]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+12]
call HEMITUDT
add esp, 8
push 0
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0335
.L_033F:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0340
mov dword ptr [ebp-36], 24
jmp .L_0790
.L_0340:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0790:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0335
.L_0342:
push 0
push 0
push dword ptr [DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0335
.L_0343:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0335
.L_0336:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 18
ja .L_0343
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.L_0344+ebx*4-16]
.L_0344:
.int .L_033F
.int .L_0343
.int .L_0343
.int .L_033F
.int .L_0343
.int .L_0343
.int .L_0338
.int .L_0343
.int .L_0343
.int .L_0343
.int .L_0343
.int .L_0343
.int .L_0343
.int .L_0343
.int .L_0342
.int .L_0343
.int .L_0338
.int .L_0343
.int .L_033E
.L_0335:
cmp dword ptr [ebp-28], 0
jle .L_0346
push 0
push -1
push 1
push offset Lt_0347
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
.L_0346:
.L_0345:
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
.L_032D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0348:
lea eax, [CTX+2680]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0349:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRFREENODE:
push ebp
mov ebp, esp
.L_034A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_034D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_034F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 4
.L_034F:
.L_034E:
.L_034D:
.L_034C:
push dword ptr [ebp+8]
lea eax, [CTX+2680]
push eax
call LISTDELNODE
add esp, 8
.L_034B:
mov esp, ebp
pop ebp
ret
.balign 16
EXPRFREETREE:
push ebp
mov ebp, esp
.L_0350:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0353
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRFREETREE
add esp, 4
.L_0353:
.L_0352:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_0355
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call EXPRFREETREE
add esp, 4
.L_0355:
.L_0354:
push dword ptr [ebp+8]
call EXPRFREENODE
add esp, 4
.L_0351:
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWTEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0356:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
call ZSTRDUP
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0357:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWIMMI:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0358:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_035A
mov dword ptr [ebp-12], 24
jmp .L_0793
.L_035A:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0793:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_035D
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_035E
mov dword ptr [ebp-16], 24
jmp .L_0794
.L_035E:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0794:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0360
mov dword ptr [ebp-20], 13
jmp .L_0795
.L_0360:
mov dword ptr [ebp-20], 14
.L_0795:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
jmp .L_035C
.L_035D:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0362
mov dword ptr [ebp-16], 24
jmp .L_0796
.L_0362:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0796:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0364
mov dword ptr [ebp-20], 11
jmp .L_0797
.L_0364:
mov dword ptr [ebp-20], 12
.L_0797:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
.L_035C:
push 0
push dword ptr [ebp+16]
push 1
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0359:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWIMMF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0366:
push 0
push dword ptr [ebp+16]
push 1
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0367:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SYMBISCARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0368:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 81920
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_036B
mov dword ptr [ebp-4], 0
jmp .L_0369
.L_036B:
.L_036A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_036F
.L_0370:
cmp dword ptr [ebp-8], 12
jne .L_036E
.L_036F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_0372
mov dword ptr [ebp-4], 0
jmp .L_0369
.L_0372:
.L_0371:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0374
mov dword ptr [ebp-4], -1
jmp .L_0369
.L_0374:
.L_0373:
.L_036E:
.L_036C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .L_0378
.L_0379:
cmp dword ptr [ebp-8], 4
je .L_0378
.L_037A:
cmp dword ptr [ebp-8], 7
jne .L_0377
.L_0378:
mov dword ptr [ebp-4], -1
jmp .L_0369
.L_0377:
.L_0375:
mov dword ptr [ebp-4], 0
.L_0369:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWCAST:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_037B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
cmp ebx, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [eax+8]
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ebx, esi
je .L_037E
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037C
.L_037E:
.L_037D:
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [esi+4]
and ebx, 480
je .L_037F
mov dword ptr [ebp-8], 24
jmp .L_079B
.L_037F:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 31
mov dword ptr [ebp-8], esi
.L_079B:
mov esi, dword ptr [ebp-8]
imul esi, 28
mov dword ptr [ebp-20], esi
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_0381
mov dword ptr [ebp-12], 24
jmp .L_079C
.L_0381:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-12], esi
.L_079C:
mov esi, dword ptr [ebp-12]
imul esi, 28
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [SYMB_DTYPETB+esi+20]
cmp eax, dword ptr [SYMB_DTYPETB+ebx+20]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 480
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
mov esi, dword ptr [ebp+8]
and esi, 480
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
je .L_0384
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037C
.L_0384:
.L_0383:
mov esi, dword ptr [ebp+16]
cmp dword ptr [esi], 3
jne .L_0386
mov esi, dword ptr [ebp+8]
and esi, 480
sar esi, 5
test esi, esi
setg dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
sar ebx, 5
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and esi, ebx
je .L_0388
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ebx+4], esi
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_037C
.L_0388:
.L_0387:
.L_0386:
.L_0385:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call EXPRNEW
add esp, 12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_037C:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWMACRO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0389:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 6
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_038A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWSYM:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_038B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_038E
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebp+8], ebx
.L_038E:
.L_038D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 7
jne .L_0390
push 0
push 32
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .L_038F
.L_0390:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .L_0391
push dword ptr [ebp+8]
push 54
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .L_038F
.L_0391:
push dword ptr [ebp+8]
call SYMBISCARRAY
add esp, 4
test eax, eax
je .L_0392
push 0
push -2147483648
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 32505856
or eax, ecx
push eax
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_038F
.L_0392:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0393
push 0
push 66
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
jmp .L_038F
.L_0393:
lea ecx, [ebp-16]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
.L_038F:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_038C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
TYPECBOP:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_0394:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_0397
mov dword ptr [ebp-4], 11
jmp .L_0395
.L_0397:
.L_0396:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_0398
mov dword ptr [ebp-8], 24
jmp .L_07AA
.L_0398:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_07AA:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_039A
mov dword ptr [ebp-12], 24
jmp .L_07AB
.L_039A:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07AB:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp+16], ebx
mov ebx, dword ptr [ebp+12]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_039D
mov dword ptr [ebp-4], 16
jmp .L_0395
.L_039D:
.L_039C:
mov eax, dword ptr [ebp+12]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_039F
mov dword ptr [ebp-4], 15
jmp .L_0395
.L_039F:
.L_039E:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A0
mov dword ptr [ebp-16], 24
jmp .L_07AC
.L_03A0:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07AC:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 4
jg .L_03A3
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A4
mov dword ptr [ebp-48], 24
jmp .L_07AD
.L_03A4:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07AD:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_03A6
mov dword ptr [ebp-52], 11
jmp .L_07AE
.L_03A6:
mov dword ptr [ebp-52], 12
.L_07AE:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+12], ebx
.L_03A3:
.L_03A2:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03A8
mov dword ptr [ebp-20], 24
jmp .L_07AF
.L_03A8:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_07AF:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 4
jg .L_03AB
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03AC
mov dword ptr [ebp-48], 24
jmp .L_07B0
.L_03AC:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07B0:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_03AE
mov dword ptr [ebp-52], 11
jmp .L_07B1
.L_03AE:
mov dword ptr [ebp-52], 12
.L_07B1:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+16], ebx
.L_03AB:
.L_03AA:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03B0
mov dword ptr [ebp-24], 24
jmp .L_07B2
.L_03B0:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_07B2:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03B2
mov dword ptr [ebp-28], 24
jmp .L_07B3
.L_03B2:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_07B3:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [SYMB_DTYPETB+eax+8]
not ecx
test ecx, ecx
je .L_03B5
push dword ptr [ebp+12]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
.L_03B5:
.L_03B4:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03B6
mov dword ptr [ebp-32], 24
jmp .L_07B5
.L_03B6:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07B5:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_03B8
mov dword ptr [ebp-36], 24
jmp .L_07B6
.L_03B8:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_07B6:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .L_03BB
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03BC
mov dword ptr [ebp-52], 24
jmp .L_07B8
.L_03BC:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-52], eax
.L_07B8:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03BE
mov dword ptr [ebp-56], 13
jmp .L_07B9
.L_03BE:
mov dword ptr [ebp-56], 14
.L_07B9:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03C0
mov dword ptr [ebp-60], 24
jmp .L_07BA
.L_03C0:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07BA:
mov eax, dword ptr [ebp-60]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03C2
mov dword ptr [ebp-64], 13
jmp .L_07BB
.L_03C2:
mov dword ptr [ebp-64], 14
.L_07BB:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp+16], eax
.L_03BB:
.L_03BA:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03C4
mov dword ptr [ebp-40], 24
jmp .L_07BC
.L_03C4:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07BC:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03C6
mov dword ptr [ebp-44], 24
jmp .L_07BD
.L_03C6:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07BD:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
and ebx, dword ptr [SYMB_DTYPETB+ecx+8]
not ebx
test ebx, ebx
je .L_03C9
push dword ptr [ebp+12]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
.L_03C9:
.L_03C8:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_0395:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWUOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_03CA:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_03CD
.L_03CF:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D1
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 76
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D1:
.L_03D0:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .L_03CC
.L_03D2:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D4:
.L_03D3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .L_03CC
.L_03D5:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D7
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax+20]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D7:
.L_03D6:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
push dword ptr [ebp+8]
call TYPECBOP
add esp, 12
mov dword ptr [ebp-12], eax
jmp .L_03CC
.L_03D8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .L_03CC
.L_03D9:
jmp .L_03CC
.L_03CD:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967274
cmp ebx, 54
ja .L_03D9
mov ebx, dword ptr [ebp-20]
jmp dword ptr [.L_03DA+ebx*4-88]
.L_03DA:
.int .L_03CF
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D5
.int .L_03D9
.int .L_03D5
.int .L_03D9
.int .L_03D8
.int .L_03D9
.int .L_03D8
.int .L_03D8
.int .L_03D8
.int .L_03D8
.int .L_03D8
.int .L_03D8
.int .L_03D9
.int .L_03D8
.int .L_03D9
.int .L_03D9
.int .L_03D8
.int .L_03D8
.int .L_03D8
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D2
.L_03CC:
cmp dword ptr [ebp-16], 0
je .L_03DC
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call EXPRFREENODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_03CB
.L_03DC:
.L_03DB:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-12]
push 4
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWBOP:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_03DD:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call TYPECBOP
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_03E0
.L_03E2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
and ecx, 480
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_03E4
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_03E6
push dword ptr [ebp+12]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+16], eax
.L_03E6:
.L_03E5:
.L_03E4:
.L_03E3:
jmp .L_03DF
.L_03E0:
mov eax, dword ptr [ebp-16]
add eax, 4294967251
cmp eax, 5
ja .L_03DF
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_03E7+eax*4-180]
.L_03E7:
.int .L_03E2
.int .L_03E2
.int .L_03E2
.int .L_03E2
.int .L_03E2
.int .L_03E2
.L_03DF:
push 0
push dword ptr [ebp-12]
push 5
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_03DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRCACHE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03E8:
lea eax, [CTX+2724]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_03E9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRLOOKUP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03EA:
lea eax, [CTX+2724]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_03EC:
cmp dword ptr [ebp-8], 0
je .L_03ED
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_03EF
jmp .L_03ED
.L_03EF:
.L_03EE:
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_03EC
.L_03ED:
cmp dword ptr [ebp-8], 0
je .L_03F1
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
lea ebx, [CTX+2724]
push ebx
call LISTDELNODE
add esp, 8
jmp .L_03F0
.L_03F1:
mov dword ptr [ebp-4], 0
.L_03F0:
.L_03EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITINT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03F2:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03F4
mov dword ptr [ebp-28], 24
jmp .L_07CC
.L_03F4:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_07CC:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03F7
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03F8
mov dword ptr [ebp-32], 24
jmp .L_07CD
.L_03F8:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07CD:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_03FB
cmp dword ptr [ebp+16], 2147483648
jne .L_03FD
cmp dword ptr [ebp+12], 0
jne .L_03FD
.L_07CF:
push 0
push 2
push offset Lt_03FE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_03FD:
.L_03FC:
push 0
push 3
push offset Lt_03FF
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_03FA
.L_03FB:
cmp dword ptr [ebp+16], 4294967295
jne .L_0401
cmp dword ptr [ebp+12], 2147483648
jne .L_0401
.L_07D0:
push 0
push 2
push offset Lt_03FE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0401:
.L_0400:
.L_03FA:
jmp .L_03F6
.L_03F7:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0402
mov dword ptr [ebp-32], 24
jmp .L_07CE
.L_0402:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07CE:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_0405
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_ULongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_0406
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0404
.L_0405:
push 0
push -1
mov eax, dword ptr [ebp+12]
push eax
call fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_03FE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0404:
.L_03F6:
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
.L_03F3:
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
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0407:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2146435072
je .L_040B
.L_040C:
cmp dword ptr [ebp-28], 4293918720
jne .L_040A
.L_040B:
cmp dword ptr [ebp+8], 16
jne .L_040E
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0410
push 0
push 19
push offset Lt_0411
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_040F
.L_0410:
push 0
push 16
push offset Lt_0412
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_040F:
jmp .L_040D
.L_040E:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0414
push 0
push 20
push offset Lt_0415
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0413
.L_0414:
push 0
push 17
push offset Lt_0416
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0413:
.L_040D:
jmp .L_0409
.L_040A:
cmp dword ptr [ebp-28], 2146959360
je .L_0418
.L_0419:
cmp dword ptr [ebp-28], 4294443008
jne .L_0417
.L_0418:
cmp dword ptr [ebp+8], 16
jne .L_041B
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_041D
push 0
push 23
push offset Lt_041E
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_041C
.L_041D:
push 0
push 20
push offset Lt_041F
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_041C:
jmp .L_041A
.L_041B:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0421
push 0
push 24
push offset Lt_0422
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0420
.L_0421:
push 0
push 21
push offset Lt_0423
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0420:
.L_041A:
jmp .L_0409
.L_0417:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFLOATTOHEX_C99
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 15
jne .L_0426
push 0
push 2
push offset Lt_0427
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0426:
.L_0425:
.L_0424:
.L_0409:
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
.L_0408:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
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
.L_0428:
push 0
push 2
push offset Lt_00C8
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-12], ecx
jmp .L_042B
.L_042E:
mov ecx, dword ptr [ebp+12]
add ecx, dword ptr [ebp-8]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_0430
push 0
push -1
push -1
push 2
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 8
push eax
push 3
push offset Lt_0431
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
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
push ebx
call HISVALIDHEXDIGIT
add esp, 4
test eax, eax
je .L_0434
push 0
push 4
push offset Lt_0435
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0434:
.L_0433:
jmp .L_042F
.L_0430:
cmp dword ptr [ebp-4], 63
jne .L_0436
push 0
push 2
push offset Lt_0437
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
cmp ebx, 63
jne .L_0439
mov ebx, dword ptr [ebp+12]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx+2]
mov byte ptr [ebp-16], al
movzx eax, byte ptr [ebp-16]
cmp eax, 61
je .L_0444
.L_0445:
movzx eax, byte ptr [ebp-16]
cmp eax, 47
je .L_0444
.L_0446:
movzx eax, byte ptr [ebp-16]
cmp eax, 39
je .L_0444
.L_0447:
movzx eax, byte ptr [ebp-16]
cmp eax, 40
je .L_0444
.L_0448:
movzx eax, byte ptr [ebp-16]
cmp eax, 41
je .L_0444
.L_0449:
movzx eax, byte ptr [ebp-16]
cmp eax, 33
je .L_0444
.L_044A:
movzx eax, byte ptr [ebp-16]
cmp eax, 60
je .L_0444
.L_044B:
movzx eax, byte ptr [ebp-16]
cmp eax, 62
je .L_0444
.L_044C:
movzx eax, byte ptr [ebp-16]
cmp eax, 45
jne .L_043C
.L_0444:
push 0
push 4
push offset Lt_0435
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_043C:
.L_043A:
.L_0439:
.L_0438:
jmp .L_042F
.L_0436:
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
.L_042F:
.L_042C:
inc dword ptr [ebp-8]
.L_042B:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_042E
.L_042D:
push 0
push 2
push offset Lt_00C8
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0429:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDWSTRLIT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_044D:
push 0
push 3
push offset Lt_044F
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-16], ecx
jmp .L_0451
.L_0454:
mov ecx, dword ptr [ebp-12]
sal ecx, 2
mov ebx, dword ptr [ebp+12]
add ebx, ecx
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-4], ecx
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_0456
push 0
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 8
push eax
push 3
push offset Lt_0431
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
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add ecx, eax
push dword ptr [ecx+4]
call HISVALIDHEXDIGIT
add esp, 4
test eax, eax
je .L_0459
push 0
push 5
push offset Lt_045A
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0459:
.L_0458:
jmp .L_0455
.L_0456:
cmp dword ptr [ebp-4], 63
jne .L_045B
push 0
push 2
push offset Lt_0437
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add ecx, eax
cmp dword ptr [ecx+4], 63
jne .L_045D
mov ecx, dword ptr [ebp-12]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add eax, ecx
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 61
je .L_0461
.L_0462:
cmp dword ptr [ebp-20], 47
je .L_0461
.L_0463:
cmp dword ptr [ebp-20], 39
je .L_0461
.L_0464:
cmp dword ptr [ebp-20], 40
je .L_0461
.L_0465:
cmp dword ptr [ebp-20], 41
je .L_0461
.L_0466:
cmp dword ptr [ebp-20], 33
je .L_0461
.L_0467:
cmp dword ptr [ebp-20], 60
je .L_0461
.L_0468:
cmp dword ptr [ebp-20], 62
je .L_0461
.L_0469:
cmp dword ptr [ebp-20], 45
jne .L_0460
.L_0461:
push 0
push 5
push offset Lt_045A
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0460:
.L_045E:
.L_045D:
.L_045C:
jmp .L_0455
.L_045B:
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
.L_0455:
.L_0452:
inc dword ptr [ebp-12]
.L_0451:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_0454
.L_0453:
push 0
push 2
push offset Lt_00C8
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_044E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBOPTOSTR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_046A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_046D
.L_046F:
mov eax, offset Lt_0470
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0471:
mov eax, offset Lt_0472
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0473:
mov eax, offset Lt_0474
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0475:
mov eax, offset Lt_0476
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0477:
mov eax, offset Lt_0476
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0478:
mov eax, offset Lt_0479
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_047A:
mov eax, offset Lt_047B
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_047C:
mov eax, offset Lt_047D
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_047E:
mov eax, offset Lt_047F
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0480:
mov eax, offset Lt_0481
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0482:
mov eax, offset Lt_0483
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0484:
mov eax, offset Lt_0485
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0486:
mov eax, offset Lt_0487
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_0488:
mov eax, offset Lt_0489
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_048A:
mov eax, offset Lt_048B
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_048C:
mov eax, offset Lt_048D
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_048E:
mov eax, offset Lt_048F
mov dword ptr [ebp-4], eax
jmp .L_046C
.L_046D:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .L_046C
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0490+eax*4-112]
.L_0490:
.int .L_046F
.int .L_0471
.int .L_0473
.int .L_0475
.int .L_0477
.int .L_0478
.int .L_047E
.int .L_0480
.int .L_046C
.int .L_046C
.int .L_0482
.int .L_046C
.int .L_046C
.int .L_047A
.int .L_047C
.int .L_046C
.int .L_046C
.int .L_0484
.int .L_0486
.int .L_0488
.int .L_048A
.int .L_048C
.int .L_048E
.L_046C:
.L_046B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HUOPTOSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0491:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 22
jne .L_0494
.L_0495:
mov eax, offset Lt_0496
mov dword ptr [ebp-4], eax
jmp .L_0493
.L_0494:
cmp dword ptr [ebp+8], 76
jne .L_0497
.L_0498:
mov eax, offset Lt_0347
mov dword ptr [ebp-4], eax
jmp .L_0493
.L_0497:
cmp dword ptr [ebp+8], 54
jne .L_0499
.L_049A:
mov eax, offset Lt_0443
mov dword ptr [ebp-4], eax
jmp .L_0493
.L_0499:
cmp dword ptr [ebp+8], 52
jne .L_049B
.L_049C:
mov eax, offset Lt_049D
mov dword ptr [ebp-4], eax
jmp .L_0493
.L_049B:
cmp dword ptr [ebp+8], 56
jne .L_049E
.L_049F:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_04A0
mov dword ptr [ebp-8], 24
jmp .L_07D1
.L_04A0:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07D1:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_04A3
.L_04A5:
mov ebx, offset Lt_04A6
mov dword ptr [ebp-4], ebx
jmp .L_04A2
.L_04A7:
mov ebx, offset Lt_04A8
mov dword ptr [ebp-4], ebx
jmp .L_04A2
.L_04A9:
mov ebx, offset Lt_04AA
mov dword ptr [ebp-4], ebx
jmp .L_04A2
.L_04AB:
mov ebx, offset Lt_04AC
mov dword ptr [ebp-4], ebx
jmp .L_04A2
.L_04A3:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967289
cmp ebx, 3
ja .L_04AB
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.L_04AD+ebx*4-28]
.L_04AD:
.int .L_04A9
.int .L_04A9
.int .L_04A5
.int .L_04A7
.L_04A2:
jmp .L_0493
.L_049E:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp ebx, 15
jne .L_04B0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04B2
.L_04B4:
mov ebx, offset Lt_04B5
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04B6:
mov ebx, offset Lt_04B7
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04B8:
mov ebx, offset Lt_04B9
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04BA:
mov ebx, offset Lt_04BB
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04BC:
mov ebx, offset Lt_04BD
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04BE:
mov ebx, offset Lt_04BF
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04C0:
mov ebx, offset Lt_04C1
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04C2:
mov ebx, offset Lt_04C3
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04C4:
mov ebx, offset Lt_04C5
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04C6:
mov ebx, offset Lt_04C7
mov dword ptr [ebp-4], ebx
jmp .L_04B1
.L_04C8:
jmp .L_04B1
.L_04B2:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04C8
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_04C9+ebx*4-232]
.L_04C9:
.int .L_04B4
.int .L_04B6
.int .L_04B8
.int .L_04BA
.int .L_04BC
.int .L_04BE
.int .L_04C8
.int .L_04C0
.int .L_04C8
.int .L_04C8
.int .L_04C2
.int .L_04C4
.int .L_04C6
.L_04B1:
jmp .L_04AF
.L_04B0:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04CB
.L_04CD:
mov ebx, offset Lt_04CE
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04CF:
mov ebx, offset Lt_04D0
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04D1:
mov ebx, offset Lt_04D2
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04D3:
mov ebx, offset Lt_04D4
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04D5:
mov ebx, offset Lt_04D6
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04D7:
mov ebx, offset Lt_04D8
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04D9:
mov ebx, offset Lt_04DA
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04DB:
mov ebx, offset Lt_04DC
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04DD:
mov ebx, offset Lt_04DE
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04DF:
mov ebx, offset Lt_04E0
mov dword ptr [ebp-4], ebx
jmp .L_04CA
.L_04E1:
jmp .L_04CA
.L_04CB:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04E1
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_04E2+ebx*4-232]
.L_04E2:
.int .L_04CD
.int .L_04CF
.int .L_04D1
.int .L_04D3
.int .L_04D5
.int .L_04D7
.int .L_04E1
.int .L_04D9
.int .L_04E1
.int .L_04E1
.int .L_04DB
.int .L_04DD
.int .L_04DF
.L_04CA:
.L_04AF:
.L_04AE:
.L_0493:
.L_0492:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HIMM2TEXT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_04E3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04E5
mov dword ptr [ebp-4], 24
jmp .L_07D2
.L_04E5:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_07D2:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_04E8
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITFLOAT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
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
jmp .L_04E7
.L_04E8:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITINT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
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
.L_04E7:
.L_04E4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYM2TEXT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_04EB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_04EE
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_04F0
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
push edx
push eax
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 8
push eax
push dword ptr [ebp+8]
call HBUILDWSTRLIT
add esp, 16
jmp .L_04EF
.L_04F0:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call HUNESCAPE
add esp, 8
push eax
push dword ptr [ebp+8]
call HBUILDSTRLIT
add esp, 16
.L_04EF:
jmp .L_04ED
.L_04EE:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 7
jne .L_04F4
push 0
push 3
push offset Lt_04F5
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_04F3
.L_04F4:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_04F6
push 0
push 2
push offset Lt_0496
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_04F6:
.L_04F3:
push 0
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
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
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_04ED:
.L_04EC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEXPRFLUSH:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_04F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_04FB
.L_04FD:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
lea ebx, [CTX+2712]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
jmp .L_04FA
.L_04FF:
push dword ptr [ebp+8]
lea eax, [CTX+2712]
push eax
call HIMM2TEXT
add esp, 8
jmp .L_04FA
.L_0500:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
lea eax, [CTX+2712]
push eax
call HSYM2TEXT
add esp, 8
jmp .L_04FA
.L_0501:
push 0
push -1
push -1
push 2
push offset Lt_013D
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push 2
push offset Lt_043F
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
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
jmp .L_04FA
.L_0505:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 112
jne .L_0508
.L_0509:
push 0
push 19
push offset Lt_050A
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0148
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_013D
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_0506
.L_0508:
cmp dword ptr [ebp-20], 109
jne .L_050C
.L_050D:
push 0
push 21
push offset Lt_050E
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0148
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013D
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_0506
.L_050C:
cmp dword ptr [ebp-20], 110
jne .L_050F
.L_0510:
push 0
push 19
push offset Lt_0511
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013D
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_0506
.L_050F:
cmp dword ptr [ebp-20], 111
jne .L_0512
.L_0513:
push 0
push 20
push offset Lt_0514
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0148
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013D
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_0512:
.L_0515:
.L_0506:
jmp .L_04FA
.L_0516:
push 0
push -1
push 0
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call HUOPTOSTR
add esp, 12
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .L_0519
push 0
push 2
push offset Lt_043F
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp-12], 0
je .L_051B
push 0
push 2
push offset Lt_00DE
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_051B:
.L_051A:
.L_0519:
.L_0518:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
cmp dword ptr [ebp+12], 0
je .L_051D
cmp dword ptr [ebp-12], 0
je .L_051F
push 0
push 2
push offset Lt_00DE
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_051F:
.L_051E:
push 0
push 2
push offset Lt_013D
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_051D:
.L_051C:
jmp .L_04FA
.L_0520:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 64
jne .L_0523
.L_0524:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0526
push 0
push 17
push offset Lt_0527
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
jmp .L_0525
.L_0526:
push 0
push 16
push offset Lt_0528
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
.L_0525:
push 0
push 2
push offset Lt_043F
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0148
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013D
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
jmp .L_0521
.L_0523:
cmp dword ptr [ebp+12], 0
je .L_052B
push 0
push 2
push offset Lt_043F
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
.L_052B:
.L_052A:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 8
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
call HBOPTOSTR
add esp, 4
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 8
cmp dword ptr [ebp+12], 0
je .L_052E
push 0
push 2
push offset Lt_013D
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_052E:
.L_052D:
.L_0529:
.L_0521:
jmp .L_04FA
.L_04FB:
cmp dword ptr [ebp-16], 6
ja .L_04FA
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_052F+eax*4]
.L_052F:
.int .L_04FD
.int .L_04FF
.int .L_0500
.int .L_0501
.int .L_0516
.int .L_0520
.int .L_0505
.L_04FA:
.L_04F9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRFLUSH:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0530:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEXPRFLUSH
add esp, 8
push 0
push -1
lea eax, [CTX+2712]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call EXPRFREETREE
add esp, 4
.L_0531:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWOFFSET:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0532:
push dword ptr [ebp+8]
call EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call SYMBISCARRAY
add esp, 4
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
test ebx, ebx
jne .L_0535
push dword ptr [ebp-8]
push 22
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0535:
.L_0534:
cmp dword ptr [ebp+16], 0
jne .L_07D7
cmp dword ptr [ebp+12], 0
je .L_0537
.L_07D7:
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_0537:
.L_0536:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0533:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWVREG:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_0538:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_053B
.L_053D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], 0
jne .L_053F
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+48], 0
je .L_0541
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+48]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_07DF
cmp dword ptr [eax+36], 0
je .L_0543
.L_07DF:
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_0543:
.L_0542:
jmp .L_0540
.L_0541:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
.L_0540:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_053A
.L_053F:
.L_053E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
mov ebx, -1
jne .L_07E0
cmp dword ptr [eax+36], 0
jne .L_07E0
.L_07E1:
xor ebx, ebx
.L_07E0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBISCARRAY
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
cmp ebx, dword ptr [eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebp-36]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0545
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0546
mov dword ptr [ebp-40], 24
jmp .L_07D8
.L_0546:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07D8:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0548
mov dword ptr [ebp-44], 24
jmp .L_07D9
.L_0548:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07D9:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [SYMB_DTYPETB+eax]
cmp ecx, dword ptr [SYMB_DTYPETB+ebx]
setne cl
shr ecx, 1
sbb ecx, ecx
or dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_054A
mov dword ptr [ebp-52], 24
jmp .L_07DB
.L_054A:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_07DB:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
cmp dword ptr [ebp-56], 17
jne .L_054E
.L_054F:
mov dword ptr [ebp-28], -1
jmp .L_054C
.L_054E:
cmp dword ptr [ebp-56], 20
jne .L_0550
.L_0551:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
push dword ptr [ecx+28]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
jmp .L_054C
.L_0550:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0553
mov dword ptr [ebp-60], 24
jmp .L_07DC
.L_0553:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07DC:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 17
jne .L_0557
.L_0558:
mov dword ptr [ebp-28], -1
jmp .L_0555
.L_0557:
cmp dword ptr [ebp-64], 20
jne .L_0559
.L_055A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+28]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
.L_0559:
.L_0555:
.L_0552:
.L_054C:
.L_0545:
.L_0544:
cmp dword ptr [ebp-28], 0
jne .L_055C
jmp .L_053A
.L_055C:
.L_055B:
cmp dword ptr [ebp-24], 0
jne .L_055E
push dword ptr [ebp-8]
push 22
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_055E:
.L_055D:
cmp dword ptr [ebp-16], 0
je .L_0560
cmp dword ptr [ebp-24], 0
je .L_0562
push dword ptr [ebp-8]
push 0
push 8
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_0561
.L_0562:
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.L_0561:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_0564
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call EXPRNEWVREG
add esp, 8
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_0564:
.L_0563:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_07E8
cmp dword ptr [eax+36], 0
je .L_0566
.L_07E8:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_0566:
.L_0565:
.L_0560:
.L_055F:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32505856
or ecx, ebx
push ecx
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_053A
.L_0567:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call EXPRNEWOFFSET
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_053A
.L_0568:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_0569
mov dword ptr [ebp-24], 24
jmp .L_07DD
.L_0569:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_07DD:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 1
jne .L_056C
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call EXPRNEWIMMF
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_056B
.L_056C:
cmp dword ptr [ebp-12], 1
jne .L_056D
push 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .L_07E9
cmp dword ptr [eax+24], 0
je .L_056E
.L_07E9:
mov dword ptr [ebp-28], 1
jmp .L_07DE
.L_056E:
mov dword ptr [ebp-28], 0
.L_07DE:
mov ecx, dword ptr [ebp-28]
mov eax, ecx
sar eax, 31
push eax
push ecx
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_056B
.L_056D:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
.L_056B:
jmp .L_053A
.L_0570:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRLOOKUP
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0572
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_0573
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
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-8], eax
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
.L_0572:
.L_0571:
jmp .L_053A
.L_053B:
cmp dword ptr [ebp-20], 5
ja .L_053A
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0576+eax*4]
.L_0576:
.int .L_0568
.int .L_053D
.int .L_053D
.int .L_053D
.int .L_0570
.int .L_0567
.L_053A:
cmp dword ptr [ebp+12], 0
jne .L_0578
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.L_0578:
.L_0577:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0539:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLABEL:
push ebp
mov ebp, esp
sub esp, 24
.L_0579:
call SECTIONINSIDEPROC
test eax, eax
je .L_057C
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 3
push offset Lt_057D
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
call HWRITELINE
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_057C:
.L_057B:
.L_057A:
mov esp, ebp
pop ebp
ret
.balign 16
EXPRSTORE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0580:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0583
cmp dword ptr [ebp+16], 0
je .L_0585
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_0573
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_07EA
call fb_StrAssign
add esp, 20
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
push offset Lt_07EB
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00DE
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_07EA
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_01C9
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_018B
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push offset Lt_07EB
call HWRITELINE
add esp, 8
push dword ptr [Lt_07EA]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp+12], eax
jmp .L_0584
.L_0585:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
.L_0584:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRCACHE
add esp, 8
jmp .L_0582
.L_0583:
push -1
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0588
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
.L_0588:
.L_0587:
push 0
push -1
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07EB
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_01C9
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_018B
push -1
push offset Lt_07EB
call fb_StrConcatAssign
add esp, 20
push 0
push offset Lt_07EB
call HWRITELINE
add esp, 8
.L_0582:
.L_0581:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_07EB,12
.balign 4
	.lcomm	Lt_07EA,12

.section .text
.balign 16
_EMITBOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0589:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .L_058C
push 0
push 5
push offset Lt_058D
push -1
push offset Lt_07EF
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07EF
call fb_StrConcatAssign
add esp, 20
push 0
push 9
push offset Lt_058E
push -1
push offset Lt_07EF
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+24]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset Lt_07EF
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_07EF
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_018B
push -1
push offset Lt_07EF
call fb_StrConcatAssign
add esp, 20
push 0
push offset Lt_07EF
call HWRITELINE
add esp, 8
jmp .L_058A
.L_058C:
.L_058B:
cmp dword ptr [ebp+20], 0
jne .L_0591
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0591:
.L_0590:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0593
.L_0595:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
je .L_0597
push dword ptr [ebp-4]
push 54
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_0597:
.L_0596:
jmp .L_0592
.L_0598:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_059A
push dword ptr [ebp-4]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
.L_059A:
.L_0599:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_059C
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.L_059C:
.L_059B:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0592
.L_059D:
push dword ptr [ebp-4]
push 0
push 16
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push 0
push 16
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0592
.L_059E:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0592
.L_059F:
push 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05A0
mov dword ptr [ebp-16], 24
jmp .L_07EE
.L_05A0:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_07EE:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 34
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0592
.L_05A2:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05A4
push 8
push 0
push 1
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05A3
.L_05A4:
push dword ptr [ebp-4]
push 52
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05A3:
jmp .L_0592
.L_05A5:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05A7
push 8
push 0
push 1
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05A6
.L_05A7:
push dword ptr [ebp-4]
push 52
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05A6:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 35
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0592
.L_0593:
mov eax, dword ptr [ebp-12]
add eax, 4294967268
cmp eax, 22
ja .L_0592
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_05A8+eax*4-112]
.L_05A8:
.int .L_0598
.int .L_0598
.int .L_059E
.int .L_059D
.int .L_059E
.int .L_059E
.int .L_059E
.int .L_059E
.int .L_0592
.int .L_0592
.int .L_059E
.int .L_05A2
.int .L_05A5
.int .L_059F
.int .L_059F
.int .L_0592
.int .L_0592
.int .L_0595
.int .L_0595
.int .L_0595
.int .L_0595
.int .L_0595
.int .L_0595
.L_0592:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call EXPRSTORE
add esp, 12
.L_058A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_07EF,12

.section .text
.balign 16
_EMITUOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05A9:
cmp dword ptr [ebp+16], 0
jne .L_05AC
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+16], eax
.L_05AC:
.L_05AB:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_05AE
push 8
push 0
push 0
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 45
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05AD
.L_05AE:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05AD:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 12
.L_05AA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_05AF:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_05B2
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .L_05B4
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+24], 0
mov ebx, -1
jne .L_07FB
cmp dword ptr [ecx+20], 0
jne .L_07FB
.L_07FC:
xor ebx, ebx
.L_07FB:
mov eax, ebx
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05B3
.L_05B4:
push dword ptr [ebp-4]
push 54
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05B3:
jmp .L_05B1
.L_05B2:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_05B5
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .L_05B7
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_05B8
mov dword ptr [ebp-16], 24
jmp .L_07F2
.L_05B8:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07F2:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .L_05BA
mov ebx, dword ptr [ebp-4]
fld qword ptr [ebx+20]
fld qword ptr [Lt_07F4]
fcomip st, st(1)
fstp st(0)
setnz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_07F3
.L_05BA:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+24], 0
mov ecx, -1
jne .L_0800
cmp dword ptr [ebx+20], 0
jne .L_0800
.L_0801:
xor ecx, ecx
.L_0800:
mov dword ptr [ebp-20], ecx
.L_07F3:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05B6
.L_05B7:
push 8
push 0
push 0
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 48
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.L_05B6:
jmp .L_05B1
.L_05B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05BD
mov dword ptr [ebp-8], 24
jmp .L_07F5
.L_05BD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07F5:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_05BF
mov dword ptr [ebp-12], 24
jmp .L_07F6
.L_05BF:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07F6:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .L_05BC
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05C1
mov dword ptr [ebp-36], 24
jmp .L_07F8
.L_05C1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_07F8:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 5
jg .L_05C5
.L_05C6:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05C8
push 0
push 7
push offset Lt_05C9
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 1
jmp .L_05C7
.L_05C8:
push 0
push 7
push offset Lt_05CA
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 8
.L_05C7:
mov dword ptr [ebp-32], 11
jmp .L_05C3
.L_05C5:
cmp dword ptr [ebp-40], 7
jg .L_05CB
.L_05CC:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05CE
push 0
push 7
push offset Lt_05CF
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 2
jmp .L_05CD
.L_05CE:
push 0
push 7
push offset Lt_05D0
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 16
.L_05CD:
mov dword ptr [ebp-32], 13
jmp .L_05C3
.L_05CB:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05D3
push 0
push 8
push offset Lt_05D4
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 4
jmp .L_05D2
.L_05D3:
push 0
push 8
push offset Lt_05D5
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 32
.L_05D2:
mov dword ptr [ebp-32], 14
.L_05D1:
.L_05C3:
push 0
push 3
push offset Lt_00E6
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00E7
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-32]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_05BC:
.L_05B1:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRSTORE
add esp, 12
.L_05B0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTORE:
push ebp
mov ebp, esp
.L_05D6:
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
push dword ptr [ebp+8]
call EXPRSTORE
add esp, 12
.L_05D7:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSPILLREGS:
.L_05D8:
.L_05D9:
ret
.balign 16
_EMITLOAD:
push ebp
mov ebp, esp
.L_05DA:
.L_05DB:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLOADRES:
push ebp
mov ebp, esp
sub esp, 36
.L_05DC:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _EMITSTORE
add esp, 8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 8
push offset Lt_05DE
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
call HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_05DD:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITADDR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05E2:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .L_05E5
.L_05E6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_05E8
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
cmp dword ptr [ebx], 7
jne .L_05EA
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05E4
.L_05EA:
.L_05E9:
.L_05E8:
.L_05E7:
push -1
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
push 22
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_05E4
.L_05E5:
cmp dword ptr [ebp+8], 76
jne .L_05EB
.L_05EC:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
.L_05EB:
.L_05E4:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 12
.L_05E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOCALL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_05ED:
push 0
push 3
push offset Lt_00E6
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
lea eax, [IRHL+60]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_05EF:
cmp dword ptr [ebp-4], 0
je .L_05F1
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+8]
cmp ebx, dword ptr [ebp+20]
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_0806
.L_05F1:
mov dword ptr [ebp-16], 0
.L_0806:
cmp dword ptr [ebp-16], 0
je .L_05F0
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-20], eax
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .L_05F3
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx+56], 4
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
jmp .L_0807
.L_05F3:
mov dword ptr [ebp-28], 0
.L_0807:
cmp dword ptr [ebp-28], 0
je .L_05F6
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-24], eax
.L_05F6:
.L_05F5:
push 0
push -1
push 0
push dword ptr [ebp-24]
call EXPRFLUSH
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
push dword ptr [ebp-4]
lea eax, [IRHL+60]
push eax
call LISTDELNODE
add esp, 8
cmp dword ptr [ebp-20], 0
je .L_05F8
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+20]
cmp dword ptr [eax+8], ebx
jne .L_05FA
push 0
push 3
push offset Lt_0148
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_05FA:
.L_05F9:
.L_05F8:
.L_05F7:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_05EF
.L_05F0:
push 0
push 3
push offset Lt_00E7
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp+16], 0
jne .L_05FC
push 0
push 2
push offset Lt_018B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
push 0
push dword ptr [ebp+8]
call HWRITELINE
add esp, 8
jmp .L_05FB
.L_05FC:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+4]
call EXPRNEWTEXT
add esp, 12
push eax
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 12
.L_05FB:
.L_05EE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALL:
push ebp
mov ebp, esp
.L_05FD:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset Lt_080C
call fb_StrAssign
add esp, 20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push offset Lt_080C
call HDOCALL
add esp, 16
.L_05FE:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_080C,12

.section .text
.balign 16
_EMITCALLPTR:
push ebp
mov ebp, esp
.L_05FF:
push 0
push 2
push offset Lt_043F
push -1
push offset Lt_080D
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_080D
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_013D
push -1
push offset Lt_080D
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push offset Lt_080D
call HDOCALL
add esp, 16
.L_0600:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_080D,12

.section .text
.balign 16
_EMITJUMPPTR:
push ebp
mov ebp, esp
sub esp, 36
.L_0601:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push -1
push -1
push 0
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 7
push offset Lt_0603
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
call HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0602:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 36
.L_0607:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset Lt_0609
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
call HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0608:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 316
push ebx
push esi
push edi
.L_060D:
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
mov dword ptr [ebp-44], ebx
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+24], 0
jg .L_0610
push -1
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset Lt_0609
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
call HWRITELINE
add esp, 8
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0614
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call fb_StrConcat
add esp, 20
push eax
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
call HWRITELINE
add esp, 8
lea eax, [ebp-316]
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
jmp .L_060E
.L_0610:
.L_060F:
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 8
mov ebx, dword ptr [ebp+40]
mov eax, dword ptr [ebp+44]
add ebx, 1
adc eax, 0
mov esi, ebx
mov ecx, eax
push ecx
push esi
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 6
push offset Lt_0619
push -1
push -1
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 8
push eax
push -1
push 2
push offset Lt_01AB
push -1
push -1
lea eax, [ebp-12]
push eax
push 20
push offset Lt_0618
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
call HWRITELINE
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
.L_061F:
mov dword ptr [ebp-248], 0
mov esi, dword ptr [ebp-112]
mov eax, esi
sar eax, 31
mov ecx, dword ptr [ebp-108]
sal ecx, 3
mov ebx, dword ptr [ebp+16]
add ebx, ecx
mov edi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
cmp eax, ecx
jne .L_0623
cmp esi, edi
jne .L_0623
.L_080E:
mov edi, dword ptr [ebp-108]
sal edi, 2
mov ecx, dword ptr [ebp+20]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-248], edi
inc dword ptr [ebp-108]
jmp .L_0622
.L_0623:
mov edi, dword ptr [ebp+28]
mov dword ptr [ebp-248], edi
.L_0622:
push -1
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 2
push offset Lt_0624
push -1
push 0
push dword ptr [ebp-248]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 3
push offset Lt_04F5
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
call HWRITELINE
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
mov edi, dword ptr [ebp-112]
mov eax, edi
sar eax, 31
mov esi, dword ptr [ebp+40]
mov ecx, dword ptr [ebp+44]
cmp eax, ecx
jne .L_0629
cmp edi, esi
jne .L_0629
.L_080F:
jmp .L_0620
.L_0629:
.L_0628:
inc dword ptr [ebp-112]
.L_0621:
jmp .L_061F
.L_0620:
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 3
push offset Lt_020D
push -1
lea esi, [ebp-124]
push esi
call fb_StrAssign
add esp, 20
lea esi, [ebp-124]
push esi
call HWRITELINE
add esp, 8
lea esi, [ebp-124]
push esi
call fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp+36], 0
jne .L_0810
cmp dword ptr [ebp+32], 0
je .L_062C
.L_0810:
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
.L_062C:
.L_062B:
push dword ptr [ebp-44]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 46
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 9
push offset Lt_058E
push -1
push -1
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 8
push eax
push 5
push offset Lt_058D
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
call HWRITELINE
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-40], eax
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
push 3
push offset Lt_024D
push -1
push -1
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 8
push eax
push -1
push 2
push offset Lt_01AB
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset Lt_0603
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
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-244]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-244]
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
.L_060E:
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
sub esp, 84
.L_0637:
cmp dword ptr [ebp+8], 107
jne .L_063A
.L_063B:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset Lt_00D4
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push 6
push offset Lt_063D
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 19
push offset Lt_063C
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
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0639
.L_063A:
cmp dword ptr [ebp+8], 105
jne .L_0643
.L_0644:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 4
push offset Lt_00D4
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call fb_ULongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0148
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push 3
push offset Lt_0148
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 19
push offset Lt_0645
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
call HWRITELINE
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0643:
.L_0639:
.L_0638:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMACRO:
push ebp
mov ebp, esp
sub esp, 32
.L_064D:
cmp dword ptr [ebp+8], 109
jne .L_0650
.L_0651:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
add esp, 8
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
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
jmp .L_064F
.L_0650:
cmp dword ptr [ebp+8], 110
jne .L_0654
.L_0655:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 0
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
add esp, 8
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
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
jmp .L_064F
.L_0654:
cmp dword ptr [ebp+8], 112
jne .L_0658
.L_0659:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call EXPRSTORE
add esp, 12
jmp .L_064F
.L_0658:
cmp dword ptr [ebp+8], 111
jne .L_065A
.L_065B:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
add esp, 8
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
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
.L_065A:
.L_064F:
.L_064E:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDECL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_065E:
push dword ptr [ebp+8]
call HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .L_0661
jmp .L_065F
.L_0661:
.L_0660:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0663
push dword ptr [ebp-4]
call HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .L_0665
jmp .L_065F
.L_0665:
.L_0664:
.L_0663:
.L_0662:
push dword ptr [ebp+8]
call HMAYBEEMITLOCALVAR
add esp, 4
.L_065F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDBG:
push ebp
mov ebp, esp
.L_0666:
cmp dword ptr [ebp+8], 113
jne .L_0669
mov eax, dword ptr [ebp+16]
mov dword ptr [CTX+2588], eax
cmp dword ptr [ebp+20], 0
je .L_066B
push dword ptr [ebp+20]
call HUPDATECURRENTFILENAME
add esp, 4
.L_066B:
.L_066A:
.L_0669:
.L_0668:
.L_0667:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCOMMENT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_066C:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0811
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_0811
call fb_TRIM
add esp, 4
push eax
push -1
push offset Lt_0811
call fb_StrAssign
add esp, 20
push -1
push offset Lt_0811
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jle .L_066F
mov eax, dword ptr [Lt_0811]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax-1]
cmp ebx, 92
jne .L_0671
push 0
push 14
push offset Lt_0672
push -1
push offset Lt_0811
call fb_StrConcatAssign
add esp, 20
.L_0671:
.L_0670:
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push offset Lt_0811
push 4
push offset Lt_0673
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
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
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_066F:
.L_066E:
.L_066D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0811,12

.section .text
.balign 16
HFINDLABELINSEENLIST:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0676:
push dword ptr [ebp+8]
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
.L_0678:
cmp dword ptr [ebp-8], 0
jne .L_067C
jmp .L_0679
.L_067C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax], ebx
jne .L_067E
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_0679
.L_067E:
.L_067D:
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-16]
.L_067A:
jmp .L_0678
.L_0679:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0677:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITASMLINE:
push ebp
mov ebp, esp
sub esp, 156
push ebx
.L_067F:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-44]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
push -1
push 4
push 8
lea eax, [ebp-44]
push eax
call LISTINIT
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-48], eax
.L_0681:
cmp dword ptr [ebp-48], 0
je .L_0682
mov eax, dword ptr [ebp-48]
cmp dword ptr [eax], 1
jne .L_0684
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 7
jne .L_0687
.L_0688:
mov dword ptr [ebp-4], -1
jmp .L_0685
.L_0687:
cmp dword ptr [ebp-116], 1
jne .L_0689
.L_068A:
inc dword ptr [ebp-8]
.L_0689:
.L_0685:
.L_0684:
.L_0683:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0681
.L_0682:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
push 0
push 8
push offset Lt_068B
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrInit
add esp, 20
call SECTIONINSIDEPROC
test eax, eax
je .L_068D
push 0
push 14
push offset Lt_068E
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_068D:
.L_068C:
cmp dword ptr [ebp-4], 0
je .L_0690
push 0
push 6
push offset Lt_0691
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0690:
.L_068F:
push 0
push 3
push offset Lt_00E6
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-48], eax
.L_0692:
cmp dword ptr [ebp-48], 0
je .L_0693
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-116], ebx
cmp dword ptr [ebp-116], 0
jne .L_0696
.L_0697:
push 0
push -1
push 0
mov ebx, dword ptr [ebp-48]
push dword ptr [ebx+4]
push -1
lea ebx, [ebp-72]
push ebx
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea ebx, [ebp-128]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0694
.L_0696:
cmp dword ptr [ebp-116], 1
jne .L_0699
.L_069A:
cmp dword ptr [ENV+132], 0
jne .L_069C
call SECTIONINSIDEPROC
test eax, eax
je .L_069E
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-120], eax
cmp dword ptr [ebp-120], 1
jne .L_06A1
.L_06A2:
push 0
push 2
push offset Lt_06A3
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-76]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
inc dword ptr [ebp-76]
cmp dword ptr [ebp-4], 0
je .L_06A5
push -1
lea eax, [ebp-100]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_06A7
push 0
push 3
push offset Lt_0148
push -1
lea eax, [ebp-100]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06A7:
.L_06A6:
push 0
push -1
push -1
push 2
push offset Lt_013D
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset Lt_06A8
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
lea eax, [ebp-100]
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
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
jmp .L_06A4
.L_06A5:
push -1
lea eax, [ebp-88]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_06AD
push 0
push 3
push offset Lt_0148
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06AD:
.L_06AC:
push 0
push -1
push -1
push 2
push offset Lt_013D
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_06AE
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
lea eax, [ebp-88]
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
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
.L_06A4:
jmp .L_069F
.L_06A1:
cmp dword ptr [ebp-120], 7
jne .L_06B2
.L_06B3:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-128], ebx
push dword ptr [ebp-128]
lea ebx, [ebp-44]
push ebx
call HFINDLABELINSEENLIST
add esp, 8
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], -1
je .L_06B5
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-132]
mov dword ptr [ebp-124], eax
jmp .L_06B4
.L_06B5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-124], eax
inc dword ptr [ebp-8]
lea eax, [ebp-44]
push eax
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-128]
mov dword ptr [eax], ebx
push -1
lea ebx, [ebp-112]
push ebx
call fb_StrLen
add esp, 8
test eax, eax
jle .L_06B7
push 0
push 3
push offset Lt_0148
push -1
lea eax, [ebp-112]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06B7:
.L_06B6:
push 0
push -1
push 0
push dword ptr [ebp-128]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-112]
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
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
.L_06B4:
push 0
push 3
push offset Lt_06B9
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-124]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_069F
.L_06B2:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-72]
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
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_06BA:
.L_069F:
jmp .L_069D
.L_069E:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call HGETMANGLEDNAMEFORASM
add esp, 8
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
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_069D:
jmp .L_069B
.L_069C:
push 0
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
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
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_069B:
.L_0699:
.L_0694:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0692
.L_0693:
lea ebx, [ebp-44]
push ebx
call LISTEND
add esp, 4
cmp dword ptr [ENV+132], 0
jne .L_06BF
push -1
lea ebx, [ebp-72]
push ebx
call fb_StrLen
add esp, 8
inc eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-72]
lea ecx, [ebp-60]
push ecx
call HBUILDSTRLIT
add esp, 16
call SECTIONINSIDEPROC
test eax, eax
je .L_06C1
push 0
push 4
push offset Lt_06C2
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-88]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_06C2
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-100]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 18
push offset Lt_06C3
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 0
je .L_06C7
.L_06C8:
cmp dword ptr [ebp-116], 1
jne .L_06C6
.L_06C7:
call FBGETCPUFAMILY
test eax, eax
jne .L_06CA
push 0
push 43
push offset Lt_06CB
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06C9
.L_06CA:
push 0
push 43
push offset Lt_06CC
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 55
push offset Lt_06CD
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06C9:
cmp dword ptr [ENV+116], 1
jne .L_06CF
push 0
push 57
push offset Lt_06D0
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 65
push offset Lt_06D1
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
cmp eax, 1
jne .L_06D3
push 0
push 71
push offset Lt_06D4
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06D3:
.L_06D2:
.L_06CF:
.L_06CE:
jmp .L_06C4
.L_06C6:
cmp dword ptr [ebp-116], 2
je .L_06D6
.L_06D7:
cmp dword ptr [ebp-116], 3
jne .L_06D5
.L_06D6:
push 0
push 43
push offset Lt_06D8
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 55
push offset Lt_06CD
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
cmp eax, 3
jne .L_06DA
push 0
push 29
push offset Lt_06DB
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 64
push offset Lt_06DC
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset Lt_06DD
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06DA:
.L_06D9:
.L_06D5:
.L_06C4:
cmp dword ptr [ebp-4], 0
je .L_06DF
push 0
push 4
push offset Lt_06C2
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-112]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06DF:
.L_06DE:
.L_06C1:
.L_06C0:
jmp .L_06BE
.L_06BF:
push 0
push -1
lea eax, [ebp-72]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06BE:
push 0
push 4
push offset Lt_00D4
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
lea eax, [ebp-60]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-88]
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
.L_0680:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIBEGIN:
push ebp
mov ebp, esp
.L_06E0:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2640]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [CTX+2652], 0
.L_06E1:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIEND:
push ebp
mov ebp, esp
.L_06E2:
push dword ptr [CTX+2640]
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2640]
push eax
call fb_StrAssign
add esp, 20
.L_06E3:
mov esp, ebp
pop ebp
ret
.balign 16
HVARINISEPARATOR:
.L_06E4:
cmp dword ptr [CTX+2652], 0
jle .L_06E7
push 0
push 3
push offset Lt_0148
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_06E7:
.L_06E6:
.L_06E5:
ret
.balign 16
_EMITVARINII:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06E8:
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
jne .L_0813
cmp dword ptr [ebp+12], 0
jne .L_0813
.L_0814:
xor eax, eax
.L_0813:
and ebx, eax
je .L_06EB
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_06EB:
.L_06EA:
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06ED
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_06ED:
.L_06EC:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06E9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06EE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMF
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06F1
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_06F1:
.L_06F0:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06EF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIOFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06F2:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_06F5
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-8], eax
.L_06F5:
.L_06F4:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-8]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push -1
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06F3:
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
.L_06F6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_06F9
jg .L_0815
cmp dword ptr [ebp+20], ebx
jbe .L_06F9
.L_0815:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_06F9:
.L_06F8:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
push eax
push ebx
mov dword ptr [ebp-4], 0
lea ebx, [ebp-4]
push ebx
push dword ptr [ebp+16]
call HUNESCAPE
add esp, 8
push eax
lea eax, [CTX+2640]
push eax
call HBUILDSTRLIT
add esp, 16
call HVARINISEPARATOR
.L_06F7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_06FB:
push 0
push 3
push offset Lt_06FD
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+16]
call HUNESCAPEW
add esp, 8
mov dword ptr [ebp+16], eax
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_0700
jg .L_0816
cmp dword ptr [ebp+20], ebx
jbe .L_0700
.L_0816:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_0700:
.L_06FF:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-20], ecx
jmp .L_0702
.L_0705:
cmp dword ptr [ebp-16], 0
jle .L_0707
push 0
push 3
push offset Lt_0148
push -1
lea ecx, [CTX+2640]
push ecx
call fb_StrConcatByref
add esp, 20
.L_0707:
.L_0706:
push 0
push 3
push offset Lt_0708
push -1
lea ecx, [CTX+2640]
push ecx
call fb_StrConcatByref
add esp, 20
mov ecx, dword ptr [ebp-16]
sal ecx, 2
mov ebx, dword ptr [ebp+16]
add ebx, ecx
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-4], ecx
push 39
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_070A
push 0
push 3
push offset Lt_0431
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0709
.L_070A:
push 0
push -1
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_0709:
push 0
push 2
push offset Lt_043E
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_0703:
inc dword ptr [ebp-16]
.L_0702:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_0705
.L_0704:
push 0
push 3
push offset Lt_070B
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06FC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIPAD:
push ebp
mov ebp, esp
.L_070C:
.L_070D:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEBEGIN:
push ebp
mov ebp, esp
.L_070E:
inc dword ptr [CTX+2652]
push 0
push 3
push offset Lt_06FD
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_070F:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEEND:
.L_0710:
push 3
push offset Lt_0148
push -1
push 2
lea eax, [CTX+2640]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0713
push -1
lea eax, [CTX+2640]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+2640]
push eax
call fb_LEFTSELF
add esp, 8
.L_0713:
.L_0712:
push 0
push 3
push offset Lt_070B
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
dec dword ptr [CTX+2652]
call HVARINISEPARATOR
.L_0711:
ret
.balign 16
_EMITFBCTINFBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.L_0714:
push -1
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
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 0
push 19
push offset Lt_0717
push -1
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 20
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0719
push 0
push 50
push offset Lt_071D
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_0718
.L_0719:
push 0
push 44
push offset Lt_0720
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
.L_0718:
push 0
push 16
push offset Lt_0721
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
.L_0715:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITFBCTINFSTRING:
push ebp
mov ebp, esp
sub esp, 24
.L_0722:
push 0
push -1
push -1
push 3
push offset Lt_0724
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
lea eax, [CTX+2656]
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
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 20
.L_0723:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITFBCTINFEND:
.L_0727:
push 3
push offset Lt_0724
push -1
push 2
lea eax, [CTX+2656]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_072A
push 0
push -1
push -1
lea eax, [CTX+2656]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+2656]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 20
.L_072A:
.L_0729:
push 0
push 3
push offset Lt_072B
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
push -1
lea eax, [CTX+2656]
push eax
call HWRITELINE
add esp, 8
.L_0728:
ret
.balign 16
_EMITPROCBEGIN:
push ebp
mov ebp, esp
sub esp, 132
push ebx
.L_072C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call HUPDATECURRENTFILENAME
add esp, 4
call IRHLEMITPROCBEGIN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-24]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
cmp dword ptr [ENV+148], 0
je .L_0730
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+16]
push dword ptr [ebp+8]
push 113
call _EMITDBG
add esp, 16
.L_0730:
.L_072F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_0732
push 0
push -1
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
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
push 20
push offset Lt_02F9
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 5
push offset Lt_0735
push -1
push -1
lea eax, [ebp-12]
push eax
push 18
push offset Lt_0734
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
call HWRITELINE
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 6
push offset Lt_073A
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset Lt_0739
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
call HWRITELINE
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_072D
.L_0732:
.L_0731:
call SECTIONBEGIN
push dword ptr [ebp+8]
call HNEEDALIAS
add esp, 4
test eax, eax
je .L_073F
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset Lt_018B
push -1
push 1
push dword ptr [ebp+8]
call HEMITPROCHEADER
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
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_073F:
.L_073E:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITELINE
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
push 2
push offset Lt_0275
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_072D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITPROCEND:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_0744:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_0747
cmp dword ptr [ENV+108], 2
jne .L_0749
push 0
push -1
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset Lt_0735
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset Lt_074B
push -1
push -1
lea eax, [ebp-12]
push eax
push 17
push offset Lt_074A
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
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
.L_0749:
.L_0748:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0745
.L_0747:
.L_0746:
call SECTIONUNINDENT
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 2
push offset Lt_0292
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
call SECTIONEND
.L_0752:
lea eax, [CTX+2724]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0756
jmp .L_0753
.L_0756:
.L_0755:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call EXPRFREETREE
add esp, 4
push dword ptr [ebp-16]
lea eax, [CTX+2724]
push eax
call LISTDELNODE
add esp, 8
.L_0754:
jmp .L_0752
.L_0753:
call IRHLEMITPROCEND
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0745:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.L_0757:
call SECTIONBEGIN
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0275
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
.L_0758:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEEND:
push ebp
mov ebp, esp
sub esp, 12
.L_075A:
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0292
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
call SECTIONEND
.L_075B:
mov esp, ebp
pop ebp
ret
.balign 16
_GLOBAL__I:
.L_075E:
push offset CTX
call _ZN8IRHLCCTXC1Ev
add esp, 4
.L_075F:
ret
.balign 16
_GLOBAL__D:
.L_0761:
push offset CTX
call _ZN8IRHLCCTXD1Ev
add esp, 4
.L_0762:
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4

.globl IRHLC_VTBL
IRHLC_VTBL:
.int _INIT
.int _END
.int _EMITBEGIN
.int _EMITEND
.int _GETOPTIONVALUE
.int _SUPPORTSOP
.int _PROCBEGIN
.int _PROCEND
.long 0
.long 0
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
.balign 4
	.lcomm	CTX,2760

.section .data
.balign 4
DTYPENAME:
.int Lt_0087
.int Lt_0088
.int Lt_0089
.int Lt_008A
.long 0
.int Lt_008B
.int Lt_008C
.long 0
.long 0
.long 0
.long 0
.int Lt_008D
.int Lt_008E
.int Lt_008F
.int Lt_0090
.int Lt_0091
.int Lt_0092
.int Lt_0093
.long 0
.int Lt_0094
.long 0
.long 0
.long 0
.int Lt_0087
.long 0
.skip 4,0
.balign 4
Lt_0087:	.ascii	"void\0"
.balign 4
Lt_0088:	.ascii	"boolean\0"
.balign 4
Lt_0089:	.ascii	"int8\0"
.balign 4
Lt_008A:	.ascii	"uint8\0"
.balign 4
Lt_008B:	.ascii	"int16\0"
.balign 4
Lt_008C:	.ascii	"uint16\0"
.balign 4
Lt_008D:	.ascii	"int32\0"
.balign 4
Lt_008E:	.ascii	"uint32\0"
.balign 4
Lt_008F:	.ascii	"int64\0"
.balign 4
Lt_0090:	.ascii	"uint64\0"
.balign 4
Lt_0091:	.ascii	"float\0"
.balign 4
Lt_0092:	.ascii	"double\0"
.balign 4
Lt_0093:	.ascii	"FBSTRING\0"
.balign 4
Lt_0094:	.ascii	"__builtin_va_list\0"
.balign 4
Lt_00A7:	.ascii	"\t\0"
.balign 4
Lt_00AD:	.ascii	"\n\0"
.balign 4
Lt_00C6:	.ascii	"#line \0"
.balign 4
Lt_00C7:	.ascii	" \"\0"
.balign 4
Lt_00C8:	.ascii	"\"\0"
.balign 4
Lt_00CB:	.ascii	"\\\0"
.balign 4
Lt_00CC:	.ascii	"\\\\\0"
.balign 4
Lt_00D1:	.ascii	"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]\0"
.balign 4
Lt_00D3:	.ascii	"__FB_STATIC_ASSERT( \0"
.balign 4
Lt_00D4:	.ascii	" );\0"
.balign 4
Lt_00DE:	.ascii	" \0"
.balign 4
Lt_00DF:	.ascii	"__attribute__(( \0"
.balign 4
Lt_00E2:	.ascii	"constructor\0"
.balign 4
Lt_00E3:	.ascii	"destructor\0"
.balign 4
Lt_00E6:	.ascii	"( \0"
.balign 4
Lt_00E7:	.ascii	" )\0"
.balign 4
Lt_00EA:	.ascii	" ))\0"
.balign 4
Lt_00F1:	.ascii	"_\0"
.balign 4
Lt_00F7:	.ascii	"@\0"
.balign 4
Lt_0114:	.ascii	"static \0"
.balign 4
Lt_0123:	.ascii	" __stdcall\0"
.balign 4
Lt_0125:	.ascii	" __attribute__((stdcall))\0"
.balign 4
Lt_012D:	.ascii	" __thiscall\0"
.balign 4
Lt_012F:	.ascii	" __attribute__((thiscall))\0"
.balign 4
Lt_0137:	.ascii	" __fastcall\0"
.balign 4
Lt_0139:	.ascii	" __attribute__((fastcall))\0"
.balign 4
Lt_013C:	.ascii	"(*\0"
.balign 4
Lt_013D:	.ascii	")\0"
.balign 4
Lt_0148:	.ascii	", \0"
.balign 4
Lt_0151:	.ascii	"...\0"
.balign 4
Lt_0154:	.ascii	"char**\0"
.balign 4
Lt_0161:	.ascii	" asm(\"\0"
.balign 4
Lt_0162:	.ascii	"\")\0"
.balign 4
Lt_0169:	.ascii	"union \0"
.balign 4
Lt_016A:	.ascii	"struct \0"
.balign 4
Lt_0175:	.ascii	"$\0"
.balign 4
Lt_018A:	.ascii	"typedef \0"
.balign 4
Lt_018B:	.ascii	";\0"
.balign 4
Lt_01AB:	.ascii	"[\0"
.balign 4
Lt_01AC:	.ascii	"]\0"
.balign 4
Lt_01BF:	.ascii	"extern \0"
.balign 4
Lt_01C6:	.ascii	" __attribute__((common))\0"
.balign 4
Lt_01C9:	.ascii	" = \0"
.balign 4
Lt_0205:	.ascii	"union {\0"
.balign 4
Lt_0207:	.ascii	"struct {\0"
.balign 4
Lt_020D:	.ascii	"};\0"
.balign 4
Lt_0225:	.ascii	" __attribute__((packed, aligned(\0"
.balign 4
Lt_0226:	.ascii	")))\0"
.balign 4
Lt_0237:	.ascii	" __attribute__((aligned(\0"
.balign 4
Lt_0248:	.ascii	"__attribute__((gcc_struct)) \0"
.balign 4
Lt_0249:	.ascii	" {\0"
.balign 4
Lt_024C:	.ascii	"uint8 __fb_struct_body[\0"
.balign 4
Lt_024D:	.ascii	"];\0"
.balign 4
Lt_0252:	.ascii	"sizeof( \0"
.balign 4
Lt_0253:	.ascii	" ) == \0"
.balign 4
Lt_0263:	.ascii	"l\0"
.balign 4
Lt_0266:	.ascii	"q\0"
.balign 4
Lt_0269:	.ascii	"s\0"
.balign 4
Lt_026B:	.ascii	"static inline \0"
.balign 4
Lt_026C:	.ascii	" fb_\0"
.balign 4
Lt_026D:	.ascii	" value )\0"
.balign 4
Lt_0275:	.ascii	"{\0"
.balign 4
Lt_0277:	.ascii	"volatile \0"
.balign 4
Lt_0278:	.ascii	" result;\0"
.balign 4
Lt_027C:	.ascii	"__asm__(\0"
.balign 4
Lt_027E:	.ascii	"\"fld\0"
.balign 4
Lt_027F:	.ascii	" %1;\"\0"
.balign 4
Lt_0283:	.ascii	"\"fistp\0"
.balign 4
Lt_0284:	.ascii	" %0;\"\0"
.balign 4
Lt_0288:	.ascii	":\"=m\" (result)\0"
.balign 4
Lt_028A:	.ascii	":\"m\" (value)\0"
.balign 4
Lt_028C:	.ascii	":\"st\"\0"
.balign 4
Lt_028E:	.ascii	");\0"
.balign 4
Lt_0290:	.ascii	"return result;\0"
.balign 4
Lt_0292:	.ascii	"}\0"
.balign 4
Lt_0298:	.ascii	"nearbyintf\0"
.balign 4
Lt_0299:	.ascii	"nearbyint\0"
.balign 4
Lt_029A:	.ascii	"#define fb_\0"
.balign 4
Lt_029B:	.ascii	"( value ) ((\0"
.balign 4
Lt_029C:	.ascii	")__builtin_\0"
.balign 4
Lt_029D:	.ascii	"( value ))\0"
.balign 4
Lt_02B1:	.ascii	"\t\"\0"
.balign 4
Lt_02B2:	.ascii	"\\t.ascii \0"
.balign 4
Lt_02B3:	.ascii	"\\\" -export:\\\\\\\"\0"
.balign 4
Lt_02B4:	.ascii	"\\\\\\\"\\\"\0"
.balign 4
Lt_02B5:	.ascii	"\\n\0"
.balign 4
Lt_02B6:	.ascii	"\"\n\0"
.balign 4
Lt_02BF:	.ascii	"typedef   signed char       int8;\0"
.balign 4
Lt_02C1:	.ascii	"typedef unsigned char      uint8;\0"
.balign 4
Lt_02C3:	.ascii	"typedef   signed short      int16;\0"
.balign 4
Lt_02C5:	.ascii	"typedef unsigned short     uint16;\0"
.balign 4
Lt_02C7:	.ascii	"typedef   signed int        int32;\0"
.balign 4
Lt_02C9:	.ascii	"typedef unsigned int       uint32;\0"
.balign 4
Lt_02CB:	.ascii	"typedef   signed long long  int64;\0"
.balign 4
Lt_02CD:	.ascii	"typedef unsigned long long uint64;\0"
.balign 4
Lt_02D1:	.ascii	"typedef struct { char *data; int64 len; int64 size; } FBSTRING;\0"
.balign 4
Lt_02D3:	.ascii	"typedef struct { char *data; int32 len; int32 size; } FBSTRING;\0"
.balign 4
Lt_02D5:	.ascii	"typedef int8 boolean;\0"
.balign 4
Lt_02DB:	.ascii	"F2I\0"
.balign 4
Lt_02DF:	.ascii	"F2L\0"
.balign 4
Lt_02E3:	.ascii	"F2UL\0"
.balign 4
Lt_02E7:	.ascii	"D2I\0"
.balign 4
Lt_02EB:	.ascii	"D2L\0"
.balign 4
Lt_02EF:	.ascii	"D2UL\0"
.balign 4
Lt_02F5:	.ascii	"\n__asm__( \n\t\".section .drectve\\n\"\n\0"
.balign 4
Lt_02F9:	.ascii	"__asm__( \".text\" );\0"
.balign 4
Lt_0307:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
Lt_0347:	.ascii	"*\0"
.balign 4
Lt_03FE:	.ascii	"u\0"
.balign 4
Lt_03FF:	.ascii	"ll\0"
.balign 4
Lt_0406:	.ascii	"ull\0"
.balign 4
Lt_0411:	.ascii	"(-__builtin_inf())\0"
.balign 4
Lt_0412:	.ascii	"__builtin_inf()\0"
.balign 4
Lt_0415:	.ascii	"(-__builtin_inff())\0"
.balign 4
Lt_0416:	.ascii	"__builtin_inff()\0"
.balign 4
Lt_041E:	.ascii	"(-__builtin_nan( \"\" ))\0"
.balign 4
Lt_041F:	.ascii	"__builtin_nan( \"\" )\0"
.balign 4
Lt_0422:	.ascii	"(-__builtin_nanf( \"\" ))\0"
.balign 4
Lt_0423:	.ascii	"__builtin_nanf( \"\" )\0"
.balign 4
Lt_0427:	.ascii	"f\0"
.balign 4
Lt_0431:	.ascii	"\\x\0"
.balign 4
Lt_0435:	.ascii	"\" \"\0"
.balign 4
Lt_0437:	.ascii	"?\0"
.balign 4
Lt_043E:	.ascii	"'\0"
.balign 4
Lt_043F:	.ascii	"(\0"
.balign 4
Lt_0443:	.ascii	"-\0"
.balign 4
Lt_044F:	.ascii	"L\"\0"
.balign 4
Lt_045A:	.ascii	"\" L\"\0"
.balign 4
Lt_0470:	.ascii	" + \0"
.balign 4
Lt_0472:	.ascii	" - \0"
.balign 4
Lt_0474:	.ascii	" * \0"
.balign 4
Lt_0476:	.ascii	" / \0"
.balign 4
Lt_0479:	.ascii	" % \0"
.balign 4
Lt_047B:	.ascii	" << \0"
.balign 4
Lt_047D:	.ascii	" >> \0"
.balign 4
Lt_047F:	.ascii	" & \0"
.balign 4
Lt_0481:	.ascii	" | \0"
.balign 4
Lt_0483:	.ascii	" ^ \0"
.balign 4
Lt_0485:	.ascii	" == \0"
.balign 4
Lt_0487:	.ascii	" > \0"
.balign 4
Lt_0489:	.ascii	" < \0"
.balign 4
Lt_048B:	.ascii	" != \0"
.balign 4
Lt_048D:	.ascii	" >= \0"
.balign 4
Lt_048F:	.ascii	" <= \0"
.balign 4
Lt_0496:	.ascii	"&\0"
.balign 4
Lt_049D:	.ascii	"~\0"
.balign 4
Lt_04A6:	.ascii	"__builtin_fabsf\0"
.balign 4
Lt_04A8:	.ascii	"__builtin_fabs\0"
.balign 4
Lt_04AA:	.ascii	"__builtin_llabs\0"
.balign 4
Lt_04AC:	.ascii	"__builtin_abs\0"
.balign 4
Lt_04B5:	.ascii	"__builtin_sinf\0"
.balign 4
Lt_04B7:	.ascii	"__builtin_asinf\0"
.balign 4
Lt_04B9:	.ascii	"__builtin_cosf\0"
.balign 4
Lt_04BB:	.ascii	"__builtin_acosf\0"
.balign 4
Lt_04BD:	.ascii	"__builtin_tanf\0"
.balign 4
Lt_04BF:	.ascii	"__builtin_atanf\0"
.balign 4
Lt_04C1:	.ascii	"__builtin_sqrtf\0"
.balign 4
Lt_04C3:	.ascii	"__builtin_logf\0"
.balign 4
Lt_04C5:	.ascii	"__builtin_expf\0"
.balign 4
Lt_04C7:	.ascii	"__builtin_floorf\0"
.balign 4
Lt_04CE:	.ascii	"__builtin_sin\0"
.balign 4
Lt_04D0:	.ascii	"__builtin_asin\0"
.balign 4
Lt_04D2:	.ascii	"__builtin_cos\0"
.balign 4
Lt_04D4:	.ascii	"__builtin_acos\0"
.balign 4
Lt_04D6:	.ascii	"__builtin_tan\0"
.balign 4
Lt_04D8:	.ascii	"__builtin_atan\0"
.balign 4
Lt_04DA:	.ascii	"__builtin_sqrt\0"
.balign 4
Lt_04DC:	.ascii	"__builtin_log\0"
.balign 4
Lt_04DE:	.ascii	"__builtin_exp\0"
.balign 4
Lt_04E0:	.ascii	"__builtin_floor\0"
.balign 4
Lt_04F5:	.ascii	"&&\0"
.balign 4
Lt_050A:	.ascii	"__builtin_va_arg( \0"
.balign 4
Lt_050E:	.ascii	"__builtin_va_start( \0"
.balign 4
Lt_0511:	.ascii	"__builtin_va_end( \0"
.balign 4
Lt_0514:	.ascii	"__builtin_va_copy( \0"
.balign 4
Lt_0527:	.ascii	"__builtin_atan2f\0"
.balign 4
Lt_0528:	.ascii	"__builtin_atan2\0"
.balign 4
Lt_0573:	.ascii	"vr$\0"
.balign 4
Lt_057D:	.ascii	":;\0"
.balign 4
Lt_058D:	.ascii	"if( \0"
.balign 4
Lt_058E:	.ascii	" ) goto \0"
.balign 4
Lt_05C9:	.ascii	"fb_F2I\0"
.balign 4
Lt_05CA:	.ascii	"fb_D2I\0"
.balign 4
Lt_05CF:	.ascii	"fb_F2L\0"
.balign 4
Lt_05D0:	.ascii	"fb_D2L\0"
.balign 4
Lt_05D4:	.ascii	"fb_F2UL\0"
.balign 4
Lt_05D5:	.ascii	"fb_D2UL\0"
.balign 4
Lt_05DE:	.ascii	"return \0"
.balign 4
Lt_0603:	.ascii	"goto *\0"
.balign 4
Lt_0609:	.ascii	"goto \0"
.balign 4
Lt_0614:	.ascii	"(void)\0"
.balign 4
Lt_0618:	.ascii	"static const void* \0"
.balign 4
Lt_0619:	.ascii	"] = {\0"
.balign 4
Lt_0624:	.ascii	",\0"
.balign 4
Lt_063C:	.ascii	"__builtin_memset( \0"
.balign 4
Lt_063D:	.ascii	", 0, \0"
.balign 4
Lt_0645:	.ascii	"__builtin_memcpy( \0"
.balign 4
Lt_0672:	.ascii	"not_an_escape\0"
.balign 4
Lt_0673:	.ascii	"// \0"
.balign 4
Lt_068B:	.ascii	"__asm__\0"
.balign 4
Lt_068E:	.ascii	" __volatile__\0"
.balign 4
Lt_0691:	.ascii	" goto\0"
.balign 4
Lt_06A3:	.ascii	"%\0"
.balign 4
Lt_06A8:	.ascii	"\"m\" (\0"
.balign 4
Lt_06AE:	.ascii	"\"+m\" (\0"
.balign 4
Lt_06B9:	.ascii	"%l\0"
.balign 4
Lt_06C2:	.ascii	" : \0"
.balign 4
Lt_06C3:	.ascii	" : \"cc\", \"memory\"\0"
.balign 4
Lt_06CB:	.ascii	", \"eax\", \"ebx\", \"ecx\", \"edx\", \"edi\", \"esi\"\0"
.balign 4
Lt_06CC:	.ascii	", \"rax\", \"rbx\", \"rcx\", \"rdx\", \"rdi\", \"rsi\"\0"
.balign 4
Lt_06CD:	.ascii	", \"r8\", \"r9\", \"r10\", \"r11\", \"r12\", \"r13\", \"r14\", \"r15\"\0"
.balign 4
Lt_06D0:	.ascii	", \"mm0\", \"mm1\", \"mm2\", \"mm3\", \"mm4\", \"mm5\", \"mm6\", \"mm7\"\0"
.balign 4
Lt_06D1:	.ascii	", \"xmm0\", \"xmm1\", \"xmm2\", \"xmm3\", \"xmm4\", \"xmm5\", \"xmm6\", \"xmm7\"\0"
.balign 4
Lt_06D4:	.ascii	", \"xmm8\", \"xmm9\", \"xmm10\", \"xmm11\", \"xmm12\", \"xmm13\", \"xmm14\", \"xmm15\"\0"
.balign 4
Lt_06D8:	.ascii	", \"r0\", \"r1\", \"r2\", \"r3\", \"r4\", \"r5\", \"r6\"\0"
.balign 4
Lt_06DB:	.ascii	", \"r16\", \"r17\", \"r18\", \"r19\"\0"
.balign 4
Lt_06DC:	.ascii	", \"r20\", \"r21\", \"r22\", \"r23\", \"r24\", \"r25\", \"r26\", \"r27\", \"r28\"\0"
.balign 4
Lt_06DD:	.ascii	", \"r30\"\0"
.balign 4
Lt_06FD:	.ascii	"{ \0"
.balign 4
Lt_0708:	.ascii	"L'\0"
.balign 4
Lt_070B:	.ascii	" }\0"
.balign 4
Lt_0717:	.ascii	"static const char \0"
.balign 4
Lt_071D:	.ascii	"__attribute__((used, section(\"__DATA,fbctinf\"))) \0"
.balign 4
Lt_0720:	.ascii	"__attribute__((used, section(\".fbctinf\"))) \0"
.balign 4
Lt_0721:	.ascii	"__fbctinf[] = \"\0"
.balign 4
Lt_0724:	.ascii	"\\0\0"
.balign 4
Lt_072B:	.ascii	"\";\0"
.balign 4
Lt_0734:	.ascii	"__asm__( \".globl \0"
.balign 4
Lt_0735:	.ascii	"\" );\0"
.balign 4
Lt_0739:	.ascii	"__asm__( \"\0"
.balign 4
Lt_073A:	.ascii	":\" );\0"
.balign 4
Lt_074A:	.ascii	"__asm__( \".size \0"
.balign 4
Lt_074B:	.ascii	", .-\0"
.balign 8
Lt_07F4:	.quad	0x0000000000000000

.section .ctors
.int fb_ctor__irzhlc
.int _GLOBAL__I

.section .dtors
.int _GLOBAL__D
