	.intel_syntax noprefix

.section .text
.balign 16

.globl _CIIFFUNCT
_CIIFFUNCT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_006A
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .L_0069
.L_006A:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0069:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006C
jmp .L_0068
.L_006C:
.L_006B:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_006E
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_006D
.L_006E:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_006D:
push 0
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0070
jmp .L_0068
.L_0070:
.L_006F:
call _ASTDTORLISTSCOPEEND
mov dword ptr [ebp-20], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0072
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_0071
.L_0072:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0071:
push 0
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0074
jmp .L_0068
.L_0074:
.L_0073:
call _ASTDTORLISTSCOPEEND
mov dword ptr [ebp-24], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0076
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0075
.L_0076:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0075:
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWIIF
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0078
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0078:
.L_0077:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
