	.intel_syntax noprefix

.section .text
.balign 16

.globl _CWHILESTMTBEGIN
_CWHILESTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0067:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006A
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_006A:
.L_0069:
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006C
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .L_006B
.L_006C:
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
.L_006B:
push 1
push 273
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
call _ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+16], eax
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CWHILESTMTEND
_CWHILESTMTEND:
push ebp
mov ebp, esp
sub esp, 4
.L_006D:
push -1
push 273
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0070
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_006E
.L_0070:
.L_006F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_0072
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
.L_0072:
.L_0071:
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
.L_006E:
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
