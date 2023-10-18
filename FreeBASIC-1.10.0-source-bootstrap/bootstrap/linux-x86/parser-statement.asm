	.intel_syntax noprefix

.section .text
.balign 16

.globl CSTATEMENT
CSTATEMENT:
.type CSTATEMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
jne .L_0069
inc dword ptr [PARSER+28]
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0069:
.L_0068:
.L_006A:
call CDECLARATION
test eax, eax
jne .L_006E
call CCOMPOUNDSTMT
test eax, eax
jne .L_0070
call CPROCCALLORASSIGN
test eax, eax
jne .L_0072
sub esp, 12
push -1
call CQUIRKSTMT
add esp, 16
test eax, eax
jne .L_0074
call CASMBLOCK
test eax, eax
jne .L_0076
call CASSIGNMENTORPTRCALL
.L_0076:
.L_0075:
.L_0074:
.L_0073:
.L_0072:
.L_0071:
.L_0070:
.L_006F:
.L_006E:
.L_006D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
je .L_0078
jmp .L_006B
.L_0078:
.L_0077:
inc dword ptr [PARSER+28]
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_006C:
jmp .L_006A
.L_006B:
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSTATEMENT, .-CSTATEMENT
.cfi_endproc
.balign 16

.globl CSTMTSEPARATOR
CSTMTSEPARATOR:
.type CSTMTSEPARATOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0079:
mov dword ptr [ebp-4], 0
.L_007B:
sub esp, 12
push dword ptr [ebp+8]
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .L_0081
.L_0082:
cmp dword ptr [ebp-8], 257
jne .L_0080
.L_0081:
inc dword ptr [PARSER+28]
sub esp, 12
push dword ptr [ebp+8]
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_007E
.L_0080:
cmp dword ptr [ebp-8], 256
jne .L_0083
.L_0084:
mov dword ptr [ebp-4], -1
jmp .L_007C
jmp .L_007E
.L_0083:
jmp .L_007C
.L_0085:
.L_007E:
.L_007D:
jmp .L_007B
.L_007C:
.L_007A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSTMTSEPARATOR, .-CSTMTSEPARATOR
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
