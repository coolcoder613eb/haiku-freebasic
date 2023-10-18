	.intel_syntax noprefix

.section .text
.balign 16

.globl _CERRORSTMT
_CERRORSTMT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006B
jmp .L_0069
.L_006B:
.L_006A:
lea eax, [_ENV+304]
push eax
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4280]
push dword ptr [ebp-8]
call _RTLERRORTHROW
add esp, 12
mov dword ptr [ebp-4], -1
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CERRSETSTMT
_CERRSETSTMT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006C:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CASSIGNTOKEN
test eax, eax
jne .L_006F
push 0
push 0
push 10
call _ERRREPORT
add esp, 12
.L_006F:
.L_006E:
mov dword ptr [ebp-8], 0
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0071
jmp .L_006D
.L_0071:
.L_0070:
push dword ptr [ebp-8]
call _RTLERRORSETNUM
add esp, 4
mov dword ptr [ebp-4], -1
.L_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CERRORFUNCT
_CERRORFUNCT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0072:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
je .L_0075
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0077
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
jmp .L_0076
.L_0077:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0076:
.L_0075:
.L_0074:
call _RTLERRORGETNUM
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
