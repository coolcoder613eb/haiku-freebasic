	.intel_syntax noprefix

.section .text
.balign 16

.globl CWHILESTMTBEGIN
CWHILESTMTBEGIN:
.type CWHILESTMTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0066:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0069
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0069:
.L_0068:
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006B
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_006A
.L_006B:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.L_006A:
sub esp, 8
push 1
push 273
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-16], eax
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+16], eax
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CWHILESTMTBEGIN, .-CWHILESTMTBEGIN
.cfi_endproc
.balign 16

.globl CWHILESTMTEND
CWHILESTMTEND:
.type CWHILESTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_006C:
sub esp, 8
push -1
push 273
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006F
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_006D
.L_006F:
.L_006E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_0071
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.L_0071:
.L_0070:
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.L_006D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CWHILESTMTEND, .-CWHILESTMTEND
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
