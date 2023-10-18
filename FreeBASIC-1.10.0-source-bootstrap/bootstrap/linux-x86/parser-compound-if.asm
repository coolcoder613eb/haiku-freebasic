	.intel_syntax noprefix

.section .text
.balign 16

.globl CIFSTMTBEGIN
CIFSTMTBEGIN:
.type CIFSTMTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_007E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0081
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
.L_0081:
.L_0080:
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0083
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_0082
.L_0083:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.L_0082:
sub esp, 8
push 1
push 266
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+24], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 393
jne .L_0085
sub esp, 12
push dword ptr [ebp-16]
call HIFSINGLELINE
add esp, 16
jmp .L_007F
.L_0085:
.L_0084:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 267
je .L_0087
sub esp, 4
push 0
push 0
push 31
call ERRREPORT
add esp, 16
jmp .L_0086
.L_0087:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0086:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_0089
.L_008B:
mov dword ptr [ebp-20], -1
jmp .L_0088
.L_008C:
cmp dword ptr [ENV+136], 3
jne .L_008E
mov dword ptr [ebp-20], 0
jmp .L_008D
.L_008E:
mov dword ptr [ebp-20], -1
.L_008D:
jmp .L_0088
.L_008F:
mov dword ptr [ebp-20], 0
jmp .L_0088
.L_0089:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .L_008F
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_0090+eax*4-1024]
.L_0090:
.int .L_008B
.int .L_008B
.int .L_008C
.int .L_008B
.int .L_008C
.L_0088:
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
cmp dword ptr [ebp-20], 0
je .L_0092
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+12], 0
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+12], -1
sub esp, 12
push dword ptr [ebp-16]
call HIFSINGLELINE
add esp, 16
.L_0091:
.L_007F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CIFSTMTBEGIN, .-CIFSTMTBEGIN
.cfi_endproc
.balign 16

.globl CIFSTMTNEXT
CIFSTMTNEXT:
.type CIFSTMTNEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0093:
sub esp, 8
push 0
push 266
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0096
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 269
jne .L_0098
sub esp, 4
push 0
push 0
push 116
call ERRREPORT
add esp, 16
jmp .L_0097
.L_0098:
sub esp, 4
push 0
push 0
push 117
call ERRREPORT
add esp, 16
.L_0097:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0094
.L_0096:
.L_0095:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
je .L_009A
jmp .L_0094
.L_009A:
.L_0099:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+24], 0
je .L_009C
sub esp, 4
push 0
push 0
push 32
call ERRREPORT
add esp, 16
.L_009C:
.L_009B:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .L_009E
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.L_009E:
.L_009D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 269
jne .L_00A0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+16], 0
je .L_00A2
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
.L_00A2:
.L_00A1:
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], eax
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A4
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
.L_00A4:
.L_00A3:
sub esp, 8
push 2048
push 267
call HMATCH
add esp, 16
test eax, eax
jne .L_00A6
sub esp, 4
push 0
push 0
push 31
call ERRREPORT
add esp, 16
.L_00A6:
.L_00A5:
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A8
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_00A7
.L_00A8:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.L_00A7:
jmp .L_009F
.L_00A0:
mov eax, dword ptr [ebp-8]
inc dword ptr [eax+24]
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 266
jne .L_00AA
push 0
push 1
push 0
push 32
call ERRREPORTWARN
add esp, 16
.L_00AA:
.L_00A9:
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+16], 0
je .L_00AC
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+16], 0
.L_00AC:
.L_00AB:
.L_009F:
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
call CSTATEMENT
.L_0094:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CIFSTMTNEXT, .-CIFSTMTNEXT
.cfi_endproc
.balign 16

.globl CIFSTMTEND
CIFSTMTEND:
.type CIFSTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00AD:
sub esp, 8
push -1
push 266
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00B0
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AE
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00B2
jmp .L_00AE
.L_00B2:
.L_00B1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 340
jne .L_00B4
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_00B4:
.L_00B3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_00B6
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.L_00B6:
.L_00B5:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
je .L_00B8
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
.L_00B8:
.L_00B7:
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+20]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.L_00AE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CIFSTMTEND, .-CIFSTMTEND
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
HIFSINGLELINE:
.type HIFSINGLELINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0066:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 3
jne .L_0069
sub esp, 12
push 0
push 0
push 7
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006B
sub esp, 8
push 64
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-4], eax
.L_006B:
.L_006A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-4]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .L_0068
.L_0069:
call CSTATEMENT
.L_0068:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 268
jne .L_006D
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_006F
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_006F:
.L_006E:
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 3
jne .L_0071
sub esp, 12
push 0
push 0
push 7
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0073
sub esp, 8
push 64
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-4], eax
.L_0073:
.L_0072:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-4]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .L_0070
.L_0071:
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
call CSTATEMENT
.L_0070:
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .L_006C
.L_006D:
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
.L_006C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 340
jne .L_0076
.L_0077:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 266
jne .L_0079
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0079:
.L_0078:
jmp .L_0074
.L_0076:
cmp dword ptr [ebp-4], 314
jne .L_007A
.L_007B:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_007A:
.L_0074:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_007D
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.L_007D:
.L_007C:
sub esp, 12
push dword ptr [ebp+8]
call CCOMPSTMTPOP
add esp, 16
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HIFSINGLELINE, .-HIFSINGLELINE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
