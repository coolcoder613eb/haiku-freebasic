	.intel_syntax noprefix

.section .text
.balign 16

.globl CERRORSTMT
CERRORSTMT:
.type CERRORSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006A
jmp .L_0068
.L_006A:
.L_0069:
sub esp, 4
lea eax, [ENV+304]
push eax
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push dword ptr [ebp-8]
call RTLERRORTHROW
add esp, 16
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CERRORSTMT, .-CERRORSTMT
.cfi_endproc
.balign 16

.globl CERRSETSTMT
CERRSETSTMT:
.type CERRSETSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006B:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CASSIGNTOKEN
test eax, eax
jne .L_006E
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
.L_006E:
.L_006D:
mov dword ptr [ebp-8], 0
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0070
jmp .L_006C
.L_0070:
.L_006F:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORSETNUM
add esp, 16
mov dword ptr [ebp-4], -1
.L_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CERRSETSTMT, .-CERRSETSTMT
.cfi_endproc
.balign 16

.globl CERRORFUNCT
CERRORFUNCT:
.type CERRORFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0071:
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
je .L_0074
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0076
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
jmp .L_0075
.L_0076:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0075:
.L_0074:
.L_0073:
call RTLERRORGETNUM
mov dword ptr [ebp-4], eax
.L_0072:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CERRORFUNCT, .-CERRORFUNCT
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
