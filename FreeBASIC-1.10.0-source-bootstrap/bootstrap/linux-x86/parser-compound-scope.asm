	.intel_syntax noprefix

.section .text
.balign 16

.globl CSCOPESTMTBEGIN
CSCOPESTMTBEGIN:
.type CSCOPESTMTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0066:
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_0069
sub esp, 4
push 0
push 146
push 2
call ERRREPORTNOTALLOWED
add esp, 16
sub esp, 4
push 0
push -1
push 285
call HSKIPCOMPOUND
add esp, 16
jmp .L_0067
.L_0069:
.L_0068:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call ASTSCOPEBEGIN
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006B
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
.L_006B:
.L_006A:
sub esp, 8
push 1
push 285
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [PARSER+152]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
or dword ptr [PARSER+152], 8
jmp .L_006C
.L_006D:
and dword ptr [PARSER+152], -9
.L_006C:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSCOPESTMTBEGIN, .-CSCOPESTMTBEGIN
.cfi_endproc
.balign 16

.globl CSCOPESTMTEND
CSCOPESTMTEND:
.type CSCOPESTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_006F:
sub esp, 8
push -1
push 285
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0072
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0070
.L_0072:
.L_0071:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_0074
or dword ptr [PARSER+152], 8
jmp .L_0073
.L_0074:
and dword ptr [PARSER+152], -9
.L_0073:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_0076
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.L_0076:
.L_0075:
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.L_0070:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSCOPESTMTEND, .-CSCOPESTMTEND
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
