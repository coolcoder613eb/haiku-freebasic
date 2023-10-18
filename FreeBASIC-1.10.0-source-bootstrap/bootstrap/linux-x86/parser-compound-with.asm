	.intel_syntax noprefix

.section .text
.balign 16

.globl CWITHSTMTBEGIN
CWITHSTMTBEGIN:
.type CWITHSTMTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_006C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call ASTSCOPEBEGIN
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0070
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
.L_0070:
.L_006F:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0072
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_0071
.L_0072:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_0074
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_0073
.L_0074:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .L_0076
sub esp, 12
push dword ptr [ebp-8]
call ASTBUILDCALLRESULTUDT
add esp, 16
mov dword ptr [ebp-8], eax
.L_0076:
.L_0075:
.L_0073:
.L_0071:
sub esp, 12
push dword ptr [ebp-8]
call ASTTYPEINIUPDATE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp-24]
push dword ptr [eax+12]
call HEXTENDTEMPLIFETIME
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTGETEFFECTIVENODE
add esp, 16
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 17
jne .L_0078
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-12], 0
sub esp, 4
push 2
sub esp, 4
push dword ptr [ebp-8]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
jmp .L_0077
.L_0078:
sub esp, 12
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_007A
or dword ptr [ebp-16], 2
.L_007A:
.L_0079:
sub esp, 4
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-16]
and eax, 2
je .L_007C
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-4]
call ASTNEWDECL
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
sub esp, 4
push 2
sub esp, 12
push 0
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
jmp .L_007B
.L_007C:
sub esp, 4
push 2
push 0
push dword ptr [ebp-4]
call ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 4
push 2
sub esp, 12
push 64
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
.L_007B:
mov dword ptr [ebp-12], -1
.L_0077:
sub esp, 12
push dword ptr [ebp-28]
call ASTADD
add esp, 16
sub esp, 8
push 1
push 280
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [eax+8], ebx
.L_006D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CWITHSTMTBEGIN, .-CWITHSTMTBEGIN
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_007D,16

.section .text
.balign 16

.globl CWITHSTMTEND
CWITHSTMTEND:
.type CWITHSTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007E:
sub esp, 8
push -1
push 280
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0081
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_007F
.L_0081:
.L_0080:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_0083
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.L_0083:
.L_0082:
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.L_007F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CWITHSTMTEND, .-CWITHSTMTEND
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
.balign 16
HEXTENDTEMPLIFETIME:
.type HEXTENDTEMPLIFETIME, @function
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
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
.L_0068:
cmp dword ptr [ebp-12], 0
je .L_0069
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 1
jne .L_006B
sub esp, 12
push dword ptr [ebp-12]
call ASTDTORLISTDEL
add esp, 16
mov ebx, dword ptr [ebp-12]
and dword ptr [ebx+4], -4097
sub esp, 4
push 2
push 0
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.L_006B:
.L_006A:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .L_0068
.L_0069:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEXTENDTEMPLIFETIME, .-HEXTENDTEMPLIFETIME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
