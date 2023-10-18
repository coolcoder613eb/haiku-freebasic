	.intel_syntax noprefix

.section .text
.balign 16

.globl CTHREADCALLFUNC
CTHREADCALLFUNC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 50
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_006B
jmp .L_0068
.L_006B:
.L_006A:
push 3
push dword ptr [ebp-12]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
push 0
push 0
push 289
call ERRREPORT
add esp, 12
jmp .L_0068
.L_006D:
.L_006C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_006F
push 0
push 0
push 289
call ERRREPORT
add esp, 12
jmp .L_0068
.L_006F:
.L_006E:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_0071
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 0
jle .L_0073
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .L_0068
.L_0073:
.L_0072:
jmp .L_0070
.L_0071:
mov dword ptr [ebp-16], -1
.L_0070:
push 0
lea ebx, [ebp-28]
push ebx
push 0
push dword ptr [ebp-8]
push 0
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-16], -1
jne .L_0075
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0077
push 0
push 0
push 7
call ERRREPORT
add esp, 12
jmp .L_0068
.L_0077:
.L_0076:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0075:
.L_0074:
push dword ptr [ebp-32]
call RTLTHREADCALL
add esp, 4
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
