	.intel_syntax noprefix

.section .text
.balign 16

.globl _CLABEL
_CLABEL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_006A
.L_006C:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_006E
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0068
.L_006E:
.L_006D:
mov eax, dword ptr [_ENV+1040]
and eax, 1048576
test eax, eax
jne .L_0070
push 0
push 146
push 1048576
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_006F
.L_0070:
push 68
call _LEXGETTEXT
push eax
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0072
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0071
.L_0072:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0071:
inc dword ptr [_PARSER+28]
.L_006F:
jmp .L_0069
.L_0073:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 258
jne .L_0075
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0077
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0068
.L_0077:
.L_0076:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-12], eax
push 3
push dword ptr [ebp-12]
call _SYMBFINDBYCLASS
add esp, 8
test eax, eax
je .L_0079
jmp .L_0068
.L_0079:
.L_0078:
push 68
call _LEXGETTEXT
push eax
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007B
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
.L_007B:
.L_007A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0075:
.L_0074:
jmp .L_0069
.L_006A:
cmp dword ptr [ebp-16], 3
ja .L_0069
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_007C+eax*4]
_.L_007C:
.int .L_0073
.int .L_0069
.int .L_0069
.int .L_006C
.L_0069:
cmp dword ptr [ebp-8], 0
je .L_007E
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [_SYMB+99036], eax
mov dword ptr [ebp-4], -1
.L_007E:
.L_007D:
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
