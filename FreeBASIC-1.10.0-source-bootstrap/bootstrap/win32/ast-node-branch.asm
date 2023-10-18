	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWBRANCH@12
_ASTNEWBRANCH@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
cmp dword ptr [ebp+16], 0
jne .L_0060
mov dword ptr [ebp-12], -2147483648
jmp .L_005F
.L_0060:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
.L_005F:
push 0
push dword ptr [ebp-12]
push 7
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], 1
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADBRANCH@4
_ASTLOADBRANCH@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0061:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0064
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call _ASTDELNODE@4
jmp .L_0063
.L_0064:
mov dword ptr [ebp-12], 0
.L_0063:
cmp dword ptr [_AST+136], 0
je .L_0066
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
jne .L_0068
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 104
jne .L_006B
.L_006C:
push dword ptr [ebp-12]
call dword ptr [_IR+136]
jmp .L_0069
.L_006B:
cmp dword ptr [ebp-16], 101
jne .L_006D
.L_006E:
push 0
call dword ptr [_IR+68]
.L_006D:
.L_006F:
.L_0069:
jmp .L_0067
.L_0068:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
call dword ptr [_IR+140]
.L_0067:
.L_0066:
.L_0065:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADJMPTB@4
_ASTLOADJMPTB@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0079:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .L_007C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
call dword ptr [_IR+144]
.L_007C:
.L_007B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _free
add esp, 4
mov dword ptr [ebp-4], 0
.L_007A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDJMPTB@36
_ASTBUILDJMPTB@36:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [_ENV+104]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .L_0085
.L_0086:
cmp dword ptr [ebp-24], 2
jne .L_0084
.L_0085:
cmp dword ptr [ebp+20], 0
jg .L_0088
push 0
push dword ptr [ebp+24]
push 98
call _ASTNEWBRANCH@12
mov dword ptr [ebp-4], eax
jmp .L_0080
.L_0088:
.L_0087:
.L_0084:
.L_0082:
cmp dword ptr [_ENV+104], 0
jne .L_008A
push 0
push 1
push offset _Lt_008B
push 0
push 0
push 0
push 0
push 32
push 0
call _SYMBUNIQUELABEL@0
push eax
call _SYMBADDVAR@40
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 32768
push 0
push 0
push dword ptr [ebp+24]
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
call _ASTNEWCONSTI@16
push eax
push 1
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
push 29
call _ASTNEWBOP@20
push eax
push 46
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
push 0
push 1
push 0
push 0
push dword ptr [ebp-20]
mov ebx, dword ptr [_ENV+296]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
push 30
call _ASTNEWBOP@20
push eax
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call _HPRECALCBIASOFFSET@12
push edx
push eax
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
call _ASTNEWIDX@8
push eax
push 0
push 104
call _ASTNEWBRANCH@12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
jmp .L_0089
.L_008A:
mov dword ptr [ebp-16], 0
.L_0089:
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWJMPTB@40
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 36

.section .bss
.balign 4
	.lcomm	_Lt_008C,16

.section .data
.balign 4
_Lt_008B:
.int _Lt_008C
.int _Lt_008C
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _ASTNEWLOOP@8
_ASTNEWLOOP@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_008D:
push 0
push -2147483648
push 13
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 24
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
.L_008E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADLOOP@4
_ASTLOADLOOP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
mov dword ptr [ebp-4], 0
.L_0090:
mov eax, dword ptr [ebp-4]
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
_ASTNEWJMPTB@40:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0070:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+24], 0
jle .L_0073
push 1
mov eax, dword ptr [ebp+24]
sal eax, 3
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-16], eax
push 1
mov eax, dword ptr [ebp+24]
sal eax, 2
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_0075
.L_0078:
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ebx, dword ptr [ebp+16]
add ebx, eax
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ecx, dword ptr [ebp-16]
add ecx, eax
mov esi, dword ptr [ebx]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx], esi
mov dword ptr [ecx+4], eax
mov esi, dword ptr [ebp-24]
sal esi, 2
mov eax, dword ptr [ebp+20]
add eax, esi
mov esi, dword ptr [ebp-24]
sal esi, 2
mov ecx, dword ptr [ebp-20]
add ecx, esi
mov esi, dword ptr [eax]
mov dword ptr [ecx], esi
.L_0076:
inc dword ptr [ebp-24]
.L_0075:
mov esi, dword ptr [ebp-28]
cmp dword ptr [ebp-24], esi
jle .L_0078
.L_0077:
jmp .L_0072
.L_0073:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_0072:
push 0
push -2147483648
push 8
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+64], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [esi+12], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp-16]
mov dword ptr [eax+24], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
mov dword ptr [esi+28], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+24]
mov dword ptr [eax+32], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [esi+36], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+32]
mov esi, dword ptr [ebp+36]
mov dword ptr [eax+40], ecx
mov dword ptr [eax+44], esi
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+40]
mov esi, dword ptr [ebp+44]
mov dword ptr [ecx+48], eax
mov dword ptr [ecx+52], esi
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.L_0071:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16
_HPRECALCBIASOFFSET@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_007D:
inc dword ptr [_AST+232]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push 54
call _ASTNEWUOP@8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_ENV+296]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-12]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
push 11
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
dec dword ptr [_AST+232]
.L_007E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
