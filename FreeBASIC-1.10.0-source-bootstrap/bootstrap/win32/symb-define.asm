	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBDEFINEINIT@4
_SYMBDEFINEINIT@4:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_0289:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 6
push 12
push 500
lea eax, [_SYMB+98696]
push eax
call _LISTINIT@16
push 6
push 16
push 1000
lea eax, [_SYMB+98728]
push eax
call _LISTINIT@16
push -1
push 16
lea eax, [_SYMB+98760]
push eax
call _HASHINIT@12
mov dword ptr [ebp-56], 0
.L_028E:
push 0
push 0
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-56]
sal eax, 4
cmp dword ptr [_DEFTB+eax+4], 0
je .L_0290
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ebx, dword ptr [_DEFTB+eax+8]
and ebx, 1
je .L_0292
push 0
push -1
push 2
push offset _Lt_01AB
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 2
push offset _Lt_01AB
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
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
call _fb_StrAssign@20
.L_0292:
.L_0291:
.L_0290:
.L_028F:
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+8]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+12]
push 0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax]
call _SYMBADDDEFINE@24
.L_028C:
inc dword ptr [ebp-56]
.L_028B:
cmp dword ptr [ebp-56], 36
jle .L_028E
.L_028D:
push 0
push 0
push 0
push 0
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 3
push offset _Lt_0296
push -1
push -1
push 0
push dword ptr [_ENV+268]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push 6
push offset _Lt_0295
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
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
call _SYMBADDDEFINE@24
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
cmp dword ptr [_ENV+108], 11
jne .L_029B
push 0
push 0
push 0
push 0
push 0
push offset _Lt_029C
call _SYMBADDDEFINE@24
.L_029B:
.L_029A:
mov eax, dword ptr [_ENV+284]
and eax, 1
je .L_029E
push 0
push 0
push 0
push 0
push 0
push offset _Lt_029F
call _SYMBADDDEFINE@24
jmp .L_029D
.L_029E:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02A0
call _SYMBADDDEFINE@24
.L_029D:
call _FBIS64BIT@0
test eax, eax
je .L_02A2
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02A3
call _SYMBADDDEFINE@24
.L_02A2:
.L_02A1:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 2
je .L_02A7
.L_02A8:
cmp dword ptr [ebp-56], 3
jne .L_02A6
.L_02A7:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02A9
call _SYMBADDDEFINE@24
jmp .L_02A4
.L_02A6:
cmp dword ptr [ebp-56], 0
je .L_02AB
.L_02AC:
cmp dword ptr [ebp-56], 1
jne .L_02AA
.L_02AB:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02AD
call _SYMBADDDEFINE@24
push 1
push offset _HDEFASM_CB@0
push 0
push 0
push 0
push offset _Lt_02AE
call _SYMBADDDEFINE@24
jmp .L_02A4
.L_02AA:
cmp dword ptr [ebp-56], 4
je .L_02B0
.L_02B1:
cmp dword ptr [ebp-56], 5
je .L_02B0
.L_02B2:
cmp dword ptr [ebp-56], 6
jne .L_02AF
.L_02B0:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02B3
call _SYMBADDDEFINE@24
.L_02AF:
.L_02A4:
call _FBISHOSTBIGENDIAN@0
test eax, eax
je .L_02B5
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02B6
call _SYMBADDDEFINE@24
.L_02B5:
.L_02B4:
cmp dword ptr [ebp+8], 0
je .L_02B8
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02B9
call _SYMBADDDEFINE@24
.L_02B8:
.L_02B7:
cmp dword ptr [_ENV+116], 1
jl .L_02BB
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02BC
call _SYMBADDDEFINE@24
.L_02BB:
.L_02BA:
push 0
push -1
push dword ptr [_ENV+124]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 0
push 0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
push eax
push dword ptr [ebp-12]
push offset _Lt_02BD
call _SYMBADDDEFINE@24
mov dword ptr [_SYMB+98772], 0
push 0
push 32
lea eax, [_SYMB+98776]
push eax
call _HASHINIT@12
mov dword ptr [ebp-56], 0
.L_02C1:
mov eax, dword ptr [ebp-56]
imul eax, 40
push dword ptr [_MACROTB+eax+20]
push 0
call _SYMBADDDEFINEPARAM@8
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [_MACROTB+eax+16]
dec ebx
mov dword ptr [ebp-76], ebx
jmp .L_02C3
.L_02C6:
mov ebx, dword ptr [ebp-56]
imul ebx, 40
lea eax, [_MACROTB+ebx]
mov ebx, dword ptr [ebp-72]
sal ebx, 2
add eax, ebx
push dword ptr [eax+20]
push dword ptr [ebp-64]
call _SYMBADDDEFINEPARAM@8
mov dword ptr [ebp-64], eax
.L_02C4:
inc dword ptr [ebp-72]
.L_02C3:
mov eax, dword ptr [ebp-76]
cmp dword ptr [ebp-72], eax
jle .L_02C6
.L_02C5:
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [_MACROTB+eax+4]
or ebx, 8
push ebx
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [_MACROTB+ebx+16]
push 0
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [_MACROTB+ebx]
call _SYMBADDDEFINEMACRO@20
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [ebp-68]
mov ecx, dword ptr [_MACROTB+eax+8]
mov dword ptr [ebx+76], ecx
mov ecx, dword ptr [ebp-56]
imul ecx, 40
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [_MACROTB+ecx+12]
mov dword ptr [ebx+80], eax
.L_02BF:
inc dword ptr [ebp-56]
.L_02BE:
cmp dword ptr [ebp-56], 12
jle .L_02C1
.L_02C0:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_028A:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBDEFINEEND@0
_SYMBDEFINEEND@0:
.L_02C7:
lea eax, [_SYMB+98776]
push eax
call _HASHEND@4
mov dword ptr [_SYMB+98772], 0
lea eax, [_SYMB+98760]
push eax
call _HASHEND@4
lea eax, [_SYMB+98696]
push eax
call _LISTEND@4
lea eax, [_SYMB+98728]
push eax
call _LISTEND@4
.L_02C8:
ret
.balign 16

.globl _SYMBADDDEFINE@24
_SYMBADDDEFINE@24:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02C9:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push 4
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02CC
jmp .L_02CA
.L_02CC:
.L_02CB:
mov eax, dword ptr [ebp+16]
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _fb_StrAssign@20
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _SYMBADDDEFINEW@24
_SYMBADDDEFINEW@24:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02CD:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push 7
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02D0
jmp .L_02CE
.L_02D0:
.L_02CF:
mov eax, dword ptr [ebp+16]
sal eax, 1
add eax, 2
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _fb_WstrAssign@12
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02CE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _SYMBADDDEFINEMACRO@20
_SYMBADDDEFINEMACRO@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02D1:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02D4
jmp .L_02D2
.L_02D4:
.L_02D3:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+76], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+80], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBADDDEFINEPARAM@8
_SYMBADDDEFINEPARAM@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_02DC:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98696]
push eax
call _LISTNEWNODE@4
mov dword ptr [_Lt_02E6], eax
cmp dword ptr [ebp+8], 0
je .L_02DF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_02E6]
mov dword ptr [eax+8], ebx
jmp .L_02DE
.L_02DF:
cmp dword ptr [_SYMB+98772], 0
jle .L_02E1
call _HRESETDEFHASH@0
.L_02E1:
.L_02E0:
.L_02DE:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [_Lt_02E6]
mov dword ptr [ebx], eax
mov eax, dword ptr [_Lt_02E6]
push dword ptr [eax]
push dword ptr [ebp+12]
call _HUCASE@8
mov eax, dword ptr [_Lt_02E6]
push dword ptr [eax]
call _HASHHASH@4
mov dword ptr [_Lt_02E7], eax
push dword ptr [_Lt_02E7]
mov eax, dword ptr [_Lt_02E6]
push dword ptr [eax]
lea eax, [_SYMB+98776]
push eax
call _HASHLOOKUPEX@12
test eax, eax
je .L_02E3
mov eax, dword ptr [_Lt_02E6]
cmp dword ptr [eax], 0
je .L_02E5
mov eax, dword ptr [_Lt_02E6]
push dword ptr [eax]
call _free
add esp, 4
.L_02E5:
.L_02E4:
push dword ptr [_Lt_02E6]
lea eax, [_SYMB+98696]
push eax
call _LISTDELNODE@8
mov dword ptr [ebp-4], 0
jmp .L_02DD
.L_02E3:
.L_02E2:
push dword ptr [_Lt_02E7]
push dword ptr [_Lt_02E6]
mov eax, dword ptr [_Lt_02E6]
push dword ptr [eax]
lea eax, [_SYMB+98776]
push eax
call _HASHADD@16
lea ebx, [_SYMB+98696]
mov ecx, dword ptr [_SYMB+98772]
sal ecx, 3
add ebx, ecx
mov dword ptr [ebx+92], eax
lea eax, [_SYMB+98696]
mov ebx, dword ptr [_SYMB+98772]
sal ebx, 3
add eax, ebx
mov ebx, dword ptr [_Lt_02E7]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [_Lt_02E6]
mov eax, dword ptr [_SYMB+98772]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_02E6]
mov dword ptr [eax+8], 0
inc dword ptr [_SYMB+98772]
mov eax, dword ptr [_Lt_02E6]
mov dword ptr [ebp-4], eax
.L_02DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_02E6,4
.balign 4
	.lcomm	_Lt_02E7,4

.section .text
.balign 16

.globl _SYMBADDDEFINETOK@8
_SYMBADDDEFINETOK@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02E8:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98728]
push eax
call _LISTNEWNODE@4
mov dword ptr [_Lt_02F2], eax
cmp dword ptr [ebp+8], 0
je .L_02EB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_02F2]
mov dword ptr [eax+12], ebx
.L_02EB:
.L_02EA:
mov ebx, dword ptr [_Lt_02F2]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [_Lt_02F2]
mov dword ptr [eax+12], 0
mov eax, dword ptr [_Lt_02F2]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
jmp .L_02ED
.L_02EF:
mov ebx, dword ptr [_Lt_02F2]
mov dword ptr [ebx+4], 0
jmp .L_02EC
.L_02F0:
mov ebx, dword ptr [_Lt_02F2]
mov dword ptr [ebx+4], 0
jmp .L_02EC
.L_02ED:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967294
cmp ebx, 1
ja .L_02EC
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_02F1+ebx*4-8]
_.L_02F1:
.int .L_02EF
.int .L_02F0
.L_02EC:
mov ebx, dword ptr [_Lt_02F2]
mov dword ptr [ebp-4], ebx
.L_02E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_02F2,4

.section .text
.balign 16

.globl _SYMBDELDEFINETOK@4
_SYMBDELDEFINETOK@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02F3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_02F6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .L_02F5
.L_02F6:
mov dword ptr [ebp-4], 0
.L_02F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .L_02F9
.L_02FA:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_02FC
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _free
add esp, 4
.L_02FC:
.L_02FB:
jmp .L_02F7
.L_02F9:
cmp dword ptr [ebp-8], 3
jne .L_02FD
.L_02FE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_0300
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _free
add esp, 4
.L_0300:
.L_02FF:
.L_02FD:
.L_02F7:
push dword ptr [ebp+8]
lea ebx, [_SYMB+98728]
push ebx
call _LISTDELNODE@8
.L_02F4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBDELDEFINE@4
_SYMBDELDEFINE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_030B:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_030E
jmp .L_030C
.L_030E:
.L_030D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .L_0310
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_0312
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_0314
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _free
add esp, 4
.L_0314:
.L_0313:
jmp .L_0311
.L_0312:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_0316
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _free
add esp, 4
.L_0316:
.L_0315:
.L_0311:
jmp .L_030F
.L_0310:
push dword ptr [ebp+8]
call _HDELDEFINETOKENS@4
.L_030F:
push dword ptr [ebp+8]
call _HDELDEFINEPARAMS@4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
mov dword ptr [ebp-4], -1
.L_030C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__symbzdefine:
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
_HDEFFILE_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0069:
push 0
push 261
lea eax, [_ENV+304]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_006A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFPATH_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_006B:
push 0
push -1
call _FBGETINPUTFILEPARENTDIR@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_006C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFUNCTION_CB@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+12]
and ebx, 4096
test ebx, ebx
je .L_0070
push 0
push 16
push offset _Lt_001F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_006F
.L_0070:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+12]
and eax, 8192
test eax, eax
je .L_0071
push 0
push 20
push offset _Lt_0020
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_006F
.L_0071:
push 0
push 0
push dword ptr [_PARSER+108]
call _SYMBGETFULLPROCNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_006F:
.L_006E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFLINE_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0072:
push 0
push -1
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0073:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_UNIXTIMETODATESERIAL@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0074:
fild qword ptr [ebp+8]
fdiv qword ptr [_Lt_0317]
fadd qword ptr [_Lt_0318]
fstp qword ptr [ebp-8]
.L_0075:
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKSOURCEDATEEPOCH@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov byte ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push dword ptr [ebp+8]
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-16]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_0079
mov byte ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0077
.L_0079:
.L_0078:
mov dword ptr [ebp-28], 0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-32], eax
jmp .L_007B
.L_007E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-28]
movzx ebx, byte ptr [ecx]
cmp ebx, 57
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0080
mov byte ptr [ebp-4], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete@4
jmp .L_0077
.L_0080:
.L_007F:
.L_007C:
inc dword ptr [ebp-28]
.L_007B:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .L_007E
.L_007D:
push dword ptr [ebp+8]
call _fb_VALULNG@4
push edx
push eax
fild qword ptr [esp]
add esp, 8
cmp edx, 0
jns .L_031B
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_031B:
fstp qword ptr [ebp-24]
fld qword ptr [ebp-24]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fld dword ptr [esp]
fcomip
jbe .L_031C
fistp qword ptr [esp]
pop edx
pop eax
jmp .L_031D
.L_031C:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop edx
pop eax
xor eax, 0x80000000
.L_031D:
cmp eax, 58
jb .L_0082
ja .L_031E
cmp edx, 4294197631
jbe .L_0082
.L_031E:
mov byte ptr [ebp-4], 0
lea edx, [ebp-16]
push edx
call _fb_StrDelete@4
jmp .L_0077
.L_0082:
.L_0081:
mov byte ptr [ebp-4], 1
lea edx, [ebp-16]
push edx
call _fb_StrDelete@4
jmp .L_0077
lea edx, [ebp-16]
push edx
call _fb_StrDelete@4
.L_0077:
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETCOMPILETIME@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0083:
cmp dword ptr [_Lt_031F], 0
jne .L_0086
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [_Lt_031F], 1
push 0
push -1
push 17
push offset _Lt_0087
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_GetEnviron@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0089
lea eax, [ebp-20]
push eax
call _HCHECKSOURCEDATEEPOCH@4
test al, al
je .L_008B
lea eax, [ebp-20]
push eax
call _fb_VALULNG@4
push edx
push eax
call _UNIXTIMETODATESERIAL@8
fstp qword ptr [_Lt_0320]
mov dword ptr [_Lt_031F], 2
jmp .L_008A
.L_008B:
push 0
push 1
push 0
push 0
push 328
call _ERRREPORTEX@20
.L_008A:
.L_0089:
.L_0088:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_0086:
.L_0085:
cmp dword ptr [_Lt_031F], 2
jne .L_008D
push dword ptr [_Lt_0320]
push dword ptr [_Lt_0320+4]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
jmp .L_008C
.L_008D:
call _fb_Now@0
fstp qword ptr [ebp-8]
.L_008C:
.L_0084:
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_031F:
.int 0
.balign 8
_Lt_0320:
.quad 0x0000000000000000

.section .text
.balign 16
_HDEFDATE_CB@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008E:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 11
push offset _Lt_0090
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HGETCOMPILETIME@0
sub esp,8
fstp qword ptr [esp]
call _fb_StrFormat@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_008F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFDATEISO_CB@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0092:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 11
push offset _Lt_0094
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HGETCOMPILETIME@0
sub esp,8
fstp qword ptr [esp]
call _fb_StrFormat@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0093:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFTIME_CB@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0096:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset _Lt_0098
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HGETCOMPILETIME@0
sub esp,8
fstp qword ptr [esp]
call _fb_StrFormat@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0097:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFMULTITHREAD_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_009A:
push 0
push -1
push dword ptr [_ENV+232]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_009B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTBYVAL_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_009C:
push 0
push -1
mov eax, dword ptr [_ENV+1080]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_009D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTDYNAMIC_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_009E:
push 0
push -1
mov eax, dword ptr [_ENV+1096]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_009F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTESCAPE_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A0:
push 0
push -1
mov eax, dword ptr [_ENV+1092]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00A1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTEXPLICIT_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A2:
push 0
push -1
mov eax, dword ptr [_ENV+1084]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00A3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTPRIVATE_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A4:
push 0
push -1
mov eax, dword ptr [_ENV+1088]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00A5:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTGOSUB_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A6:
push 0
push -1
mov eax, dword ptr [_ENV+1100]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00A7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFGUI_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A8:
push 0
push -1
mov eax, dword ptr [_ENV+256]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00A9:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTIMIZE_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AA:
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00AB:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTEXE_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AC:
push 0
push -1
mov eax, dword ptr [_ENV+96]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00AD:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTLIB_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AE:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00AF:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTDLL_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B0:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTOBJ_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B2:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFDEBUG_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B4:
push 0
push -1
push dword ptr [_ENV+144]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B5:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFERR_CB@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B6:
mov dword ptr [ebp-16], 0
cmp dword ptr [_ENV+156], 0
je .L_00B9
mov dword ptr [ebp-16], 1
.L_00B9:
.L_00B8:
cmp dword ptr [_ENV+160], 0
je .L_00BB
or dword ptr [ebp-16], 2
.L_00BB:
.L_00BA:
cmp dword ptr [_ENV+164], 0
je .L_00BD
or dword ptr [ebp-16], 4
.L_00BD:
.L_00BC:
cmp dword ptr [_ENV+172], 0
je .L_00BF
or dword ptr [ebp-16], 8
.L_00BF:
.L_00BE:
cmp dword ptr [_ENV+176], 0
je .L_00C1
or dword ptr [ebp-16], 16
.L_00C1:
.L_00C0:
cmp dword ptr [_ENV+152], 0
je .L_00C3
or dword ptr [ebp-16], 32
.L_00C3:
.L_00C2:
cmp dword ptr [_ENV+148], 0
je .L_00C5
or dword ptr [ebp-16], 64
.L_00C5:
.L_00C4:
cmp dword ptr [_ENV+144], 0
je .L_00C7
or dword ptr [ebp-16], 128
.L_00C7:
.L_00C6:
cmp dword ptr [_ENV+168], 0
je .L_00C9
or dword ptr [ebp-16], 256
.L_00C9:
.L_00C8:
cmp dword ptr [_ENV+180], 0
je .L_00CB
or dword ptr [ebp-16], 512
.L_00CB:
.L_00CA:
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFLANG_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00CC:
push 0
push -1
push dword ptr [_ENV+136]
call _FBGETLANGNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00CD:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFBACKEND_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00CE:
push 0
push -1
push dword ptr [_ENV+104]
call _FBGETBACKENDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00CF:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFPU_CB@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00D0:
push 5
call _FBGETOPTION@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D4
.L_00D5:
push 0
push 4
push offset _Lt_00D6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_00D1
jmp .L_00D2
.L_00D4:
cmp dword ptr [ebp-16], 1
jne .L_00D7
.L_00D8:
push 0
push 4
push offset _Lt_00D9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_00D1
.L_00D7:
.L_00DA:
.L_00D2:
.L_00D1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFPMODE_CB@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DB:
push 6
call _FBGETOPTION@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00DF
.L_00E0:
push 0
push 8
push offset _Lt_00E1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_00DC
jmp .L_00DD
.L_00DF:
cmp dword ptr [ebp-16], 1
jne .L_00E2
.L_00E3:
push 0
push 5
push offset _Lt_00E4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_00DC
.L_00E2:
.L_00E5:
.L_00DD:
.L_00DC:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFGCC_CB@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E6:
push 0
push -1
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00E7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFASM_CB@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E8:
mov eax, dword ptr [_ENV+132]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00EC
.L_00ED:
push 0
push 6
push offset _Lt_00EE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00EA
.L_00EC:
cmp dword ptr [ebp-16], 1
jne .L_00EF
.L_00F0:
push 0
push 4
push offset _Lt_00F1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00EF:
.L_00EA:
.L_00E9:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HMACRO_GETARGZ@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F2:
mov dword ptr [ebp-8], 0
cmp dword ptr [_ENV+576], 0
jne .L_00F5
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F7
mov dword ptr [ebp-4], 0
jmp .L_00F3
.L_00F7:
.L_00F6:
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGN@8
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F9
mov dword ptr [ebp-4], 0
jmp .L_00F3
.L_00F9:
.L_00F8:
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGNW@8
.L_00F4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMACRO_GETARGW@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00FA:
push 0
push offset _Lt_032D
call _DWSTRASSIGN@8
cmp dword ptr [_ENV+576], 0
jne .L_00FD
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FF
mov dword ptr [ebp-4], 0
jmp .L_00FB
.L_00FF:
.L_00FE:
push dword ptr [ebp-8]
push offset _Lt_032D
call _DWSTRCONCATASSIGNA@8
jmp .L_00FC
.L_00FD:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0101
mov dword ptr [ebp-4], 0
jmp .L_00FB
.L_0101:
.L_0100:
push dword ptr [ebp-8]
push offset _Lt_032D
call _DWSTRCONCATASSIGN@8
.L_00FC:
mov eax, dword ptr [_Lt_032D]
mov dword ptr [ebp-4], eax
.L_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_032D,12

.section .text
.balign 16
_HMACRO_EVALZ@8:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0102:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN@8
cmp dword ptr [_ENV+900], 16
jl .L_0105
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
push 0
push 0
push dword ptr [ebp-24]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0103
.L_0105:
.L_0104:
cmp dword ptr [ebp+8], 0
je .L_0107
call _LEXPUSHCTX@0
push -1
push 0
call _LEXINIT@8
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8384]
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+8408]
push ebx
call _DZSTRASSIGN@8
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+8408]
mov dword ptr [eax+8404], ecx
mov ecx, dword ptr [_LEX+422280]
push 0
push dword ptr [ebp+8]
mov ebx, ecx
call _fb_StrLen@8
add dword ptr [ebx+8400], eax
push offset _Lt_0108
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+8408]
push ebx
call _DZSTRCONCATASSIGN@8
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+8408]
mov dword ptr [eax+8404], ecx
mov ecx, dword ptr [_LEX+422280]
inc dword ptr [ecx+8400]
call _CEXPRESSION@0
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 0
cmp dword ptr [ebp-28], 0
je .L_010A
push dword ptr [ebp-28]
call _ASTOPTIMIZETREE@4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
cmp dword ptr [eax], 16
jne .L_010C
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push dword ptr [ebp-28]
call _ASTCONSTFLUSHTOSTR@4
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN@8
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
push 0
call _LEXGETTOKEN@4
cmp eax, 257
je .L_010F
mov dword ptr [ebp-32], 17
.L_010F:
.L_010E:
jmp .L_010B
.L_010C:
push dword ptr [ebp-28]
call _ASTISCONSTANT@4
test eax, eax
je .L_0110
mov eax, dword ptr [ebp-28]
push dword ptr [eax+12]
call _SYMBGETCONSTSTRASSTR@4
push eax
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN@8
push 0
call _LEXGETTOKEN@4
cmp eax, 257
je .L_0112
mov dword ptr [ebp-32], 17
.L_0112:
.L_0111:
push dword ptr [ebp-28]
call _ASTDELTREE@4
jmp .L_010B
.L_0110:
push dword ptr [ebp-28]
call _ASTDELTREE@4
mov dword ptr [ebp-32], 11
push offset _Lt_0113
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN@8
.L_010B:
jmp .L_0109
.L_010A:
mov dword ptr [ebp-32], 17
.L_0109:
mov eax, dword ptr [_LEX+422280]
dec dword ptr [eax+8384]
call _LEXPOPCTX@0
cmp dword ptr [ebp-32], 0
je .L_0115
push 0
push 1
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-32]
call _ERRREPORTEX@20
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
.L_0115:
.L_0114:
.L_0107:
.L_0106:
push 0
push 0
push dword ptr [ebp-24]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0103:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMACRO_EVALW@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0116:
push 0
push offset _Lt_032E
call _DWSTRASSIGN@8
cmp dword ptr [_ENV+900], 16
jl .L_0119
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
mov eax, dword ptr [_Lt_032E]
mov dword ptr [ebp-4], eax
jmp .L_0117
.L_0119:
.L_0118:
cmp dword ptr [ebp+8], 0
je .L_011B
call _LEXPUSHCTX@0
push -1
push 0
call _LEXINIT@8
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8384]
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+8408]
push ebx
call _DWSTRASSIGN@8
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+8408]
mov dword ptr [eax+8404], ecx
mov ecx, dword ptr [_LEX+422280]
push dword ptr [ebp+8]
mov ebx, ecx
call _fb_WstrLen@4
add dword ptr [ebx+8400], eax
push offset _Lt_0108
call _fb_StrToWstr@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+8408]
push ebx
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-8]
call _fb_WstrDelete@4
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+8408]
mov dword ptr [eax+8404], ecx
mov ecx, dword ptr [_LEX+422280]
inc dword ptr [ecx+8400]
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-12], 0
je .L_011E
push dword ptr [ebp-12]
call _ASTOPTIMIZETREE@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_0120
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOWSTR@4
push eax
push offset _Lt_032E
call _DWSTRASSIGN@8
push 0
call _LEXGETTOKEN@4
cmp eax, 257
je .L_0122
mov dword ptr [ebp-16], 17
.L_0122:
.L_0121:
jmp .L_011F
.L_0120:
push dword ptr [ebp-12]
call _ASTISCONSTANT@4
test eax, eax
je .L_0123
mov eax, dword ptr [ebp-12]
push dword ptr [eax+12]
call _SYMBGETCONSTSTRASWSTR@4
push eax
push offset _Lt_032E
call _DWSTRASSIGN@8
push 0
call _LEXGETTOKEN@4
cmp eax, 257
je .L_0125
mov dword ptr [ebp-16], 17
.L_0125:
.L_0124:
push dword ptr [ebp-12]
call _ASTDELTREE@4
jmp .L_011F
.L_0123:
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov dword ptr [ebp-16], 11
push offset _Lt_0126
push offset _Lt_032E
call _DWSTRASSIGN@8
.L_011F:
jmp .L_011D
.L_011E:
mov dword ptr [ebp-16], 17
.L_011D:
mov eax, dword ptr [_LEX+422280]
dec dword ptr [eax+8384]
call _LEXPOPCTX@0
cmp dword ptr [ebp-16], 0
je .L_0128
push 0
push 1
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push dword ptr [ebp+8]
call _fb_WstrToStr@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-28]
push dword ptr [ebp-16]
call _ERRREPORTEX@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
.L_0128:
.L_0127:
.L_011B:
.L_011A:
mov eax, dword ptr [_Lt_032E]
mov dword ptr [ebp-4], eax
.L_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_032E,12

.section .text
.balign 16
_HDEFUNIQUEIDPUSH_CB@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_012A:
cmp dword ptr [_PP+220], 0
je .L_012D
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_012B
.L_012D:
.L_012C:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_012F
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_012B
.L_012F:
.L_012E:
push dword ptr [ebp-16]
lea eax, [_SYMB+98760]
push eax
call _HASHLOOKUP@8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0131
push 1
push 4
call _calloc
add esp, 8
mov dword ptr [ebp-20], eax
push 4294967295
push dword ptr [ebp-20]
push dword ptr [ebp-16]
lea eax, [_SYMB+98760]
push eax
call _HASHADD@16
jmp .L_0130
.L_0131:
cmp dword ptr [ebp-16], 0
je .L_0133
push dword ptr [ebp-16]
call _free
add esp, 4
.L_0133:
.L_0132:
.L_0130:
push 8
call _malloc
add esp, 4
mov dword ptr [ebp-24], eax
push 1
call _SYMBUNIQUEID@4
mov dword ptr [ebp-28], eax
push 0
push dword ptr [ebp-28]
call _fb_StrLen@8
inc eax
mov ebx, eax
push ebx
call _malloc
add esp, 4
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx], eax
push 0
push 0
push dword ptr [ebp-28]
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx], ebx
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
.L_012B:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFUNIQUEID_CB@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0134:
cmp dword ptr [_PP+220], 0
je .L_0137
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0135
.L_0137:
.L_0136:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0139
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0135
.L_0139:
.L_0138:
push dword ptr [ebp-16]
lea eax, [_SYMB+98760]
push eax
call _HASHLOOKUP@8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .L_013B
push dword ptr [ebp-16]
call _free
add esp, 4
.L_013B:
.L_013A:
cmp dword ptr [ebp-20], 0
je .L_013D
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .L_013F
push 0
push 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_0135
.L_013F:
.L_013E:
.L_013D:
.L_013C:
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
.L_0135:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFUNIQUEIDPOP_CB@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0140:
cmp dword ptr [_PP+220], 0
je .L_0143
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0141
.L_0143:
.L_0142:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0145
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0141
.L_0145:
.L_0144:
push dword ptr [ebp-16]
lea eax, [_SYMB+98760]
push eax
call _HASHLOOKUP@8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .L_0147
push dword ptr [ebp-16]
call _free
add esp, 4
.L_0147:
.L_0146:
cmp dword ptr [ebp-20], 0
je .L_0149
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .L_014B
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
call _free
add esp, 4
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], ecx
jmp .L_014A
.L_014B:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.L_014A:
jmp .L_0148
.L_0149:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.L_0148:
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrAssign@20
.L_0141:
lea ecx, [ebp-12]
push ecx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFARGCOUNT_CB@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_014C:
cmp dword ptr [ebp+8], 0
je .L_014F
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+384]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_014D
.L_014F:
.L_014E:
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_014D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFARGEXTRACT_CB@8:
push ebp
mov ebp, esp
sub esp, 172
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0150:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0153
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _HMACRO_EVALZ@8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
call _HSTR2LONG@8
test eax, eax
je .L_0155
cmp dword ptr [ebp-44], 0
jl .L_0157
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+384]
dec ebx
mov eax, ebx
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-44], eax
jae .L_0159
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 12
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 8
lea eax, [ebp-148]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 24
rep stosd
pop edi
pop eax
lea eax, [ebp-172]
push eax
push dword ptr [ebp-52]
call _HSTR2ARGS@8
test eax, eax
jle .L_015B
push 0
push -1
mov eax, dword ptr [ebp-44]
imul eax, 12
add eax, dword ptr [ebp-172]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_015B:
.L_015A:
cmp dword ptr [ebp-52], 0
je .L_015D
push dword ptr [ebp-52]
call _free
add esp, 4
.L_015D:
.L_015C:
lea ebx, [ebp-172]
push ebx
call _fb_ArrayStrErase@4
.L_0159:
.L_0158:
jmp .L_0156
.L_0157:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.L_0156:
jmp .L_0154
.L_0155:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.L_0154:
cmp dword ptr [ebp-28], 0
je .L_015F
push dword ptr [ebp-28]
call _free
add esp, 4
.L_015F:
.L_015E:
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete@4
jmp .L_0152
.L_0153:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_0152:
push 0
push -1
lea ebx, [ebp-24]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit@20
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
jmp .L_0151
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
.L_0151:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFARGLEFT_CB@8:
push ebp
mov ebp, esp
sub esp, 176
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0160:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0163
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call _HSTR2TOK@8
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .L_0165
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call _HUCASE@8
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .L_0167
.L_016A:
push 0
push dword ptr [ebp-32]
push -1
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_016C
mov dword ptr [ebp-172], 0
mov eax, dword ptr [ebp-164]
dec eax
mov dword ptr [ebp-176], eax
jmp .L_016E
.L_0171:
cmp dword ptr [ebp-172], 0
jle .L_0173
push 0
push 2
push offset _Lt_0174
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0173:
.L_0172:
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_016F:
inc dword ptr [ebp-172]
.L_016E:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .L_0171
.L_0170:
jmp .L_0169
.L_016C:
.L_016B:
.L_0168:
inc dword ptr [ebp-164]
.L_0167:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .L_016A
.L_0169:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen@8
test eax, eax
jne .L_0176
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0176:
.L_0175:
jmp .L_0164
.L_0165:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_0164:
lea eax, [ebp-156]
push eax
call _fb_ArrayStrErase@4
jmp .L_0162
.L_0163:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_0162:
cmp dword ptr [ebp-36], 0
je .L_0178
push dword ptr [ebp-36]
call _free
add esp, 4
.L_0178:
.L_0177:
cmp dword ptr [ebp-32], 0
je .L_017A
push dword ptr [ebp-32]
call _free
add esp, 4
.L_017A:
.L_0179:
cmp dword ptr [ebp-28], 0
je .L_017C
push dword ptr [ebp-28]
call _free
add esp, 4
.L_017C:
.L_017B:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0161
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0161:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFARGRIGHT_CB@8:
push ebp
mov ebp, esp
sub esp, 176
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_017D:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0180
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call _HSTR2TOK@8
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .L_0182
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call _HUCASE@8
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .L_0184
.L_0187:
push 0
push dword ptr [ebp-32]
push -1
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0189
mov eax, dword ptr [ebp-164]
inc eax
mov dword ptr [ebp-172], eax
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-176], eax
jmp .L_018B
.L_018E:
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0190
push 0
push 2
push offset _Lt_0174
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0190:
.L_018F:
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_018C:
inc dword ptr [ebp-172]
.L_018B:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .L_018E
.L_018D:
jmp .L_0186
.L_0189:
.L_0188:
.L_0185:
inc dword ptr [ebp-164]
.L_0184:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .L_0187
.L_0186:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen@8
test eax, eax
jne .L_0192
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0192:
.L_0191:
jmp .L_0181
.L_0182:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_0181:
lea eax, [ebp-156]
push eax
call _fb_ArrayStrErase@4
jmp .L_017F
.L_0180:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_017F:
cmp dword ptr [ebp-36], 0
je .L_0194
push dword ptr [ebp-36]
call _free
add esp, 4
.L_0194:
.L_0193:
cmp dword ptr [ebp-32], 0
je .L_0196
push dword ptr [ebp-32]
call _free
add esp, 4
.L_0196:
.L_0195:
cmp dword ptr [ebp-28], 0
je .L_0198
push dword ptr [ebp-28]
call _free
add esp, 4
.L_0198:
.L_0197:
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
.L_017E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFJOINZ_CB@8:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0199:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_019C
push 0
push -1
push 0
push dword ptr [ebp-32]
push 0
push dword ptr [ebp-28]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_019B
.L_019C:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_019B:
cmp dword ptr [ebp-28], 0
je .L_019F
push dword ptr [ebp-28]
call _free
add esp, 4
.L_019F:
.L_019E:
cmp dword ptr [ebp-32], 0
je .L_01A1
push dword ptr [ebp-32]
call _free
add esp, 4
.L_01A1:
.L_01A0:
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
.L_019A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFJOINW_CB@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01A2:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-8], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-12], eax
push 0
push offset _Lt_0335
call _DWSTRASSIGN@8
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01A5
push dword ptr [ebp-8]
push offset _Lt_0335
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-12]
push offset _Lt_0335
call _DWSTRCONCATASSIGN@8
jmp .L_01A4
.L_01A5:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_01A4:
mov ebx, dword ptr [_Lt_0335]
mov dword ptr [ebp-4], ebx
.L_01A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0335,12

.section .text
.balign 16
_HDEFQUOTEZ_CB@8:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01A6:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-16], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp-16], 0
je .L_01A9
push 0
push 3
push offset _Lt_01AC
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_01AD
push offset _Lt_01AB
push dword ptr [ebp-16]
call _HREPLACE@12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_01AB
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
jmp .L_01A8
.L_01A9:
push 0
push 3
push offset _Lt_01AD
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
.L_01A8:
cmp dword ptr [ebp-16], 0
je .L_01AF
push dword ptr [ebp-16]
call _free
add esp, 4
.L_01AF:
.L_01AE:
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
.L_01A7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFQUOTEW_CB@8:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.L_01B0:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-8], eax
push 0
push offset _Lt_0338
call _DWSTRASSIGN@8
cmp dword ptr [ebp-8], 0
je .L_01B3
push offset _Lt_01AC
call _fb_StrToWstr@4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_0338
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-12]
call _fb_WstrDelete@4
push offset _Lt_01AD
call _fb_StrToWstr@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push offset _Lt_01AB
call _fb_StrToWstr@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _HREPLACEW@12
push eax
push offset _Lt_0338
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-20]
call _fb_WstrDelete@4
push dword ptr [ebp-16]
call _fb_WstrDelete@4
push offset _Lt_01AB
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push offset _Lt_0338
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .L_01B2
.L_01B3:
push offset _Lt_01AD
call _fb_StrToWstr@4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_0338
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-12]
call _fb_WstrDelete@4
.L_01B2:
mov eax, dword ptr [_Lt_0338]
mov dword ptr [ebp-4], eax
.L_01B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0338,12

.section .text
.balign 16
_HDEFUNQUOTEZ_CB@8:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01B9:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-16], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp-16], 0
je .L_01BC
push 0
push dword ptr [ebp-16]
call _fb_StrLen@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 3
jl .L_01BD
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 36
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_0339
.L_01BD:
mov dword ptr [ebp-36], 0
.L_0339:
cmp dword ptr [ebp-36], 0
je .L_01C0
push 0
push -1
push offset _Lt_01AB
push offset _Lt_01AD
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -3
push eax
push 3
push dword ptr [ebp-16]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
call _HREPLACE@12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
jmp .L_01BF
.L_01C0:
cmp dword ptr [ebp-32], 2
jl .L_01C3
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 34
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_033A
.L_01C3:
mov dword ptr [ebp-40], 0
.L_033A:
cmp dword ptr [ebp-40], 0
je .L_01C2
push 0
push -1
push offset _Lt_01AB
push offset _Lt_01AD
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -2
push eax
push 2
push dword ptr [ebp-16]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
call _HREPLACE@12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
jmp .L_01BF
.L_01C2:
push 0
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.L_01BF:
.L_01BC:
.L_01BB:
cmp dword ptr [ebp-16], 0
je .L_01C7
push dword ptr [ebp-16]
call _free
add esp, 4
.L_01C7:
.L_01C6:
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
.L_01BA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFUNQUOTEW_CB@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_01C8:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-8], eax
push 0
push offset _Lt_0344
call _DWSTRASSIGN@8
cmp dword ptr [ebp-8], 0
je .L_01CB
push dword ptr [ebp-8]
call _fb_WstrLen@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 3
jl .L_01CC
mov eax, dword ptr [ebp-8]
movzx ebx, word ptr [eax]
cmp ebx, 36
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
movzx ecx, word ptr [ebx+2]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-12]
sal ebx, 1
mov ecx, dword ptr [ebp-8]
add ecx, ebx
movzx ebx, word ptr [ecx-2]
cmp ebx, 34
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0342
.L_01CC:
mov dword ptr [ebp-16], 0
.L_0342:
cmp dword ptr [ebp-16], 0
je .L_01CF
push offset _Lt_01AB
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push offset _Lt_01AD
call _fb_StrToWstr@4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-12]
add eax, -3
push eax
push 3
push dword ptr [ebp-8]
call _fb_WstrMid@12
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HREPLACEW@12
push eax
push offset _Lt_0344
call _DWSTRASSIGN@8
push dword ptr [ebp-32]
call _fb_WstrDelete@4
push dword ptr [ebp-28]
call _fb_WstrDelete@4
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .L_01CE
.L_01CF:
cmp dword ptr [ebp-12], 2
jl .L_01D4
mov eax, dword ptr [ebp-8]
movzx ecx, word ptr [eax]
cmp ecx, 34
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
sal ecx, 1
mov ebx, dword ptr [ebp-8]
add ebx, ecx
movzx ecx, word ptr [ebx-2]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0343
.L_01D4:
mov dword ptr [ebp-20], 0
.L_0343:
cmp dword ptr [ebp-20], 0
je .L_01D3
push offset _Lt_01AB
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push offset _Lt_01AD
call _fb_StrToWstr@4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-12]
add eax, -2
push eax
push 2
push dword ptr [ebp-8]
call _fb_WstrMid@12
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HREPLACEW@12
push eax
push offset _Lt_0344
call _DWSTRASSIGN@8
push dword ptr [ebp-32]
call _fb_WstrDelete@4
push dword ptr [ebp-28]
call _fb_WstrDelete@4
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .L_01CE
.L_01D3:
push dword ptr [ebp-8]
push offset _Lt_0344
call _DWSTRASSIGN@8
.L_01CE:
.L_01CB:
.L_01CA:
mov eax, dword ptr [_Lt_0344]
mov dword ptr [ebp-4], eax
.L_01C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0344,12

.section .text
.balign 16
_HDEFEVALZ_CB@8:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D9:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _HMACRO_EVALZ@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp-16], 0
je .L_01DC
push dword ptr [ebp-16]
call _free
add esp, 4
.L_01DC:
.L_01DB:
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
.L_01DA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFEVALW_CB@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01DD:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HMACRO_EVALW@8
push eax
push offset _Lt_034C
call _DWSTRASSIGN@8
mov eax, dword ptr [_Lt_034C]
mov dword ptr [ebp-4], eax
.L_01DE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_034C,12

.section .text
.balign 16
_HDEFIIFZ_CB@8:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01DF:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-36], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01E2
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _HMACRO_EVALZ@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrInit@20
lea eax, [ebp-48]
push eax
call _fb_VALBOOL@4
mov byte ptr [ebp-52], al
push 0
push -1
lea eax, [ebp-48]
push eax
call _fb_VALBOOL@4
test al, al
je .L_01E3
push 0
push 0
push dword ptr [ebp-32]
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit@20
jmp .L_034D
.L_01E3:
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit@20
.L_034D:
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
jmp .L_01E1
.L_01E2:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_01E1:
cmp dword ptr [ebp-36], 0
je .L_01E6
push dword ptr [ebp-36]
call _free
add esp, 4
.L_01E6:
.L_01E5:
cmp dword ptr [ebp-32], 0
je .L_01E8
push dword ptr [ebp-32]
call _free
add esp, 4
.L_01E8:
.L_01E7:
cmp dword ptr [ebp-28], 0
je .L_01EA
push dword ptr [ebp-28]
call _free
add esp, 4
.L_01EA:
.L_01E9:
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
.L_01E0:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDEFIIFW_CB@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_01EB:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-8], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-12], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGW@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01EE
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HMACRO_EVALW@8
push eax
push offset _Lt_0355
call _DWSTRASSIGN@8
push 0
push -1
push dword ptr [_Lt_0355]
call _fb_UIntToStr@4
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
call _fb_VALBOOL@4
test al, al
je .L_01EF
push dword ptr [ebp-12]
call _fb_WstrLen@4
push eax
call _fb_WstrAlloc@4
mov dword ptr [ebp-36], eax
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-36]
call _fb_WstrAssign@12
jmp .L_0351
.L_01EF:
push dword ptr [ebp-16]
call _fb_WstrLen@4
push eax
call _fb_WstrAlloc@4
mov dword ptr [ebp-36], eax
push dword ptr [ebp-16]
push 0
push dword ptr [ebp-36]
call _fb_WstrAssign@12
.L_0351:
mov eax, dword ptr [ebp-36]
lea ebx, [eax]
push ebx
push offset _Lt_0356
call _DWSTRASSIGN@8
push dword ptr [ebp-36]
call _fb_WstrDelete@4
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete@4
jmp .L_01ED
.L_01EE:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_01ED:
mov ebx, dword ptr [_Lt_0356]
mov dword ptr [ebp-4], ebx
.L_01EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0356,12
.balign 4
	.lcomm	_Lt_0355,12

.section .text
.balign 16
_HDEFQUERYSYMZ_CB@8:
push ebp
mov ebp, esp
sub esp, 96
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01F1:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
cmp dword ptr [_ENV+900], 16
jl .L_01F4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_01F2
.L_01F4:
.L_01F3:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01F6
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _HMACRO_EVALZ@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit@20
lea eax, [ebp-44]
push eax
call _fb_VALINT@4
mov dword ptr [ebp-48], eax
lea eax, [ebp-48]
push eax
lea eax, [ebp-44]
push eax
call _HSTR2LONG@8
test eax, eax
je .L_01F8
mov dword ptr [ebp-52], -2147483648
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-48]
and eax, 255
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-48]
and eax, 65280
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-88], 0
call _LEXPUSHCTX@0
push -1
push 0
call _LEXINIT@8
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8384]
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+8408]
push ebx
call _DZSTRASSIGN@8
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+8408]
mov dword ptr [eax+8404], ecx
mov ecx, dword ptr [_LEX+422280]
push 0
push dword ptr [ebp-32]
mov ebx, ecx
call _fb_StrLen@8
add dword ptr [ebx+8400], eax
cmp dword ptr [ebp-84], 0
jne .L_01FA
cmp dword ptr [ebp-80], 3
je .L_01FD
.L_01FE:
cmp dword ptr [ebp-80], 4
je .L_01FD
.L_01FF:
cmp dword ptr [ebp-80], 5
je .L_01FD
.L_0200:
cmp dword ptr [ebp-80], 6
jne .L_01FC
.L_01FD:
or dword ptr [ebp-84], 256
jmp .L_01FB
.L_01FC:
or dword ptr [ebp-84], 768
.L_0201:
.L_01FB:
.L_01FA:
.L_01F9:
mov eax, dword ptr [ebp-84]
and eax, 256
test eax, eax
je .L_0203
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-92], eax
cmp dword ptr [ebp-92], 0
je .L_0207
.L_0208:
cmp dword ptr [ebp-92], 1
je .L_0207
.L_0209:
cmp dword ptr [ebp-92], 2
je .L_0207
.L_020A:
cmp dword ptr [ebp-92], 5
jne .L_0206
.L_0207:
push 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-96]
push eax
call _CIDENTIFIERORUDTMEMBER@8
mov dword ptr [ebp-72], eax
.L_0206:
.L_0204:
cmp dword ptr [ebp-72], 0
je .L_020D
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-92], ebx
cmp dword ptr [ebp-92], 6
jne .L_0210
.L_0211:
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], -2147483648
jne .L_0213
cmp dword ptr [ebp-80], 0
je .L_0216
.L_0217:
cmp dword ptr [ebp-80], 6
jne .L_0215
.L_0216:
push 0
call _LEXSKIPTOKEN@4
jmp .L_0214
.L_0215:
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-60], -1
.L_0218:
.L_0214:
jmp .L_0212
.L_0213:
push 0
call _LEXSKIPTOKEN@4
.L_0212:
jmp .L_020E
.L_0210:
cmp dword ptr [ebp-92], 10
jne .L_0219
.L_021A:
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-76], ebx
push 0
call _LEXGETTOKEN@4
cmp eax, 46
jne .L_021C
lea eax, [ebp-72]
push eax
lea eax, [ebp-56]
push eax
lea eax, [ebp-68]
push eax
lea eax, [ebp-76]
push eax
lea eax, [ebp-52]
push eax
call _CUDTTYPEMEMBER@20
.L_021C:
.L_021B:
jmp .L_020E
.L_0219:
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-76], eax
.L_021D:
.L_020E:
.L_020D:
.L_020C:
push 0
call _LEXGETTOKEN@4
cmp eax, 256
je .L_021F
mov dword ptr [ebp-60], -1
.L_021F:
.L_021E:
cmp dword ptr [ebp-60], 0
je .L_0221
mov dword ptr [ebp-72], 0
push -1
push 0
call _LEXINIT@8
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+8408]
push ebx
call _DZSTRASSIGN@8
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+8408]
mov dword ptr [eax+8404], ecx
mov ecx, dword ptr [_LEX+422280]
push 0
push dword ptr [ebp-32]
mov ebx, ecx
call _fb_StrLen@8
add dword ptr [ebx+8400], eax
.L_0221:
.L_0220:
.L_0203:
.L_0202:
mov eax, dword ptr [ebp-84]
and eax, 512
test eax, eax
je .L_0223
cmp dword ptr [ebp-72], 0
jne .L_0225
lea eax, [ebp-72]
push eax
lea eax, [ebp-56]
push eax
lea eax, [ebp-68]
push eax
lea eax, [ebp-76]
push eax
lea eax, [ebp-52]
push eax
call _CTYPEOF@20
.L_0225:
.L_0224:
.L_0223:
.L_0222:
cmp dword ptr [ebp-80], 0
jne .L_0227
.L_0228:
cmp dword ptr [ebp-72], 0
je .L_022A
push 0
push -1
mov eax, dword ptr [ebp-72]
push dword ptr [eax]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0229
.L_022A:
cmp dword ptr [ebp-76], 0
je .L_022B
push 0
push -1
mov eax, dword ptr [ebp-76]
push dword ptr [eax]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0229
.L_022B:
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0229:
jmp .L_0226
.L_0227:
cmp dword ptr [ebp-80], 1
jne .L_022C
.L_022D:
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0226
.L_022C:
cmp dword ptr [ebp-80], 2
jne .L_022E
.L_022F:
push 0
push -1
mov eax, dword ptr [ebp-52]
and eax, 480
je .L_0230
mov dword ptr [ebp-92], 24
jmp .L_0357
.L_0230:
mov eax, dword ptr [ebp-52]
and eax, 31
mov dword ptr [ebp-92], eax
.L_0357:
mov eax, dword ptr [ebp-92]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0226
.L_022E:
cmp dword ptr [ebp-80], 3
je .L_0233
.L_0234:
cmp dword ptr [ebp-80], 4
jne .L_0232
.L_0233:
push 0
push -1
push 0
push dword ptr [ebp-56]
push dword ptr [ebp-64]
push dword ptr [ebp-68]
push dword ptr [ebp-76]
push dword ptr [ebp-52]
call _SYMBTYPETOSTR@20
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp-80], 4
jne .L_0236
push 95
push 32
push dword ptr [ebp-24]
call _HREPLACECHAR@12
push 95
push 46
push dword ptr [ebp-24]
call _HREPLACECHAR@12
push 95
push 40
push dword ptr [ebp-24]
call _HREPLACECHAR@12
push 95
push 41
push dword ptr [ebp-24]
call _HREPLACECHAR@12
push 95
push 42
push dword ptr [ebp-24]
call _HREPLACECHAR@12
.L_0236:
.L_0235:
jmp .L_0226
.L_0232:
cmp dword ptr [ebp-80], 5
jne .L_023B
.L_023C:
cmp dword ptr [ebp-72], 0
je .L_023E
push 0
push dword ptr [ebp-72]
push dword ptr [ebp-52]
lea eax, [ebp-24]
push eax
call _SYMBMANGLETYPE@16
call _SYMBMANGLERESETABBREV@0
jmp .L_023D
.L_023E:
cmp dword ptr [ebp-76], 0
je .L_023F
push 0
push dword ptr [ebp-76]
push dword ptr [ebp-52]
lea eax, [ebp-24]
push eax
call _SYMBMANGLETYPE@16
call _SYMBMANGLERESETABBREV@0
jmp .L_023D
.L_023F:
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_023D:
jmp .L_0226
.L_023B:
cmp dword ptr [ebp-80], 6
jne .L_0240
.L_0241:
push 0
push -1
cmp dword ptr [ebp-72], 0
setne al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0226
.L_0240:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
push 0
push 3
push offset _Lt_0243
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0242:
.L_0226:
mov eax, dword ptr [_LEX+422280]
dec dword ptr [eax+8384]
call _LEXPOPCTX@0
jmp .L_01F7
.L_01F8:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_01F7:
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .L_01F5
.L_01F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_01F5:
cmp dword ptr [ebp-28], 0
je .L_0245
push dword ptr [ebp-28]
call _free
add esp, 4
.L_0245:
.L_0244:
cmp dword ptr [ebp-32], 0
je .L_0247
push dword ptr [ebp-32]
call _free
add esp, 4
.L_0247:
.L_0246:
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
.L_01F2:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HRESETDEFHASH@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02D5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_SYMB+98772]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_02D8
.L_02DB:
lea eax, [_SYMB+98696]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+96]
lea eax, [_SYMB+98696]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+92]
lea eax, [_SYMB+98776]
push eax
call _HASHDEL@12
.L_02D9:
inc dword ptr [ebp-4]
.L_02D8:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_02DB
.L_02DA:
mov dword ptr [_SYMB+98772], 0
.L_02D6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELDEFINEPARAMS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0301:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_0303:
cmp dword ptr [ebp-4], 0
je .L_0304
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .L_0306
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _free
add esp, 4
.L_0306:
.L_0305:
push dword ptr [ebp-4]
lea eax, [_SYMB+98696]
push eax
call _LISTDELNODE@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0303
.L_0304:
.L_0302:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDELDEFINETOKENS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0307:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_0309:
cmp dword ptr [ebp-4], 0
je .L_030A
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _SYMBDELDEFINETOK@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0309
.L_030A:
.L_0308:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_0005:	.ascii	"10\0"
.balign 4
_Lt_0006:	.ascii	"0\0"
.balign 4
_Lt_000B:	.ascii	"1.10.0\0"
.balign 4
_Lt_000C:	.ascii	"10-18-2023\0"
.balign 4
_Lt_000D:	.ascii	"2023-10-18\0"
.balign 4
_Lt_000F:	.ascii	"FreeBASIC 1.10.0\0"
.balign 4
_Lt_001F:	.ascii	"__FB_MAINPROC__\0"
.balign 4
_Lt_0020:	.ascii	"__FB_MODLEVELPROC__\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0087:	.ascii	"SOURCE_DATE_EPOCH\0"
.balign 4
_Lt_0090:	.ascii	"mm-dd-yyyy\0"
.balign 4
_Lt_0094:	.ascii	"yyyy-mm-dd\0"
.balign 4
_Lt_0098:	.ascii	"hh:nn:ss\0"
.balign 4
_Lt_00D6:	.ascii	"x87\0"
.balign 4
_Lt_00D9:	.ascii	"sse\0"
.balign 4
_Lt_00E1:	.ascii	"precise\0"
.balign 4
_Lt_00E4:	.ascii	"fast\0"
.balign 4
_Lt_00EE:	.ascii	"intel\0"
.balign 4
_Lt_00F1:	.ascii	"att\0"
.balign 4
_Lt_0108:	.ascii	"\n\0"
.balign 4
_Lt_0113:	.ascii	"\0""\0"
.balign 4
_Lt_0126:	.ascii	"\0\0\0\0"
.balign 4
_Lt_0174:	.ascii	" \0"
.balign 4
_Lt_01AB:	.ascii	"\"\0"
.balign 4
_Lt_01AC:	.ascii	"$\"\0"
.balign 4
_Lt_01AD:	.ascii	"\"\"\0"
.balign 4
_Lt_0243:	.ascii	"-1\0"
.balign 4
_DEFTB:
.int _Lt_0248
.int _Lt_000B
.int 1
.long 0
.int _Lt_0249
.int _Lt_000C
.int 1
.long 0
.int _Lt_024A
.int _Lt_000D
.int 1
.long 0
.int _Lt_024B
.int _Lt_0004
.int 0
.long 0
.int _Lt_024C
.int _Lt_0005
.int 0
.long 0
.int _Lt_024D
.int _Lt_0006
.int 0
.long 0
.int _Lt_024E
.int _Lt_000F
.int 1
.long 0
.int _Lt_024F
.int _Lt_0000
.int 1
.long 0
.int _Lt_0250
.long 0
.int 0
.int _HDEFMULTITHREAD_CB@0
.int _Lt_0251
.long 0
.int 1
.int _HDEFFILE_CB@0
.int _Lt_0252
.long 0
.int 0
.int _HDEFFILE_CB@0
.int _Lt_0253
.long 0
.int 1
.int _HDEFFUNCTION_CB@0
.int _Lt_0254
.long 0
.int 0
.int _HDEFFUNCTION_CB@0
.int _Lt_0255
.long 0
.int 0
.int _HDEFLINE_CB@0
.int _Lt_0256
.long 0
.int 1
.int _HDEFDATE_CB@0
.int _Lt_0257
.long 0
.int 1
.int _HDEFDATEISO_CB@0
.int _Lt_0258
.long 0
.int 1
.int _HDEFTIME_CB@0
.int _Lt_0259
.long 0
.int 1
.int _HDEFPATH_CB@0
.int _Lt_025A
.long 0
.int 0
.int _HDEFOPTBYVAL_CB@0
.int _Lt_025B
.long 0
.int 0
.int _HDEFOPTDYNAMIC_CB@0
.int _Lt_025C
.long 0
.int 0
.int _HDEFOPTESCAPE_CB@0
.int _Lt_025D
.long 0
.int 0
.int _HDEFOPTEXPLICIT_CB@0
.int _Lt_025E
.long 0
.int 0
.int _HDEFOPTPRIVATE_CB@0
.int _Lt_025F
.long 0
.int 0
.int _HDEFOPTGOSUB_CB@0
.int _Lt_0260
.long 0
.int 0
.int _HDEFOUTEXE_CB@0
.int _Lt_0261
.long 0
.int 0
.int _HDEFOUTLIB_CB@0
.int _Lt_0262
.long 0
.int 0
.int _HDEFOUTDLL_CB@0
.int _Lt_0263
.long 0
.int 0
.int _HDEFOUTOBJ_CB@0
.int _Lt_0264
.long 0
.int 0
.int _HDEFDEBUG_CB@0
.int _Lt_0265
.long 0
.int 0
.int _HDEFERR_CB@0
.int _Lt_0266
.long 0
.int 1
.int _HDEFLANG_CB@0
.int _Lt_0267
.long 0
.int 1
.int _HDEFBACKEND_CB@0
.int _Lt_0268
.long 0
.int 1
.int _HDEFFPU_CB@0
.int _Lt_0269
.long 0
.int 1
.int _HDEFFPMODE_CB@0
.int _Lt_026A
.long 0
.int 0
.int _HDEFGCC_CB@0
.int _Lt_026B
.long 0
.int 0
.int _HDEFGUI_CB@0
.int _Lt_026C
.long 0
.int 0
.int _HDEFOPTIMIZE_CB@0
.balign 4
_Lt_0248:	.ascii	"__FB_VERSION__\0"
.balign 4
_Lt_0249:	.ascii	"__FB_BUILD_DATE__\0"
.balign 4
_Lt_024A:	.ascii	"__FB_BUILD_DATE_ISO__\0"
.balign 4
_Lt_024B:	.ascii	"__FB_VER_MAJOR__\0"
.balign 4
_Lt_024C:	.ascii	"__FB_VER_MINOR__\0"
.balign 4
_Lt_024D:	.ascii	"__FB_VER_PATCH__\0"
.balign 4
_Lt_024E:	.ascii	"__FB_SIGNATURE__\0"
.balign 4
_Lt_024F:	.ascii	"__FB_BUILD_SHA1__\0"
.balign 4
_Lt_0250:	.ascii	"__FB_MT__\0"
.balign 4
_Lt_0251:	.ascii	"__FILE__\0"
.balign 4
_Lt_0252:	.ascii	"__FILE_NQ__\0"
.balign 4
_Lt_0253:	.ascii	"__FUNCTION__\0"
.balign 4
_Lt_0254:	.ascii	"__FUNCTION_NQ__\0"
.balign 4
_Lt_0255:	.ascii	"__LINE__\0"
.balign 4
_Lt_0256:	.ascii	"__DATE__\0"
.balign 4
_Lt_0257:	.ascii	"__DATE_ISO__\0"
.balign 4
_Lt_0258:	.ascii	"__TIME__\0"
.balign 4
_Lt_0259:	.ascii	"__PATH__\0"
.balign 4
_Lt_025A:	.ascii	"__FB_OPTION_BYVAL__\0"
.balign 4
_Lt_025B:	.ascii	"__FB_OPTION_DYNAMIC__\0"
.balign 4
_Lt_025C:	.ascii	"__FB_OPTION_ESCAPE__\0"
.balign 4
_Lt_025D:	.ascii	"__FB_OPTION_EXPLICIT__\0"
.balign 4
_Lt_025E:	.ascii	"__FB_OPTION_PRIVATE__\0"
.balign 4
_Lt_025F:	.ascii	"__FB_OPTION_GOSUB__\0"
.balign 4
_Lt_0260:	.ascii	"__FB_OUT_EXE__\0"
.balign 4
_Lt_0261:	.ascii	"__FB_OUT_LIB__\0"
.balign 4
_Lt_0262:	.ascii	"__FB_OUT_DLL__\0"
.balign 4
_Lt_0263:	.ascii	"__FB_OUT_OBJ__\0"
.balign 4
_Lt_0264:	.ascii	"__FB_DEBUG__\0"
.balign 4
_Lt_0265:	.ascii	"__FB_ERR__\0"
.balign 4
_Lt_0266:	.ascii	"__FB_LANG__\0"
.balign 4
_Lt_0267:	.ascii	"__FB_BACKEND__\0"
.balign 4
_Lt_0268:	.ascii	"__FB_FPU__\0"
.balign 4
_Lt_0269:	.ascii	"__FB_FPMODE__\0"
.balign 4
_Lt_026A:	.ascii	"__FB_GCC__\0"
.balign 4
_Lt_026B:	.ascii	"__FB_GUI__\0"
.balign 4
_Lt_026C:	.ascii	"__FB_OPTIMIZE__\0"
.balign 4
_MACROTB:
.int _Lt_026E
.int 0
.int _HDEFUNIQUEIDPUSH_CB@8
.long 0
.int 1
.int _Lt_026F
.skip 16,0
.int _Lt_0270
.int 0
.int _HDEFUNIQUEID_CB@8
.long 0
.int 1
.int _Lt_026F
.skip 16,0
.int _Lt_0271
.int 0
.int _HDEFUNIQUEIDPOP_CB@8
.long 0
.int 1
.int _Lt_026F
.skip 16,0
.int _Lt_0272
.int 4
.int _HDEFARGCOUNT_CB@8
.long 0
.int 1
.int _Lt_0273
.skip 16,0
.int _Lt_0274
.int 4
.int _HDEFARGEXTRACT_CB@8
.long 0
.int 2
.int _Lt_0275
.int _Lt_0273
.skip 12,0
.int _Lt_0276
.int 4
.int _HDEFARGLEFT_CB@8
.long 0
.int 3
.int _Lt_0277
.int _Lt_0278
.int _Lt_0279
.skip 8,0
.int _Lt_027A
.int 4
.int _HDEFARGRIGHT_CB@8
.long 0
.int 3
.int _Lt_0277
.int _Lt_0278
.int _Lt_0279
.skip 8,0
.int _Lt_027B
.int 0
.int _HDEFJOINZ_CB@8
.int _HDEFJOINW_CB@8
.int 2
.int _Lt_027C
.int _Lt_027D
.skip 12,0
.int _Lt_027E
.int 0
.int _HDEFQUOTEZ_CB@8
.int _HDEFQUOTEW_CB@8
.int 1
.int _Lt_0277
.skip 16,0
.int _Lt_027F
.int 0
.int _HDEFUNQUOTEZ_CB@8
.int _HDEFUNQUOTEW_CB@8
.int 1
.int _Lt_0277
.skip 16,0
.int _Lt_0280
.int 0
.int _HDEFEVALZ_CB@8
.int _HDEFEVALW_CB@8
.int 1
.int _Lt_0277
.skip 16,0
.int _Lt_0281
.int 0
.int _HDEFIIFZ_CB@8
.int _HDEFIIFW_CB@8
.int 3
.int _Lt_0282
.int _Lt_0283
.int _Lt_0284
.skip 8,0
.int _Lt_0285
.int 0
.int _HDEFQUERYSYMZ_CB@8
.long 0
.int 2
.int _Lt_0286
.int _Lt_0287
.skip 12,0
.balign 4
_Lt_026E:	.ascii	"__FB_UNIQUEID_PUSH__\0"
.balign 4
_Lt_026F:	.ascii	"ID\0"
.balign 4
_Lt_0270:	.ascii	"__FB_UNIQUEID__\0"
.balign 4
_Lt_0271:	.ascii	"__FB_UNIQUEID_POP__\0"
.balign 4
_Lt_0272:	.ascii	"__FB_ARG_COUNT__\0"
.balign 4
_Lt_0273:	.ascii	"ARGS\0"
.balign 4
_Lt_0274:	.ascii	"__FB_ARG_EXTRACT__\0"
.balign 4
_Lt_0275:	.ascii	"ARGNUM\0"
.balign 4
_Lt_0276:	.ascii	"__FB_ARG_LEFTOF__\0"
.balign 4
_Lt_0277:	.ascii	"ARG\0"
.balign 4
_Lt_0278:	.ascii	"SEP\0"
.balign 4
_Lt_0279:	.ascii	"RET\0"
.balign 4
_Lt_027A:	.ascii	"__FB_ARG_RIGHTOF__\0"
.balign 4
_Lt_027B:	.ascii	"__FB_JOIN__\0"
.balign 4
_Lt_027C:	.ascii	"L\0"
.balign 4
_Lt_027D:	.ascii	"R\0"
.balign 4
_Lt_027E:	.ascii	"__FB_QUOTE__\0"
.balign 4
_Lt_027F:	.ascii	"__FB_UNQUOTE__\0"
.balign 4
_Lt_0280:	.ascii	"__FB_EVAL__\0"
.balign 4
_Lt_0281:	.ascii	"__FB_IIF__\0"
.balign 4
_Lt_0282:	.ascii	"CMPEXPR\0"
.balign 4
_Lt_0283:	.ascii	"TEXPR\0"
.balign 4
_Lt_0284:	.ascii	"FEXPR\0"
.balign 4
_Lt_0285:	.ascii	"__FB_QUERY_SYMBOL__\0"
.balign 4
_Lt_0286:	.ascii	"WHAT\0"
.balign 4
_Lt_0287:	.ascii	"SYM\0"
.balign 4
_Lt_0295:	.ascii	"__FB_\0"
.balign 4
_Lt_0296:	.ascii	"__\0"
.balign 4
_Lt_029C:	.ascii	"__FB_LINUX__\0"
.balign 4
_Lt_029F:	.ascii	"__FB_UNIX__\0"
.balign 4
_Lt_02A0:	.ascii	"__FB_PCOS__\0"
.balign 4
_Lt_02A3:	.ascii	"__FB_64BIT__\0"
.balign 4
_Lt_02A9:	.ascii	"__FB_ARM__\0"
.balign 4
_Lt_02AD:	.ascii	"__FB_X86__\0"
.balign 4
_Lt_02AE:	.ascii	"__FB_ASM__\0"
.balign 4
_Lt_02B3:	.ascii	"__FB_PPC__\0"
.balign 4
_Lt_02B6:	.ascii	"__FB_BIGENDIAN__\0"
.balign 4
_Lt_02B9:	.ascii	"__FB_MAIN__\0"
.balign 4
_Lt_02BC:	.ascii	"__FB_SSE__\0"
.balign 4
_Lt_02BD:	.ascii	"__FB_VECTORIZE__\0"
.balign 8
_Lt_0317:	.quad	0x40F5180000000000
.balign 8
_Lt_0318:	.quad	0x40D8F84000000000

.section .ctors
.int _fb_ctor__symbzdefine
