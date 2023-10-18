	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWBRANCH
ASTNEWBRANCH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_005C:
cmp dword ptr [ebp+16], 0
jne .L_005F
mov dword ptr [ebp-12], -2147483648
jmp .L_005E
.L_005F:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
.L_005E:
push 0
push dword ptr [ebp-12]
push 7
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 1
.L_005D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADBRANCH
ASTLOADBRANCH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0060:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0063
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
jmp .L_0062
.L_0063:
mov dword ptr [ebp-12], 0
.L_0062:
cmp dword ptr [AST+136], 0
je .L_0065
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .L_0067
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 104
jne .L_006A
.L_006B:
push dword ptr [ebp-12]
call dword ptr [IR+136]
add esp, 4
jmp .L_0068
.L_006A:
cmp dword ptr [ebp-16], 101
jne .L_006C
.L_006D:
push 0
call dword ptr [IR+68]
add esp, 4
.L_006C:
.L_006E:
.L_0068:
jmp .L_0066
.L_0067:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
call dword ptr [IR+140]
add esp, 8
.L_0066:
.L_0065:
.L_0064:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_0061:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADJMPTB
ASTLOADJMPTB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0078:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .L_007B
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push dword ptr [eax+44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
call dword ptr [IR+144]
add esp, 40
.L_007B:
.L_007A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call free
add esp, 4
mov dword ptr [ebp-4], 0
.L_0079:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDJMPTB
ASTBUILDJMPTB:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_007E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ENV+104]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .L_0084
.L_0085:
cmp dword ptr [ebp-24], 2
jne .L_0083
.L_0084:
cmp dword ptr [ebp+20], 0
jg .L_0087
push 0
push dword ptr [ebp+24]
push 98
call ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_007F
.L_0087:
.L_0086:
.L_0083:
.L_0081:
cmp dword ptr [ENV+104], 0
jne .L_0089
push 0
push 1
push offset Lt_008A
push 0
push 0
push 0
push 0
push 32
push 0
call SYMBUNIQUELABEL
push eax
call SYMBADDVAR
add esp, 40
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
call ASTNEWCONSTI
add esp, 16
push eax
push 1
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
push 29
call ASTNEWBOP
add esp, 20
push eax
push 46
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 1
push 0
push 0
push dword ptr [ebp-20]
mov ebx, dword ptr [ENV+296]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
push 30
call ASTNEWBOP
add esp, 20
push eax
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call HPRECALCBIASOFFSET
add esp, 12
push edx
push eax
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWIDX
add esp, 8
push eax
push 0
push 104
call ASTNEWBRANCH
add esp, 12
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_0088
.L_0089:
mov dword ptr [ebp-16], 0
.L_0088:
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWJMPTB
add esp, 40
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_008B,16

.section .data
.balign 4
Lt_008A:
.int Lt_008B
.int Lt_008B
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl ASTNEWLOOP
ASTNEWLOOP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_008C:
push 0
push -2147483648
push 13
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 24
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 0
.L_008D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADLOOP
ASTLOADLOOP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_008E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
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
ASTNEWJMPTB:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_006F:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+24], 0
jle .L_0072
push 1
mov eax, dword ptr [ebp+24]
sal eax, 3
mov ebx, eax
push ebx
call calloc
add esp, 8
mov dword ptr [ebp-16], eax
push 1
mov eax, dword ptr [ebp+24]
sal eax, 2
mov ebx, eax
push ebx
call calloc
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_0074
.L_0077:
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
.L_0075:
inc dword ptr [ebp-24]
.L_0074:
mov esi, dword ptr [ebp-28]
cmp dword ptr [ebp-24], esi
jle .L_0077
.L_0076:
jmp .L_0071
.L_0072:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_0071:
push 0
push -2147483648
push 8
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+56], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [esi+12], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp-16]
mov dword ptr [eax+20], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
mov dword ptr [esi+24], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+24]
mov dword ptr [eax+28], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [esi+32], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+32]
mov esi, dword ptr [ebp+36]
mov dword ptr [eax+36], ecx
mov dword ptr [eax+40], esi
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+40]
mov esi, dword ptr [ebp+44]
mov dword ptr [ecx+44], eax
mov dword ptr [ecx+48], esi
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_0070:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPRECALCBIASOFFSET:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_007C:
inc dword ptr [AST+232]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push 54
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [ENV+296]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 11
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
dec dword ptr [AST+232]
.L_007D:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
