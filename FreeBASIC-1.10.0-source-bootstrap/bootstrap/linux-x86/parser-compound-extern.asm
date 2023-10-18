	.intel_syntax noprefix

.section .text
.balign 16

.globl CEXTERNSTMTBEGIN
CEXTERNSTMTBEGIN:
.type CEXTERNSTMTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0066:
mov eax, dword ptr [ENV+1040]
and eax, 8
test eax, eax
jne .L_0069
sub esp, 4
push 0
push 146
push 8
call ERRREPORTNOTALLOWED
add esp, 16
sub esp, 4
push 0
push -1
push 306
call HSKIPCOMPOUND
add esp, 16
jmp .L_0067
.L_0069:
.L_0068:
sub esp, 12
push 16
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_006B
sub esp, 4
push 0
push -1
push 306
call HSKIPCOMPOUND
add esp, 16
jmp .L_0067
.L_006B:
.L_006A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .L_006D
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov eax, offset Lt_006E
mov dword ptr [ebp-12], eax
jmp .L_006C
.L_006D:
call LEXGETTEXT
mov dword ptr [ebp-12], eax
.L_006C:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-12]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
push 2
push offset Lt_006E
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0071
.L_0072:
mov dword ptr [ebp-8], 1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_006F
.L_0071:
push 8
push offset Lt_0074
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0073
.L_0075:
mov dword ptr [ebp-8], 2
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_006F
.L_0073:
push 11
push offset Lt_0077
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0076
.L_0078:
mov dword ptr [ebp-8], 3
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_006F
.L_0076:
push 4
push offset Lt_007A
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0079
.L_007B:
mov dword ptr [ebp-8], 4
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_006F
.L_0079:
push 6
push offset Lt_007D
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_007C
.L_007E:
mov dword ptr [ebp-8], 6
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_006F
.L_007C:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-8], 1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_007F:
.L_006F:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
call CLIBATTRIBUTE
sub esp, 8
push -34
push 306
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [PARSER+104]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [PARSER+104], ebx
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CEXTERNSTMTBEGIN, .-CEXTERNSTMTBEGIN
.cfi_endproc
.balign 16

.globl CEXTERNSTMTEND
CEXTERNSTMTEND:
.type CEXTERNSTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0080:
sub esp, 8
push -1
push 306
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0083
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0081
.L_0083:
.L_0082:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [PARSER+104], ebx
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.L_0081:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CEXTERNSTMTEND, .-CEXTERNSTMTEND
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

.section .rodata
.balign 4
Lt_006E:	.ascii	"c\0"
.balign 4
Lt_0074:	.ascii	"windows\0"
.balign 4
Lt_0077:	.ascii	"windows-ms\0"
.balign 4
Lt_007A:	.ascii	"c++\0"
.balign 4
Lt_007D:	.ascii	"rtlib\0"
