	.intel_syntax noprefix

.section .text
.balign 16

.globl _CTHREADCALLFUNC@0
_CTHREADCALLFUNC@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 50
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_006C
jmp .L_0069
.L_006C:
.L_006B:
push 3
push dword ptr [ebp-12]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006E
push 0
push 0
push 289
call _ERRREPORT@12
jmp .L_0069
.L_006E:
.L_006D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0070
push 0
push 0
push 289
call _ERRREPORT@12
jmp .L_0069
.L_0070:
.L_006F:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 40
call _HMATCH@8
test eax, eax
jne .L_0072
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 0
jle .L_0074
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0069
.L_0074:
.L_0073:
jmp .L_0071
.L_0072:
mov dword ptr [ebp-16], -1
.L_0071:
push 0
lea ebx, [ebp-28]
push ebx
push 0
push dword ptr [ebp-8]
push 0
call _CPROCARGLIST@20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-16], -1
jne .L_0076
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0078
push 0
push 0
push 7
call _ERRREPORT@12
jmp .L_0069
.L_0078:
.L_0077:
push 0
call _LEXSKIPTOKEN@4
.L_0076:
.L_0075:
push dword ptr [ebp-32]
call _RTLTHREADCALL@4
mov dword ptr [ebp-4], eax
.L_0069:
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
