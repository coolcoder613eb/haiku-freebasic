	.intel_syntax noprefix

.section .text
.balign 16

.globl CCOMMENT
CCOMMENT:
.type CCOMMENT, @function
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
sub esp, 12
push dword ptr [ebp+8]
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 259
je .L_006B
.L_006C:
cmp dword ptr [ebp-8], 260
jne .L_006A
.L_006B:
sub esp, 12
push dword ptr [ebp+8]
call LEXGETTOKEN
add esp, 16
cmp eax, 260
jne .L_006E
cmp dword ptr [ENV+136], 3
jne .L_0070
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .L_0072
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_0072:
.L_0071:
.L_0070:
.L_006F:
.L_006E:
.L_006D:
mov ebx, dword ptr [LEX+840072]
inc dword ptr [ebx+16576]
sub esp, 12
push 523
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 523
call LEXGETTOKEN
add esp, 16
cmp eax, 36
jne .L_0074
sub esp, 12
push 523
call LEXSKIPTOKEN
add esp, 16
call CDIRECTIVE
jmp .L_0073
.L_0074:
call LEXSKIPLINE
.L_0073:
mov eax, dword ptr [LEX+840072]
dec dword ptr [eax+16576]
mov dword ptr [ebp-4], -1
jmp .L_0068
.L_006A:
mov dword ptr [ebp-4], 0
.L_0075:
.L_0068:
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CCOMMENT, .-CCOMMENT
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
CDIRECTIVE:
.type CDIRECTIVE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
.L_0076:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0079
.L_007B:
mov eax, dword ptr [ENV+1040]
and eax, 16777216
test eax, eax
jne .L_007D
sub esp, 4
push 0
push 146
push 16777216
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_007C
.L_007D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+1096], -1
cmp dword ptr [ENV+860], 0
jle .L_007F
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 10
push offset Lt_0080
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_007F:
.L_007E:
.L_007C:
jmp .L_0078
.L_0082:
mov eax, dword ptr [ENV+1040]
and eax, 16777216
test eax, eax
jne .L_0084
sub esp, 4
push 0
push 146
push 16777216
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_0083
.L_0084:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+1096], 0
cmp dword ptr [ENV+860], 0
jle .L_0086
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset Lt_0087
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0086:
.L_0085:
.L_0083:
jmp .L_0078
.L_0089:
mov eax, dword ptr [ENV+1040]
and eax, 16777216
test eax, eax
jne .L_008B
sub esp, 4
push 0
push 146
push 16777216
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_008A
.L_008B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 2048
push offset Lt_008C
call HMATCHIDORKW
add esp, 16
mov dword ptr [Lt_00B7], eax
sub esp, 8
push 0
push 258
call HMATCH
add esp, 16
test eax, eax
jne .L_008E
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .L_0078
.L_008E:
.L_008D:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .L_0090
sub esp, 8
push 0
push offset Lt_00B8
call LEXEATTOKEN
add esp, 16
jmp .L_008F
.L_0090:
sub esp, 12
push 527
call LEXGETTOKEN
add esp, 16
cmp eax, 259
je .L_0092
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .L_0078
jmp .L_0091
.L_0092:
sub esp, 12
push 527
call LEXSKIPTOKEN
add esp, 16
.L_0091:
sub esp, 4
push 0
push offset Lt_00B8
push 39
call LEXREADLINE
add esp, 16
sub esp, 8
push 0
push 39
call HMATCH
add esp, 16
test eax, eax
jne .L_0094
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .L_0078
.L_0094:
.L_0093:
.L_008F:
sub esp, 8
push dword ptr [Lt_00B7]
push offset Lt_00B8
call FBINCLUDEFILE
add esp, 16
.L_008A:
jmp .L_0078
.L_0095:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_0099
.L_009A:
cmp dword ptr [ebp-8], 2
jne .L_0098
.L_0099:
mov eax, dword ptr [ENV+1040]
and eax, 16777216
test eax, eax
je .L_009C
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_009C:
.L_009B:
jmp .L_0096
.L_0098:
sub esp, 8
push 0
push offset Lt_009E
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_00A0
sub esp, 8
push 0
push 258
call HMATCH
add esp, 16
test eax, eax
jne .L_00A2
sub esp, 4
push 0
push -1
push 203
call ERRREPORT
add esp, 16
jmp .L_0096
.L_00A2:
.L_00A1:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .L_00A4
sub esp, 8
push 0
push offset Lt_00B8
call LEXEATTOKEN
add esp, 16
sub esp, 12
push offset Lt_00B8
call FBGETLANGID
add esp, 16
mov dword ptr [Lt_00B9], eax
cmp dword ptr [Lt_00B9], -1
jne .L_00A6
sub esp, 4
push 0
push 0
push 279
call ERRREPORT
add esp, 16
jmp .L_00A5
.L_00A6:
sub esp, 8
push dword ptr [Lt_00B9]
push 10
call FBCHANGEOPTION
add esp, 16
cmp dword ptr [ENV+860], 0
jle .L_00A8
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00AA
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_00B9]
call FBGETLANGNAME
add esp, 16
push eax
push 10
push offset Lt_00A9
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
.L_00A8:
.L_00A7:
.L_00A5:
jmp .L_00A3
.L_00A4:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_00A3:
.L_00A0:
.L_009F:
.L_009D:
.L_0096:
jmp .L_0078
.L_0079:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 10
ja .L_0095
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_00AE+eax*4-1228]
.L_00AE:
.int .L_0082
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0089
.int .L_007B
.L_0078:
.L_00AF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
je .L_00B5
.L_00B6:
cmp dword ptr [ebp-4], 256
jne .L_00B4
.L_00B5:
jmp .L_00B0
.L_00B4:
.L_00B2:
sub esp, 12
push 523
call LEXSKIPTOKEN
add esp, 16
.L_00B1:
jmp .L_00AF
.L_00B0:
.L_0077:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CDIRECTIVE, .-CDIRECTIVE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00B8,261
.balign 4
	.lcomm	Lt_00B7,4
.balign 4
	.lcomm	Lt_00B9,4
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0080:	.ascii	"'$dynamic\0"
.balign 4
Lt_0087:	.ascii	"'$static\0"
.balign 4
Lt_008C:	.ascii	"ONCE\0"
.balign 4
Lt_009E:	.ascii	"LANG\0"
.balign 4
Lt_00A9:	.ascii	"'$lang: \"\0"
.balign 4
Lt_00AA:	.ascii	"\"\0"
