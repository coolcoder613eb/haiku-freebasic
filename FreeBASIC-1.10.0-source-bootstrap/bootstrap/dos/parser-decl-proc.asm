	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPROCDECL
_CPROCDECL:
push ebp
mov ebp, esp
sub esp, 8
.L_0067:
push 8
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_006A
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0068
.L_006A:
.L_0069:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 345
je .L_006D
.L_006E:
cmp dword ptr [ebp-4], 346
je .L_006D
.L_006F:
cmp dword ptr [ebp-4], 349
jne .L_006C
.L_006D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-4]
push 1
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push 0
push 0
call _CPROCHEADER
add esp, 20
jmp .L_006B
.L_006C:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.L_0071:
.L_006B:
.L_0068:
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
