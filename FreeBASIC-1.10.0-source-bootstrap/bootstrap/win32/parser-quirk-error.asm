	.intel_syntax noprefix

.section .text
.balign 16

.globl _CERRORSTMT@0
_CERRORSTMT@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], 0
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006B
jmp .L_0069
.L_006B:
.L_006A:
lea eax, [_ENV+304]
push eax
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
push dword ptr [ebp-8]
call _RTLERRORTHROW@12
mov dword ptr [ebp-4], -1
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CERRSETSTMT@0
_CERRSETSTMT@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006C:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
call _CASSIGNTOKEN@0
test eax, eax
jne .L_006F
push 0
push 0
push 10
call _ERRREPORT@12
.L_006F:
.L_006E:
mov dword ptr [ebp-8], 0
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0071
jmp .L_006D
.L_0071:
.L_0070:
push dword ptr [ebp-8]
call _RTLERRORSETNUM@4
mov dword ptr [ebp-4], -1
.L_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CERRORFUNCT@0
_CERRORFUNCT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0072:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 40
call _HMATCH@8
test eax, eax
je .L_0075
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0077
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0076
.L_0077:
push 0
call _LEXSKIPTOKEN@4
.L_0076:
.L_0075:
.L_0074:
call _RTLERRORGETNUM@0
mov dword ptr [ebp-4], eax
.L_0073:
mov eax, dword ptr [ebp-4]
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
