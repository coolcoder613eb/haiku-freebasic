	.intel_syntax noprefix

.section .text
.balign 16

.globl CLABEL
CLABEL:
.type CLABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_0069
.L_006B:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_006D
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_006D:
.L_006C:
mov eax, dword ptr [ENV+1040]
and eax, 1048576
test eax, eax
jne .L_006F
sub esp, 4
push 0
push 146
push 1048576
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_006E
.L_006F:
sub esp, 8
push 68
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0071
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0070
.L_0071:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0070:
inc dword ptr [PARSER+28]
.L_006E:
jmp .L_0068
.L_0072:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 258
jne .L_0074
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0076
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0076:
.L_0075:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-12], eax
sub esp, 8
push 3
push dword ptr [ebp-12]
call SYMBFINDBYCLASS
add esp, 16
test eax, eax
je .L_0078
jmp .L_0067
.L_0078:
.L_0077:
sub esp, 8
push 68
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007A
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
.L_007A:
.L_0079:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0074:
.L_0073:
jmp .L_0068
.L_0069:
cmp dword ptr [ebp-16], 3
ja .L_0068
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_007B+eax*4]
.L_007B:
.int .L_0072
.int .L_0068
.int .L_0068
.int .L_006B
.L_0068:
cmp dword ptr [ebp-8], 0
je .L_007D
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [SYMB+99036], eax
mov dword ptr [ebp-4], -1
.L_007D:
.L_007C:
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLABEL, .-CLABEL
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
