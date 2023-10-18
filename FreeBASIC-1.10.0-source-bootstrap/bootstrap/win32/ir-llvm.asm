	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor__irzllvm:
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
__ZN13IRLLVMCONTEXTC1Ev:
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
.L_007C:
.L_007D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN13IRLLVMCONTEXTaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_007E:
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
call _fb_StrAssign@20
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
.L_0081:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
inc dword ptr [ebp-8]
inc dword ptr [ebp-12]
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 128
jne .L_0081
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
.L_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN13IRLLVMCONTEXTD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0086:
.L_0087:
mov eax, dword ptr [ebp+8]
add eax, 228
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 216
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 204
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 184
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 164
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 152
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__INIT@0:
.L_0091:
call _IRHLINIT@0
or dword ptr [_IR+272], 131074
call _FBIS64BIT@0
test eax, eax
je .L_0094
mov eax, dword ptr [_DTYPENAME+52]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+56]
mov dword ptr [_DTYPENAME+36], eax
jmp .L_0093
.L_0094:
mov eax, dword ptr [_DTYPENAME+44]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+48]
mov dword ptr [_DTYPENAME+36], eax
.L_0093:
.L_0092:
ret
.balign 16
__END@0:
.L_0095:
call _IRHLEND@0
.L_0096:
ret
.balign 16
_HWRITELINE@4:
push ebp
mov ebp, esp
sub esp, 20
.L_0097:
cmp dword ptr [_CTX], 0
jle .L_0099
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_052D
.L_0099:
mov dword ptr [ebp-4], 0
.L_052D:
cmp dword ptr [ebp-4], 0
je .L_009C
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
push 1
push offset _Lt_009D
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [_CTX]
call _fb_StrFill2@8
push eax
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
.L_009C:
.L_009B:
push 0
push 3
push offset _Lt_009F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [_CTX+200]
mov dword ptr [ebp-8], eax
jmp .L_00A1
.L_00A3:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_CTX+204]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+204]
push eax
call _fb_StrAssign@20
jmp .L_00A0
.L_00A5:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_CTX+216]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+216]
push eax
call _fb_StrAssign@20
jmp .L_00A0
.L_00A7:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_CTX+228]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+228]
push eax
call _fb_StrAssign@20
jmp .L_00A0
.L_00A1:
cmp dword ptr [ebp-8], 2
ja .L_00A0
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00A9+eax*4]
_.L_00A9:
.int .L_00A3
.int .L_00A5
.int .L_00A7
.L_00A0:
.L_0098:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HINTERNALCOMMAND@4:
push ebp
mov ebp, esp
sub esp, 24
.L_00AA:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
push 3
push offset _Lt_00AC
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
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_00AB:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASTCOMMAND@4:
push ebp
mov ebp, esp
sub esp, 12
.L_00AF:
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
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _HINTERNALCOMMAND@4
.L_00B0:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWRITELABEL@4:
push ebp
mov ebp, esp
sub esp, 24
.L_00B2:
dec dword ptr [_CTX]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 2
push offset _Lt_00B4
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
inc dword ptr [_CTX]
.L_00B3:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSYMNAME@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_00BA
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00B9
.L_00BA:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B9:
.L_00B8:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_VREGPRETTY@4:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00BB:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
jne .L_00BF
.L_00C0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00C1
mov dword ptr [ebp-32], 24
jmp .L_052F
.L_00C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_052F:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .L_00C4
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _fb_DoubleToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_00C3
.L_00C4:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00C3:
jmp .L_00BD
.L_00BF:
cmp dword ptr [ebp-28], 4
jne .L_00C5
.L_00C6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_00C8
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _HSYMNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_00C7
.L_00C8:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 3
push offset _Lt_00C9
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00C7:
jmp .L_00BD
.L_00C5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_00CD
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _HSYMNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00CD:
.L_00CC:
.L_00CB:
.L_00BD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .L_00CF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_00D1
push 0
push 2
push offset _Lt_00D2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_00D1:
.L_00D0:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
call _VREGPRETTY@4
push eax
push -1
lea eax, [ebp-24]
push eax
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
.L_00CF:
.L_00CE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jne .L_0530
cmp dword ptr [eax+40], 0
je .L_00D5
.L_0530:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_00D2
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00D5:
.L_00D4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00D9
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call _fb_IntToStr@4
push eax
push 2
push offset _Lt_00DA
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00D9:
.L_00D8:
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
.L_00BC:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPARAMNAME@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DD:
push 0
push -1
push 2
push offset _Lt_00DF
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
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
.L_00DE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPROCCALLCONV@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E1:
call _FBGETCPUFAMILY@0
test eax, eax
je .L_00E4
jmp .L_00E2
.L_00E4:
.L_00E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-16], ebx
jmp .L_00E6
.L_00E8:
push 0
push 15
push offset _Lt_00E9
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_00E5
.L_00EA:
push 0
push 14
push offset _Lt_00EB
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_00E5
.L_00EC:
push 0
push 14
push offset _Lt_00ED
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_00E5
.L_00E6:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967295
cmp ebx, 5
ja .L_00E5
mov ebx, dword ptr [ebp-16]
jmp dword ptr [_.L_00EE+ebx*4-4]
_.L_00EE:
.int .L_00E8
.int .L_00E8
.int .L_00E5
.int .L_00E8
.int .L_00EA
.int .L_00EC
.L_00E5:
.L_00E2:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPROCHEADER@12:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00EF:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call _HEMITPROCCALLCONV@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
push ebx
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+16], 0
jne .L_00F4
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00F4:
.L_00F3:
push 0
push 3
push offset _Lt_00F6
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-48], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .L_00F8
cmp dword ptr [ebp+12], 0
je .L_00FA
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_00F9
.L_00FA:
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-48]
call _HEMITPARAMNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_00F9:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_00FE
push 0
push 3
push offset _Lt_00FF
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
.L_00FE:
.L_00FD:
.L_00F8:
.L_00F7:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .L_0100
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-52], eax
jmp .L_0531
.L_0100:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-52], ecx
.L_0531:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
.L_0102:
cmp dword ptr [ebp-56], 0
je .L_0103
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ecx+56], 4
jne .L_0105
push 0
push 4
push offset _Lt_0106
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
jmp .L_0104
.L_0105:
lea ecx, [ebp-32]
push ecx
lea ecx, [ebp-28]
push ecx
push dword ptr [ebp-56]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+12], 0
jne .L_0108
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-56]
push dword ptr [eax+60]
call _HEMITPARAMNAME@4
push eax
push 2
push offset _Lt_00F2
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
call _fb_StrAssign@20
.L_0108:
.L_0107:
.L_0104:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_010B
mov eax, dword ptr [ebp-56]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-60], ecx
jmp .L_0532
.L_010B:
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-60], eax
.L_0532:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
je .L_010E
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_010E:
.L_010D:
jmp .L_0102
.L_0103:
push 0
push 3
push offset _Lt_010F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+16], 0
jne .L_0111
push 0
push 10
push offset _Lt_0112
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 128
je .L_0114
push 0
push 7
push offset _Lt_0115
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
.L_0114:
.L_0113:
.L_0111:
.L_0110:
push 0
push -1
lea ecx, [ebp-24]
push ecx
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrAssign@20
lea ecx, [ebp-24]
push ecx
call _fb_StrDelete@4
.L_00F0:
lea ecx, [ebp-12]
push ecx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETUDTNAME@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0116:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
push 0
push 2
push offset _Lt_0118
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
.L_0119:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-16], eax
je .L_011A
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0007
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .L_0119
.L_011A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_011D
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
jmp .L_011C
.L_011D:
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.L_011C:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_0117:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITUDT@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_0120:
cmp dword ptr [ebp+8], 0
jne .L_0123
jmp .L_0121
.L_0123:
.L_0122:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_0125
jmp .L_0121
.L_0125:
.L_0124:
mov ebx, dword ptr [_CTX+200]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
jne .L_0127
mov dword ptr [_CTX+200], 0
.L_0127:
.L_0126:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0129
.L_012B:
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
call _HEMITTYPE@8
push eax
push -1
push 9
push offset _Lt_012C
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
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
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
call _HWRITELINE@4
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .L_0128
.L_0130:
push dword ptr [ebp+8]
call _HEMITSTRUCT@4
jmp .L_0128
.L_0129:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 1
ja .L_0128
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0131+eax*4-36]
_.L_0131:
.int .L_012B
.int .L_0130
.L_0128:
mov eax, dword ptr [ebp-4]
mov dword ptr [_CTX+200], eax
.L_0121:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HBUILDSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0132:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .L_0135
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0135:
.L_0134:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_0137
.L_013A:
mov eax, dword ptr [ebp+16]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_013D
push 0
push -1
push -1
push 2
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013E
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
jmp .L_013C
.L_013D:
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
.L_013C:
.L_0138:
inc dword ptr [ebp-8]
.L_0137:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_013A
.L_0139:
.L_0140:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .L_0141
push 0
push 4
push offset _Lt_0142
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
inc dword ptr [ebp+20]
jmp .L_0140
.L_0141:
.L_0133:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HBUILDWSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0143:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .L_0146
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0146:
.L_0145:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-16], eax
jmp .L_0148
.L_014B:
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ebx, dword ptr [ebp+16]
add ebx, eax
movzx eax, word ptr [ebx]
mov dword ptr [ebp-4], eax
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_014D
cmp dword ptr [ebp-8], 1
jb .L_014F
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013E
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
.L_014F:
.L_014E:
cmp dword ptr [ebp-8], 2
jb .L_0152
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 8
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013E
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
.L_0152:
.L_0151:
cmp dword ptr [ebp-8], 4
jb .L_0155
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 16
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013E
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
push 0
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 24
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013E
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0155:
.L_0154:
jmp .L_014C
.L_014D:
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
mov dword ptr [ebp-20], 2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
jmp .L_0159
.L_015C:
push 0
push 4
push offset _Lt_0142
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_015A:
inc dword ptr [ebp-20]
.L_0159:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_015C
.L_015B:
.L_014C:
.L_0149:
inc dword ptr [ebp-12]
.L_0148:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_014B
.L_014A:
.L_015D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .L_015E
mov dword ptr [ebp-12], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .L_0160
.L_0163:
push 0
push 4
push offset _Lt_0142
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0161:
inc dword ptr [ebp-12]
.L_0160:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_0163
.L_0162:
inc dword ptr [ebp+20]
jmp .L_015D
.L_015E:
.L_0144:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HEMITSTRLITTYPE@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0164:
push 0
push 2
push offset _Lt_0166
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_0167
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0165:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSYMTYPE@4:
push ebp
mov ebp, esp
sub esp, 92
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0168:
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
je .L_016B
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_016A
.L_016B:
cmp dword ptr [ebp-28], 18
je .L_016E
.L_016F:
cmp dword ptr [ebp-28], 4
je .L_016E
.L_0170:
cmp dword ptr [ebp-28], 7
jne .L_016D
.L_016E:
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
push ebx
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_016C
.L_016D:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-28]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0171:
.L_016C:
.L_016A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_0173
jmp .L_0172
.L_0173:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
je .L_0177
.L_0178:
cmp dword ptr [ebp-32], 12
jne .L_0176
.L_0177:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
dec ebx
mov dword ptr [ebp-36], ebx
jmp .L_0179
.L_017C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
sal eax, 4
mov ecx, dword ptr [ebx+68]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov esi, dword ptr [eax+68]
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
push offset _Lt_017E
push -1
push -1
lea eax, [ebp-24]
push eax
push 4
push offset _Lt_017D
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
push -1
push -1
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_0166
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_017A:
dec dword ptr [ebp-36]
.L_0179:
cmp dword ptr [ebp-36], 0
jge .L_017C
.L_017B:
.L_0176:
.L_0174:
.L_0172:
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
.L_0169:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITVARIABLE@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0183:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_0186
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_0188
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0184
.L_0188:
.L_0187:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
je .L_018C
.L_018D:
cmp dword ptr [ebp-24], 7
jne .L_018B
.L_018C:
push 0
push -1
push 4
push offset _Lt_018E
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 18
push offset _Lt_0190
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0191
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .L_0193
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ___divdi3
add esp, 16
mov ebx, eax
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
mov dword ptr [ebp-40], 0
lea ebx, [ebp-40]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HUNESCAPEW@8
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call _HBUILDWSTRLIT@16
jmp .L_0192
.L_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
mov dword ptr [ebp-40], 0
lea ebx, [ebp-40]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HUNESCAPE@8
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call _HBUILDSTRLIT@16
.L_0192:
push 0
push 2
push offset _Lt_013B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
.L_018B:
.L_0196:
.L_0189:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0184
.L_0186:
.L_0185:
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
je .L_0198
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 128
test ebx, ebx
jne .L_019A
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+12]
and edx, 2
test edx, edx
jne .L_019C
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 32
test ebx, ebx
jne .L_019E
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .L_0184
.L_019E:
.L_019D:
.L_019C:
.L_019B:
.L_019A:
.L_0199:
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .L_0184
.L_0198:
.L_0197:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+4]
and edx, 16388
test edx, edx
je .L_01A0
lea edx, [ebp-12]
push edx
call _fb_StrDelete@4
jmp .L_0184
.L_01A0:
.L_019F:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 59
mov dword ptr [ebp-16], ebx
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_018E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-16], 0
je .L_01A2
push 0
push 7
push offset _Lt_01A3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_01A1
.L_01A2:
push 0
push 7
push offset _Lt_01A4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01A1:
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-16], 0
je .L_01A6
push 0
push 17
push offset _Lt_01A7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01A6:
.L_01A5:
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0184:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITGLOBALVAR@4:
push ebp
mov ebp, esp
.L_01A8:
push dword ptr [ebp+8]
call _SYMBISDATADESC@4
test eax, eax
jne .L_01AB
push dword ptr [ebp+8]
call _HEMITVARIABLE@4
.L_01AB:
.L_01AA:
.L_01A9:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITPROCPROTO@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_01AC:
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
je .L_01AF
jmp .L_01AD
.L_01AF:
.L_01AE:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
test eax, eax
jne .L_01B1
jmp .L_01AD
.L_01B1:
.L_01B0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 128
test ecx, ecx
je .L_01B3
jmp .L_01AD
.L_01B3:
.L_01B2:
mov ecx, dword ptr [_CTX+200]
mov dword ptr [ebp-4], ecx
mov dword ptr [_CTX+200], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push 0
push -1
push dword ptr [ebp+8]
call _HEMITPROCHEADER@12
push eax
push 9
push offset _Lt_01B4
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
call _HWRITELINE@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp-4]
mov dword ptr [_CTX+200], eax
.L_01AD:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSTRUCT@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_01B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .L_01BA
jmp .L_01B8
.L_01BA:
.L_01B9:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 134217728
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.L_01BB:
cmp dword ptr [ebp-4], 0
je .L_01BC
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call _HEMITUDT@4
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
jmp .L_01BB
.L_01BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_01BE
jmp .L_01B8
.L_01BE:
.L_01BD:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .L_01C0
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01BF
.L_01C0:
push 0
push -1
push -1
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 2
push offset _Lt_0118
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.L_01BF:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+125]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
push 0
push 9
push offset _Lt_012C
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-20], 0
je .L_01C4
push 0
push 2
push offset _Lt_01C5
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
.L_01C4:
push 0
push 3
push offset _Lt_01C6
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.L_01C7:
cmp dword ptr [ebp-4], 0
je .L_01C8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_01CA
push 0
push -1
push dword ptr [ebp-4]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01CA:
.L_01C9:
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_01CC
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01CC:
.L_01CB:
jmp .L_01C7
.L_01C8:
push 0
push 3
push offset _Lt_01CD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-20], 0
je .L_01CF
push 0
push 2
push offset _Lt_01D0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01CF:
lea eax, [ebp-16]
push eax
call _HWRITELINE@4
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_01B8:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITCTORDTORARRAYELEMENT@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_01D1:
push -1
push dword ptr [ebp+12]
call _fb_StrLen@8
test eax, eax
jle .L_01D4
push 0
push 3
push offset _Lt_00FF
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
.L_01D4:
.L_01D3:
push 0
push 25
push offset _Lt_01D5
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+56]
call _fb_IntToStr@4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push 12
push offset _Lt_01D7
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_01CD
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
.L_01D2:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HADDGLOBALCTORDTOR@4:
push ebp
mov ebp, esp
push ebx
.L_01D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_01DC
jmp .L_01DA
.L_01DC:
.L_01DB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 65536
test eax, eax
je .L_01DE
inc dword ptr [_CTX+176]
lea eax, [_CTX+152]
push eax
push dword ptr [ebp+8]
call _HEMITCTORDTORARRAYELEMENT@8
jmp .L_01DD
.L_01DE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 131072
test ebx, ebx
je .L_01DF
inc dword ptr [_CTX+180]
lea ebx, [_CTX+164]
push ebx
push dword ptr [ebp+8]
call _HEMITCTORDTORARRAYELEMENT@8
.L_01DF:
.L_01DD:
.L_01DA:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBEGIN@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_01E0:
lea eax, [_ENV+584]
push eax
call _HFILEEXISTS@4
test eax, eax
je .L_01E3
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
.L_01E3:
.L_01E2:
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
je .L_01E5
mov dword ptr [ebp-4], 0
jmp .L_01E1
.L_01E5:
.L_01E4:
mov dword ptr [_CTX], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+152]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+164]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+176], 0
mov dword ptr [_CTX+180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+204]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+216]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+228]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+4], 0
mov dword ptr [_CTX+200], 0
mov dword ptr [ebp-8], 0
.L_01E9:
mov eax, dword ptr [ebp-8]
mov dword ptr [_BUILTINS+eax*8+4], 0
.L_01E7:
inc dword ptr [ebp-8]
.L_01E6:
cmp dword ptr [ebp-8], 17
jle .L_01E9
.L_01E8:
cmp dword ptr [_ENV+148], 0
je .L_01EB
push 0
push 0
push 0
push 113
call __EMITDBG@16
.L_01EB:
.L_01EA:
call _FBIS64BIT@0
test eax, eax
je .L_01ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset _Lt_01EE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITELINE@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_01EC
.L_01ED:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset _Lt_01F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITELINE@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_01EC:
mov dword ptr [_CTX+200], 1
mov dword ptr [ebp-4], -1
.L_01E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND@0:
push ebp
mov ebp, esp
sub esp, 84
.L_01F2:
mov dword ptr [_CTX+200], 0
mov dword ptr [ebp-28], 0
.L_01F7:
mov eax, dword ptr [ebp-28]
cmp dword ptr [_BUILTINS+eax*8+4], 0
je .L_01F9
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 0
mov eax, dword ptr [ebp-28]
push dword ptr [_BUILTINS+eax*8]
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _HWRITELINE@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_01F9:
.L_01F8:
.L_01F5:
inc dword ptr [ebp-28]
.L_01F4:
cmp dword ptr [ebp-28], 17
jle .L_01F7
.L_01F6:
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
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push offset _HMAYBEEMITPROCPROTO@4
push 3
call _SYMBFOREACHGLOBAL@8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push offset _HMAYBEEMITGLOBALVAR@4
push 1
call _SYMBFOREACHGLOBAL@8
push offset _HEMITVARIABLE@4
call _IRFOREACHDATASTMT@4
push offset _HADDGLOBALCTORDTOR@4
push 3
call _SYMBFOREACHGLOBAL@8
cmp dword ptr [_CTX+176], 0
jle .L_01FE
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push 2
push offset _Lt_017E
push -1
push -1
lea eax, [_CTX+152]
push eax
push 24
push offset _Lt_0200
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
push -1
push dword ptr [_CTX+176]
call _fb_IntToStr@4
push eax
push 40
push offset _Lt_01FF
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
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
call _HWRITELINE@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.L_01FE:
.L_01FD:
cmp dword ptr [_CTX+180], 0
jle .L_0207
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push 2
push offset _Lt_017E
push -1
push -1
lea eax, [_CTX+164]
push eax
push 24
push offset _Lt_0200
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
push -1
push dword ptr [_CTX+180]
call _fb_IntToStr@4
push eax
push 40
push offset _Lt_0208
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
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
call _HWRITELINE@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.L_0207:
.L_0206:
mov dword ptr [_CTX+200], 2
push -1
lea eax, [_CTX+204]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr@16
test eax, eax
je .L_020F
.L_020F:
.L_020E:
push -1
lea eax, [_CTX+216]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr@16
test eax, eax
je .L_0211
.L_0211:
.L_0210:
push -1
lea eax, [_CTX+228]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr@16
test eax, eax
je .L_0213
.L_0213:
.L_0212:
push dword ptr [_ENV+580]
call _fb_FileClose@4
test eax, eax
je .L_0215
.L_0215:
.L_0214:
mov dword ptr [_ENV+580], 0
.L_01F3:
mov esp, ebp
pop ebp
ret
.balign 16
__GETOPTIONVALUE@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0216:
cmp dword ptr [ebp+8], 1
jne .L_0219
.L_021A:
mov dword ptr [ebp-4], 0
jmp .L_0217
jmp .L_0218
.L_0219:
push 0
push 1
push 0
push offset _Lt_021C
push 21
call _ERRREPORTEX@20
.L_021B:
.L_0218:
.L_0217:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
__SUPPORTSOP@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_021D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0220
.L_0222:
mov dword ptr [ebp-4], 0
jmp .L_021F
.L_0223:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0224
mov dword ptr [ebp-12], 24
jmp .L_0539
.L_0224:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0539:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_021F
.L_0226:
mov dword ptr [ebp-4], -1
jmp .L_021F
.L_0220:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967240
cmp ebx, 16
ja .L_0226
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_0227+ebx*4-224]
_.L_0227:
.int .L_0223
.int .L_0222
.int .L_0226
.int .L_0222
.int .L_0226
.int .L_0222
.int .L_0222
.int .L_0222
.int .L_0226
.int .L_0226
.int .L_0222
.int .L_0222
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0222
.int .L_0222
.L_021F:
.L_021E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCBEGIN@4:
push ebp
mov ebp, esp
push ebx
.L_0228:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+16], ebx
.L_0229:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCEND@4:
push ebp
mov ebp, esp
push ebx
.L_022A:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+20], ebx
.L_022B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCARG@8:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.L_022C:
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
call _HSYMNAME@4
push eax
push 10
push offset _Lt_022E
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
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+12]
call _SYMBGETREALTYPE@12
push 0
push -1
push 11
push offset _Lt_0231
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
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
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
push 0
push 7
push offset _Lt_0233
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITPARAMNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00F2
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
call _HEMITTYPE@8
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
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_022D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCALLOCLOCAL@8:
push ebp
mov ebp, esp
sub esp, 24
.L_0237:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _HSYMNAME@4
push eax
push 10
push offset _Lt_0239
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
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HEMITVARIABLE@4
.L_0238:
mov esp, ebp
pop ebp
ret 8
.balign 16
__SCOPEBEGIN@4:
push ebp
mov ebp, esp
.L_023C:
.L_023D:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SCOPEEND@4:
push ebp
mov ebp, esp
.L_023E:
.L_023F:
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCSTATICVARS@4:
push ebp
mov ebp, esp
.L_0240:
.L_0241:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SETVREGDATATYPE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0242:
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
je .L_0245
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HEMITCONVERT@8
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 18
rep movsd
pop esi
pop edi
.L_0245:
.L_0244:
.L_0243:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HADDOFFSET@20:
push ebp
mov ebp, esp
sub esp, 12
.L_0246:
push 0
push 8
call _IRHLALLOCVREG@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HEMITCONVERT@8
cmp dword ptr [ebp+24], 0
jne .L_053D
cmp dword ptr [ebp+20], 0
je .L_0249
.L_053D:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 8
call _IRHLALLOCVRIMM@16
mov dword ptr [ebp-8], eax
push 0
push 8
call _IRHLALLOCVREG@8
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 28
call _HEMITBOP@20
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0249:
.L_0248:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call __SETVREGDATATYPE@12
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 18
rep movsd
pop esi
pop edi
.L_0247:
mov esp, ebp
pop ebp
ret 20
.balign 16
_HPREPAREADDRESS@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_024A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+52]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 5
jne .L_024D
jmp .L_024C
.L_024D:
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
.L_024C:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .L_024F
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov ecx, 18
rep movsd
pop esi
pop edi
jmp .L_024E
.L_024F:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], -1
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+40], 0
mov dword ptr [ecx+44], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+52], 0
cmp dword ptr [ebp-24], 0
je .L_0251
mov ecx, dword ptr [ebp+8]
lea ebx, [ecx+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+4]
push ecx
push dword ptr [ebp-24]
call _SYMBGETREALTYPE@12
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
call __SETVREGDATATYPE@12
jmp .L_0250
.L_0251:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_0250:
.L_024E:
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-12], 0
mov eax, -1
jne .L_053F
cmp dword ptr [ebp-16], 0
jne .L_053F
.L_0540:
xor eax, eax
.L_053F:
or ebx, eax
je .L_0253
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HADDOFFSET@20
.L_0253:
.L_0252:
.L_024B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HLOADVREG@4:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_0254:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 4
je .L_0259
.L_025A:
cmp dword ptr [ebp-4], 0
jne .L_0258
.L_0259:
jmp .L_0256
.L_0258:
cmp dword ptr [ebp-4], 5
jne .L_025B
.L_025C:
push dword ptr [ebp+8]
call _HPREPAREADDRESS@4
jmp .L_0256
.L_025B:
push dword ptr [ebp+8]
call _HPREPAREADDRESS@4
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
call _IRHLALLOCVREG@8
mov dword ptr [ebp-8], eax
push 0
push -1
push 9
push offset _Lt_025E
push -1
push dword ptr [ebp-8]
call _HVREGTOSTR@4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 3
push offset _Lt_00FF
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
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00F2
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-20]
push eax
call _HWRITELINE@4
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-8]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_025D:
.L_0256:
.L_0255:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITTYPE@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0264:
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
jmp .L_0267
.L_0269:
cmp dword ptr [ebp-28], 0
jne .L_026B
push 0
push 5
push offset _Lt_026C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_026A
.L_026B:
push 0
push 0
push dword ptr [_DTYPENAME]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_026A:
jmp .L_0266
.L_026D:
cmp dword ptr [ebp+12], 0
je .L_026F
push dword ptr [ebp+12]
call _HEMITUDT@4
push 0
push -1
push dword ptr [ebp+12]
call _HGETUDTNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_026E
.L_026F:
cmp dword ptr [ebp+8], 10
jne .L_0270
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0271
mov dword ptr [ebp-36], 24
jmp .L_0541
.L_0271:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0541:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_026E
.L_0270:
push 0
push 0
push dword ptr [_DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_026E:
jmp .L_0266
.L_0273:
dec dword ptr [ebp-28]
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
call _HEMITPROCHEADER@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00DA
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0266
.L_0274:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0275
mov dword ptr [ebp-36], 24
jmp .L_0542
.L_0275:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0542:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0266
.L_0277:
push 0
push 0
push dword ptr [_DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0266
.L_0278:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0266
.L_0267:
cmp dword ptr [ebp-32], 22
ja .L_0278
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.L_0279+ebx*4]
_.L_0279:
.int .L_0269
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0274
.int .L_0278
.int .L_0278
.int .L_0274
.int .L_0278
.int .L_0278
.int .L_026D
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0277
.int .L_0278
.int .L_026D
.int .L_0278
.int .L_0273
.L_0266:
cmp dword ptr [ebp-28], 0
jle .L_027B
push 0
push -1
push 1
push offset _Lt_00DA
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-28]
call _fb_StrFill2@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_027B:
.L_027A:
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
.L_0265:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITINT@12:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_027C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 8
je .L_0280
.L_0281:
cmp dword ptr [ebp+8], 9
je .L_0280
.L_0282:
cmp dword ptr [ebp+8], 11
je .L_0280
.L_0283:
cmp dword ptr [ebp+8], 12
je .L_0280
.L_0284:
cmp dword ptr [ebp+8], 10
jne .L_027F
.L_0280:
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_027E
.L_027F:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0287
push 0
push 10
push offset _Lt_0288
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0286
.L_0287:
push 0
push 7
push offset _Lt_0289
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0286:
push 0
push 2
push offset _Lt_028A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push 8
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_028B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_028C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0285:
.L_027E:
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
.L_027D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 12
.balign 16
_HEMITLONG@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_028D:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_028E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITFLOAT@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_028F:
push 0
push 3
push offset _Lt_0291
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0290:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HISFIXLENSTR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0292:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
jne .L_0295
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .L_0299
.L_029A:
cmp dword ptr [ebp-8], 4
je .L_0299
.L_029B:
cmp dword ptr [ebp-8], 7
jne .L_0298
.L_0299:
mov dword ptr [ebp-4], -1
jmp .L_0293
.L_0298:
.L_0296:
.L_0295:
.L_0294:
mov dword ptr [ebp-4], 0
.L_0293:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVREGTOSTR@4:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_029C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_029F
.L_02A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02A2
mov dword ptr [ebp-24], 24
jmp .L_0543
.L_02A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_0543:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .L_02A5
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _HEMITFLOAT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_029D
.L_02A5:
.L_02A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_02A6
mov dword ptr [ebp-28], 24
jmp .L_0544
.L_02A6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0544:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_02A9
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _HEMITLONG@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_029D
.L_02A9:
.L_02A8:
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _HEMITINT@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_029D
jmp .L_029E
.L_02AA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
jne .L_02AC
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_02AD
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
call _fb_StrInit@20
jmp .L_029D
.L_02AC:
.L_02AB:
jmp .L_029E
.L_029F:
cmp dword ptr [ebp-20], 4
ja .L_029E
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_02AF+eax*4]
_.L_02AF:
.int .L_02A1
.int .L_029E
.int .L_029E
.int .L_029E
.int .L_02AA
.L_029E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call _HISFIXLENSTR@4
test eax, eax
je .L_02B1
push 0
push 10
push offset _Lt_02B2
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
push 0
push -1
push dword ptr [ebp-16]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_02B3
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp-16]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_028B
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_028C
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .L_029D
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_02B1:
.L_02B0:
push 0
push 0
push dword ptr [ebp-16]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_029D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITLABEL@4:
push ebp
mov ebp, esp
sub esp, 48
.L_02B6:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HSYMNAME@4
push eax
push 7
push offset _Lt_02B8
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
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 11
push offset _Lt_02BB
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HWRITELABEL@4
.L_02B7:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETBOPCODE@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_02BE:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_02C1
.L_02C3:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02C4
mov dword ptr [ebp-12], 24
jmp .L_0545
.L_02C4:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0545:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_02C7
mov eax, offset _Lt_02C8
mov dword ptr [ebp-4], eax
jmp .L_02C6
.L_02C7:
mov eax, offset _Lt_02C9
mov dword ptr [ebp-4], eax
.L_02C6:
jmp .L_02C0
.L_02CA:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02CB
mov dword ptr [ebp-12], 24
jmp .L_0546
.L_02CB:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0546:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_02CE
mov eax, offset _Lt_02CF
mov dword ptr [ebp-4], eax
jmp .L_02CD
.L_02CE:
mov eax, offset _Lt_02D0
mov dword ptr [ebp-4], eax
.L_02CD:
jmp .L_02C0
.L_02D1:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02D2
mov dword ptr [ebp-12], 24
jmp .L_0547
.L_02D2:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0547:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_02D5
mov eax, offset _Lt_02D6
mov dword ptr [ebp-4], eax
jmp .L_02D4
.L_02D5:
mov eax, offset _Lt_02D7
mov dword ptr [ebp-4], eax
.L_02D4:
jmp .L_02C0
.L_02D8:
mov eax, offset _Lt_02D9
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02DA:
mov eax, offset _Lt_02DB
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02DC:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_02DD
mov dword ptr [ebp-12], 24
jmp .L_0548
.L_02DD:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0548:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_02E0
mov eax, offset _Lt_02E1
mov dword ptr [ebp-4], eax
jmp .L_02DF
.L_02E0:
mov eax, offset _Lt_02E2
mov dword ptr [ebp-4], eax
.L_02DF:
jmp .L_02C0
.L_02E3:
mov eax, offset _Lt_02E4
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02E5:
mov eax, offset _Lt_02E6
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02E7:
mov eax, offset _Lt_02E8
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02E9:
mov eax, offset _Lt_02EA
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02EB:
mov eax, offset _Lt_02EC
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02ED:
mov eax, offset _Lt_02EE
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02EF:
mov eax, offset _Lt_02F0
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02F1:
mov eax, offset _Lt_02F2
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02F3:
mov eax, offset _Lt_02F4
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02F5:
mov eax, offset _Lt_02F6
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02F7:
mov eax, offset _Lt_02F8
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02F9:
mov eax, offset _Lt_02FA
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02FB:
mov eax, offset _Lt_02FC
mov dword ptr [ebp-4], eax
jmp .L_02C0
.L_02C1:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .L_02C0
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_02FD+eax*4-112]
_.L_02FD:
.int .L_02C3
.int .L_02CA
.int .L_02D1
.int .L_02D8
.int .L_02DA
.int .L_02DC
.int .L_02E7
.int .L_02E9
.int .L_02C0
.int .L_02C0
.int .L_02EB
.int .L_02F9
.int .L_02FB
.int .L_02E3
.int .L_02E5
.int .L_02C0
.int .L_02C0
.int .L_02ED
.int .L_02F1
.int .L_02F3
.int .L_02EF
.int .L_02F5
.int .L_02F7
.L_02C0:
.L_02BF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HLOADOPERANDSANDWRITEBOP@24:
push ebp
mov ebp, esp
sub esp, 24
.L_02FE:
push dword ptr [ebp+12]
call _HLOADVREG@4
push dword ptr [ebp+16]
call _HLOADVREG@4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call __SETVREGDATATYPE@12
push 0
push -1
push dword ptr [ebp+20]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push 4
push offset _Lt_018E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call _HGETBOPCODE@8
push eax
push -1
lea eax, [ebp-12]
push eax
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
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_02FF:
mov esp, ebp
pop ebp
ret 24
.balign 16
_HEMITBOP@20:
push ebp
mov ebp, esp
sub esp, 136
push ebx
.L_0301:
cmp dword ptr [ebp+24], 0
je .L_0304
push 0
push 8
call _IRHLALLOCVREG@8
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOADOPERANDSANDWRITEBOP@24
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push dword ptr [ebp+20]
call _HVREGTOSTR@4
push eax
push 7
push offset _Lt_0305
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrInit@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME@4
push eax
push 8
push offset _Lt_0307
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
push 0
push 8
push offset _Lt_0307
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-88]
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-100]
push eax
call _HWRITELINE@4
push dword ptr [ebp-88]
call _HWRITELABEL@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
jmp .L_0302
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
.L_0304:
.L_0303:
mov dword ptr [ebp-4], 0
lea eax, [ebp-76]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
cmp dword ptr [ebp+20], 0
jne .L_030B
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp+20], eax
lea eax, [ebp-76]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
.L_030B:
.L_030A:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOADOPERANDSANDWRITEBOP@24
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_030D
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-80], eax
push 0
push -1
push dword ptr [ebp-80]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrInit@20
push 0
push 9
push offset _Lt_030E
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_030F
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+20]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_028B
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-92]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
lea eax, [ebp-92]
push eax
call _HWRITELINE@4
push edi
push esi
mov edi, dword ptr [ebp+20]
mov esi, dword ptr [ebp-80]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
.L_030D:
.L_030C:
cmp dword ptr [ebp-4], 0
je .L_0312
push dword ptr [ebp+20]
lea eax, [ebp-76]
push eax
call _HEMITSTORE@8
.L_0312:
.L_0311:
.L_0302:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITBOP@20:
push ebp
mov ebp, esp
sub esp, 84
.L_0313:
push 0
push -1
push -1
push dword ptr [ebp+16]
call _VREGPRETTY@4
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push -1
push dword ptr [ebp+8]
call _ASTDUMPOPTOSTR@4
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
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
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp+24], 0
je .L_031A
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset _Lt_031B
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
call _HASTCOMMAND@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
jmp .L_0319
.L_031A:
cmp dword ptr [ebp+20], 0
jne .L_031E
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 9
push offset _Lt_031F
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
call _HASTCOMMAND@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
jmp .L_0319
.L_031E:
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0322
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
call _HASTCOMMAND@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.L_0319:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITBOP@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0314:
mov esp, ebp
pop ebp
ret 20
.balign 16
_HBUILTINUOP@12:
push ebp
mov ebp, esp
sub esp, 12
.L_0325:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push dword ptr [ebp+12]
call _HLOADVREG@4
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0327
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .L_0329
push 0
push 13
push offset _Lt_032A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+8], 56
jne .L_032C
.L_032D:
mov dword ptr [_BUILTINS+116], -1
push 0
push 5
push offset _Lt_032E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_032B
.L_032C:
cmp dword ptr [ebp+8], 58
jne .L_032F
.L_0330:
mov dword ptr [_BUILTINS+20], -1
push 0
push 4
push offset _Lt_0331
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_032B
.L_032F:
cmp dword ptr [ebp+8], 60
jne .L_0332
.L_0333:
mov dword ptr [_BUILTINS+36], -1
push 0
push 4
push offset _Lt_0334
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_032B
.L_0332:
cmp dword ptr [ebp+8], 69
jne .L_0335
.L_0336:
mov dword ptr [_BUILTINS+52], -1
push 0
push 4
push offset _Lt_0337
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_032B
.L_0335:
cmp dword ptr [ebp+8], 68
jne .L_0338
.L_0339:
mov dword ptr [_BUILTINS+68], -1
push 0
push 4
push offset _Lt_033A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_032B
.L_0338:
cmp dword ptr [ebp+8], 65
jne .L_033B
.L_033C:
mov dword ptr [_BUILTINS+84], -1
push 0
push 5
push offset _Lt_033D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_032B
.L_033B:
cmp dword ptr [ebp+8], 70
jne .L_033E
.L_033F:
mov dword ptr [_BUILTINS+100], -1
push 0
push 6
push offset _Lt_0340
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_033E:
.L_0341:
.L_032B:
push 0
push 12
push offset _Lt_0342
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0328
.L_0329:
push 0
push 14
push offset _Lt_0343
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+8], 56
jne .L_0345
.L_0346:
mov dword ptr [_BUILTINS+124], -1
push 0
push 5
push offset _Lt_032E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0344
.L_0345:
cmp dword ptr [ebp+8], 58
jne .L_0347
.L_0348:
mov dword ptr [_BUILTINS+28], -1
push 0
push 4
push offset _Lt_0331
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0344
.L_0347:
cmp dword ptr [ebp+8], 60
jne .L_0349
.L_034A:
mov dword ptr [_BUILTINS+44], -1
push 0
push 4
push offset _Lt_0334
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0344
.L_0349:
cmp dword ptr [ebp+8], 69
jne .L_034B
.L_034C:
mov dword ptr [_BUILTINS+60], -1
push 0
push 4
push offset _Lt_0337
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0344
.L_034B:
cmp dword ptr [ebp+8], 68
jne .L_034D
.L_034E:
mov dword ptr [_BUILTINS+76], -1
push 0
push 4
push offset _Lt_033A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0344
.L_034D:
cmp dword ptr [ebp+8], 65
jne .L_034F
.L_0350:
mov dword ptr [_BUILTINS+92], -1
push 0
push 5
push offset _Lt_033D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0344
.L_034F:
cmp dword ptr [ebp+8], 70
jne .L_0351
.L_0352:
mov dword ptr [_BUILTINS+108], -1
push 0
push 6
push offset _Lt_0340
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0351:
.L_0353:
.L_0344:
push 0
push 13
push offset _Lt_0354
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0328:
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_028C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0326:
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITUOP@12:
push ebp
mov ebp, esp
sub esp, 116
.L_0355:
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push dword ptr [ebp+8]
call _ASTDUMPOPTOSTR@4
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
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp+16], 0
jne .L_035A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 9
push offset _Lt_035B
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
call _HASTCOMMAND@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
jmp .L_0359
.L_035A:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_035E
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
call _HASTCOMMAND@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.L_0359:
cmp dword ptr [ebp+8], 54
jne .L_0362
.L_0363:
lea eax, [ebp-108]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
mov dword ptr [ebp-112], 0
cmp dword ptr [ebp+16], 0
jne .L_0365
mov dword ptr [ebp-112], -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp+16], eax
lea eax, [ebp-108]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
.L_0365:
.L_0364:
push 0
push 0
push 0
push 8
call _IRHLALLOCVRIMM@16
mov dword ptr [ebp-116], eax
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-116]
push 29
call _HEMITBOP@20
cmp dword ptr [ebp-112], 0
je .L_0367
push dword ptr [ebp+16]
lea eax, [ebp-108]
push eax
call _HEMITSTORE@8
.L_0367:
.L_0366:
jmp .L_0361
.L_0362:
cmp dword ptr [ebp+8], 52
jne .L_0368
.L_0369:
push 4294967295
push 4294967295
push 0
push 8
call _IRHLALLOCVRIMM@16
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-40]
push dword ptr [ebp+12]
push 38
call _HEMITBOP@20
jmp .L_0361
.L_0368:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILTINUOP@12
.L_036A:
.L_0361:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0356:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETCONVOPCODE@8:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.L_036B:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_036D
mov dword ptr [ebp-8], 24
jmp .L_0549
.L_036D:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0549:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0370
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0371
mov dword ptr [ebp-40], 24
jmp .L_054A
.L_0371:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_054A:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0374
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0375
mov dword ptr [ebp-52], 24
jmp .L_054B
.L_0375:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-52], eax
.L_054B:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0377
mov dword ptr [ebp-56], 24
jmp .L_054C
.L_0377:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-56], eax
.L_054C:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [ebp-72]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jne .L_037A
mov dword ptr [ebp-4], 0
jmp .L_036C
.L_037A:
.L_0379:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_037B
mov dword ptr [ebp-60], 24
jmp .L_054E
.L_037B:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-60], ecx
.L_054E:
mov ecx, dword ptr [ebp-60]
imul ecx, 28
mov dword ptr [ebp-72], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .L_037D
mov dword ptr [ebp-64], 24
jmp .L_054F
.L_037D:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-64], ecx
.L_054F:
mov ecx, dword ptr [ebp-64]
imul ecx, 28
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], eax
jge .L_0381
mov eax, offset _Lt_037F
mov dword ptr [ebp-68], eax
jmp .L_0550
.L_0381:
mov eax, offset _Lt_0380
mov dword ptr [ebp-68], eax
.L_0550:
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-4], eax
jmp .L_036C
.L_0374:
.L_0373:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0383
mov dword ptr [ebp-44], 24
jmp .L_0552
.L_0383:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-44], eax
.L_0552:
mov eax, dword ptr [ebp-44]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0387
mov eax, offset _Lt_0385
mov dword ptr [ebp-48], eax
jmp .L_0553
.L_0387:
mov eax, offset _Lt_0386
mov dword ptr [ebp-48], eax
.L_0553:
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-4], eax
jmp .L_036C
.L_0370:
.L_036F:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0389
mov dword ptr [ebp-12], 24
jmp .L_0554
.L_0389:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0554:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_038C
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_038D
mov dword ptr [ebp-40], 24
jmp .L_0555
.L_038D:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0555:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0391
mov eax, offset _Lt_038F
mov dword ptr [ebp-44], eax
jmp .L_0556
.L_0391:
mov eax, offset _Lt_0390
mov dword ptr [ebp-44], eax
.L_0556:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
jmp .L_036C
.L_038C:
.L_038B:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_0394
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_0396
mov eax, offset _Lt_0397
mov dword ptr [ebp-4], eax
jmp .L_036C
.L_0396:
.L_0395:
mov eax, offset _Lt_0398
mov dword ptr [ebp-4], eax
jmp .L_036C
jmp .L_0393
.L_0394:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_0399
mov eax, offset _Lt_039A
mov dword ptr [ebp-4], eax
jmp .L_036C
.L_0399:
.L_0393:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_039B
mov dword ptr [ebp-16], 24
jmp .L_0557
.L_039B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0557:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_039D
mov dword ptr [ebp-20], 24
jmp .L_0558
.L_039D:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0558:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jne .L_03A0
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_03A1
mov dword ptr [ebp-44], 24
jmp .L_055A
.L_03A1:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_055A:
mov ecx, dword ptr [ebp-44]
imul ecx, 28
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .L_03A3
mov dword ptr [ebp-48], 24
jmp .L_055B
.L_03A3:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_055B:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
mov ebx, dword ptr [ebp-52]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+20]
cmp dword ptr [_SYMB_DTYPETB+ebx+20], eax
jne .L_03A6
mov dword ptr [ebp-4], 0
jmp .L_036C
.L_03A6:
.L_03A5:
mov eax, offset _Lt_0397
mov dword ptr [ebp-4], eax
jmp .L_036C
.L_03A0:
.L_039F:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03A7
mov dword ptr [ebp-24], 24
jmp .L_055D
.L_03A7:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.L_055D:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03A9
mov dword ptr [ebp-28], 24
jmp .L_055E
.L_03A9:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-28], eax
.L_055E:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jge .L_03AC
mov ecx, offset _Lt_03AD
mov dword ptr [ebp-4], ecx
jmp .L_036C
.L_03AC:
.L_03AB:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_03AE
mov dword ptr [ebp-32], 24
jmp .L_0560
.L_03AE:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-32], ecx
.L_0560:
mov ecx, dword ptr [ebp-32]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_03B2
mov ecx, offset _Lt_03B0
mov dword ptr [ebp-36], ecx
jmp .L_0561
.L_03B2:
mov ecx, offset _Lt_03B1
mov dword ptr [ebp-36], ecx
.L_0561:
mov ecx, dword ptr [ebp-36]
mov dword ptr [ebp-4], ecx
.L_036C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITCONVERT@8:
push ebp
mov ebp, esp
sub esp, 120
push ebx
.L_03B4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03B6
mov dword ptr [ebp-4], 24
jmp .L_0562
.L_03B6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0562:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03B8
mov dword ptr [ebp-8], 24
jmp .L_0563
.L_03B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0563:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-92]
je .L_03BB
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-96], eax
push dword ptr [ebp+12]
call _HLOADVREG@4
push 0
push -1
push 9
push offset _Lt_0327
push -1
push dword ptr [ebp-96]
call _HVREGTOSTR@4
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .L_03BE
mov dword ptr [_BUILTINS+132], -1
push 0
push 33
push offset _Lt_03BF
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
jmp .L_03BD
.L_03BE:
mov dword ptr [_BUILTINS+140], -1
push 0
push 35
push offset _Lt_03C0
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
.L_03BD:
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_028C
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-108]
push eax
call _HWRITELINE@4
push edi
push esi
mov edi, dword ptr [ebp+12]
mov esi, dword ptr [ebp-96]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
.L_03BB:
.L_03BA:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETCONVOPCODE@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_03C2
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
jmp .L_03B5
.L_03C2:
.L_03C1:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_03C4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_03C3
.L_03C4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-16], eax
.L_03C3:
push dword ptr [ebp+12]
call _HLOADVREG@4
push 0
push -1
push 2
push offset _Lt_00F2
push -1
push 0
push dword ptr [ebp-12]
push -1
push 4
push offset _Lt_018E
push -1
push dword ptr [ebp-16]
call _HVREGTOSTR@4
push eax
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
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_028B
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_03CB
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HEMITSTORE@8
.L_03CB:
.L_03CA:
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_03B5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITCONVERT@8:
push ebp
mov ebp, esp
sub esp, 48
.L_03CC:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push -1
push 5
push offset _Lt_03CF
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 6
push offset _Lt_03CE
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
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITCONVERT@8
.L_03CD:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITSTORE@8:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_03D4:
push dword ptr [ebp+12]
call _HLOADVREG@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push dword ptr [ebp+8]
call _HPREPAREADDRESS@4
push 0
push 7
push offset _Lt_0233
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 2
push offset _Lt_00F2
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
call _HEMITTYPE@8
push eax
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
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
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
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00F2
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_03D5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORE@8:
push ebp
mov ebp, esp
sub esp, 48
.L_03DA:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push -1
push 5
push offset _Lt_03DC
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 7
push offset _Lt_0233
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
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITSTORE@8
.L_03DB:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSPILLREGS@0:
.L_03E1:
.L_03E2:
ret
.balign 16
__EMITLOAD@4:
push ebp
mov ebp, esp
.L_03E3:
.L_03E4:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITLOADRES@8:
push ebp
mov ebp, esp
sub esp, 72
.L_03E5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_03E7
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
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _HLOADVREG@4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call __SETVREGDATATYPE@12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push 5
push offset _Lt_03EA
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
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _HWRITELINE@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
.L_03E6:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITADDR@12:
push ebp
mov ebp, esp
sub esp, 36
.L_03EF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .L_03F2
.L_03F3:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 8
push offset _Lt_03F4
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
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HPREPAREADDRESS@4
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
jmp .L_03F1
.L_03F2:
cmp dword ptr [ebp+8], 76
jne .L_03F7
.L_03F8:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 7
push offset _Lt_03F9
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
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HLOADVREG@4
.L_03F7:
.L_03F1:
push edi
push esi
mov edi, dword ptr [ebp+16]
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_03F0:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HDOCALL@20:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_03FC:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .L_03FF
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0401
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+88]
and eax, 511
push eax
call _IRHLALLOCVREG@8
mov dword ptr [ebp+20], eax
.L_0401:
.L_0400:
.L_03FF:
.L_03FE:
cmp dword ptr [ebp+20], 0
je .L_0403
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 4
jne .L_0405
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-28], eax
jmp .L_0404
.L_0405:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-28], eax
.L_0404:
push 0
push -1
push dword ptr [ebp-28]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0327
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITPROCCALLCONV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00F2
push -1
mov eax, dword ptr [ebp-28]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-28]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
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
jmp .L_0402
.L_0403:
push 0
push 6
push offset _Lt_0408
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITPROCCALLCONV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 6
push offset _Lt_0409
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0402:
push 0
push -1
push -1
push 3
push offset _Lt_00F6
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [_IRHL+60]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-16], eax
.L_040C:
cmp dword ptr [ebp-16], 0
je .L_040E
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
jmp .L_0567
.L_040E:
mov dword ptr [ebp-56], 0
.L_0567:
cmp dword ptr [ebp-56], 0
je .L_040D
push dword ptr [ebp-16]
call _LISTGETPREV@4
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
call _VREGPRETTY@4
push eax
push 5
push offset _Lt_0410
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
call _HINTERNALCOMMAND@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-24]
call _HLOADVREG@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 0
je .L_0414
lea eax, [ebp-88]
push eax
lea eax, [ebp-84]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
jmp .L_0413
.L_0414:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-88], eax
.L_0413:
push 0
push -1
push dword ptr [ebp-88]
push dword ptr [ebp-84]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-88]
push dword ptr [ebp-84]
push dword ptr [ebp-24]
call __SETVREGDATATYPE@12
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-24]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-16]
lea eax, [_IRHL+60]
push eax
call _LISTDELNODE@8
cmp dword ptr [ebp-20], 0
je .L_0416
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+24]
cmp dword ptr [eax+8], ebx
jne .L_0418
push 0
push 3
push offset _Lt_00FF
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_0418:
.L_0417:
.L_0416:
.L_0415:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-16], ebx
jmp .L_040C
.L_040D:
push 0
push 3
push offset _Lt_010F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@4
cmp dword ptr [ebp+20], 0
je .L_041A
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 4
je .L_041C
push dword ptr [ebp-28]
push dword ptr [ebp+20]
call _HEMITSTORE@8
.L_041C:
.L_041B:
.L_041A:
.L_0419:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.L_03FD:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITCALL@16:
push ebp
mov ebp, esp
sub esp, 36
.L_041D:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 3
push offset _Lt_041F
push -1
push -1
push dword ptr [ebp+8]
call _HSYMNAME@4
push eax
push 6
push offset _Lt_0408
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
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HDOCALL@20
.L_041E:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCALLPTR@20:
push ebp
mov ebp, esp
sub esp, 36
.L_0423:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_0425
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
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HLOADVREG@4
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
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _HDOCALL@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0424:
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITJUMPPTR@4:
push ebp
mov ebp, esp
sub esp, 48
.L_0429:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_042B
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
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _HLOADVREG@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push 7
push offset _Lt_042E
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
.L_042A:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBRANCH@8:
push ebp
mov ebp, esp
sub esp, 48
.L_0431:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _HSYMNAME@4
push eax
push 6
push offset _Lt_0433
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
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push 11
push offset _Lt_02BB
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
call _SYMBUNIQUELABEL@0
push eax
call _HWRITELABEL@4
.L_0432:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITJMPTB@40:
push ebp
mov ebp, esp
sub esp, 164
push ebx
.L_0438:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 7
push offset _Lt_043A
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
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _HLOADVREG@4
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrInit@20
push 0
push 8
push offset _Lt_043D
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00F2
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME@4
push eax
push 8
push offset _Lt_0307
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
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0166
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@4
inc dword ptr [_CTX]
mov dword ptr [ebp-100], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-104], eax
jmp .L_0442
.L_0445:
push 0
push -1
push 3
push offset _Lt_00FF
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
call _fb_ULongintToStr@8
push eax
push -1
push 2
push offset _Lt_00F2
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-100]
sal eax, 2
mov ecx, dword ptr [ebp+20]
add ecx, eax
push dword ptr [ecx]
call _SYMBGETMANGLEDNAME@4
push eax
push 8
push offset _Lt_0307
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@4
.L_0443:
inc dword ptr [ebp-100]
.L_0442:
mov eax, dword ptr [ebp-104]
cmp dword ptr [ebp-100], eax
jle .L_0445
.L_0444:
dec dword ptr [_CTX]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_017E
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HWRITELINE@4
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0439:
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16
__EMITMEM@20:
push ebp
mov ebp, esp
sub esp, 60
.L_044C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 11
push offset _Lt_044E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 107
jne .L_0450
.L_0451:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 10
push offset _Lt_0452
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
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_044F
.L_0450:
cmp dword ptr [ebp+8], 105
jne .L_0455
.L_0456:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call _VREGPRETTY@4
push eax
push -1
push 5
push offset _Lt_0458
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_0457
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
call _HASTCOMMAND@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.L_0455:
.L_044F:
push dword ptr [ebp+12]
call _HLOADVREG@4
push dword ptr [ebp+16]
call _HLOADVREG@4
cmp dword ptr [ebp+8], 107
jne .L_045E
.L_045F:
mov dword ptr [_BUILTINS+4], -1
push 0
push 34
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push 0
push 8
push dword ptr [ebp+16]
call __SETVREGDATATYPE@12
push 0
push 24
push offset _Lt_0460
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0461
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_0462
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0463
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_045D
.L_045E:
cmp dword ptr [ebp+8], 105
jne .L_0464
.L_0465:
mov dword ptr [_BUILTINS+12], -1
push 0
push 34
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push 0
push 34
push dword ptr [ebp+16]
call __SETVREGDATATYPE@12
push 0
push 30
push offset _Lt_0466
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0461
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0461
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0463
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_ULongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0464:
.L_045D:
push 0
push 18
push offset _Lt_0467
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_044D:
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITMACRO@16:
push ebp
mov ebp, esp
.L_0468:
.L_0469:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITDECL@4:
push ebp
mov ebp, esp
.L_046A:
.L_046B:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITDBG@16:
push ebp
mov ebp, esp
sub esp, 60
.L_046C:
cmp dword ptr [ebp+8], 113
jne .L_046F
cmp dword ptr [ebp+20], 0
je .L_0471
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_013B
push -1
push -1
push offset _Lt_0474
push offset _Lt_013E
push dword ptr [ebp+20]
call _HREPLACE@12
push eax
push -1
push 3
push offset _Lt_0473
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push 7
push offset _Lt_0472
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
call _HWRITELINE@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
jmp .L_0470
.L_0471:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_013B
push -1
push -1
push offset _Lt_0474
push offset _Lt_013E
lea eax, [_ENV+304]
push eax
call _HREPLACE@12
push eax
push -1
push 3
push offset _Lt_0473
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push 7
push offset _Lt_0472
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
call _HWRITELINE@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.L_0470:
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTX+4], eax
.L_046F:
.L_046E:
.L_046D:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 24
.L_047F:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_00AC
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
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0480:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITASMLINE@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0483:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_0485:
cmp dword ptr [ebp-16], 0
je .L_0486
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_0489
.L_048A:
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_0487
.L_0489:
cmp dword ptr [ebp-20], 1
jne .L_048C
.L_048D:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
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
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_056A
cmp dword ptr [ebp-40], 0
je .L_0490
.L_056A:
cmp dword ptr [ebp-36], 0
jl .L_0492
jg .L_056B
cmp dword ptr [ebp-40], 0
jbe .L_0492
.L_056B:
push 0
push 2
push offset _Lt_00D2
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign@20
.L_0492:
.L_0491:
push 0
push -1
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0490:
.L_048F:
.L_048C:
.L_0487:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .L_0485
.L_0486:
lea ecx, [ebp-12]
push ecx
call _HWRITELINE@4
lea ecx, [ebp-12]
push ecx
call _fb_StrDelete@4
.L_0484:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIBEGIN@4:
push ebp
mov ebp, esp
.L_0493:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
push 0
push 11
push offset _Lt_0495
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
mov dword ptr [_CTX+20], 0
mov byte ptr [_CTX+24], 0
.L_0494:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIEND@4:
push ebp
mov ebp, esp
.L_0496:
lea eax, [_CTX+8]
push eax
call _HWRITELINE@4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
.L_0497:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVARINIELEMENTTYPE@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0498:
cmp dword ptr [_CTX+20], 0
jle .L_049B
mov eax, offset _CTX
add eax, dword ptr [_CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .L_049D
push 0
push -1
push -1
push 2
push offset _Lt_00F2
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+8]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
jmp .L_049C
.L_049D:
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.L_049C:
.L_049B:
.L_049A:
.L_0499:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVARINISEPARATOR@0:
.L_04A0:
cmp dword ptr [_CTX+20], 0
jle .L_04A3
push 0
push 3
push offset _Lt_00FF
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
.L_04A3:
.L_04A2:
.L_04A1:
ret
.balign 16
__EMITVARINII@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_04A4:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
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
jne .L_056E
cmp dword ptr [ebp+12], 0
jne .L_056E
.L_056F:
xor eax, eax
.L_056E:
and ebx, eax
je .L_04A7
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_04A7:
.L_04A6:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_04A8
mov dword ptr [ebp-8], 24
jmp .L_056C
.L_04A8:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_056C:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_04AB
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HEMITLONG@8
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
jmp .L_04AA
.L_04AB:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _HEMITINT@12
push eax
push -1
lea eax, [_CTX+8]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
.L_04AA:
call _HVARINISEPARATOR@0
.L_04A5:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITVARINIF@12:
push ebp
mov ebp, esp
.L_04AD:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HEMITFLOAT@8
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_04AE:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HMAYBEADDCONV@36:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_04AF:
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
je .L_04B2
jmp .L_04B0
.L_04B2:
.L_04B1:
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _HGETCONVOPCODE@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_04B4
jmp .L_04B0
.L_04B4:
.L_04B3:
push 0
push -1
push 2
push offset _Lt_028C
push -1
push -1
push dword ptr [ebp+20]
push -1
push 5
push offset _Lt_028B
push -1
push -1
push dword ptr [ebp+8]
push -1
push 2
push offset _Lt_00F2
push -1
push -1
push dword ptr [ebp+32]
push -1
push 3
push offset _Lt_04B5
push 0
push dword ptr [ebp-4]
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
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_04B0:
pop ebx
mov esp, ebp
pop ebp
ret 28
.balign 16
__EMITVARINIOFS@16:
push ebp
mov ebp, esp
sub esp, 308
push ebx
.L_04BD:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-16]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp+20], 0
jne .L_0572
cmp dword ptr [ebp+16], 0
je .L_04C0
.L_0572:
push 0
push -1
push 0
push 9
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 0
push -1
push 2
push offset _Lt_028C
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 5
push offset _Lt_028B
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push -1
lea eax, [ebp-44]
push eax
push 11
push offset _Lt_04C1
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 2
push offset _Lt_028C
push -1
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _fb_LongintToStr@8
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 3
push offset _Lt_00FF
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push -1
lea eax, [ebp-68]
push eax
push 6
push offset _Lt_04C8
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 2
push offset _Lt_028C
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 5
push offset _Lt_028B
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_00F2
push -1
push -1
lea eax, [ebp-68]
push eax
push 11
push offset _Lt_04D1
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat@20
push eax
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
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
lea eax, [ebp-284]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
.L_04C0:
.L_04BF:
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
call _fb_StrAssign@20
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
call _HMAYBEADDCONV@36
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_04BE:
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
.L_04D9:
cmp dword ptr [_CTX+20], 0
jle .L_04DC
push 0
push -1
mov eax, dword ptr [ebp+8]
push eax
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.L_04DC:
.L_04DB:
push 0
push 3
push offset _Lt_04DD
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
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
call _HUNESCAPE@8
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [_CTX+8]
push ebx
call _HBUILDSTRLIT@16
push 0
push 2
push offset _Lt_013B
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_04DA:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIWSTR@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_04DF:
cmp dword ptr [_CTX+20], 0
jle .L_04E2
push 0
push -1
mov eax, dword ptr [ebp+8]
push eax
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F2
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.L_04E2:
.L_04E1:
push 0
push 3
push offset _Lt_04DD
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
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
call _HUNESCAPEW@8
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [_CTX+8]
push ebx
call _HBUILDWSTRLIT@16
push 0
push 2
push offset _Lt_013B
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_04E0:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIPAD@8:
push ebp
mov ebp, esp
.L_04E4:
.L_04E5:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEBEGIN@8:
push ebp
mov ebp, esp
push ebx
.L_04E6:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
inc dword ptr [_CTX+20]
cmp dword ptr [_CTX+20], 128
jl .L_04E9
push offset _Lt_04ED
push 0
push 21
call _ERRREPORT@12
dec dword ptr [_CTX+20]
.L_04E9:
.L_04E8:
mov al, byte ptr [ebp+12]
mov ebx, offset _CTX
add ebx, dword ptr [_CTX+20]
mov byte ptr [ebx+24], al
cmp dword ptr [ebp+12], 0
je .L_04EF
push 0
push 3
push offset _Lt_04F0
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
jmp .L_04EE
.L_04EF:
push 0
push 3
push offset _Lt_01C6
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatByref@20
.L_04EE:
.L_04E7:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEEND@0:
push ebx
.L_04F1:
push 3
push offset _Lt_00FF
push -1
push 2
lea eax, [_CTX+8]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_04F4
push 0
push -1
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrLen@8
add eax, -2
push eax
lea eax, [_CTX+8]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
.L_04F4:
.L_04F3:
mov eax, offset _CTX
add eax, dword ptr [_CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .L_04F6
push 0
push 3
push offset _Lt_04F7
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatByref@20
jmp .L_04F5
.L_04F6:
push 0
push 3
push offset _Lt_01CD
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatByref@20
.L_04F5:
cmp dword ptr [_CTX+20], 0
jle .L_04F9
dec dword ptr [_CTX+20]
.L_04F9:
.L_04F8:
call _HVARINISEPARATOR@0
.L_04F2:
pop ebx
ret
.balign 16
__EMITFBCTINFBEGIN@0:
push ebp
mov ebp, esp
sub esp, 12
.L_04FA:
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
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_04FB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFSTRING@4:
push ebp
mov ebp, esp
sub esp, 24
.L_04FD:
push 0
push -1
push -1
push 4
push offset _Lt_0142
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
lea eax, [_CTX+184]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+184]
push eax
call _fb_StrAssign@20
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
add eax, dword ptr [_CTX+196]
inc eax
mov dword ptr [_CTX+196], eax
.L_04FE:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITFBCTINFEND@0:
push ebp
mov ebp, esp
sub esp, 12
.L_0501:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 32
push offset _Lt_0503
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [_CTX+196]
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0191
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_CTX+184]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_0505
push 0
push 27
push offset _Lt_0508
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0504
.L_0505:
push 0
push 21
push offset _Lt_050B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0504:
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
push 0
push 41
push offset _Lt_050C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0166
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 14
push offset _Lt_050D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [_CTX+196]
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 21
push offset _Lt_050E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_017E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 26
push offset _Lt_050F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+184]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+196], 0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0502:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPROCBEGIN@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_0510:
call _IRHLEMITPROCBEGIN@0
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
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset _Lt_0513
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .L_0515
push 0
push 11
push offset _Lt_0516
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0514
.L_0515:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 64
test eax, eax
je .L_0517
push 0
push 9
push offset _Lt_0518
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0517:
.L_0514:
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call _HEMITPROCHEADER@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 2
push offset _Lt_0519
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
inc dword ptr [_CTX]
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0511:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITPROCEND@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_051B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .L_051E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset _Lt_051F
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
call _HWRITELINE@4
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
.L_051E:
.L_051D:
dec dword ptr [_CTX]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0521
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
call _IRHLEMITPROCEND@0
.L_051C:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITSCOPEBEGIN@4:
push ebp
mov ebp, esp
.L_0523:
.L_0524:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSCOPEEND@4:
push ebp
mov ebp, esp
.L_0525:
.L_0526:
mov esp, ebp
pop ebp
ret 4
.balign 16
__GLOBAL__I:
.L_0528:
push offset _CTX
call __ZN13IRLLVMCONTEXTC1Ev
add esp, 4
.L_0529:
ret
.balign 16
__GLOBAL__D:
.L_052B:
push offset _CTX
call __ZN13IRLLVMCONTEXTD1Ev
add esp, 4
.L_052C:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"
.balign 4

.globl _IRLLVM_VTBL
_IRLLVM_VTBL:
.int __INIT@0
.int __END@0
.int __EMITBEGIN@0
.int __EMITEND@0
.int __GETOPTIONVALUE@4
.int __SUPPORTSOP@8
.int __PROCBEGIN@4
.int __PROCEND@4
.int __PROCALLOCARG@8
.int __PROCALLOCLOCAL@8
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

.section .data
.balign 4
_BUILTINS:
.int _Lt_006A
.skip 4,0
.int _Lt_006B
.skip 4,0
.int _Lt_006C
.skip 4,0
.int _Lt_006D
.skip 4,0
.int _Lt_006E
.skip 4,0
.int _Lt_006F
.skip 4,0
.int _Lt_0070
.skip 4,0
.int _Lt_0071
.skip 4,0
.int _Lt_0072
.skip 4,0
.int _Lt_0073
.skip 4,0
.int _Lt_0074
.skip 4,0
.int _Lt_0075
.skip 4,0
.int _Lt_0076
.skip 4,0
.int _Lt_0077
.skip 4,0
.int _Lt_0078
.skip 4,0
.int _Lt_0079
.skip 4,0
.int _Lt_007A
.skip 4,0
.int _Lt_007B
.skip 4,0
.balign 4
_Lt_006A:	.ascii	"declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1) nounwind\0"
.balign 4
_Lt_006B:	.ascii	"declare void @llvm.memmove.p0i8.p0i8.i32(i8*, i8*, i32, i32, i1) nounwind\0"
.balign 4
_Lt_006C:	.ascii	"declare float  @llvm.sin.f32(float ) nounwind\0"
.balign 4
_Lt_006D:	.ascii	"declare double @llvm.sin.f64(double) nounwind\0"
.balign 4
_Lt_006E:	.ascii	"declare float  @llvm.cos.f32(float ) nounwind\0"
.balign 4
_Lt_006F:	.ascii	"declare double @llvm.cos.f64(double) nounwind\0"
.balign 4
_Lt_0070:	.ascii	"declare float  @llvm.exp.f32(float ) nounwind\0"
.balign 4
_Lt_0071:	.ascii	"declare double @llvm.exp.f64(double) nounwind\0"
.balign 4
_Lt_0072:	.ascii	"declare float  @llvm.log.f32(float ) nounwind\0"
.balign 4
_Lt_0073:	.ascii	"declare double @llvm.log.f64(double) nounwind\0"
.balign 4
_Lt_0074:	.ascii	"declare float  @llvm.sqrt.f32(float ) nounwind\0"
.balign 4
_Lt_0075:	.ascii	"declare double @llvm.sqrt.f64(double) nounwind\0"
.balign 4
_Lt_0076:	.ascii	"declare float  @llvm.floor.f32(float ) nounwind\0"
.balign 4
_Lt_0077:	.ascii	"declare double @llvm.floor.f64(double) nounwind\0"
.balign 4
_Lt_0078:	.ascii	"declare float  @llvm.fabs.f32(float ) nounwind\0"
.balign 4
_Lt_0079:	.ascii	"declare double @llvm.fabs.f64(double) nounwind\0"
.balign 4
_Lt_007A:	.ascii	"declare float  @llvm.nearbyint.f32(float ) nounwind\0"
.balign 4
_Lt_007B:	.ascii	"declare double @llvm.nearbyint.f64(double) nounwind\0"

.section .bss
.balign 4
	.lcomm	_CTX,240

.section .data
.balign 4
_DTYPENAME:
.int _Lt_0089
.int _Lt_0089
.int _Lt_0089
.int _Lt_0089
.int _Lt_0089
.int _Lt_008A
.int _Lt_008A
.long 0
.long 0
.long 0
.long 0
.int _Lt_008B
.int _Lt_008B
.int _Lt_008C
.int _Lt_008C
.int _Lt_008D
.int _Lt_008E
.int _Lt_008F
.int _Lt_0089
.int _Lt_0090
.long 0
.long 0
.long 0
.int _Lt_0089
.long 0
.skip 4,0
.balign 4
_Lt_0089:	.ascii	"i8\0"
.balign 4
_Lt_008A:	.ascii	"i16\0"
.balign 4
_Lt_008B:	.ascii	"i32\0"
.balign 4
_Lt_008C:	.ascii	"i64\0"
.balign 4
_Lt_008D:	.ascii	"float\0"
.balign 4
_Lt_008E:	.ascii	"double\0"
.balign 4
_Lt_008F:	.ascii	"%FBSTRING\0"
.balign 4
_Lt_0090:	.ascii	"%struct.va_list\0"
.balign 4
_Lt_009D:	.ascii	"\t\0"
.balign 4
_Lt_009F:	.ascii	"\r\n\0"
.balign 4
_Lt_00AC:	.ascii	"; \0"
.balign 4
_Lt_00B4:	.ascii	":\0"
.balign 4
_Lt_00C9:	.ascii	"vr\0"
.balign 4
_Lt_00D2:	.ascii	"+\0"
.balign 4
_Lt_00DA:	.ascii	"*\0"
.balign 4
_Lt_00DF:	.ascii	"$\0"
.balign 4
_Lt_00E9:	.ascii	"x86_stdcallcc \0"
.balign 4
_Lt_00EB:	.ascii	"x86_thiscall \0"
.balign 4
_Lt_00ED:	.ascii	"x86_fastcall \0"
.balign 4
_Lt_00F2:	.ascii	" \0"
.balign 4
_Lt_00F6:	.ascii	"( \0"
.balign 4
_Lt_00FF:	.ascii	", \0"
.balign 4
_Lt_0106:	.ascii	"...\0"
.balign 4
_Lt_010F:	.ascii	" )\0"
.balign 4
_Lt_0112:	.ascii	" nounwind\0"
.balign 4
_Lt_0115:	.ascii	" naked\0"
.balign 4
_Lt_0118:	.ascii	"%\0"
.balign 4
_Lt_012C:	.ascii	" = type \0"
.balign 4
_Lt_013B:	.ascii	"\"\0"
.balign 4
_Lt_013E:	.ascii	"\\\0"
.balign 4
_Lt_0142:	.ascii	"\\00\0"
.balign 4
_Lt_0166:	.ascii	"[\0"
.balign 4
_Lt_0167:	.ascii	" x i8]\0"
.balign 4
_Lt_017D:	.ascii	" x \0"
.balign 4
_Lt_017E:	.ascii	"]\0"
.balign 4
_Lt_018E:	.ascii	" = \0"
.balign 4
_Lt_0190:	.ascii	"private constant \0"
.balign 4
_Lt_0191:	.ascii	" c\"\0"
.balign 4
_Lt_01A3:	.ascii	"global\0"
.balign 4
_Lt_01A4:	.ascii	"alloca\0"
.balign 4
_Lt_01A7:	.ascii	" zeroinitializer\0"
.balign 4
_Lt_01B4:	.ascii	"declare \0"
.balign 4
_Lt_01C5:	.ascii	"<\0"
.balign 4
_Lt_01C6:	.ascii	"{ \0"
.balign 4
_Lt_01CD:	.ascii	" }\0"
.balign 4
_Lt_01D0:	.ascii	">\0"
.balign 4
_Lt_01D5:	.ascii	"{ i32, void ()* } { i32 \0"
.balign 4
_Lt_01D7:	.ascii	", void ()* \0"
.balign 4
_Lt_01EE:	.ascii	"%FBSTRING = type { i8*, i64, i64 }\0"
.balign 4
_Lt_01F0:	.ascii	"%FBSTRING = type { i8*, i32, i32 }\0"
.balign 4
_Lt_01FF:	.ascii	"@llvm.global_ctors = appending global [\0"
.balign 4
_Lt_0200:	.ascii	" x { i32, void ()* }] [\0"
.balign 4
_Lt_0208:	.ascii	"@llvm.global_dtors = appending global [\0"
.balign 4
_Lt_021C:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_022E:	.ascii	"paramvar \0"
.balign 4
_Lt_0231:	.ascii	" = alloca \0"
.balign 4
_Lt_0233:	.ascii	"store \0"
.balign 4
_Lt_0239:	.ascii	"localvar \0"
.balign 4
_Lt_025E:	.ascii	" = load \0"
.balign 4
_Lt_026C:	.ascii	"void\0"
.balign 4
_Lt_0288:	.ascii	"inttoptr \0"
.balign 4
_Lt_0289:	.ascii	"trunc \0"
.balign 4
_Lt_028A:	.ascii	"(\0"
.balign 4
_Lt_028B:	.ascii	" to \0"
.balign 4
_Lt_028C:	.ascii	")\0"
.balign 4
_Lt_0291:	.ascii	"0x\0"
.balign 4
_Lt_02AD:	.ascii	"%vr\0"
.balign 4
_Lt_02B2:	.ascii	"bitcast (\0"
.balign 4
_Lt_02B3:	.ascii	"* \0"
.balign 4
_Lt_02B8:	.ascii	"label \0"
.balign 4
_Lt_02BB:	.ascii	"br label %\0"
.balign 4
_Lt_02C8:	.ascii	"fadd\0"
.balign 4
_Lt_02C9:	.ascii	"add\0"
.balign 4
_Lt_02CF:	.ascii	"fsub\0"
.balign 4
_Lt_02D0:	.ascii	"sub\0"
.balign 4
_Lt_02D6:	.ascii	"fmul\0"
.balign 4
_Lt_02D7:	.ascii	"mul\0"
.balign 4
_Lt_02D9:	.ascii	"fdiv\0"
.balign 4
_Lt_02DB:	.ascii	"sdiv\0"
.balign 4
_Lt_02E1:	.ascii	"frem\0"
.balign 4
_Lt_02E2:	.ascii	"srem\0"
.balign 4
_Lt_02E4:	.ascii	"shl\0"
.balign 4
_Lt_02E6:	.ascii	"ashr\0"
.balign 4
_Lt_02E8:	.ascii	"and\0"
.balign 4
_Lt_02EA:	.ascii	"or\0"
.balign 4
_Lt_02EC:	.ascii	"xor\0"
.balign 4
_Lt_02EE:	.ascii	"icmp eq\0"
.balign 4
_Lt_02F0:	.ascii	"icmp ne\0"
.balign 4
_Lt_02F2:	.ascii	"icmp sgt\0"
.balign 4
_Lt_02F4:	.ascii	"icmp slt\0"
.balign 4
_Lt_02F6:	.ascii	"icmp sge\0"
.balign 4
_Lt_02F8:	.ascii	"icmp sle\0"
.balign 4
_Lt_02FA:	.ascii	"eqv\0"
.balign 4
_Lt_02FC:	.ascii	"imp\0"
.balign 4
_Lt_0305:	.ascii	"br i1 \0"
.balign 4
_Lt_0307:	.ascii	"label %\0"
.balign 4
_Lt_030E:	.ascii	" = sext \0"
.balign 4
_Lt_030F:	.ascii	"i1 \0"
.balign 4
_Lt_031B:	.ascii	"branchbop \0"
.balign 4
_Lt_031F:	.ascii	"selfbop \0"
.balign 4
_Lt_0322:	.ascii	"bop \0"
.balign 4
_Lt_0327:	.ascii	" = call \0"
.balign 4
_Lt_032A:	.ascii	"float @llvm.\0"
.balign 4
_Lt_032E:	.ascii	"fabs\0"
.balign 4
_Lt_0331:	.ascii	"sin\0"
.balign 4
_Lt_0334:	.ascii	"cos\0"
.balign 4
_Lt_0337:	.ascii	"exp\0"
.balign 4
_Lt_033A:	.ascii	"log\0"
.balign 4
_Lt_033D:	.ascii	"sqrt\0"
.balign 4
_Lt_0340:	.ascii	"floor\0"
.balign 4
_Lt_0342:	.ascii	".f32(float \0"
.balign 4
_Lt_0343:	.ascii	"double @llvm.\0"
.balign 4
_Lt_0354:	.ascii	".f64(double \0"
.balign 4
_Lt_035B:	.ascii	"selfuop \0"
.balign 4
_Lt_035E:	.ascii	"uop \0"
.balign 4
_Lt_037F:	.ascii	"fptrunc\0"
.balign 4
_Lt_0380:	.ascii	"fpext\0"
.balign 4
_Lt_0385:	.ascii	"sitofp\0"
.balign 4
_Lt_0386:	.ascii	"uitofp\0"
.balign 4
_Lt_038F:	.ascii	"fptosi\0"
.balign 4
_Lt_0390:	.ascii	"fptoui\0"
.balign 4
_Lt_0397:	.ascii	"bitcast\0"
.balign 4
_Lt_0398:	.ascii	"inttoptr\0"
.balign 4
_Lt_039A:	.ascii	"ptrtoint\0"
.balign 4
_Lt_03AD:	.ascii	"trunc\0"
.balign 4
_Lt_03B0:	.ascii	"sext\0"
.balign 4
_Lt_03B1:	.ascii	"zext\0"
.balign 4
_Lt_03BF:	.ascii	"float @llvm.nearbyint.f32(float \0"
.balign 4
_Lt_03C0:	.ascii	"double @llvm.nearbyint.f64(double \0"
.balign 4
_Lt_03CE:	.ascii	"conv \0"
.balign 4
_Lt_03CF:	.ascii	" => \0"
.balign 4
_Lt_03DC:	.ascii	" := \0"
.balign 4
_Lt_03E7:	.ascii	"loadres \0"
.balign 4
_Lt_03EA:	.ascii	"ret \0"
.balign 4
_Lt_03F4:	.ascii	"addrof \0"
.balign 4
_Lt_03F9:	.ascii	"deref \0"
.balign 4
_Lt_0408:	.ascii	"call \0"
.balign 4
_Lt_0409:	.ascii	"void \0"
.balign 4
_Lt_0410:	.ascii	"arg \0"
.balign 4
_Lt_041F:	.ascii	"()\0"
.balign 4
_Lt_0425:	.ascii	"callptr \0"
.balign 4
_Lt_042B:	.ascii	"jumpptr \0"
.balign 4
_Lt_042E:	.ascii	"goto *\0"
.balign 4
_Lt_0433:	.ascii	"goto \0"
.balign 4
_Lt_043A:	.ascii	"jmptb \0"
.balign 4
_Lt_043D:	.ascii	"switch \0"
.balign 4
_Lt_044E:	.ascii	"call void \0"
.balign 4
_Lt_0452:	.ascii	"memclear \0"
.balign 4
_Lt_0457:	.ascii	"memmove \0"
.balign 4
_Lt_0458:	.ascii	" <= \0"
.balign 4
_Lt_0460:	.ascii	"@llvm.memset.p0i8.i32( \0"
.balign 4
_Lt_0461:	.ascii	"i8* \0"
.balign 4
_Lt_0462:	.ascii	"i8 0, \0"
.balign 4
_Lt_0463:	.ascii	"i32 \0"
.balign 4
_Lt_0466:	.ascii	"@llvm.memmove.p0i8.p0i8.i32( \0"
.balign 4
_Lt_0467:	.ascii	"i32 1, i1 false )\0"
.balign 4
_Lt_0472:	.ascii	"#line \0"
.balign 4
_Lt_0473:	.ascii	" \"\0"
.balign 4
_Lt_0474:	.ascii	"\\\\\0"
.balign 4
_Lt_0495:	.ascii	" = global \0"
.balign 4
_Lt_04B5:	.ascii	" (\0"
.balign 4
_Lt_04C1:	.ascii	"ptrtoint (\0"
.balign 4
_Lt_04C8:	.ascii	"add (\0"
.balign 4
_Lt_04D1:	.ascii	"inttoptr (\0"
.balign 4
_Lt_04DD:	.ascii	"c\"\0"
.balign 4
_Lt_04ED:	.ascii	"global variable/array initializer nesting level too deep (MAXVARINISCOPES=128)\0"
.balign 4
_Lt_04F0:	.ascii	"[ \0"
.balign 4
_Lt_04F7:	.ascii	" ]\0"
.balign 4
_Lt_0503:	.ascii	"@__fbctinf = internal constant \0"
.balign 4
_Lt_0508:	.ascii	", section \"__DATA,fbctinf\"\0"
.balign 4
_Lt_050B:	.ascii	", section \".fbctinf\"\0"
.balign 4
_Lt_050C:	.ascii	"@llvm.used = appending global [1 x i8*] \0"
.balign 4
_Lt_050D:	.ascii	"i8* bitcast (\0"
.balign 4
_Lt_050E:	.ascii	"* @__fbctinf to i8*)\0"
.balign 4
_Lt_050F:	.ascii	", section \"llvm.metadata\"\0"
.balign 4
_Lt_0513:	.ascii	"define \0"
.balign 4
_Lt_0516:	.ascii	"dllexport \0"
.balign 4
_Lt_0518:	.ascii	"private \0"
.balign 4
_Lt_0519:	.ascii	"{\0"
.balign 4
_Lt_051F:	.ascii	"ret void\0"
.balign 4
_Lt_0521:	.ascii	"}\0"

.section .ctors
.int _fb_ctor__irzllvm
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
