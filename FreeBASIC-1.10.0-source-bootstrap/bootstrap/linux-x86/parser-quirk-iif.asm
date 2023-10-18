	.intel_syntax noprefix

.section .text
.balign 16

.globl CIIFFUNCT
CIIFFUNCT:
.type CIIFFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0069
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0068
.L_0069:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0068:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006B
jmp .L_0067
.L_006B:
.L_006A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_006D
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_006C
.L_006D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_006C:
sub esp, 12
push 0
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_006F
jmp .L_0067
.L_006F:
.L_006E:
call ASTDTORLISTSCOPEEND
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0071
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0070
.L_0071:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0070:
sub esp, 12
push 0
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0073
jmp .L_0067
.L_0073:
.L_0072:
call ASTDTORLISTSCOPEEND
mov dword ptr [ebp-24], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0075
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0074
.L_0075:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0074:
sub esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWIIF
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0077
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0077:
.L_0076:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CIIFFUNCT, .-CIIFFUNCT
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
