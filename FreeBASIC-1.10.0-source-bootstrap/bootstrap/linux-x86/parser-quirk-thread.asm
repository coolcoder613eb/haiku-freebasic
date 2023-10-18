	.intel_syntax noprefix

.section .text
.balign 16

.globl CTHREADCALLFUNC
CTHREADCALLFUNC:
.type CTHREADCALLFUNC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
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
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 50
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_006B
jmp .L_0068
.L_006B:
.L_006A:
sub esp, 8
push 3
push dword ptr [ebp-12]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
sub esp, 4
push 0
push 0
push 289
call ERRREPORT
add esp, 16
jmp .L_0068
.L_006D:
.L_006C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_006F
sub esp, 4
push 0
push 0
push 289
call ERRREPORT
add esp, 16
jmp .L_0068
.L_006F:
.L_006E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .L_0071
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 0
jle .L_0073
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0068
.L_0073:
.L_0072:
jmp .L_0070
.L_0071:
mov dword ptr [ebp-16], -1
.L_0070:
sub esp, 12
push 0
lea ebx, [ebp-28]
push ebx
push 0
push dword ptr [ebp-8]
push 0
call CPROCARGLIST
add esp, 32
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-16], -1
jne .L_0075
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0077
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .L_0068
.L_0077:
.L_0076:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0075:
.L_0074:
sub esp, 12
push dword ptr [ebp-32]
call RTLTHREADCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CTHREADCALLFUNC, .-CTHREADCALLFUNC
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
