	.intel_syntax noprefix

.section .text
.balign 16

.globl COPERATORNEW
COPERATORNEW:
.type COPERATORNEW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-28], -1
mov dword ptr [ebp-48], 78
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
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
je .L_0069
call CEXPRESSION
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_006B
sub esp, 4
push 0
push -1
push 9
call ERRREPORT
add esp, 16
.L_006B:
.L_006A:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .L_006D
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.L_006D:
.L_006C:
.L_0069:
.L_0068:
sub esp, 12
push 0
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
call HSYMBOLTYPE
add esp, 32
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 18
je .L_0072
.L_0073:
cmp dword ptr [ebp-60], 4
je .L_0072
.L_0074:
cmp dword ptr [ebp-60], 7
jne .L_0071
.L_0072:
sub esp, 4
push 0
push -1
push 201
call ERRREPORT
add esp, 16
mov dword ptr [ebp-8], 17
.L_0071:
.L_006F:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call TYPEHASCTOR
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call TYPEHASDEFCTOR
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 91
jne .L_0076
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_0078
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0077
.L_0078:
mov dword ptr [ebp-48], 79
.L_0077:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 93
je .L_007A
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 93
call HSKIPUNTIL
add esp, 16
jmp .L_0079
.L_007A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0079:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 123
jne .L_007C
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .L_007E
cmp dword ptr [ebp-24], 0
je .L_0080
push 0
push 1
push 0
push 19
call ERRREPORTWARN
add esp, 16
.L_0080:
.L_007F:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .L_0082
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_0081
.L_0082:
mov dword ptr [ebp-28], 0
.L_0081:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_007D
.L_007E:
sub esp, 4
push 0
push 0
push 200
call ERRREPORT
add esp, 16
.L_007D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 125
je .L_0084
sub esp, 4
push 0
push 0
push 65
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 125
call HSKIPUNTIL
add esp, 16
jmp .L_0083
.L_0084:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0083:
.L_007C:
.L_007B:
.L_0076:
.L_0075:
cmp dword ptr [ebp-36], 0
jne .L_0086
push 0
push 9
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
jmp .L_0085
.L_0086:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 16
jne .L_0088
push 0
push 9
push 9
push dword ptr [ebp-36]
call CCONSTINTEXPRRANGED
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
jmp .L_0087
.L_0088:
sub esp, 12
push 0
push 1
push dword ptr [ebp-36]
push 0
push 9
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-36], eax
.L_0087:
cmp dword ptr [ebp-36], 0
jne .L_008A
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
push 0
push 9
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
.L_008A:
.L_0089:
.L_0085:
sub esp, 8
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
and eax, 31
mov edx, dword ptr [ebp-8]
and edx, 480
add edx, 32
or eax, edx
mov edx, dword ptr [ebp-8]
and edx, 261632
sal edx, 1
or eax, edx
mov edx, dword ptr [ebp-8]
and edx, 32505856
or eax, edx
push eax
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
je .L_008C
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_008E
cmp dword ptr [ebp-48], 79
jne .L_0090
sub esp, 4
push 0
push -1
push 199
call ERRREPORT
add esp, 16
jmp .L_008F
.L_0090:
sub esp, 12
push dword ptr [ebp-12]
call CCTORCALL
add esp, 16
mov dword ptr [ebp-32], eax
.L_008F:
jmp .L_008D
.L_008E:
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0092
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
jmp .L_0091
.L_0092:
cmp dword ptr [ebp-48], 79
je .L_0094
sub esp, 12
push dword ptr [ebp-12]
call CCTORCALL
add esp, 16
mov dword ptr [ebp-32], eax
jmp .L_0093
.L_0094:
sub esp, 12
push dword ptr [ebp-60]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_0096
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.L_0096:
.L_0095:
.L_0093:
.L_0091:
.L_008D:
jmp .L_008B
.L_008C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0098
cmp dword ptr [ebp-48], 79
jne .L_009A
sub esp, 4
push 0
push -1
push 200
call ERRREPORT
add esp, 16
.L_009A:
.L_0099:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 372
jne .L_009C
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .L_009E
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_009D
.L_009E:
mov dword ptr [ebp-28], 0
.L_009D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00A0
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
jmp .L_009F
.L_00A0:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_009F:
jmp .L_009B
.L_009C:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push dword ptr [ebp-16]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00A2
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
.L_00A2:
.L_00A1:
.L_009B:
.L_0098:
.L_0097:
.L_008B:
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-16]
push dword ptr [ebp-48]
call ASTBUILDNEWOP
add esp, 32
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .L_00A4
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_00A4:
.L_00A3:
sub esp, 4
push 2
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-44]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size COPERATORNEW, .-COPERATORNEW
.cfi_endproc
.balign 16

.globl COPERATORDELETE
COPERATORDELETE:
.type COPERATORDELETE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00A5:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 80
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 91
jne .L_00A8
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 81
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 93
je .L_00AA
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 93
call HSKIPUNTIL
add esp, 16
jmp .L_00A6
.L_00AA:
.L_00A9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00A8:
.L_00A7:
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00AC
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00A6
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
jne .L_00AE
sub esp, 4
push 0
push 0
push 28
call ERRREPORT
add esp, 16
jmp .L_00A6
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 32
jne .L_00B1
.L_00B2:
push 0
push 1
push 0
push 22
call ERRREPORTWARN
add esp, 16
jmp .L_00AF
.L_00B1:
cmp dword ptr [ebp-20], 55
jne .L_00B3
.L_00B4:
sub esp, 4
push 0
push -1
push 71
call ERRREPORT
add esp, 16
.L_00B3:
.L_00AF:
sub esp, 8
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
push eax
call TYPEHASDTOR
add esp, 16
test eax, eax
je .L_00B6
sub esp, 12
push dword ptr [ebp-16]
call SYMBGETCOMPDTOR1
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_00B8
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.L_00B8:
.L_00B7:
.L_00B6:
.L_00B5:
sub esp, 12
sub esp, 12
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call ASTBUILDDELETEOP
add esp, 20
push eax
call ASTADD
add esp, 16
.L_00A6:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size COPERATORDELETE, .-COPERATORDELETE
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
