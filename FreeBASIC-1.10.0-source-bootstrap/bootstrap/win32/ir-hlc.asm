	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor__irzhlc:
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
__ZN12SECTIONENTRYC1Ev:
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
.L_0067:
.L_0068:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN12SECTIONENTRYaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0069:
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
.L_006A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN12SECTIONENTRYD1Ev:
push ebp
mov ebp, esp
push ebx
.L_006D:
.L_006E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_0075:
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYC1Ev
add esp, 4
add dword ptr [ebp-8], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0075
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
.L_0072:
.L_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0077:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.L_007A:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYaSERKS_
add esp, 8
add dword ptr [ebp-8], 20
add dword ptr [ebp-12], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_007A
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
.L_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0082:
.L_0083:
mov eax, dword ptr [ebp+8]
add eax, 2712
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 2656
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 2592
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 2560
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], 0
.L_0085:
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYD1Ev
add esp, 4
add dword ptr [ebp-8], -20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0085
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__INIT@0:
.L_0096:
call _IRHLINIT@0
push 6
push 4
push 8
lea eax, [_CTX+2608]
push eax
call _LISTINIT@16
push 7
push 32
push 32
lea eax, [_CTX+2680]
push eax
call _LISTINIT@16
push 6
push 8
push 8
lea eax, [_CTX+2724]
push eax
call _LISTINIT@16
or dword ptr [_IR+272], 131074
call _FBIS64BIT@0
test eax, eax
je .L_0099
mov eax, dword ptr [_DTYPENAME+52]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+56]
mov dword ptr [_DTYPENAME+36], eax
jmp .L_0098
.L_0099:
mov eax, dword ptr [_DTYPENAME+44]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+48]
mov dword ptr [_DTYPENAME+36], eax
.L_0098:
.L_0097:
ret
.balign 16
__END@0:
.L_009A:
lea eax, [_CTX+2724]
push eax
call _LISTEND@4
lea eax, [_CTX+2680]
push eax
call _LISTEND@4
lea eax, [_CTX+2608]
push eax
call _LISTEND@4
call _IRHLEND@0
.L_009B:
ret
.balign 16
_SECTIONBEGIN@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_009C:
inc dword ptr [_CTX+2580]
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], -1
cmp dword ptr [_CTX+2580], 0
jle .L_00A0
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx-4]
mov dword ptr [eax+16], ecx
jmp .L_009F
.L_00A0:
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+16], 0
.L_009F:
.L_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONWRITELINE@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_00A1:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00A5
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00A7
push 0
push -1
push 1
push offset _Lt_00A8
call _fb_StrAllocTempDescZEx@8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _fb_StrFill2@8
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
jmp .L_00A6
.L_00A7:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
.L_00A6:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00AB
push 0
push -1
push -1
push 1
push offset _Lt_00A8
call _fb_StrAllocTempDescZEx@8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _fb_StrFill2@8
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00AB:
.L_00AA:
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00A4:
push 0
push -1
push 3
push offset _Lt_00AE
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00A2:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SECTIONINDENT@0:
push ebx
.L_00B0:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
inc dword ptr [ebx+16]
.L_00B1:
pop ebx
ret
.balign 16
_SECTIONUNINDENT@0:
push ebx
.L_00B2:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
dec dword ptr [ebx+16]
.L_00B3:
pop ebx
ret
.balign 16
_SECTIONINSIDEPROC@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B4:
mov eax, dword ptr [_CTX+2580]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONEND@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00B6:
cmp dword ptr [_CTX+2580], 0
jle .L_00B9
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx-20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_00BB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00BD
push 0
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00BC
.L_00BD:
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00BC:
.L_00BB:
.L_00BA:
.L_00B9:
.L_00B8:
dec dword ptr [_CTX+2580]
.L_00B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONGOSUB@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00BF:
mov eax, dword ptr [_CTX+2580]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+2580], eax
inc dword ptr [_CTX+2584]
.L_00C0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_SECTIONRETURN@4:
push ebp
mov ebp, esp
.L_00C1:
dec dword ptr [_CTX+2584]
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+2580], eax
.L_00C2:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWRITELINE@8:
push ebp
mov ebp, esp
.L_00C3:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [_ENV+148]
je .L_00C6
push 0
push 7
push offset _Lt_00C7
push -1
push offset _Lt_0767
call _fb_StrAssign@20
push 0
push -1
push dword ptr [_CTX+2588]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0767
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00C8
push -1
push offset _Lt_0767
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_CTX+2592]
push eax
push -1
push offset _Lt_0767
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00C9
push -1
push offset _Lt_0767
call _fb_StrConcatAssign@20
push offset _Lt_0767
call _SECTIONWRITELINE@4
.L_00C6:
.L_00C5:
push dword ptr [ebp+8]
call _SECTIONWRITELINE@4
.L_00C4:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0767,12

.section .text
.balign 16
_HUPDATECURRENTFILENAME@4:
push ebp
mov ebp, esp
.L_00CA:
push 0
push -1
push offset _Lt_00CD
push offset _Lt_00CC
push dword ptr [ebp+8]
call _HREPLACE@12
push eax
push -1
lea eax, [_CTX+2592]
push eax
call _fb_StrAssign@20
.L_00CB:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWRITESTATICASSERT@4:
push ebp
mov ebp, esp
sub esp, 52
.L_00CE:
mov eax, dword ptr [_CTX+2604]
and eax, 64
test eax, eax
jne .L_00D1
or dword ptr [_CTX+2604], 64
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 85
push offset _Lt_00D2
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _HWRITELINE@8
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-4]
call _SECTIONRETURN@4
.L_00D1:
.L_00D0:
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_00D5
push -1
push -1
push dword ptr [ebp+8]
push 21
push offset _Lt_00D4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
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
lea eax, [ebp-40]
push eax
call _HWRITELINE@8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_00CF:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HAPPENDCTORATTRIB@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00D9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 196608
je .L_00DC
cmp dword ptr [ebp+16], 0
jne .L_00DE
push 0
push 2
push offset _Lt_00DF
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00DE:
.L_00DD:
push 0
push 17
push offset _Lt_00E0
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 65536
je .L_00E2
push 0
push 12
push offset _Lt_00E3
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_00E1
.L_00E2:
push 0
push 11
push offset _Lt_00E4
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00E1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00E6
push 0
push -1
push 3
push offset _Lt_00E8
push -1
push -1
push dword ptr [ebp-4]
call _fb_IntToStr@4
push eax
push 3
push offset _Lt_00E7
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00E6:
.L_00E5:
push 0
push 4
push offset _Lt_00EB
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
cmp dword ptr [ebp+16], 0
je .L_00ED
push 0
push 2
push offset _Lt_00DF
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00ED:
.L_00EC:
.L_00DC:
.L_00DB:
.L_00DA:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETMANGLEDNAMEFORASM@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_ENV+292]
and eax, dword ptr [ebp+12]
je .L_00F1
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 2
push offset _Lt_00F2
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00F1:
.L_00F0:
call _FBGETCPUFAMILY@0
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
je .L_00F5
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 1
jne .L_00F7
push 0
push 2
push offset _Lt_00F8
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBPROCCALCSTDCALLSUFFIXN@4
push edx
push eax
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_00F7:
.L_00F6:
.L_00F5:
.L_00F4:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_00EF:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HNEEDALIAS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY@0
test eax, eax
je .L_00FC
jmp .L_00FA
.L_00FC:
.L_00FB:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0100
.L_0101:
cmp dword ptr [ebp-8], 1
je .L_0100
.L_0102:
cmp dword ptr [ebp-8], 4
jne .L_00FF
.L_0100:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0104
jmp .L_00FA
.L_0104:
.L_0103:
jmp .L_00FD
.L_00FF:
jmp .L_00FA
.L_0105:
.L_00FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .L_0109
.L_010A:
cmp dword ptr [ebp-8], 4
jne .L_0108
.L_0109:
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_0108:
cmp dword ptr [ebp-8], 1
jne .L_010B
.L_010C:
mov dword ptr [ebp-4], -1
.L_010B:
.L_0106:
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPROCHEADER@8:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_010D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+12], 0
jne .L_0110
push -1
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HAPPENDCTORATTRIB@12
.L_0110:
.L_010F:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
jne .L_0112
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .L_0114
push 0
push 8
push offset _Lt_0115
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0114:
.L_0113:
.L_0112:
.L_0111:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+88]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_0118
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-72], ebx
cmp dword ptr [ebp-72], 1
je .L_011C
.L_011D:
cmp dword ptr [ebp-72], 2
je .L_011C
.L_011E:
cmp dword ptr [ebp-72], 4
jne .L_011B
.L_011C:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0122
.L_0123:
cmp dword ptr [ebp-76], 4
jne .L_0121
.L_0122:
push 0
push 11
push offset _Lt_0124
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_011F
.L_0121:
push 0
push 26
push offset _Lt_0126
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0125:
.L_011F:
jmp .L_0119
.L_011B:
cmp dword ptr [ebp-72], 5
jne .L_0127
.L_0128:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_012C
.L_012D:
cmp dword ptr [ebp-76], 4
jne .L_012B
.L_012C:
push 0
push 12
push offset _Lt_012E
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0129
.L_012B:
push 0
push 27
push offset _Lt_0130
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_012F:
.L_0129:
jmp .L_0119
.L_0127:
cmp dword ptr [ebp-72], 6
jne .L_0131
.L_0132:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0136
.L_0137:
cmp dword ptr [ebp-76], 4
jne .L_0135
.L_0136:
push 0
push 12
push offset _Lt_0138
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0133
.L_0135:
push 0
push 27
push offset _Lt_013A
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0139:
.L_0133:
.L_0131:
.L_0119:
.L_0118:
.L_0117:
push 0
push 2
push offset _Lt_00DF
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_013C
push 0
push 3
push offset _Lt_013D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_013B
.L_013C:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_013B:
push 0
push 3
push offset _Lt_00E7
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-60], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .L_0140
mov eax, dword ptr [ebp+12]
and eax, 1
je .L_0142
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0141
.L_0142:
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp-60]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_00DF
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0141:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_0148
push 0
push 3
push offset _Lt_0149
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
.L_0148:
.L_0147:
.L_0140:
.L_013F:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .L_014A
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-64], eax
jmp .L_076A
.L_014A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-64], ecx
.L_076A:
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
je .L_014D
push 0
push 5
push offset _Lt_0088
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_014D:
.L_014C:
.L_014E:
cmp dword ptr [ebp-68], 0
je .L_014F
mov eax, dword ptr [ebp-68]
cmp dword ptr [eax+56], 4
jne .L_0151
push 0
push 4
push offset _Lt_0152
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0150
.L_0151:
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+12]
and ecx, 524288
je .L_0154
push 0
push 7
push offset _Lt_0155
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
jmp .L_0153
.L_0154:
lea ecx, [ebp-44]
push ecx
lea ecx, [ebp-40]
push ecx
push dword ptr [ebp-68]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0153:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0157
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-68]
push dword ptr [eax+60]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_00DF
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0157:
.L_0156:
.L_0150:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_015A
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-72], ecx
jmp .L_076B
.L_015A:
mov ecx, dword ptr [ebp-68]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-72], eax
.L_076B:
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .L_015D
push 0
push 3
push offset _Lt_0149
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_015D:
.L_015C:
jmp .L_014E
.L_014F:
push 0
push 3
push offset _Lt_00E8
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
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
je .L_015F
push dword ptr [ebp+8]
call _HNEEDALIAS@4
test eax, eax
je .L_0161
push 0
push 7
push offset _Lt_0162
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0163
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0161:
.L_0160:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HAPPENDCTORATTRIB@12
.L_015F:
.L_015E:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_010E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HGETUDTTAG@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0164:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0167
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
je .L_0169
push 0
push 7
push offset _Lt_016A
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_0168
.L_0169:
push 0
push 8
push offset _Lt_016B
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
.L_0168:
.L_0167:
.L_0166:
.L_0165:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETUDTID@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_016C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
jne .L_016F
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _SYMBGETVALISTTYPE@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
je .L_0173
.L_0174:
cmp dword ptr [ebp-28], 4
je .L_0173
.L_0175:
cmp dword ptr [ebp-28], 5
jne .L_0172
.L_0173:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_016D
.L_0172:
.L_0170:
.L_016F:
.L_016E:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_0176
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_016D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETUDTNAME@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0178:
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTID@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0179:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITUDT@8:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.L_017A:
cmp dword ptr [ebp+8], 0
jne .L_017D
jmp .L_017B
.L_017D:
.L_017C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_017F
jmp .L_017B
.L_017F:
.L_017E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_0181
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
inc ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_0183
inc dword ptr [ebp-4]
jmp .L_0182
.L_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
jne .L_0184
inc dword ptr [ebp-4]
.L_0184:
.L_0182:
mov eax, dword ptr [_CTX+2580]
cmp dword ptr [ebp-4], eax
jle .L_0186
mov eax, dword ptr [_CTX+2580]
mov dword ptr [ebp-4], eax
.L_0186:
.L_0185:
jmp .L_0180
.L_0181:
mov dword ptr [ebp-4], 0
.L_0180:
push dword ptr [ebp-4]
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0188
.L_018A:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
push -1
push 2
push offset _Lt_00DF
push -1
push -1
push 0
push 10
call _HEMITTYPE@8
push eax
push 9
push offset _Lt_018B
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _HWRITELINE@8
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .L_0187
.L_0192:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITSTRUCT@8
jmp .L_0187
.L_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_0195
push 0
push -1
push 3
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
jne .L_0197
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push -1
lea ebx, [ebp-20]
push ebx
push 9
push offset _Lt_018B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
call _HWRITELINE@8
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
.L_0197:
.L_0196:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_0195:
.L_0194:
jmp .L_0187
.L_0188:
mov eax, dword ptr [ebp-8]
add eax, 4294967293
cmp eax, 7
ja .L_0187
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_019B+eax*4-12]
_.L_019B:
.int .L_0193
.int .L_0187
.int .L_0187
.int .L_0187
.int .L_0187
.int .L_0187
.int .L_018A
.int .L_0192
.L_0187:
push dword ptr [ebp-4]
call _SECTIONRETURN@4
.L_017B:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITARRAYDECL@4:
push ebp
mov ebp, esp
sub esp, 72
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_019C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_019F
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
jmp .L_019D
.L_019F:
.L_019E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
je .L_01A3
.L_01A4:
cmp dword ptr [ebp-28], 12
jne .L_01A2
.L_01A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
jne .L_01A6
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-36], eax
jmp .L_01A8
.L_01AB:
push 0
push -1
push -1
push 2
push offset _Lt_01AD
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
sal eax, 4
mov esi, dword ptr [ebx+68]
add esi, eax
mov ebx, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
sub ebx, dword ptr [esi]
sbb eax, dword ptr [esi+4]
add ebx, 1
adc eax, 0
push eax
push ebx
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_01AC
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_01A9:
inc dword ptr [ebp-32]
.L_01A8:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .L_01AB
.L_01AA:
.L_01A6:
.L_01A5:
.L_01A2:
.L_01A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
jne .L_01B2
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 18
je .L_01B6
.L_01B7:
cmp dword ptr [ebp-36], 4
jne .L_01B5
.L_01B6:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], ebx
jmp .L_01B3
.L_01B5:
cmp dword ptr [ebp-36], 7
jne .L_01B8
.L_01B9:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov esi, ebx
sar esi, 31
push esi
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
.L_01B8:
.L_01B3:
cmp dword ptr [ebp-28], 0
jl .L_01BB
jg .L_0770
cmp dword ptr [ebp-32], 0
jbe .L_01BB
.L_0770:
push 0
push 2
push offset _Lt_01AC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_01AD
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_01BB:
.L_01BA:
.L_01B2:
.L_01B1:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_019D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITVARDECL@12:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_01BC:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01BF
push 0
push 8
push offset _Lt_01C0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_01BE
.L_01BF:
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
je .L_01C1
push 0
push 8
push offset _Lt_0115
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign@20
.L_01C1:
.L_01BE:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
lea ecx, [ebp-20]
push ecx
lea ecx, [ebp-16]
push ecx
push dword ptr [ebp+12]
call _SYMBGETREALTYPE@12
push 0
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
push dword ptr [ebp-16]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_00DF
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITARRAYDECL@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
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
je .L_01C6
push 0
push 25
push offset _Lt_01C7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01C6:
.L_01C5:
cmp dword ptr [ebp+16], 0
je .L_01C9
push 0
push -1
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_01CA
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_01C9:
.L_01C8:
push 0
push 2
push offset _Lt_018C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_01BD:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HMAYBEEMITLOCALVAR@4:
push ebp
mov ebp, esp
push ebx
.L_01CD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_01D0
jmp .L_01CE
.L_01D0:
.L_01CF:
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
je .L_01D2
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER@4
jmp .L_01D1
.L_01D2:
push 0
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL@12
.L_01D1:
.L_01CE:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HALLOCGLOBALVAR@4:
push ebp
mov ebp, esp
push ebx
.L_01D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_01D6
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
je .L_01D8
jmp .L_01D4
.L_01D8:
.L_01D7:
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER@4
jmp .L_01D5
.L_01D6:
push 0
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL@12
.L_01D5:
.L_01D4:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITGLOBALVAR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.L_01D9:
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
je .L_01DC
jmp .L_01DA
.L_01DC:
.L_01DB:
mov esi, dword ptr [_CTX+2756]
mov dword ptr [ebp-4], esi
cmp dword ptr [ebp-4], 1
jne .L_01DF
.L_01E0:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 56
je .L_01E2
push 0
push dword ptr [ebp+8]
push -1
call _HEMITVARDECL@12
jmp .L_01E1
.L_01E2:
push dword ptr [ebp+8]
call _HALLOCGLOBALVAR@4
.L_01E1:
jmp .L_01DD
.L_01DF:
cmp dword ptr [ebp-4], 2
jne .L_01E3
.L_01E4:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 40
je .L_01E6
push dword ptr [ebp+8]
call _HALLOCGLOBALVAR@4
.L_01E6:
.L_01E5:
.L_01E3:
.L_01DD:
.L_01DA:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITGLOBALVAREXCEPTDATASTMT@4:
push ebp
mov ebp, esp
.L_01E7:
push dword ptr [ebp+8]
call _SYMBISDATADESC@4
test eax, eax
je .L_01EA
jmp .L_01E8
.L_01EA:
.L_01E9:
push dword ptr [ebp+8]
call _HMAYBEEMITGLOBALVAR@4
.L_01E8:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITPROCPROTO@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_01EB:
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
je .L_01EE
jmp .L_01EC
.L_01EE:
.L_01ED:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
test eax, eax
jne .L_01F0
jmp .L_01EC
.L_01F0:
.L_01EF:
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 1
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-4]
call _SECTIONRETURN@4
.L_01EC:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITFIELDTYPES@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F3:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.L_01F5:
cmp dword ptr [ebp-4], 0
je .L_01F6
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
call _HEMITUDT@8
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
jmp .L_01F5
.L_01F6:
.L_01F4:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFINDPARENTANONALREADYONSTACK@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01F7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-12], ebx
.L_01F9:
lea ebx, [_CTX+2608]
push ebx
call _LISTGETTAIL@4
mov dword ptr [ebp-8], eax
.L_01FC:
cmp dword ptr [ebp-8], 0
je .L_01FD
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
jne .L_01FF
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01F8
.L_01FF:
.L_01FE:
push dword ptr [ebp-8]
call _LISTGETPREV@4
mov dword ptr [ebp-8], eax
jmp .L_01FC
.L_01FD:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-12], ebx
.L_01FB:
cmp dword ptr [ebp-12], 0
jne .L_01F9
.L_01FA:
mov dword ptr [ebp-4], 0
.L_01F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPUSHANONPARENTS@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0200:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+12], eax
jne .L_0203
jmp .L_0201
.L_0203:
.L_0202:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+168]
push dword ptr [ebp+8]
call _HPUSHANONPARENTS@8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
je .L_0205
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset _Lt_0206
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .L_0204
.L_0205:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset _Lt_0208
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.L_0204:
call _SECTIONINDENT@0
lea ebx, [_CTX+2608]
push ebx
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_0201:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPOPANONPARENTS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_020A:
.L_020C:
lea eax, [_CTX+2608]
push eax
call _LISTGETTAIL@4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
je .L_020D
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 3
push offset _Lt_020E
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
lea ebx, [_CTX+2608]
push ebx
call _LISTGETTAIL@4
push eax
lea eax, [_CTX+2608]
push eax
call _LISTDELNODE@8
jmp .L_020C
.L_020D:
.L_020B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSTRUCTWITHFIELDS@4:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_0210:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-20], eax
.L_0212:
cmp dword ptr [ebp-20], 0
je .L_0213
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+168], ebx
jne .L_0215
push 0
call _HPOPANONPARENTS@4
jmp .L_0214
.L_0215:
push dword ptr [ebp-20]
call _HFINDPARENTANONALREADYONSTACK@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HPOPANONPARENTS@4
mov eax, dword ptr [ebp-20]
push dword ptr [eax+168]
cmp dword ptr [ebp-24], 0
je .L_0216
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
jmp .L_077F
.L_0216:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-40], ebx
.L_077F:
push dword ptr [ebp-40]
call _HPUSHANONPARENTS@8
.L_0214:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0219
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-20]
push dword ptr [eax+16]
push 2
push offset _Lt_00DF
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp-20]
call _HEMITARRAYDECL@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+125]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jle .L_021D
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _TYPECALCNATURALALIGN@8
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_021E
mov dword ptr [ebp-68], 24
jmp .L_0780
.L_021E:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_0780:
cmp dword ptr [ebp-68], 20
jne .L_0221
mov ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx+125]
mov byte ptr [ebp-72], al
movzx eax, byte ptr [ebp-72]
test eax, eax
jle .L_0223
movzx eax, byte ptr [ebp-72]
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
or dword ptr [ebp-4], ebx
.L_0223:
.L_0222:
.L_0221:
.L_0220:
cmp dword ptr [ebp-4], 0
jne .L_0225
push 0
push 33
push offset _Lt_0226
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-12]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0227
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
.L_0225:
.L_0224:
.L_021D:
.L_021C:
cmp dword ptr [ebp-12], 0
jle .L_0228
mov eax, dword ptr [ebp-4]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_0781
.L_0228:
mov dword ptr [ebp-64], -1
.L_0781:
cmp dword ptr [ebp-64], 0
je .L_022B
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_022C
mov dword ptr [ebp-68], 24
jmp .L_0782
.L_022C:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0782:
cmp dword ptr [ebp-68], 20
jne .L_022F
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _TYPECALCNATURALALIGN@8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-12], 0
jle .L_0230
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-72]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .L_0783
.L_0230:
mov dword ptr [ebp-76], 0
.L_0783:
cmp dword ptr [ebp-76], 0
je .L_0233
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-72], eax
.L_0233:
.L_0232:
mov eax, dword ptr [ebp-16]
mov bl, byte ptr [eax+125]
mov byte ptr [ebp-80], bl
movzx ebx, byte ptr [ebp-80]
test ebx, ebx
jle .L_0234
movzx ebx, byte ptr [ebp-80]
mov eax, dword ptr [ebp-72]
cmp eax, ebx
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
jmp .L_0784
.L_0234:
mov dword ptr [ebp-84], 0
.L_0784:
cmp dword ptr [ebp-84], 0
je .L_0237
push 0
push 25
push offset _Lt_0238
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-72]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0227
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
.L_0237:
.L_0236:
.L_022F:
.L_022E:
.L_022B:
.L_022A:
push 0
push 2
push offset _Lt_018C
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push -1
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
.L_0219:
.L_0218:
push dword ptr [ebp-20]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-20], eax
jmp .L_0212
.L_0213:
push 0
call _HPOPANONPARENTS@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0211:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSTRUCT@8:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_0239:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .L_023C
cmp dword ptr [ebp+12], 0
je .L_023E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_0240
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
call _HWRITELINE@8
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
.L_0240:
.L_023F:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_023A
.L_023E:
.L_023D:
.L_023C:
.L_023B:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 134217728
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 32768
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0244
push dword ptr [ebp+8]
call _HEMITFIELDTYPES@4
.L_0244:
.L_0243:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 67108864
test eax, eax
je .L_0246
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_023A
.L_0246:
.L_0245:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx+125]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0248
push 0
push 29
push offset _Lt_0249
push -1
lea ecx, [ebp-16]
push ecx
call _fb_StrConcatAssign@20
.L_0248:
.L_0247:
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTID@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_024A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push -1
lea eax, [ebp-16]
push eax
call _HWRITELINE@8
call _SECTIONINDENT@0
cmp dword ptr [ebp-4], 0
je .L_024C
push dword ptr [ebp+8]
call _HEMITSTRUCTWITHFIELDS@4
jmp .L_024B
.L_024C:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 3
push offset _Lt_024E
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr@8
push eax
push 24
push offset _Lt_024D
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
call _HWRITELINE@8
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
.L_024B:
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 3
push offset _Lt_020E
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
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
call _fb_ULongintToStr@8
push eax
push -1
push 7
push offset _Lt_0254
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTID@4
push eax
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG@4
push eax
push 9
push offset _Lt_0253
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
call _HWRITESTATICASSERT@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_023A:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HWRITEX86F2I@12:
push ebp
mov ebp, esp
sub esp, 356
push ebx
.L_025A:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
push dword ptr [ebp+16]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [_ENV+132], 1
jne .L_025D
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_025E
mov dword ptr [ebp-352], 24
jmp .L_078E
.L_025E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-352], eax
.L_078E:
mov eax, dword ptr [ebp-352]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-356], ebx
cmp dword ptr [ebp-356], 4
jne .L_0262
.L_0263:
push 0
push 2
push offset _Lt_0264
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign@20
jmp .L_0260
.L_0262:
cmp dword ptr [ebp-356], 8
jne .L_0265
.L_0266:
push 0
push 2
push offset _Lt_0267
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign@20
.L_0265:
.L_0260:
cmp dword ptr [ebp+16], 15
jne .L_0269
push 0
push 2
push offset _Lt_026A
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign@20
jmp .L_0268
.L_0269:
push 0
push 2
push offset _Lt_0264
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign@20
.L_0268:
.L_025D:
.L_025C:
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-60]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 9
push offset _Lt_026E
push -1
push -1
lea ebx, [ebp-24]
push ebx
push -1
push 3
push offset _Lt_00E7
push -1
push -1
push dword ptr [ebp+8]
push -1
push 5
push offset _Lt_026D
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset _Lt_026C
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
push eax
call _HWRITELINE@8
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 2
push offset _Lt_0276
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-156]
push eax
call _HWRITELINE@8
lea eax, [ebp-156]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
push -1
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 9
push offset _Lt_0279
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset _Lt_0278
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign@20
lea eax, [ebp-192]
push eax
call _HWRITELINE@8
lea eax, [ebp-192]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 9
push offset _Lt_027D
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
push eax
call _HWRITELINE@8
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
push -1
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_0280
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_027F
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign@20
lea eax, [ebp-240]
push eax
call _HWRITELINE@8
lea eax, [ebp-240]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 6
push offset _Lt_0285
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset _Lt_0284
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign@20
lea eax, [ebp-276]
push eax
call _HWRITELINE@8
lea eax, [ebp-276]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 15
push offset _Lt_0289
push -1
lea eax, [ebp-288]
push eax
call _fb_StrAssign@20
lea eax, [ebp-288]
push eax
call _HWRITELINE@8
lea eax, [ebp-288]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 13
push offset _Lt_028B
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-300]
push eax
call _HWRITELINE@8
lea eax, [ebp-300]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push 6
push offset _Lt_028D
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign@20
lea eax, [ebp-312]
push eax
call _HWRITELINE@8
lea eax, [ebp-312]
push eax
call _fb_StrDelete@4
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 3
push offset _Lt_028F
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign@20
lea eax, [ebp-324]
push eax
call _HWRITELINE@8
lea eax, [ebp-324]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
push 0
push 15
push offset _Lt_0291
push -1
lea eax, [ebp-336]
push eax
call _fb_StrAssign@20
lea eax, [ebp-336]
push eax
call _HWRITELINE@8
lea eax, [ebp-336]
push eax
call _fb_StrDelete@4
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
push 0
push 2
push offset _Lt_0293
push -1
lea eax, [ebp-348]
push eax
call _fb_StrAssign@20
lea eax, [ebp-348]
push eax
call _HWRITELINE@8
lea eax, [ebp-348]
push eax
call _fb_StrDelete@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_025B:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HWRITEGENERICF2I@12:
push ebp
mov ebp, esp
sub esp, 96
.L_0295:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 15
jne .L_0298
push 0
push 11
push offset _Lt_0299
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_0297
.L_0298:
push 0
push 10
push offset _Lt_029A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0297:
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 11
push offset _Lt_029E
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 12
push offset _Lt_029D
push -1
push -1
push 0
push dword ptr [ebp+12]
call _HEMITTYPE@8
push eax
push -1
push 13
push offset _Lt_029C
push -1
push -1
push dword ptr [ebp+8]
push 12
push offset _Lt_029B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HWRITELINE@8
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0296:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HWRITEF2I@12:
push ebp
mov ebp, esp
.L_02A6:
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_02A9
cmp dword ptr [ebp+12], 11
je .L_02AC
.L_02AD:
cmp dword ptr [ebp+12], 13
jne .L_02AB
.L_02AC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWRITEX86F2I@12
jmp .L_02A7
.L_02AB:
.L_02AA:
.L_02A9:
.L_02A8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWRITEGENERICF2I@12
.L_02A7:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HMAYBEEMITPROCEXPORT@4:
push ebp
mov ebp, esp
push ebx
.L_02AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
jne .L_02B1
jmp .L_02AF
.L_02B1:
.L_02B0:
push 0
push 3
push offset _Lt_02B2
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatByref@20
push 0
push 10
push offset _Lt_02B3
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatByref@20
push 0
push 16
push offset _Lt_02B4
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatByref@20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
push 0
push 7
push offset _Lt_02B5
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
push 0
push 3
push offset _Lt_02B6
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
push 0
push 3
push offset _Lt_02B7
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
.L_02AF:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBEGIN@0:
push ebp
mov ebp, esp
sub esp, 124
mov dword ptr [ebp-4], 0
.L_02B8:
lea eax, [_ENV+584]
push eax
call _HFILEEXISTS@4
test eax, eax
je .L_02BB
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
.L_02BB:
.L_02BA:
call _fb_FileFree@0
mov dword ptr [_ENV+580], eax
push 0
push dword ptr [_ENV+580]
push 0
push 3
push 0
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .L_02BD
mov dword ptr [ebp-4], 0
jmp .L_02B9
.L_02BD:
.L_02BC:
mov dword ptr [_CTX+2580], -1
mov dword ptr [_CTX+2584], 0
mov dword ptr [_CTX+2588], 0
mov dword ptr [_CTX+2604], 0
mov dword ptr [_CTX+2756], 0
lea eax, [_ENV+304]
push eax
call _HUPDATECURRENTFILENAME@4
call _SECTIONBEGIN@0
cmp dword ptr [_ENV+148], 0
je .L_02BF
push 0
push 0
push 0
push 113
call __EMITDBG@16
.L_02BF:
.L_02BE:
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 34
push offset _Lt_02C0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITELINE@8
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 34
push offset _Lt_02C2
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 35
push offset _Lt_02C4
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _HWRITELINE@8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 35
push offset _Lt_02C6
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _HWRITELINE@8
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 35
push offset _Lt_02C8
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
lea eax, [ebp-64]
push eax
call _HWRITELINE@8
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 35
push offset _Lt_02CA
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
lea eax, [ebp-76]
push eax
call _HWRITELINE@8
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 35
push offset _Lt_02CC
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
call _HWRITELINE@8
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 35
push offset _Lt_02CE
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
lea eax, [ebp-100]
push eax
call _HWRITELINE@8
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
call _FBIS64BIT@0
test eax, eax
je .L_02D1
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset _Lt_02D2
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
call _HWRITELINE@8
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
jmp .L_02D0
.L_02D1:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset _Lt_02D4
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
call _HWRITELINE@8
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
.L_02D0:
push -1
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 22
push offset _Lt_02D6
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
call _HWRITELINE@8
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
call _SECTIONBEGIN@0
mov dword ptr [ebp-4], -1
.L_02B9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND@0:
push ebp
mov ebp, esp
sub esp, 52
.L_02D8:
lea eax, [_ENV+304]
push eax
call _HUPDATECURRENTFILENAME@4
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_CTX+2604]
and eax, 1
je .L_02DB
push 15
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02DC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02DB:
mov eax, dword ptr [_CTX+2604]
and eax, 2
je .L_02DF
push 15
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02E0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02DF:
mov eax, dword ptr [_CTX+2604]
and eax, 4
je .L_02E3
push 15
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset _Lt_02E4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02E3:
mov eax, dword ptr [_CTX+2604]
and eax, 8
je .L_02E7
push 16
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02E7:
mov eax, dword ptr [_CTX+2604]
and eax, 16
je .L_02EB
push 16
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02EC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02EB:
mov eax, dword ptr [_CTX+2604]
and eax, 32
je .L_02EF
push 16
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset _Lt_02F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02EF:
push offset _HMAYBEEMITPROCPROTO@4
push 3
call _SYMBFOREACHGLOBAL@8
mov dword ptr [_CTX+2756], 1
push offset _HMAYBEEMITGLOBALVAREXCEPTDATASTMT@4
push 1
call _SYMBFOREACHGLOBAL@8
push offset _HMAYBEEMITGLOBALVAR@4
call _IRFOREACHDATASTMT@4
mov dword ptr [_CTX+2756], 2
push offset _HMAYBEEMITGLOBALVAREXCEPTDATASTMT@4
push 1
call _SYMBFOREACHGLOBAL@8
push offset _HMAYBEEMITGLOBALVAR@4
call _IRFOREACHDATASTMT@4
push dword ptr [ebp-4]
call _SECTIONRETURN@4
mov eax, dword ptr [_ENV+284]
and eax, 4
and eax, dword ptr [_ENV+224]
je .L_02F3
push offset _HMAYBEEMITPROCEXPORT@4
push 3
call _SYMBFOREACHGLOBAL@8
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_02F5
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 3
push offset _Lt_028F
push -1
push -1
lea eax, [_CTX+2668]
push eax
push 35
push offset _Lt_02F6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
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
lea eax, [ebp-40]
push eax
call _HWRITELINE@8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 20
push offset _Lt_02FA
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _HWRITELINE@8
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
.L_02F5:
.L_02F4:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrAssign@20
.L_02F3:
.L_02F2:
call _SECTIONEND@0
cmp dword ptr [_CTX+12], 0
jne .L_02FD
push -1
lea eax, [_CTX]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr@16
test eax, eax
je .L_02FF
.L_02FF:
.L_02FE:
.L_02FD:
.L_02FC:
call _SECTIONEND@0
push dword ptr [_ENV+580]
call _fb_FileClose@4
test eax, eax
je .L_0301
.L_0301:
.L_0300:
mov dword ptr [_ENV+580], 0
.L_02D9:
mov esp, ebp
pop ebp
ret
.balign 16
__GETOPTIONVALUE@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0302:
cmp dword ptr [ebp+8], 1
jne .L_0305
.L_0306:
mov dword ptr [ebp-4], 0
jmp .L_0303
jmp .L_0304
.L_0305:
push 0
push 1
push 0
push offset _Lt_0308
push 21
call _ERRREPORTEX@20
.L_0307:
.L_0304:
.L_0303:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
__SUPPORTSOP@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0309:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_030C
.L_030E:
mov dword ptr [ebp-4], 0
jmp .L_030B
.L_030F:
mov dword ptr [ebp-4], -1
jmp .L_030B
.L_030C:
mov eax, dword ptr [ebp-8]
add eax, 4294967239
cmp eax, 15
ja .L_030F
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0310+eax*4-228]
_.L_0310:
.int .L_030E
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030E
.int .L_030E
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030E
.int .L_030E
.L_030B:
.L_030A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCBEGIN@4:
push ebp
mov ebp, esp
push ebx
.L_0311:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+16], ebx
.L_0312:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCEND@4:
push ebp
mov ebp, esp
push ebx
.L_0313:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+20], ebx
.L_0314:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__SCOPEBEGIN@4:
push ebp
mov ebp, esp
.L_0315:
.L_0316:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SCOPEEND@4:
push ebp
mov ebp, esp
.L_0317:
.L_0318:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HISSTATICWITHDTOR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0319:
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
call _SYMBHASDTOR@4
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_031A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCSTATICVARS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_031B:
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-8], eax
.L_031D:
cmp dword ptr [ebp+8], 0
je .L_031E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 15
jne .L_0321
.L_0322:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call __PROCALLOCSTATICVARS@4
jmp .L_031F
.L_0321:
cmp dword ptr [ebp-12], 1
jne .L_0323
.L_0324:
push dword ptr [ebp+8]
call _HISSTATICWITHDTOR@4
test eax, eax
je .L_0326
push dword ptr [ebp+8]
call _HMAYBEEMITLOCALVAR@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0328
push dword ptr [ebp-4]
call _HMAYBEEMITLOCALVAR@4
.L_0328:
.L_0327:
.L_0326:
.L_0325:
.L_0323:
.L_031F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp+8], eax
jmp .L_031D
.L_031E:
push dword ptr [ebp-8]
call _SECTIONRETURN@4
.L_031C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__SETVREGDATATYPE@12:
push ebp
mov ebp, esp
push ebx
.L_0329:
cmp dword ptr [ebp+8], 0
je .L_032C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.L_032C:
.L_032B:
.L_032A:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HEMITTYPE@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_032D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETVALISTTYPE@8
cmp eax, 1
jle .L_0330
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETVALISTTYPE@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
jne .L_0333
.L_0334:
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
jmp .L_0331
.L_0333:
mov eax, dword ptr [ebp+8]
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
.L_0335:
.L_0331:
.L_0330:
.L_032F:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0337
.L_0339:
cmp dword ptr [ebp+12], 0
je .L_033B
mov eax, dword ptr [ebp-28]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call _HEMITUDT@8
push 0
push -1
push dword ptr [ebp+12]
call _HGETUDTNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_033A
.L_033B:
cmp dword ptr [ebp+8], 10
jne .L_033C
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_033D
mov dword ptr [ebp-36], 24
jmp .L_0791
.L_033D:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0791:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_033A
.L_033C:
push 0
push 0
push dword ptr [_DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_033A:
jmp .L_0336
.L_033F:
dec dword ptr [ebp-28]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+12]
call _HEMITUDT@8
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0336
.L_0340:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0341
mov dword ptr [ebp-36], 24
jmp .L_0792
.L_0341:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0792:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0336
.L_0343:
push 0
push 0
push dword ptr [_DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0336
.L_0344:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0336
.L_0337:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 18
ja .L_0344
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.L_0345+ebx*4-16]
_.L_0345:
.int .L_0340
.int .L_0344
.int .L_0344
.int .L_0340
.int .L_0344
.int .L_0344
.int .L_0339
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0343
.int .L_0344
.int .L_0339
.int .L_0344
.int .L_033F
.L_0336:
cmp dword ptr [ebp-28], 0
jle .L_0347
push 0
push -1
push 1
push offset _Lt_0348
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-28]
call _fb_StrFill2@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0347:
.L_0346:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_032E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRNEW@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0349:
lea eax, [_CTX+2680]
push eax
call _LISTNEWNODE@4
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
.L_034A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRFREENODE@4:
push ebp
mov ebp, esp
.L_034B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_034E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_0350
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _free
add esp, 4
.L_0350:
.L_034F:
.L_034E:
.L_034D:
push dword ptr [ebp+8]
lea eax, [_CTX+2680]
push eax
call _LISTDELNODE@8
.L_034C:
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRFREETREE@4:
push ebp
mov ebp, esp
.L_0351:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0354
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRFREETREE@4
.L_0354:
.L_0353:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_0356
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _EXPRFREETREE@4
.L_0356:
.L_0355:
push dword ptr [ebp+8]
call _EXPRFREENODE@4
.L_0352:
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRNEWTEXT@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0357:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
call _ZSTRDUP@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0358:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWIMMI@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0359:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_035B
mov dword ptr [ebp-12], 24
jmp .L_0795
.L_035B:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0795:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_035E
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_035F
mov dword ptr [ebp-16], 24
jmp .L_0796
.L_035F:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0796:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0361
mov dword ptr [ebp-20], 13
jmp .L_0797
.L_0361:
mov dword ptr [ebp-20], 14
.L_0797:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
jmp .L_035D
.L_035E:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0363
mov dword ptr [ebp-16], 24
jmp .L_0798
.L_0363:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0798:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0365
mov dword ptr [ebp-20], 11
jmp .L_0799
.L_0365:
mov dword ptr [ebp-20], 12
.L_0799:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
.L_035D:
push 0
push dword ptr [ebp+16]
push 1
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_035A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWIMMF@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0367:
push 0
push dword ptr [ebp+16]
push 1
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0368:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_SYMBISCARRAY@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0369:
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
je .L_036C
mov dword ptr [ebp-4], 0
jmp .L_036A
.L_036C:
.L_036B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_0370
.L_0371:
cmp dword ptr [ebp-8], 12
jne .L_036F
.L_0370:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_0373
mov dword ptr [ebp-4], 0
jmp .L_036A
.L_0373:
.L_0372:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_0375
mov dword ptr [ebp-4], -1
jmp .L_036A
.L_0375:
.L_0374:
.L_036F:
.L_036D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .L_0379
.L_037A:
cmp dword ptr [ebp-8], 4
je .L_0379
.L_037B:
cmp dword ptr [ebp-8], 7
jne .L_0378
.L_0379:
mov dword ptr [ebp-4], -1
jmp .L_036A
.L_0378:
.L_0376:
mov dword ptr [ebp-4], 0
.L_036A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRNEWCAST@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_037C:
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
je .L_037F
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037D
.L_037F:
.L_037E:
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [esi+4]
and ebx, 480
je .L_0380
mov dword ptr [ebp-8], 24
jmp .L_079D
.L_0380:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 31
mov dword ptr [ebp-8], esi
.L_079D:
mov esi, dword ptr [ebp-8]
imul esi, 28
mov dword ptr [ebp-20], esi
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_0382
mov dword ptr [ebp-12], 24
jmp .L_079E
.L_0382:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-12], esi
.L_079E:
mov esi, dword ptr [ebp-12]
imul esi, 28
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [_SYMB_DTYPETB+esi+20]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx+20]
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
je .L_0385
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037D
.L_0385:
.L_0384:
mov esi, dword ptr [ebp+16]
cmp dword ptr [esi], 3
jne .L_0387
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
je .L_0389
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ebx+4], esi
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_037D
.L_0389:
.L_0388:
.L_0387:
.L_0386:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call _EXPRNEW@12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_037D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWMACRO@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_038A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 6
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_038B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_EXPRNEWSYM@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_038C:
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
je .L_038F
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+88]
mov dword ptr [ebp+8], ebx
.L_038F:
.L_038E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 7
jne .L_0391
push 0
push 32
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
jmp .L_0390
.L_0391:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .L_0392
push dword ptr [ebp+8]
push 54
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
jmp .L_0390
.L_0392:
push dword ptr [ebp+8]
call _SYMBISCARRAY@4
test eax, eax
je .L_0393
push 0
push -2147483648
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
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
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
jmp .L_0390
.L_0393:
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
je .L_0394
push 0
push 66
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+24], ecx
jmp .L_0390
.L_0394:
lea ecx, [ebp-16]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call _SYMBGETREALTYPE@12
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+24], ecx
.L_0390:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_038D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_TYPECBOP@12:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_0395:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_0398
mov dword ptr [ebp-4], 11
jmp .L_0396
.L_0398:
.L_0397:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_0399
mov dword ptr [ebp-8], 24
jmp .L_07AC
.L_0399:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_07AC:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_039B
mov dword ptr [ebp-12], 24
jmp .L_07AD
.L_039B:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07AD:
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
je .L_039E
mov dword ptr [ebp-4], 16
jmp .L_0396
.L_039E:
.L_039D:
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
je .L_03A0
mov dword ptr [ebp-4], 15
jmp .L_0396
.L_03A0:
.L_039F:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A1
mov dword ptr [ebp-16], 24
jmp .L_07AE
.L_03A1:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07AE:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jg .L_03A4
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A5
mov dword ptr [ebp-48], 24
jmp .L_07AF
.L_03A5:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07AF:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_03A7
mov dword ptr [ebp-52], 11
jmp .L_07B0
.L_03A7:
mov dword ptr [ebp-52], 12
.L_07B0:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+12], ebx
.L_03A4:
.L_03A3:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03A9
mov dword ptr [ebp-20], 24
jmp .L_07B1
.L_03A9:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_07B1:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jg .L_03AC
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03AD
mov dword ptr [ebp-48], 24
jmp .L_07B2
.L_03AD:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07B2:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_03AF
mov dword ptr [ebp-52], 11
jmp .L_07B3
.L_03AF:
mov dword ptr [ebp-52], 12
.L_07B3:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+16], ebx
.L_03AC:
.L_03AB:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03B1
mov dword ptr [ebp-24], 24
jmp .L_07B4
.L_03B1:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_07B4:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03B3
mov dword ptr [ebp-28], 24
jmp .L_07B5
.L_03B3:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_07B5:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [_SYMB_DTYPETB+eax+8]
not ecx
test ecx, ecx
je .L_03B6
push dword ptr [ebp+12]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+16], eax
.L_03B6:
.L_03B5:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03B7
mov dword ptr [ebp-32], 24
jmp .L_07B7
.L_03B7:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07B7:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_03B9
mov dword ptr [ebp-36], 24
jmp .L_07B8
.L_03B9:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_07B8:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .L_03BC
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03BD
mov dword ptr [ebp-52], 24
jmp .L_07BA
.L_03BD:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-52], eax
.L_07BA:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03BF
mov dword ptr [ebp-56], 13
jmp .L_07BB
.L_03BF:
mov dword ptr [ebp-56], 14
.L_07BB:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03C1
mov dword ptr [ebp-60], 24
jmp .L_07BC
.L_03C1:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07BC:
mov eax, dword ptr [ebp-60]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03C3
mov dword ptr [ebp-64], 13
jmp .L_07BD
.L_03C3:
mov dword ptr [ebp-64], 14
.L_07BD:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp+16], eax
.L_03BC:
.L_03BB:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03C5
mov dword ptr [ebp-40], 24
jmp .L_07BE
.L_03C5:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07BE:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03C7
mov dword ptr [ebp-44], 24
jmp .L_07BF
.L_03C7:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07BF:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+8]
and ebx, dword ptr [_SYMB_DTYPETB+ecx+8]
not ebx
test ebx, ebx
je .L_03CA
push dword ptr [ebp+12]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+16], eax
.L_03CA:
.L_03C9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_0396:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWUOP@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_03CB:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_03CE
.L_03D0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
cmp ebx, 76
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D2:
.L_03D1:
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
jmp .L_03CD
.L_03D3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D5:
.L_03D4:
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
jmp .L_03CD
.L_03D6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax+24]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D8:
.L_03D7:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
push dword ptr [ebp+8]
call _TYPECBOP@12
mov dword ptr [ebp-12], eax
jmp .L_03CD
.L_03D9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .L_03CD
.L_03DA:
jmp .L_03CD
.L_03CE:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967274
cmp ebx, 54
ja .L_03DA
mov ebx, dword ptr [ebp-20]
jmp dword ptr [_.L_03DB+ebx*4-88]
_.L_03DB:
.int .L_03D0
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03D6
.int .L_03DA
.int .L_03D6
.int .L_03DA
.int .L_03D9
.int .L_03DA
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03DA
.int .L_03D9
.int .L_03DA
.int .L_03DA
.int .L_03D9
.int .L_03D9
.int .L_03D9
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03DA
.int .L_03D3
.L_03CD:
cmp dword ptr [ebp-16], 0
je .L_03DD
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call _EXPRFREENODE@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_03CC
.L_03DD:
.L_03DC:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-12]
push 4
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRNEWBOP@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_03DE:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _TYPECBOP@12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_03E1
.L_03E3:
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
je .L_03E5
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
je .L_03E7
push dword ptr [ebp+12]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp+16], eax
.L_03E7:
.L_03E6:
.L_03E5:
.L_03E4:
jmp .L_03E0
.L_03E1:
mov eax, dword ptr [ebp-16]
add eax, 4294967251
cmp eax, 5
ja .L_03E0
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_03E8+eax*4-180]
_.L_03E8:
.int .L_03E3
.int .L_03E3
.int .L_03E3
.int .L_03E3
.int .L_03E3
.int .L_03E3
.L_03E0:
push 0
push dword ptr [ebp-12]
push 5
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_03DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRCACHE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03E9:
lea eax, [_CTX+2724]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_03EA:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRLOOKUP@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03EB:
lea eax, [_CTX+2724]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
.L_03ED:
cmp dword ptr [ebp-8], 0
je .L_03EE
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_03F0
jmp .L_03EE
.L_03F0:
.L_03EF:
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
jmp .L_03ED
.L_03EE:
cmp dword ptr [ebp-8], 0
je .L_03F2
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
lea ebx, [_CTX+2724]
push ebx
call _LISTDELNODE@8
jmp .L_03F1
.L_03F2:
mov dword ptr [ebp-4], 0
.L_03F1:
.L_03EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITINT@12:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03F3:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03F5
mov dword ptr [ebp-28], 24
jmp .L_07CE
.L_03F5:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_07CE:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03F8
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03F9
mov dword ptr [ebp-32], 24
jmp .L_07CF
.L_03F9:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07CF:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_03FC
cmp dword ptr [ebp+16], 2147483648
jne .L_03FE
cmp dword ptr [ebp+12], 0
jne .L_03FE
.L_07D1:
push 0
push 2
push offset _Lt_03FF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_03FE:
.L_03FD:
push 0
push 3
push offset _Lt_0400
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_03FB
.L_03FC:
cmp dword ptr [ebp+16], 4294967295
jne .L_0402
cmp dword ptr [ebp+12], 2147483648
jne .L_0402
.L_07D2:
push 0
push 2
push offset _Lt_03FF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0402:
.L_0401:
.L_03FB:
jmp .L_03F7
.L_03F8:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0403
mov dword ptr [ebp-32], 24
jmp .L_07D0
.L_0403:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07D0:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_0406
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_ULongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0407
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0405
.L_0406:
push 0
push -1
mov eax, dword ptr [ebp+12]
push eax
call _fb_UIntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_03FF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0405:
.L_03F7:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_03F4:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 12
.balign 16
_HEMITFLOAT@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0408:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2146435072
je .L_040C
.L_040D:
cmp dword ptr [ebp-28], 4293918720
jne .L_040B
.L_040C:
cmp dword ptr [ebp+8], 16
jne .L_040F
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0411
push 0
push 19
push offset _Lt_0412
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0410
.L_0411:
push 0
push 16
push offset _Lt_0413
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0410:
jmp .L_040E
.L_040F:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0415
push 0
push 20
push offset _Lt_0416
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0414
.L_0415:
push 0
push 17
push offset _Lt_0417
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0414:
.L_040E:
jmp .L_040A
.L_040B:
cmp dword ptr [ebp-28], 2146959360
je .L_0419
.L_041A:
cmp dword ptr [ebp-28], 4294443008
jne .L_0418
.L_0419:
cmp dword ptr [ebp+8], 16
jne .L_041C
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_041E
push 0
push 23
push offset _Lt_041F
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_041D
.L_041E:
push 0
push 20
push offset _Lt_0420
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_041D:
jmp .L_041B
.L_041C:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0422
push 0
push 24
push offset _Lt_0423
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0421
.L_0422:
push 0
push 21
push offset _Lt_0424
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0421:
.L_041B:
jmp .L_040A
.L_0418:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFLOATTOHEX_C99@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 15
jne .L_0427
push 0
push 2
push offset _Lt_0428
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0427:
.L_0426:
.L_0425:
.L_040A:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0409:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HBUILDSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0429:
push 0
push 2
push offset _Lt_00C9
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-12], ecx
jmp .L_042C
.L_042F:
mov ecx, dword ptr [ebp+12]
add ecx, dword ptr [ebp-8]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_0431
push 0
push -1
push -1
push 2
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push 3
push offset _Lt_0432
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
push ebx
call _HISVALIDHEXDIGIT@4
test eax, eax
je .L_0435
push 0
push 4
push offset _Lt_0436
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0435:
.L_0434:
jmp .L_0430
.L_0431:
cmp dword ptr [ebp-4], 63
jne .L_0437
push 0
push 2
push offset _Lt_0438
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
cmp ebx, 63
jne .L_043A
mov ebx, dword ptr [ebp+12]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx+2]
mov byte ptr [ebp-16], al
movzx eax, byte ptr [ebp-16]
cmp eax, 61
je .L_0446
.L_0447:
movzx eax, byte ptr [ebp-16]
cmp eax, 47
je .L_0446
.L_0448:
movzx eax, byte ptr [ebp-16]
cmp eax, 39
je .L_0446
.L_0449:
movzx eax, byte ptr [ebp-16]
cmp eax, 40
je .L_0446
.L_044A:
movzx eax, byte ptr [ebp-16]
cmp eax, 41
je .L_0446
.L_044B:
movzx eax, byte ptr [ebp-16]
cmp eax, 33
je .L_0446
.L_044C:
movzx eax, byte ptr [ebp-16]
cmp eax, 60
je .L_0446
.L_044D:
movzx eax, byte ptr [ebp-16]
cmp eax, 62
je .L_0446
.L_044E:
movzx eax, byte ptr [ebp-16]
cmp eax, 45
jne .L_043D
.L_0446:
push 0
push 4
push offset _Lt_0436
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_043D:
.L_043B:
.L_043A:
.L_0439:
jmp .L_0430
.L_0437:
push 0
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0430:
.L_042D:
inc dword ptr [ebp-8]
.L_042C:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_042F
.L_042E:
push 0
push 2
push offset _Lt_00C9
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_042A:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HBUILDWSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_044F:
push 0
push 3
push offset _Lt_0451
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-16], ecx
jmp .L_0453
.L_0456:
mov ecx, dword ptr [ebp-12]
sal ecx, 1
mov ebx, dword ptr [ebp+12]
add ebx, ecx
movzx ecx, word ptr [ebx]
mov dword ptr [ebp-4], ecx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_0458
push 0
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push 3
push offset _Lt_0432
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ecx, dword ptr [ebp+12]
add ecx, eax
movzx eax, word ptr [ecx+2]
push eax
call _HISVALIDHEXDIGIT@4
test eax, eax
je .L_045B
push 0
push 5
push offset _Lt_045C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_045B:
.L_045A:
jmp .L_0457
.L_0458:
cmp dword ptr [ebp-4], 63
jne .L_045D
push 0
push 2
push offset _Lt_0438
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ecx, dword ptr [ebp+12]
add ecx, eax
movzx eax, word ptr [ecx+2]
cmp eax, 63
jne .L_045F
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov ax, word ptr [ecx+4]
mov word ptr [ebp-20], ax
movzx eax, word ptr [ebp-20]
cmp eax, 61
je .L_0463
.L_0464:
movzx eax, word ptr [ebp-20]
cmp eax, 47
je .L_0463
.L_0465:
movzx eax, word ptr [ebp-20]
cmp eax, 39
je .L_0463
.L_0466:
movzx eax, word ptr [ebp-20]
cmp eax, 40
je .L_0463
.L_0467:
movzx eax, word ptr [ebp-20]
cmp eax, 41
je .L_0463
.L_0468:
movzx eax, word ptr [ebp-20]
cmp eax, 33
je .L_0463
.L_0469:
movzx eax, word ptr [ebp-20]
cmp eax, 60
je .L_0463
.L_046A:
movzx eax, word ptr [ebp-20]
cmp eax, 62
je .L_0463
.L_046B:
movzx eax, word ptr [ebp-20]
cmp eax, 45
jne .L_0462
.L_0463:
push 0
push 5
push offset _Lt_045C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0462:
.L_0460:
.L_045F:
.L_045E:
jmp .L_0457
.L_045D:
push 0
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0457:
.L_0454:
inc dword ptr [ebp-12]
.L_0453:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_0456
.L_0455:
push 0
push 2
push offset _Lt_00C9
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0450:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HBOPTOSTR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_046C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_046F
.L_0471:
mov eax, offset _Lt_0472
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0473:
mov eax, offset _Lt_0474
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0475:
mov eax, offset _Lt_0476
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0477:
mov eax, offset _Lt_0478
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0479:
mov eax, offset _Lt_0478
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_047A:
mov eax, offset _Lt_047B
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_047C:
mov eax, offset _Lt_047D
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_047E:
mov eax, offset _Lt_047F
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0480:
mov eax, offset _Lt_0481
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0482:
mov eax, offset _Lt_0483
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0484:
mov eax, offset _Lt_0485
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0486:
mov eax, offset _Lt_0487
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0488:
mov eax, offset _Lt_0489
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_048A:
mov eax, offset _Lt_048B
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_048C:
mov eax, offset _Lt_048D
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_048E:
mov eax, offset _Lt_048F
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_0490:
mov eax, offset _Lt_0491
mov dword ptr [ebp-4], eax
jmp .L_046E
.L_046F:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .L_046E
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0492+eax*4-112]
_.L_0492:
.int .L_0471
.int .L_0473
.int .L_0475
.int .L_0477
.int .L_0479
.int .L_047A
.int .L_0480
.int .L_0482
.int .L_046E
.int .L_046E
.int .L_0484
.int .L_046E
.int .L_046E
.int .L_047C
.int .L_047E
.int .L_046E
.int .L_046E
.int .L_0486
.int .L_0488
.int .L_048A
.int .L_048C
.int .L_048E
.int .L_0490
.L_046E:
.L_046D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUOPTOSTR@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0493:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 22
jne .L_0496
.L_0497:
mov eax, offset _Lt_0498
mov dword ptr [ebp-4], eax
jmp .L_0495
.L_0496:
cmp dword ptr [ebp+8], 76
jne .L_0499
.L_049A:
mov eax, offset _Lt_0348
mov dword ptr [ebp-4], eax
jmp .L_0495
.L_0499:
cmp dword ptr [ebp+8], 54
jne .L_049B
.L_049C:
mov eax, offset _Lt_0445
mov dword ptr [ebp-4], eax
jmp .L_0495
.L_049B:
cmp dword ptr [ebp+8], 52
jne .L_049D
.L_049E:
mov eax, offset _Lt_049F
mov dword ptr [ebp-4], eax
jmp .L_0495
.L_049D:
cmp dword ptr [ebp+8], 56
jne .L_04A0
.L_04A1:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_04A2
mov dword ptr [ebp-8], 24
jmp .L_07D3
.L_04A2:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07D3:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_04A5
.L_04A7:
mov ebx, offset _Lt_04A8
mov dword ptr [ebp-4], ebx
jmp .L_04A4
.L_04A9:
mov ebx, offset _Lt_04AA
mov dword ptr [ebp-4], ebx
jmp .L_04A4
.L_04AB:
mov ebx, offset _Lt_04AC
mov dword ptr [ebp-4], ebx
jmp .L_04A4
.L_04AD:
mov ebx, offset _Lt_04AE
mov dword ptr [ebp-4], ebx
jmp .L_04A4
.L_04A5:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967289
cmp ebx, 3
ja .L_04AD
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.L_04AF+ebx*4-28]
_.L_04AF:
.int .L_04AB
.int .L_04AB
.int .L_04A7
.int .L_04A9
.L_04A4:
jmp .L_0495
.L_04A0:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp ebx, 15
jne .L_04B2
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04B4
.L_04B6:
mov ebx, offset _Lt_04B7
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04B8:
mov ebx, offset _Lt_04B9
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04BA:
mov ebx, offset _Lt_04BB
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04BC:
mov ebx, offset _Lt_04BD
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04BE:
mov ebx, offset _Lt_04BF
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04C0:
mov ebx, offset _Lt_04C1
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04C2:
mov ebx, offset _Lt_04C3
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04C4:
mov ebx, offset _Lt_04C5
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04C6:
mov ebx, offset _Lt_04C7
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04C8:
mov ebx, offset _Lt_04C9
mov dword ptr [ebp-4], ebx
jmp .L_04B3
.L_04CA:
jmp .L_04B3
.L_04B4:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04CA
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_04CB+ebx*4-232]
_.L_04CB:
.int .L_04B6
.int .L_04B8
.int .L_04BA
.int .L_04BC
.int .L_04BE
.int .L_04C0
.int .L_04CA
.int .L_04C2
.int .L_04CA
.int .L_04CA
.int .L_04C4
.int .L_04C6
.int .L_04C8
.L_04B3:
jmp .L_04B1
.L_04B2:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04CD
.L_04CF:
mov ebx, offset _Lt_04D0
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04D1:
mov ebx, offset _Lt_04D2
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04D3:
mov ebx, offset _Lt_04D4
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04D5:
mov ebx, offset _Lt_04D6
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04D7:
mov ebx, offset _Lt_04D8
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04D9:
mov ebx, offset _Lt_04DA
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04DB:
mov ebx, offset _Lt_04DC
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04DD:
mov ebx, offset _Lt_04DE
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04DF:
mov ebx, offset _Lt_04E0
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04E1:
mov ebx, offset _Lt_04E2
mov dword ptr [ebp-4], ebx
jmp .L_04CC
.L_04E3:
jmp .L_04CC
.L_04CD:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04E3
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_04E4+ebx*4-232]
_.L_04E4:
.int .L_04CF
.int .L_04D1
.int .L_04D3
.int .L_04D5
.int .L_04D7
.int .L_04D9
.int .L_04E3
.int .L_04DB
.int .L_04E3
.int .L_04E3
.int .L_04DD
.int .L_04DF
.int .L_04E1
.L_04CC:
.L_04B1:
.L_04B0:
.L_0495:
.L_0494:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HIMM2TEXT@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_04E5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04E7
mov dword ptr [ebp-4], 24
jmp .L_07D4
.L_04E7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_07D4:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_04EA
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITFLOAT@12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .L_04E9
.L_04EA:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITINT@12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_04E9:
.L_04E6:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSYM2TEXT@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_04ED:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_04F0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_04F2
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
push edx
push eax
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _HUNESCAPEW@8
push eax
push dword ptr [ebp+8]
call _HBUILDWSTRLIT@16
jmp .L_04F1
.L_04F2:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _HUNESCAPE@8
push eax
push dword ptr [ebp+8]
call _HBUILDSTRLIT@16
.L_04F1:
jmp .L_04EF
.L_04F0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 7
jne .L_04F6
push 0
push 3
push offset _Lt_04F7
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_04F5
.L_04F6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_04F8
push 0
push 2
push offset _Lt_0498
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_04F8:
.L_04F5:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_04EF:
.L_04EE:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEXPRFLUSH@8:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_04FA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_04FD
.L_04FF:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push -1
lea ebx, [_CTX+2712]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
jmp .L_04FC
.L_0501:
push dword ptr [ebp+8]
lea eax, [_CTX+2712]
push eax
call _HIMM2TEXT@8
jmp .L_04FC
.L_0502:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
lea eax, [_CTX+2712]
push eax
call _HSYM2TEXT@8
jmp .L_04FC
.L_0503:
push 0
push -1
push -1
push 2
push offset _Lt_013E
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push 2
push offset _Lt_0441
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
jmp .L_04FC
.L_0507:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 112
jne .L_050A
.L_050B:
push 0
push 19
push offset _Lt_050C
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_0149
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_013E
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
jmp .L_0508
.L_050A:
cmp dword ptr [ebp-20], 109
jne .L_050E
.L_050F:
push 0
push 21
push offset _Lt_0510
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_0149
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013E
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
jmp .L_0508
.L_050E:
cmp dword ptr [ebp-20], 110
jne .L_0511
.L_0512:
push 0
push 19
push offset _Lt_0513
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013E
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
jmp .L_0508
.L_0511:
cmp dword ptr [ebp-20], 111
jne .L_0514
.L_0515:
push 0
push 20
push offset _Lt_0516
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_0149
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013E
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0514:
.L_0517:
.L_0508:
jmp .L_04FC
.L_0518:
push 0
push -1
push 0
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _HUOPTOSTR@12
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
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
je .L_051B
push 0
push 2
push offset _Lt_0441
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
cmp dword ptr [ebp-12], 0
je .L_051D
push 0
push 2
push offset _Lt_00DF
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_051D:
.L_051C:
.L_051B:
.L_051A:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
cmp dword ptr [ebp+12], 0
je .L_051F
cmp dword ptr [ebp-12], 0
je .L_0521
push 0
push 2
push offset _Lt_00DF
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0521:
.L_0520:
push 0
push 2
push offset _Lt_013E
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_051F:
.L_051E:
jmp .L_04FC
.L_0522:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 64
jne .L_0525
.L_0526:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0528
push 0
push 17
push offset _Lt_0529
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
jmp .L_0527
.L_0528:
push 0
push 16
push offset _Lt_052A
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
.L_0527:
push 0
push 2
push offset _Lt_0441
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_0149
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013E
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
jmp .L_0523
.L_0525:
cmp dword ptr [ebp+12], 0
je .L_052D
push 0
push 2
push offset _Lt_0441
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
.L_052D:
.L_052C:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH@8
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
call _HBOPTOSTR@4
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH@8
cmp dword ptr [ebp+12], 0
je .L_0530
push 0
push 2
push offset _Lt_013E
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0530:
.L_052F:
.L_052B:
.L_0523:
jmp .L_04FC
.L_04FD:
cmp dword ptr [ebp-16], 6
ja .L_04FC
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0531+eax*4]
_.L_0531:
.int .L_04FF
.int .L_0501
.int .L_0502
.int .L_0503
.int .L_0518
.int .L_0522
.int .L_0507
.L_04FC:
.L_04FB:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRFLUSH@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0532:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEXPRFLUSH@8
push 0
push -1
lea eax, [_CTX+2712]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+8]
call _EXPRFREETREE@4
.L_0533:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRNEWOFFSET@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0534:
push dword ptr [ebp+8]
call _EXPRNEWSYM@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBISCARRAY@4
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
jne .L_0537
push dword ptr [ebp-8]
push 22
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
.L_0537:
.L_0536:
cmp dword ptr [ebp+16], 0
jne .L_07D9
cmp dword ptr [ebp+12], 0
je .L_0539
.L_07D9:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_0539:
.L_0538:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0535:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWVREG@8:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_053A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_053D
.L_053F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], 0
jne .L_0541
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_0543
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+52]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jne .L_07E1
cmp dword ptr [eax+40], 0
je .L_0545
.L_07E1:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_0545:
.L_0544:
jmp .L_0542
.L_0543:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
.L_0542:
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
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
jmp .L_053C
.L_0541:
.L_0540:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
mov ebx, -1
jne .L_07E2
cmp dword ptr [eax+40], 0
jne .L_07E2
.L_07E3:
xor ebx, ebx
.L_07E2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBISCARRAY@4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _EXPRNEWSYM@4
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
je .L_0547
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0548
mov dword ptr [ebp-40], 24
jmp .L_07DA
.L_0548:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07DA:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_054A
mov dword ptr [ebp-44], 24
jmp .L_07DB
.L_054A:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07DB:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx]
setne cl
shr ecx, 1
sbb ecx, ecx
or dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_054C
mov dword ptr [ebp-52], 24
jmp .L_07DD
.L_054C:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_07DD:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
cmp dword ptr [ebp-56], 17
jne .L_0550
.L_0551:
mov dword ptr [ebp-28], -1
jmp .L_054E
.L_0550:
cmp dword ptr [ebp-56], 20
jne .L_0552
.L_0553:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
push dword ptr [ecx+28]
call _SYMBGETVALISTTYPE@8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
jmp .L_054E
.L_0552:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0555
mov dword ptr [ebp-60], 24
jmp .L_07DE
.L_0555:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07DE:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 17
jne .L_0559
.L_055A:
mov dword ptr [ebp-28], -1
jmp .L_0557
.L_0559:
cmp dword ptr [ebp-64], 20
jne .L_055B
.L_055C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+28]
call _SYMBGETVALISTTYPE@8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
.L_055B:
.L_0557:
.L_0554:
.L_054E:
.L_0547:
.L_0546:
cmp dword ptr [ebp-28], 0
jne .L_055E
jmp .L_053C
.L_055E:
.L_055D:
cmp dword ptr [ebp-24], 0
jne .L_0560
push dword ptr [ebp-8]
push 22
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
.L_0560:
.L_055F:
cmp dword ptr [ebp-16], 0
je .L_0562
cmp dword ptr [ebp-24], 0
je .L_0564
push dword ptr [ebp-8]
push 0
push 8
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
jmp .L_0563
.L_0564:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
.L_0563:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .L_0566
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
call _EXPRNEWVREG@8
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_0566:
.L_0565:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jne .L_07EA
cmp dword ptr [eax+40], 0
je .L_0568
.L_07EA:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_0568:
.L_0567:
.L_0562:
.L_0561:
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
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
jmp .L_053C
.L_0569:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _EXPRNEWOFFSET@12
mov dword ptr [ebp-8], eax
jmp .L_053C
.L_056A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_056B
mov dword ptr [ebp-24], 24
jmp .L_07DF
.L_056B:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_07DF:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 1
jne .L_056E
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call _EXPRNEWIMMF@12
mov dword ptr [ebp-8], eax
jmp .L_056D
.L_056E:
cmp dword ptr [ebp-12], 1
jne .L_056F
push 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .L_07EB
cmp dword ptr [eax+24], 0
je .L_0570
.L_07EB:
mov dword ptr [ebp-28], 1
jmp .L_07E0
.L_0570:
mov dword ptr [ebp-28], 0
.L_07E0:
mov ecx, dword ptr [ebp-28]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
jmp .L_056D
.L_056F:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
.L_056D:
jmp .L_053C
.L_0572:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRLOOKUP@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0574
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_0575
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-8], eax
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
.L_0574:
.L_0573:
jmp .L_053C
.L_053D:
cmp dword ptr [ebp-20], 5
ja .L_053C
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0578+eax*4]
_.L_0578:
.int .L_056A
.int .L_053F
.int .L_053F
.int .L_053F
.int .L_0572
.int .L_0569
.L_053C:
cmp dword ptr [ebp+12], 0
jne .L_057A
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
.L_057A:
.L_0579:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_053B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLABEL@4:
push ebp
mov ebp, esp
sub esp, 24
.L_057B:
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_057E
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 3
push offset _Lt_057F
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_057E:
.L_057D:
.L_057C:
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRSTORE@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0582:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0585
cmp dword ptr [ebp+16], 0
je .L_0587
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_0575
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_07EC
call _fb_StrAssign@20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
push offset _Lt_07ED
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00DF
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_07EC
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_01CA
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_018C
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push offset _Lt_07ED
call _HWRITELINE@8
push dword ptr [_Lt_07EC]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWTEXT@12
mov dword ptr [ebp+12], eax
jmp .L_0586
.L_0587:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp+12], eax
.L_0586:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRCACHE@8
jmp .L_0584
.L_0585:
push -1
push dword ptr [ebp+8]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
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
je .L_058A
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp+12], eax
.L_058A:
.L_0589:
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07ED
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_01CA
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_018C
push -1
push offset _Lt_07ED
call _fb_StrConcatAssign@20
push 0
push offset _Lt_07ED
call _HWRITELINE@8
.L_0584:
.L_0583:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_07ED,12
.balign 4
	.lcomm	_Lt_07EC,12

.section .text
.balign 16
__EMITBOP@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_058B:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .L_058E
push 0
push 5
push offset _Lt_058F
push -1
push offset _Lt_07F1
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
push eax
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07F1
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_0590
push -1
push offset _Lt_07F1
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_07F1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_07F1
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_018C
push -1
push offset _Lt_07F1
call _fb_StrConcatAssign@20
push 0
push offset _Lt_07F1
call _HWRITELINE@8
jmp .L_058C
.L_058E:
.L_058D:
cmp dword ptr [ebp+20], 0
jne .L_0593
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0593:
.L_0592:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0595
.L_0597:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
je .L_0599
push dword ptr [ebp-4]
push 54
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0599:
.L_0598:
jmp .L_0594
.L_059A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_059C
push dword ptr [ebp-4]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
.L_059C:
.L_059B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_059E
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
.L_059E:
.L_059D:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0594
.L_059F:
push dword ptr [ebp-4]
push 0
push 16
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push 0
push 16
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0594
.L_05A0:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0594
.L_05A1:
push 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05A2
mov dword ptr [ebp-16], 24
jmp .L_07F0
.L_05A2:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_07F0:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 34
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0594
.L_05A4:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05A6
push 8
push 0
push 1
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_05A5
.L_05A6:
push dword ptr [ebp-4]
push 52
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05A5:
jmp .L_0594
.L_05A7:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05A9
push 8
push 0
push 1
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_05A8
.L_05A9:
push dword ptr [ebp-4]
push 52
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05A8:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 35
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0594
.L_0595:
mov eax, dword ptr [ebp-12]
add eax, 4294967268
cmp eax, 22
ja .L_0594
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_05AA+eax*4-112]
_.L_05AA:
.int .L_059A
.int .L_059A
.int .L_05A0
.int .L_059F
.int .L_05A0
.int .L_05A0
.int .L_05A0
.int .L_05A0
.int .L_0594
.int .L_0594
.int .L_05A0
.int .L_05A4
.int .L_05A7
.int .L_05A1
.int .L_05A1
.int .L_0594
.int .L_0594
.int .L_0597
.int .L_0597
.int .L_0597
.int .L_0597
.int .L_0597
.int .L_0597
.L_0594:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call _EXPRSTORE@12
.L_058C:
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_07F1,12

.section .text
.balign 16
__EMITUOP@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05AB:
cmp dword ptr [ebp+16], 0
jne .L_05AE
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+16], eax
.L_05AE:
.L_05AD:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
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
je .L_05B0
push 8
push 0
push 0
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 45
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_05AF
.L_05B0:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05AF:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call _EXPRSTORE@12
.L_05AC:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITCONVERT@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_05B1:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
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
je .L_05B4
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .L_05B6
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+28], 0
mov ebx, -1
jne .L_07FD
cmp dword ptr [ecx+24], 0
jne .L_07FD
.L_07FE:
xor ebx, ebx
.L_07FD:
mov eax, ebx
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05B5
.L_05B6:
push dword ptr [ebp-4]
push 54
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05B5:
jmp .L_05B3
.L_05B4:
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
je .L_05B7
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .L_05B9
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_05BA
mov dword ptr [ebp-16], 24
jmp .L_07F4
.L_05BA:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07F4:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .L_05BC
mov ebx, dword ptr [ebp-4]
fld qword ptr [ebx+24]
fld qword ptr [_Lt_07F6]
fcomip st, st(1)
fstp st(0)
setnz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_07F5
.L_05BC:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+28], 0
mov ecx, -1
jne .L_0802
cmp dword ptr [ebx+24], 0
jne .L_0802
.L_0803:
xor ecx, ecx
.L_0802:
mov dword ptr [ebp-20], ecx
.L_07F5:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05B8
.L_05B9:
push 8
push 0
push 0
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 48
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
.L_05B8:
jmp .L_05B3
.L_05B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05BF
mov dword ptr [ebp-8], 24
jmp .L_07F7
.L_05BF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07F7:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_05C1
mov dword ptr [ebp-12], 24
jmp .L_07F8
.L_05C1:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07F8:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .L_05BE
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05C3
mov dword ptr [ebp-36], 24
jmp .L_07FA
.L_05C3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_07FA:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 5
jg .L_05C7
.L_05C8:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05CA
push 0
push 7
push offset _Lt_05CB
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 1
jmp .L_05C9
.L_05CA:
push 0
push 7
push offset _Lt_05CC
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 8
.L_05C9:
mov dword ptr [ebp-32], 11
jmp .L_05C5
.L_05C7:
cmp dword ptr [ebp-40], 7
jg .L_05CD
.L_05CE:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05D0
push 0
push 7
push offset _Lt_05D1
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 2
jmp .L_05CF
.L_05D0:
push 0
push 7
push offset _Lt_05D2
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 16
.L_05CF:
mov dword ptr [ebp-32], 13
jmp .L_05C5
.L_05CD:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05D5
push 0
push 8
push offset _Lt_05D6
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 4
jmp .L_05D4
.L_05D5:
push 0
push 8
push offset _Lt_05D7
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 32
.L_05D4:
mov dword ptr [ebp-32], 14
.L_05D3:
.L_05C5:
push 0
push 3
push offset _Lt_00E7
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00E8
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-32]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_05BE:
.L_05B3:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRSTORE@12
.L_05B2:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORE@8:
push ebp
mov ebp, esp
.L_05D8:
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
push dword ptr [ebp+8]
call _EXPRSTORE@12
.L_05D9:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSPILLREGS@0:
.L_05DA:
.L_05DB:
ret
.balign 16
__EMITLOAD@4:
push ebp
mov ebp, esp
.L_05DC:
.L_05DD:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITLOADRES@8:
push ebp
mov ebp, esp
sub esp, 36
.L_05DE:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call __EMITSTORE@8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 8
push offset _Lt_05E0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_05DF:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITADDR@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05E4:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .L_05E7
.L_05E8:
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
je .L_05EA
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
cmp dword ptr [ebx], 7
jne .L_05EC
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call _EXPRNEWSYM@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
jmp .L_05E6
.L_05EC:
.L_05EB:
.L_05EA:
.L_05E9:
push -1
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
push 22
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_05E6
.L_05E7:
cmp dword ptr [ebp+8], 76
jne .L_05ED
.L_05EE:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
.L_05ED:
.L_05E6:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call _EXPRSTORE@12
.L_05E5:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HDOCALL@16:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_05EF:
push 0
push 3
push offset _Lt_00E7
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
lea eax, [_IRHL+60]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-4], eax
.L_05F1:
cmp dword ptr [ebp-4], 0
je .L_05F3
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
jmp .L_0808
.L_05F3:
mov dword ptr [ebp-16], 0
.L_0808:
cmp dword ptr [ebp-16], 0
je .L_05F2
push dword ptr [ebp-4]
call _LISTGETPREV@4
mov dword ptr [ebp-20], eax
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call _EXPRNEWVREG@8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .L_05F5
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
jmp .L_0809
.L_05F5:
mov dword ptr [ebp-28], 0
.L_0809:
cmp dword ptr [ebp-28], 0
je .L_05F8
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _EXPRNEWCAST@12
mov dword ptr [ebp-24], eax
.L_05F8:
.L_05F7:
push 0
push -1
push 0
push dword ptr [ebp-24]
call _EXPRFLUSH@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
push dword ptr [ebp-4]
lea eax, [_IRHL+60]
push eax
call _LISTDELNODE@8
cmp dword ptr [ebp-20], 0
je .L_05FA
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+20]
cmp dword ptr [eax+8], ebx
jne .L_05FC
push 0
push 3
push offset _Lt_0149
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_05FC:
.L_05FB:
.L_05FA:
.L_05F9:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_05F1
.L_05F2:
push 0
push 3
push offset _Lt_00E8
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
cmp dword ptr [ebp+16], 0
jne .L_05FE
push 0
push 2
push offset _Lt_018C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
push 0
push dword ptr [ebp+8]
call _HWRITELINE@8
jmp .L_05FD
.L_05FE:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+4]
call _EXPRNEWTEXT@12
push eax
push dword ptr [ebp+16]
call _EXPRSTORE@12
.L_05FD:
.L_05F0:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCALL@16:
push ebp
mov ebp, esp
.L_05FF:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_080E
call _fb_StrAssign@20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push offset _Lt_080E
call _HDOCALL@16
.L_0600:
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_080E,12

.section .text
.balign 16
__EMITCALLPTR@20:
push ebp
mov ebp, esp
.L_0601:
push 0
push 2
push offset _Lt_0441
push -1
push offset _Lt_080F
call _fb_StrAssign@20
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_080F
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013E
push -1
push offset _Lt_080F
call _fb_StrConcatAssign@20
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push offset _Lt_080F
call _HDOCALL@16
.L_0602:
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_080F,12

.section .text
.balign 16
__EMITJUMPPTR@4:
push ebp
mov ebp, esp
sub esp, 36
.L_0603:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push -1
push -1
push 0
push dword ptr [ebp+8]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 7
push offset _Lt_0605
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0604:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBRANCH@8:
push ebp
mov ebp, esp
sub esp, 36
.L_0609:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push 6
push offset _Lt_060B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_060A:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITJMPTB@40:
push ebp
mov ebp, esp
sub esp, 316
push ebx
push esi
push edi
.L_060F:
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
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+24], 0
jg .L_0612
push -1
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME@4
push eax
push 6
push offset _Lt_060B
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign@20
lea eax, [ebp-280]
push eax
call _HWRITELINE@8
lea eax, [ebp-280]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0616
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-316]
push eax
call _fb_StrAssign@20
lea eax, [ebp-316]
push eax
call _HWRITELINE@8
lea eax, [ebp-316]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0610
.L_0612:
.L_0611:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 8
mov ebx, dword ptr [ebp+40]
mov eax, dword ptr [ebp+44]
add ebx, 1
adc eax, 0
mov esi, ebx
mov ecx, eax
push ecx
push esi
call _EXPRNEWIMMI@12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 6
push offset _Lt_061B
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH@8
push eax
push -1
push 2
push offset _Lt_01AC
push -1
push -1
lea eax, [ebp-12]
push eax
push 20
push offset _Lt_061A
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign@20
lea eax, [ebp-104]
push eax
call _HWRITELINE@8
lea eax, [ebp-104]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
.L_0621:
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
jne .L_0625
cmp esi, edi
jne .L_0625
.L_0810:
mov edi, dword ptr [ebp-108]
sal edi, 2
mov ecx, dword ptr [ebp+20]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-248], edi
inc dword ptr [ebp-108]
jmp .L_0624
.L_0625:
mov edi, dword ptr [ebp+28]
mov dword ptr [ebp-248], edi
.L_0624:
push -1
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 2
push offset _Lt_0626
push -1
push 0
push dword ptr [ebp-248]
call _SYMBGETMANGLEDNAME@4
push eax
push 3
push offset _Lt_04F7
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign@20
lea eax, [ebp-284]
push eax
call _HWRITELINE@8
lea eax, [ebp-284]
push eax
call _fb_StrDelete@4
mov edi, dword ptr [ebp-112]
mov eax, edi
sar eax, 31
mov esi, dword ptr [ebp+40]
mov ecx, dword ptr [ebp+44]
cmp eax, ecx
jne .L_062B
cmp edi, esi
jne .L_062B
.L_0811:
jmp .L_0622
.L_062B:
.L_062A:
inc dword ptr [ebp-112]
.L_0623:
jmp .L_0621
.L_0622:
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 3
push offset _Lt_020E
push -1
lea esi, [ebp-124]
push esi
call _fb_StrAssign@20
lea esi, [ebp-124]
push esi
call _HWRITELINE@8
lea esi, [ebp-124]
push esi
call _fb_StrDelete@4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp+36], 0
jne .L_0812
cmp dword ptr [ebp+32], 0
je .L_062E
.L_0812:
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-40]
push 29
call _EXPRNEWBOP@12
mov dword ptr [ebp-40], eax
.L_062E:
.L_062D:
push dword ptr [ebp-44]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-40]
push 46
call _EXPRNEWBOP@12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 9
push offset _Lt_0590
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH@8
push eax
push 5
push offset _Lt_058F
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign@20
lea eax, [ebp-184]
push eax
call _HWRITELINE@8
lea eax, [ebp-184]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-40], eax
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-40]
push 29
call _EXPRNEWBOP@12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
push 3
push offset _Lt_024E
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH@8
push eax
push -1
push 2
push offset _Lt_01AC
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_0605
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign@20
lea eax, [ebp-244]
push eax
call _HWRITELINE@8
lea eax, [ebp-244]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0610:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16
__EMITMEM@20:
push ebp
mov ebp, esp
sub esp, 84
.L_0639:
cmp dword ptr [ebp+8], 107
jne .L_063C
.L_063D:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset _Lt_00D5
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
push 6
push offset _Lt_063F
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 19
push offset _Lt_063E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HWRITELINE@8
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
jmp .L_063B
.L_063C:
cmp dword ptr [ebp+8], 105
jne .L_0645
.L_0646:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 4
push offset _Lt_00D5
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_ULongintToStr@8
push eax
push -1
push 3
push offset _Lt_0149
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
push 3
push offset _Lt_0149
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 19
push offset _Lt_0647
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _HWRITELINE@8
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.L_0645:
.L_063B:
.L_063A:
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITMACRO@16:
push ebp
mov ebp, esp
sub esp, 32
.L_064F:
cmp dword ptr [ebp+8], 109
jne .L_0652
.L_0653:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
push eax
call _EXPRFLUSH@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
call _HWRITELINE@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
jmp .L_0651
.L_0652:
cmp dword ptr [ebp+8], 110
jne .L_0656
.L_0657:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 0
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
push eax
call _EXPRFLUSH@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
call _HWRITELINE@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
jmp .L_0651
.L_0656:
cmp dword ptr [ebp+8], 112
jne .L_065A
.L_065B:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call _EXPRSTORE@12
jmp .L_0651
.L_065A:
cmp dword ptr [ebp+8], 111
jne .L_065C
.L_065D:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
push eax
call _EXPRFLUSH@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
call _HWRITELINE@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
.L_065C:
.L_0651:
.L_0650:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITDECL@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0660:
push dword ptr [ebp+8]
call _HISSTATICWITHDTOR@4
test eax, eax
je .L_0663
jmp .L_0661
.L_0663:
.L_0662:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0665
push dword ptr [ebp-4]
call _HISSTATICWITHDTOR@4
test eax, eax
je .L_0667
jmp .L_0661
.L_0667:
.L_0666:
.L_0665:
.L_0664:
push dword ptr [ebp+8]
call _HMAYBEEMITLOCALVAR@4
.L_0661:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITDBG@16:
push ebp
mov ebp, esp
.L_0668:
cmp dword ptr [ebp+8], 113
jne .L_066B
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTX+2588], eax
cmp dword ptr [ebp+20], 0
je .L_066D
push dword ptr [ebp+20]
call _HUPDATECURRENTFILENAME@4
.L_066D:
.L_066C:
.L_066B:
.L_066A:
.L_0669:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_066E:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0813
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0813
call _fb_TRIM@4
push eax
push -1
push offset _Lt_0813
call _fb_StrAssign@20
push -1
push offset _Lt_0813
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jle .L_0671
mov eax, dword ptr [_Lt_0813]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax-1]
cmp ebx, 92
jne .L_0673
push 0
push 14
push offset _Lt_0674
push -1
push offset _Lt_0813
call _fb_StrConcatAssign@20
.L_0673:
.L_0672:
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push offset _Lt_0813
push 4
push offset _Lt_0675
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_0671:
.L_0670:
.L_066F:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0813,12

.section .text
.balign 16
_HFINDLABELINSEENLIST@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0678:
push dword ptr [ebp+8]
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
.L_067A:
cmp dword ptr [ebp-8], 0
jne .L_067E
jmp .L_067B
.L_067E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax], ebx
jne .L_0680
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_067B
.L_0680:
.L_067F:
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-16]
.L_067C:
jmp .L_067A
.L_067B:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0679:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITASMLINE@4:
push ebp
mov ebp, esp
sub esp, 156
push ebx
.L_0681:
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
call _LISTINIT@16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-48], eax
.L_0683:
cmp dword ptr [ebp-48], 0
je .L_0684
mov eax, dword ptr [ebp-48]
cmp dword ptr [eax], 1
jne .L_0686
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 7
jne .L_0689
.L_068A:
mov dword ptr [ebp-4], -1
jmp .L_0687
.L_0689:
cmp dword ptr [ebp-116], 1
jne .L_068B
.L_068C:
inc dword ptr [ebp-8]
.L_068B:
.L_0687:
.L_0686:
.L_0685:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0683
.L_0684:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
push 0
push 8
push offset _Lt_068D
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrInit@20
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_068F
push 0
push 14
push offset _Lt_0690
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_068F:
.L_068E:
cmp dword ptr [ebp-4], 0
je .L_0692
push 0
push 6
push offset _Lt_0693
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_0692:
.L_0691:
push 0
push 3
push offset _Lt_00E7
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
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
.L_0694:
cmp dword ptr [ebp-48], 0
je .L_0695
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-116], ebx
cmp dword ptr [ebp-116], 0
jne .L_0698
.L_0699:
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
jmp .L_0696
.L_0698:
cmp dword ptr [ebp-116], 1
jne .L_069B
.L_069C:
cmp dword ptr [_ENV+132], 0
jne .L_069E
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_06A0
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-120], eax
cmp dword ptr [ebp-120], 1
jne .L_06A3
.L_06A4:
push 0
push 2
push offset _Lt_06A5
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-76]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
inc dword ptr [ebp-76]
cmp dword ptr [ebp-4], 0
je .L_06A7
push -1
lea eax, [ebp-100]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_06A9
push 0
push 3
push offset _Lt_0149
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
.L_06A9:
.L_06A8:
push 0
push -1
push -1
push 2
push offset _Lt_013E
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
push eax
push 6
push offset _Lt_06AA
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
jmp .L_06A6
.L_06A7:
push -1
lea eax, [ebp-88]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_06AF
push 0
push 3
push offset _Lt_0149
push -1
lea eax, [ebp-88]
push eax
call _fb_StrConcatAssign@20
.L_06AF:
.L_06AE:
push 0
push -1
push -1
push 2
push offset _Lt_013E
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
push eax
push 7
push offset _Lt_06B0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
.L_06A6:
jmp .L_06A1
.L_06A3:
cmp dword ptr [ebp-120], 7
jne .L_06B4
.L_06B5:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-128], ebx
push dword ptr [ebp-128]
lea ebx, [ebp-44]
push ebx
call _HFINDLABELINSEENLIST@8
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], -1
je .L_06B7
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-132]
mov dword ptr [ebp-124], eax
jmp .L_06B6
.L_06B7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-124], eax
inc dword ptr [ebp-8]
lea eax, [ebp-44]
push eax
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp-128]
mov dword ptr [eax], ebx
push -1
lea ebx, [ebp-112]
push ebx
call _fb_StrLen@8
test eax, eax
jle .L_06B9
push 0
push 3
push offset _Lt_0149
push -1
lea eax, [ebp-112]
push eax
call _fb_StrConcatAssign@20
.L_06B9:
.L_06B8:
push 0
push -1
push 0
push dword ptr [ebp-128]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-112]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
.L_06B6:
push 0
push 3
push offset _Lt_06BB
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-124]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
jmp .L_06A1
.L_06B4:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
.L_06BC:
.L_06A1:
jmp .L_069F
.L_06A0:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
.L_069F:
jmp .L_069D
.L_069E:
push 0
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
.L_069D:
.L_069B:
.L_0696:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0694
.L_0695:
lea ebx, [ebp-44]
push ebx
call _LISTEND@4
cmp dword ptr [_ENV+132], 0
jne .L_06C1
push -1
lea ebx, [ebp-72]
push ebx
call _fb_StrLen@8
inc eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-72]
lea ecx, [ebp-60]
push ecx
call _HBUILDSTRLIT@16
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_06C3
push 0
push 4
push offset _Lt_06C4
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-88]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_06C4
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-100]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 18
push offset _Lt_06C5
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 0
je .L_06C9
.L_06CA:
cmp dword ptr [ebp-116], 1
jne .L_06C8
.L_06C9:
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_06CC
push 0
push 43
push offset _Lt_06CD
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
jmp .L_06CB
.L_06CC:
push 0
push 43
push offset _Lt_06CE
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 55
push offset _Lt_06CF
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06CB:
cmp dword ptr [_ENV+116], 1
jne .L_06D1
push 0
push 57
push offset _Lt_06D2
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 65
push offset _Lt_06D3
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
cmp eax, 1
jne .L_06D5
push 0
push 71
push offset _Lt_06D6
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06D5:
.L_06D4:
.L_06D1:
.L_06D0:
jmp .L_06C6
.L_06C8:
cmp dword ptr [ebp-116], 2
je .L_06D8
.L_06D9:
cmp dword ptr [ebp-116], 3
jne .L_06D7
.L_06D8:
push 0
push 43
push offset _Lt_06DA
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 55
push offset _Lt_06CF
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
cmp eax, 3
jne .L_06DC
push 0
push 29
push offset _Lt_06DD
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 64
push offset _Lt_06DE
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 8
push offset _Lt_06DF
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06DC:
.L_06DB:
.L_06D7:
.L_06C6:
cmp dword ptr [ebp-4], 0
je .L_06E1
push 0
push 4
push offset _Lt_06C4
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-112]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06E1:
.L_06E0:
.L_06C3:
.L_06C2:
jmp .L_06C0
.L_06C1:
push 0
push -1
lea eax, [ebp-72]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06C0:
push 0
push 4
push offset _Lt_00D5
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
lea eax, [ebp-60]
push eax
call _HWRITELINE@8
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.L_0682:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIBEGIN@4:
push ebp
mov ebp, esp
.L_06E2:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+2652], 0
.L_06E3:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIEND@4:
push ebp
mov ebp, esp
.L_06E4:
push dword ptr [_CTX+2640]
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL@12
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrAssign@20
.L_06E5:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVARINISEPARATOR@0:
.L_06E6:
cmp dword ptr [_CTX+2652], 0
jle .L_06E9
push 0
push 3
push offset _Lt_0149
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_06E9:
.L_06E8:
.L_06E7:
ret
.balign 16
__EMITVARINII@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06EA:
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
jne .L_0815
cmp dword ptr [ebp+12], 0
jne .L_0815
.L_0816:
xor eax, eax
.L_0815:
and ebx, eax
je .L_06ED
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_06ED:
.L_06EC:
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06EF
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
.L_06EF:
.L_06EE:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_06EB:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITVARINIF@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06F0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMF@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06F3
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
.L_06F3:
.L_06F2:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_06F1:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITVARINIOFS@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06F4:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWOFFSET@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_06F7
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
.L_06F7:
.L_06F6:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-8]
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_06F5:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITVARINISTR@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_06F8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_06FB
jg .L_0817
cmp dword ptr [ebp+20], ebx
jbe .L_06FB
.L_0817:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_06FB:
.L_06FA:
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
call _HUNESCAPE@8
push eax
lea eax, [_CTX+2640]
push eax
call _HBUILDSTRLIT@16
call _HVARINISEPARATOR@0
.L_06F9:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIWSTR@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_06FD:
push 0
push 3
push offset _Lt_06FF
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+16]
call _HUNESCAPEW@8
mov dword ptr [ebp+16], eax
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_0702
jg .L_0818
cmp dword ptr [ebp+20], ebx
jbe .L_0702
.L_0818:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_0702:
.L_0701:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-20], ecx
jmp .L_0704
.L_0707:
cmp dword ptr [ebp-16], 0
jle .L_0709
push 0
push 3
push offset _Lt_0149
push -1
lea ecx, [_CTX+2640]
push ecx
call _fb_StrConcatByref@20
.L_0709:
.L_0708:
push 0
push 3
push offset _Lt_070A
push -1
lea ecx, [_CTX+2640]
push ecx
call _fb_StrConcatByref@20
mov ecx, dword ptr [ebp-16]
sal ecx, 1
mov ebx, dword ptr [ebp+16]
add ebx, ecx
movzx ecx, word ptr [ebx]
mov dword ptr [ebp-4], ecx
push 39
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_070C
push 0
push 3
push offset _Lt_0432
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign@20
jmp .L_070B
.L_070C:
push 0
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_070B:
push 0
push 2
push offset _Lt_0440
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_0705:
inc dword ptr [ebp-16]
.L_0704:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_0707
.L_0706:
push 0
push 3
push offset _Lt_070D
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_06FE:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIPAD@8:
push ebp
mov ebp, esp
.L_070E:
.L_070F:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEBEGIN@8:
push ebp
mov ebp, esp
.L_0710:
inc dword ptr [_CTX+2652]
push 0
push 3
push offset _Lt_06FF
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_0711:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEEND@0:
.L_0712:
push 3
push offset _Lt_0149
push -1
push 2
lea eax, [_CTX+2640]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0715
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrLen@8
add eax, -2
push eax
lea eax, [_CTX+2640]
push eax
call _fb_LEFTSELF@8
.L_0715:
.L_0714:
push 0
push 3
push offset _Lt_070D
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
dec dword ptr [_CTX+2652]
call _HVARINISEPARATOR@0
.L_0713:
ret
.balign 16
__EMITFBCTINFBEGIN@0:
push ebp
mov ebp, esp
sub esp, 12
.L_0716:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 0
push 19
push offset _Lt_0719
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_071B
push 0
push 50
push offset _Lt_071F
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
jmp .L_071A
.L_071B:
push 0
push 44
push offset _Lt_0722
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
.L_071A:
push 0
push 16
push offset _Lt_0723
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
.L_0717:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFSTRING@4:
push ebp
mov ebp, esp
sub esp, 24
.L_0724:
push 0
push -1
push -1
push 3
push offset _Lt_0726
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2656]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign@20
.L_0725:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITFBCTINFEND@0:
.L_0729:
push 3
push offset _Lt_0726
push -1
push 2
lea eax, [_CTX+2656]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_072C
push 0
push -1
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrLen@8
add eax, -2
push eax
lea eax, [_CTX+2656]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign@20
.L_072C:
.L_072B:
push 0
push 3
push offset _Lt_072D
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
push -1
lea eax, [_CTX+2656]
push eax
call _HWRITELINE@8
.L_072A:
ret
.balign 16
__EMITPROCBEGIN@8:
push ebp
mov ebp, esp
sub esp, 132
push ebx
.L_072E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call _HUPDATECURRENTFILENAME@4
call _IRHLEMITPROCBEGIN@0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
cmp dword ptr [_ENV+148], 0
je .L_0732
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+16]
push dword ptr [ebp+8]
push 113
call __EMITDBG@16
.L_0732:
.L_0731:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_0734
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 20
push offset _Lt_02FA
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HWRITELINE@8
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 5
push offset _Lt_0737
push -1
push -1
lea eax, [ebp-12]
push eax
push 18
push offset _Lt_0736
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HWRITELINE@8
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 6
push offset _Lt_073C
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset _Lt_073B
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _HWRITELINE@8
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_072F
.L_0734:
.L_0733:
call _SECTIONBEGIN@0
push dword ptr [ebp+8]
call _HNEEDALIAS@4
test eax, eax
je .L_0741
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_018C
push -1
push 1
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _HWRITELINE@8
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
.L_0741:
.L_0740:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 2
push offset _Lt_0276
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_072F:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITPROCEND@12:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_0746:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_0749
cmp dword ptr [_ENV+108], 2
jne .L_074B
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset _Lt_0737
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset _Lt_074D
push -1
push -1
lea eax, [ebp-12]
push eax
push 17
push offset _Lt_074C
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
call _HWRITELINE@8
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
.L_074B:
.L_074A:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0747
.L_0749:
.L_0748:
call _SECTIONUNINDENT@0
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 2
push offset _Lt_0293
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
call _SECTIONEND@0
.L_0754:
lea eax, [_CTX+2724]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0758
jmp .L_0755
.L_0758:
.L_0757:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _EXPRFREETREE@4
push dword ptr [ebp-16]
lea eax, [_CTX+2724]
push eax
call _LISTDELNODE@8
.L_0756:
jmp .L_0754
.L_0755:
call _IRHLEMITPROCEND@0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0747:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITSCOPEBEGIN@4:
push ebp
mov ebp, esp
sub esp, 12
.L_0759:
call _SECTIONBEGIN@0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0276
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
.L_075A:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSCOPEEND@4:
push ebp
mov ebp, esp
sub esp, 12
.L_075C:
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0293
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
call _SECTIONEND@0
.L_075D:
mov esp, ebp
pop ebp
ret 4
.balign 16
__GLOBAL__I:
.L_0760:
push offset _CTX
call __ZN8IRHLCCTXC1Ev
add esp, 4
.L_0761:
ret
.balign 16
__GLOBAL__D:
.L_0763:
push offset _CTX
call __ZN8IRHLCCTXD1Ev
add esp, 4
.L_0764:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4

.globl _IRHLC_VTBL
_IRHLC_VTBL:
.int __INIT@0
.int __END@0
.int __EMITBEGIN@0
.int __EMITEND@0
.int __GETOPTIONVALUE@4
.int __SUPPORTSOP@8
.int __PROCBEGIN@4
.int __PROCEND@4
.long 0
.long 0
.long 0
.int __SCOPEBEGIN@4
.int __SCOPEEND@4
.int __PROCALLOCSTATICVARS@4
.int __EMITCONVERT@8
.int __EMITLABEL@4
.int __EMITLABEL@4
.long 0
.int __EMITPROCBEGIN@8
.int __EMITPROCEND@12
.int _IRHLEMITPUSHARG@24
.int __EMITASMLINE@4
.int __EMITCOMMENT@4
.int __EMITBOP@20
.int __EMITUOP@12
.int __EMITSTORE@8
.int __EMITSPILLREGS@0
.int __EMITLOAD@4
.int __EMITLOADRES@8
.long 0
.int __EMITADDR@12
.int __EMITCALL@16
.int __EMITCALLPTR@20
.long 0
.int __EMITJUMPPTR@4
.int __EMITBRANCH@8
.int __EMITJMPTB@40
.int __EMITMEM@20
.int __EMITMACRO@16
.int __EMITSCOPEBEGIN@4
.int __EMITSCOPEEND@4
.int __EMITDECL@4
.int __EMITDBG@16
.int __EMITVARINIBEGIN@4
.int __EMITVARINIEND@4
.int __EMITVARINII@12
.int __EMITVARINIF@12
.int __EMITVARINIOFS@16
.int __EMITVARINISTR@20
.int __EMITVARINIWSTR@20
.int __EMITVARINIPAD@8
.int __EMITVARINISCOPEBEGIN@8
.int __EMITVARINISCOPEEND@0
.int __EMITFBCTINFBEGIN@0
.int __EMITFBCTINFSTRING@4
.int __EMITFBCTINFEND@0
.int _IRHLALLOCVREG@8
.int _IRHLALLOCVRIMM@16
.int _IRHLALLOCVRIMMF@16
.int _IRHLALLOCVRVAR@20
.int _IRHLALLOCVRIDX@28
.int _IRHLALLOCVRPTR@20
.int _IRHLALLOCVROFS@20
.int __SETVREGDATATYPE@12
.long 0
.long 0
.long 0
.long 0

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_CTX,2760

.section .data
.balign 4
_DTYPENAME:
.int _Lt_0088
.int _Lt_0089
.int _Lt_008A
.int _Lt_008B
.long 0
.int _Lt_008C
.int _Lt_008D
.long 0
.long 0
.long 0
.long 0
.int _Lt_008E
.int _Lt_008F
.int _Lt_0090
.int _Lt_0091
.int _Lt_0092
.int _Lt_0093
.int _Lt_0094
.long 0
.int _Lt_0095
.long 0
.long 0
.long 0
.int _Lt_0088
.long 0
.skip 4,0
.balign 4
_Lt_0088:	.ascii	"void\0"
.balign 4
_Lt_0089:	.ascii	"boolean\0"
.balign 4
_Lt_008A:	.ascii	"int8\0"
.balign 4
_Lt_008B:	.ascii	"uint8\0"
.balign 4
_Lt_008C:	.ascii	"int16\0"
.balign 4
_Lt_008D:	.ascii	"uint16\0"
.balign 4
_Lt_008E:	.ascii	"int32\0"
.balign 4
_Lt_008F:	.ascii	"uint32\0"
.balign 4
_Lt_0090:	.ascii	"int64\0"
.balign 4
_Lt_0091:	.ascii	"uint64\0"
.balign 4
_Lt_0092:	.ascii	"float\0"
.balign 4
_Lt_0093:	.ascii	"double\0"
.balign 4
_Lt_0094:	.ascii	"FBSTRING\0"
.balign 4
_Lt_0095:	.ascii	"__builtin_va_list\0"
.balign 4
_Lt_00A8:	.ascii	"\t\0"
.balign 4
_Lt_00AE:	.ascii	"\r\n\0"
.balign 4
_Lt_00C7:	.ascii	"#line \0"
.balign 4
_Lt_00C8:	.ascii	" \"\0"
.balign 4
_Lt_00C9:	.ascii	"\"\0"
.balign 4
_Lt_00CC:	.ascii	"\\\0"
.balign 4
_Lt_00CD:	.ascii	"\\\\\0"
.balign 4
_Lt_00D2:	.ascii	"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]\0"
.balign 4
_Lt_00D4:	.ascii	"__FB_STATIC_ASSERT( \0"
.balign 4
_Lt_00D5:	.ascii	" );\0"
.balign 4
_Lt_00DF:	.ascii	" \0"
.balign 4
_Lt_00E0:	.ascii	"__attribute__(( \0"
.balign 4
_Lt_00E3:	.ascii	"constructor\0"
.balign 4
_Lt_00E4:	.ascii	"destructor\0"
.balign 4
_Lt_00E7:	.ascii	"( \0"
.balign 4
_Lt_00E8:	.ascii	" )\0"
.balign 4
_Lt_00EB:	.ascii	" ))\0"
.balign 4
_Lt_00F2:	.ascii	"_\0"
.balign 4
_Lt_00F8:	.ascii	"@\0"
.balign 4
_Lt_0115:	.ascii	"static \0"
.balign 4
_Lt_0124:	.ascii	" __stdcall\0"
.balign 4
_Lt_0126:	.ascii	" __attribute__((stdcall))\0"
.balign 4
_Lt_012E:	.ascii	" __thiscall\0"
.balign 4
_Lt_0130:	.ascii	" __attribute__((thiscall))\0"
.balign 4
_Lt_0138:	.ascii	" __fastcall\0"
.balign 4
_Lt_013A:	.ascii	" __attribute__((fastcall))\0"
.balign 4
_Lt_013D:	.ascii	"(*\0"
.balign 4
_Lt_013E:	.ascii	")\0"
.balign 4
_Lt_0149:	.ascii	", \0"
.balign 4
_Lt_0152:	.ascii	"...\0"
.balign 4
_Lt_0155:	.ascii	"char**\0"
.balign 4
_Lt_0162:	.ascii	" asm(\"\0"
.balign 4
_Lt_0163:	.ascii	"\")\0"
.balign 4
_Lt_016A:	.ascii	"union \0"
.balign 4
_Lt_016B:	.ascii	"struct \0"
.balign 4
_Lt_0176:	.ascii	"$\0"
.balign 4
_Lt_018B:	.ascii	"typedef \0"
.balign 4
_Lt_018C:	.ascii	";\0"
.balign 4
_Lt_01AC:	.ascii	"[\0"
.balign 4
_Lt_01AD:	.ascii	"]\0"
.balign 4
_Lt_01C0:	.ascii	"extern \0"
.balign 4
_Lt_01C7:	.ascii	" __attribute__((common))\0"
.balign 4
_Lt_01CA:	.ascii	" = \0"
.balign 4
_Lt_0206:	.ascii	"union {\0"
.balign 4
_Lt_0208:	.ascii	"struct {\0"
.balign 4
_Lt_020E:	.ascii	"};\0"
.balign 4
_Lt_0226:	.ascii	" __attribute__((packed, aligned(\0"
.balign 4
_Lt_0227:	.ascii	")))\0"
.balign 4
_Lt_0238:	.ascii	" __attribute__((aligned(\0"
.balign 4
_Lt_0249:	.ascii	"__attribute__((gcc_struct)) \0"
.balign 4
_Lt_024A:	.ascii	" {\0"
.balign 4
_Lt_024D:	.ascii	"uint8 __fb_struct_body[\0"
.balign 4
_Lt_024E:	.ascii	"];\0"
.balign 4
_Lt_0253:	.ascii	"sizeof( \0"
.balign 4
_Lt_0254:	.ascii	" ) == \0"
.balign 4
_Lt_0264:	.ascii	"l\0"
.balign 4
_Lt_0267:	.ascii	"q\0"
.balign 4
_Lt_026A:	.ascii	"s\0"
.balign 4
_Lt_026C:	.ascii	"static inline \0"
.balign 4
_Lt_026D:	.ascii	" fb_\0"
.balign 4
_Lt_026E:	.ascii	" value )\0"
.balign 4
_Lt_0276:	.ascii	"{\0"
.balign 4
_Lt_0278:	.ascii	"volatile \0"
.balign 4
_Lt_0279:	.ascii	" result;\0"
.balign 4
_Lt_027D:	.ascii	"__asm__(\0"
.balign 4
_Lt_027F:	.ascii	"\"fld\0"
.balign 4
_Lt_0280:	.ascii	" %1;\"\0"
.balign 4
_Lt_0284:	.ascii	"\"fistp\0"
.balign 4
_Lt_0285:	.ascii	" %0;\"\0"
.balign 4
_Lt_0289:	.ascii	":\"=m\" (result)\0"
.balign 4
_Lt_028B:	.ascii	":\"m\" (value)\0"
.balign 4
_Lt_028D:	.ascii	":\"st\"\0"
.balign 4
_Lt_028F:	.ascii	");\0"
.balign 4
_Lt_0291:	.ascii	"return result;\0"
.balign 4
_Lt_0293:	.ascii	"}\0"
.balign 4
_Lt_0299:	.ascii	"nearbyintf\0"
.balign 4
_Lt_029A:	.ascii	"nearbyint\0"
.balign 4
_Lt_029B:	.ascii	"#define fb_\0"
.balign 4
_Lt_029C:	.ascii	"( value ) ((\0"
.balign 4
_Lt_029D:	.ascii	")__builtin_\0"
.balign 4
_Lt_029E:	.ascii	"( value ))\0"
.balign 4
_Lt_02B2:	.ascii	"\t\"\0"
.balign 4
_Lt_02B3:	.ascii	"\\t.ascii \0"
.balign 4
_Lt_02B4:	.ascii	"\\\" -export:\\\\\\\"\0"
.balign 4
_Lt_02B5:	.ascii	"\\\\\\\"\\\"\0"
.balign 4
_Lt_02B6:	.ascii	"\\n\0"
.balign 4
_Lt_02B7:	.ascii	"\"\n\0"
.balign 4
_Lt_02C0:	.ascii	"typedef   signed char       int8;\0"
.balign 4
_Lt_02C2:	.ascii	"typedef unsigned char      uint8;\0"
.balign 4
_Lt_02C4:	.ascii	"typedef   signed short      int16;\0"
.balign 4
_Lt_02C6:	.ascii	"typedef unsigned short     uint16;\0"
.balign 4
_Lt_02C8:	.ascii	"typedef   signed int        int32;\0"
.balign 4
_Lt_02CA:	.ascii	"typedef unsigned int       uint32;\0"
.balign 4
_Lt_02CC:	.ascii	"typedef   signed long long  int64;\0"
.balign 4
_Lt_02CE:	.ascii	"typedef unsigned long long uint64;\0"
.balign 4
_Lt_02D2:	.ascii	"typedef struct { char *data; int64 len; int64 size; } FBSTRING;\0"
.balign 4
_Lt_02D4:	.ascii	"typedef struct { char *data; int32 len; int32 size; } FBSTRING;\0"
.balign 4
_Lt_02D6:	.ascii	"typedef int8 boolean;\0"
.balign 4
_Lt_02DC:	.ascii	"F2I\0"
.balign 4
_Lt_02E0:	.ascii	"F2L\0"
.balign 4
_Lt_02E4:	.ascii	"F2UL\0"
.balign 4
_Lt_02E8:	.ascii	"D2I\0"
.balign 4
_Lt_02EC:	.ascii	"D2L\0"
.balign 4
_Lt_02F0:	.ascii	"D2UL\0"
.balign 4
_Lt_02F6:	.ascii	"\n__asm__( \n\t\".section .drectve\\n\"\n\0"
.balign 4
_Lt_02FA:	.ascii	"__asm__( \".text\" );\0"
.balign 4
_Lt_0308:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_0348:	.ascii	"*\0"
.balign 4
_Lt_03FF:	.ascii	"u\0"
.balign 4
_Lt_0400:	.ascii	"ll\0"
.balign 4
_Lt_0407:	.ascii	"ull\0"
.balign 4
_Lt_0412:	.ascii	"(-__builtin_inf())\0"
.balign 4
_Lt_0413:	.ascii	"__builtin_inf()\0"
.balign 4
_Lt_0416:	.ascii	"(-__builtin_inff())\0"
.balign 4
_Lt_0417:	.ascii	"__builtin_inff()\0"
.balign 4
_Lt_041F:	.ascii	"(-__builtin_nan( \"\" ))\0"
.balign 4
_Lt_0420:	.ascii	"__builtin_nan( \"\" )\0"
.balign 4
_Lt_0423:	.ascii	"(-__builtin_nanf( \"\" ))\0"
.balign 4
_Lt_0424:	.ascii	"__builtin_nanf( \"\" )\0"
.balign 4
_Lt_0428:	.ascii	"f\0"
.balign 4
_Lt_0432:	.ascii	"\\x\0"
.balign 4
_Lt_0436:	.ascii	"\" \"\0"
.balign 4
_Lt_0438:	.ascii	"?\0"
.balign 4
_Lt_0440:	.ascii	"'\0"
.balign 4
_Lt_0441:	.ascii	"(\0"
.balign 4
_Lt_0445:	.ascii	"-\0"
.balign 4
_Lt_0451:	.ascii	"L\"\0"
.balign 4
_Lt_045C:	.ascii	"\" L\"\0"
.balign 4
_Lt_0472:	.ascii	" + \0"
.balign 4
_Lt_0474:	.ascii	" - \0"
.balign 4
_Lt_0476:	.ascii	" * \0"
.balign 4
_Lt_0478:	.ascii	" / \0"
.balign 4
_Lt_047B:	.ascii	" % \0"
.balign 4
_Lt_047D:	.ascii	" << \0"
.balign 4
_Lt_047F:	.ascii	" >> \0"
.balign 4
_Lt_0481:	.ascii	" & \0"
.balign 4
_Lt_0483:	.ascii	" | \0"
.balign 4
_Lt_0485:	.ascii	" ^ \0"
.balign 4
_Lt_0487:	.ascii	" == \0"
.balign 4
_Lt_0489:	.ascii	" > \0"
.balign 4
_Lt_048B:	.ascii	" < \0"
.balign 4
_Lt_048D:	.ascii	" != \0"
.balign 4
_Lt_048F:	.ascii	" >= \0"
.balign 4
_Lt_0491:	.ascii	" <= \0"
.balign 4
_Lt_0498:	.ascii	"&\0"
.balign 4
_Lt_049F:	.ascii	"~\0"
.balign 4
_Lt_04A8:	.ascii	"__builtin_fabsf\0"
.balign 4
_Lt_04AA:	.ascii	"__builtin_fabs\0"
.balign 4
_Lt_04AC:	.ascii	"__builtin_llabs\0"
.balign 4
_Lt_04AE:	.ascii	"__builtin_abs\0"
.balign 4
_Lt_04B7:	.ascii	"__builtin_sinf\0"
.balign 4
_Lt_04B9:	.ascii	"__builtin_asinf\0"
.balign 4
_Lt_04BB:	.ascii	"__builtin_cosf\0"
.balign 4
_Lt_04BD:	.ascii	"__builtin_acosf\0"
.balign 4
_Lt_04BF:	.ascii	"__builtin_tanf\0"
.balign 4
_Lt_04C1:	.ascii	"__builtin_atanf\0"
.balign 4
_Lt_04C3:	.ascii	"__builtin_sqrtf\0"
.balign 4
_Lt_04C5:	.ascii	"__builtin_logf\0"
.balign 4
_Lt_04C7:	.ascii	"__builtin_expf\0"
.balign 4
_Lt_04C9:	.ascii	"__builtin_floorf\0"
.balign 4
_Lt_04D0:	.ascii	"__builtin_sin\0"
.balign 4
_Lt_04D2:	.ascii	"__builtin_asin\0"
.balign 4
_Lt_04D4:	.ascii	"__builtin_cos\0"
.balign 4
_Lt_04D6:	.ascii	"__builtin_acos\0"
.balign 4
_Lt_04D8:	.ascii	"__builtin_tan\0"
.balign 4
_Lt_04DA:	.ascii	"__builtin_atan\0"
.balign 4
_Lt_04DC:	.ascii	"__builtin_sqrt\0"
.balign 4
_Lt_04DE:	.ascii	"__builtin_log\0"
.balign 4
_Lt_04E0:	.ascii	"__builtin_exp\0"
.balign 4
_Lt_04E2:	.ascii	"__builtin_floor\0"
.balign 4
_Lt_04F7:	.ascii	"&&\0"
.balign 4
_Lt_050C:	.ascii	"__builtin_va_arg( \0"
.balign 4
_Lt_0510:	.ascii	"__builtin_va_start( \0"
.balign 4
_Lt_0513:	.ascii	"__builtin_va_end( \0"
.balign 4
_Lt_0516:	.ascii	"__builtin_va_copy( \0"
.balign 4
_Lt_0529:	.ascii	"__builtin_atan2f\0"
.balign 4
_Lt_052A:	.ascii	"__builtin_atan2\0"
.balign 4
_Lt_0575:	.ascii	"vr$\0"
.balign 4
_Lt_057F:	.ascii	":;\0"
.balign 4
_Lt_058F:	.ascii	"if( \0"
.balign 4
_Lt_0590:	.ascii	" ) goto \0"
.balign 4
_Lt_05CB:	.ascii	"fb_F2I\0"
.balign 4
_Lt_05CC:	.ascii	"fb_D2I\0"
.balign 4
_Lt_05D1:	.ascii	"fb_F2L\0"
.balign 4
_Lt_05D2:	.ascii	"fb_D2L\0"
.balign 4
_Lt_05D6:	.ascii	"fb_F2UL\0"
.balign 4
_Lt_05D7:	.ascii	"fb_D2UL\0"
.balign 4
_Lt_05E0:	.ascii	"return \0"
.balign 4
_Lt_0605:	.ascii	"goto *\0"
.balign 4
_Lt_060B:	.ascii	"goto \0"
.balign 4
_Lt_0616:	.ascii	"(void)\0"
.balign 4
_Lt_061A:	.ascii	"static const void* \0"
.balign 4
_Lt_061B:	.ascii	"] = {\0"
.balign 4
_Lt_0626:	.ascii	",\0"
.balign 4
_Lt_063E:	.ascii	"__builtin_memset( \0"
.balign 4
_Lt_063F:	.ascii	", 0, \0"
.balign 4
_Lt_0647:	.ascii	"__builtin_memcpy( \0"
.balign 4
_Lt_0674:	.ascii	"not_an_escape\0"
.balign 4
_Lt_0675:	.ascii	"// \0"
.balign 4
_Lt_068D:	.ascii	"__asm__\0"
.balign 4
_Lt_0690:	.ascii	" __volatile__\0"
.balign 4
_Lt_0693:	.ascii	" goto\0"
.balign 4
_Lt_06A5:	.ascii	"%\0"
.balign 4
_Lt_06AA:	.ascii	"\"m\" (\0"
.balign 4
_Lt_06B0:	.ascii	"\"+m\" (\0"
.balign 4
_Lt_06BB:	.ascii	"%l\0"
.balign 4
_Lt_06C4:	.ascii	" : \0"
.balign 4
_Lt_06C5:	.ascii	" : \"cc\", \"memory\"\0"
.balign 4
_Lt_06CD:	.ascii	", \"eax\", \"ebx\", \"ecx\", \"edx\", \"edi\", \"esi\"\0"
.balign 4
_Lt_06CE:	.ascii	", \"rax\", \"rbx\", \"rcx\", \"rdx\", \"rdi\", \"rsi\"\0"
.balign 4
_Lt_06CF:	.ascii	", \"r8\", \"r9\", \"r10\", \"r11\", \"r12\", \"r13\", \"r14\", \"r15\"\0"
.balign 4
_Lt_06D2:	.ascii	", \"mm0\", \"mm1\", \"mm2\", \"mm3\", \"mm4\", \"mm5\", \"mm6\", \"mm7\"\0"
.balign 4
_Lt_06D3:	.ascii	", \"xmm0\", \"xmm1\", \"xmm2\", \"xmm3\", \"xmm4\", \"xmm5\", \"xmm6\", \"xmm7\"\0"
.balign 4
_Lt_06D6:	.ascii	", \"xmm8\", \"xmm9\", \"xmm10\", \"xmm11\", \"xmm12\", \"xmm13\", \"xmm14\", \"xmm15\"\0"
.balign 4
_Lt_06DA:	.ascii	", \"r0\", \"r1\", \"r2\", \"r3\", \"r4\", \"r5\", \"r6\"\0"
.balign 4
_Lt_06DD:	.ascii	", \"r16\", \"r17\", \"r18\", \"r19\"\0"
.balign 4
_Lt_06DE:	.ascii	", \"r20\", \"r21\", \"r22\", \"r23\", \"r24\", \"r25\", \"r26\", \"r27\", \"r28\"\0"
.balign 4
_Lt_06DF:	.ascii	", \"r30\"\0"
.balign 4
_Lt_06FF:	.ascii	"{ \0"
.balign 4
_Lt_070A:	.ascii	"L'\0"
.balign 4
_Lt_070D:	.ascii	" }\0"
.balign 4
_Lt_0719:	.ascii	"static const char \0"
.balign 4
_Lt_071F:	.ascii	"__attribute__((used, section(\"__DATA,fbctinf\"))) \0"
.balign 4
_Lt_0722:	.ascii	"__attribute__((used, section(\".fbctinf\"))) \0"
.balign 4
_Lt_0723:	.ascii	"__fbctinf[] = \"\0"
.balign 4
_Lt_0726:	.ascii	"\\0\0"
.balign 4
_Lt_072D:	.ascii	"\";\0"
.balign 4
_Lt_0736:	.ascii	"__asm__( \".globl \0"
.balign 4
_Lt_0737:	.ascii	"\" );\0"
.balign 4
_Lt_073B:	.ascii	"__asm__( \"\0"
.balign 4
_Lt_073C:	.ascii	":\" );\0"
.balign 4
_Lt_074C:	.ascii	"__asm__( \".size \0"
.balign 4
_Lt_074D:	.ascii	", .-\0"
.balign 8
_Lt_07F6:	.quad	0x0000000000000000

.section .ctors
.int _fb_ctor__irzhlc
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
