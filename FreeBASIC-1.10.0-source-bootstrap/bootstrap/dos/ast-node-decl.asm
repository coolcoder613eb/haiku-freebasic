	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWDECL
_ASTNEWDECL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
push 0
push -2147483648
push 24
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
cmp dword ptr [ebp+12], 0
je .L_006E
push dword ptr [ebp+8]
call _HDEFAULTINIT
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
.L_006E:
.L_006D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADDECL
_ASTLOADDECL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_006F:
cmp dword ptr [_AST+136], 0
je .L_0072
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_0074
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [_IR+164]
add esp, 4
.L_0074:
.L_0073:
.L_0072:
.L_0071:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0076
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
.L_0076:
.L_0075:
mov dword ptr [ebp-4], 0
.L_0070:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
_HCTORLIST:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
push 0
push 8
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 64
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-16]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-24]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push -1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _ASTBUILDFORBEGIN
add esp, 20
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-16]
call _ASTBUILDVARDEREF
add esp, 4
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-24]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push 1
push dword ptr [ebp-16]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-24]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _ASTBUILDFOREND
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFAULTINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_005F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 15
test ebx, ebx
je .L_0062
jmp .L_0060
.L_0062:
.L_0061:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
je .L_0064
jmp .L_0060
.L_0064:
.L_0063:
push dword ptr [ebp+8]
call _SYMBHASDEFCTOR
add esp, 4
test eax, eax
je .L_0066
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 131072
test ebx, ebx
je .L_0068
jmp .L_0060
.L_0068:
.L_0067:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .L_006A
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _ASTBUILDCTORCALL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0069
.L_006A:
push dword ptr [ebp+8]
call _HCTORLIST
add esp, 4
mov dword ptr [ebp-4], eax
.L_0069:
jmp .L_0060
.L_0066:
.L_0065:
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+76]
mov ecx, dword ptr [ebx+80]
push dword ptr [eax+44]
push dword ptr [eax+40]
push ecx
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
pop ecx
add esp, 8
push ecx
push esi
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
push 107
call _ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.L_0060:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
