	.intel_syntax noprefix

.section .text
.balign 16

.globl CENUMBODY
CENUMBODY:
.type CENUMBODY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0072:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0074:
.L_0077:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
sub esp, 12
push 0
mov ebx, eax
call CSTMTSEPARATOR
add esp, 16
or ebx, eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 256
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0078
jmp .L_0077
.L_0078:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .L_007B
.L_007C:
jmp .L_0075
jmp .L_0079
.L_007B:
cmp dword ptr [ebp-12], 340
jne .L_007D
.L_007E:
jmp .L_0075
jmp .L_0079
.L_007D:
.L_0080:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0085
.L_0086:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_0088
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_008A
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_008C
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.L_008C:
.L_008B:
.L_008A:
.L_0089:
.L_0088:
.L_0087:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_009F
call fb_StrAssign
add esp, 32
jmp .L_0083
.L_0085:
cmp dword ptr [ebp-16], 2
jne .L_008D
.L_008E:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [PARSER+100], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0090
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 129
push offset Lt_009F
call fb_StrAssign
add esp, 32
jmp .L_008F
.L_0090:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_009F
call fb_StrAssign
add esp, 32
.L_008F:
jmp .L_0083
.L_008D:
jmp .L_0081
.L_0091:
.L_0083:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
lea eax, [ebp-8]
push eax
push offset Lt_009F
call HENUMCONSTDECL
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push offset Lt_009F
push dword ptr [ebp+8]
call SYMBADDENUMELEMENT
add esp, 32
test eax, eax
jne .L_0093
sub esp, 12
push 0
push 1
push 0
push offset Lt_009F
push 4
call ERRREPORTEX
add esp, 32
.L_0093:
.L_0092:
add dword ptr [ebp-8], 1
adc dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0095
jmp .L_0081
.L_0095:
.L_0094:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0082:
jmp .L_0080
.L_0081:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .L_0097
cmp dword ptr [ENV+900], 0
jne .L_0099
sub esp, 12
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 16
.L_0099:
.L_0098:
.L_0097:
.L_0096:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .L_009B
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.L_009B:
.L_009A:
.L_007F:
.L_0079:
.L_0076:
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
jne .L_009D
sub esp, 4
push 0
push 0
push 256
call ERRREPORT
add esp, 16
.L_009D:
.L_009C:
.L_0073:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CENUMBODY, .-CENUMBODY
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_009F,129

.section .text
.balign 16

.globl CENUMDECL
CENUMDECL:
.type CENUMDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00A2:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00A5
sub esp, 4
push 0
push -1
push 338
call HSKIPCOMPOUND
add esp, 16
jmp .L_00A3
.L_00A5:
.L_00A4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_00A9
.L_00AA:
cmp dword ptr [ebp-20], 2
jne .L_00A8
.L_00A9:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_00AC
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_00AE
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_00B0
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_00C8
call fb_StrAssign
add esp, 32
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
jmp .L_00A6
.L_00A8:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 129
push offset Lt_00C8
call fb_StrAssign
add esp, 32
or dword ptr [ebp+8], 16777216
.L_00B1:
.L_00A6:
call CALIASATTRIBUTE
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 318
jne .L_00B3
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], -1
.L_00B3:
.L_00B2:
mov eax, dword ptr [PARSER+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
or dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset Lt_00C8
call SYMBADDENUM
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00B5
sub esp, 12
push 0
push 1
push 0
push offset Lt_00C8
push 4
call ERRREPORTEX
add esp, 32
push dword ptr [ebp-16]
push 0
push 0
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDENUM
add esp, 16
mov dword ptr [ebp-4], eax
.L_00B5:
.L_00B4:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .L_00B7
cmp dword ptr [ENV+900], 0
jne .L_00B9
sub esp, 12
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 16
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .L_00BB
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.L_00BB:
.L_00BA:
cmp dword ptr [ebp-16], 0
je .L_00BD
sub esp, 8
push 0
push dword ptr [ebp-4]
call SYMBNESTBEGIN
add esp, 16
.L_00BD:
.L_00BC:
sub esp, 8
mov eax, dword ptr [ebp+8]
and eax, -16777217
push eax
push dword ptr [ebp-4]
call CENUMBODY
add esp, 16
cmp dword ptr [ebp-16], 0
je .L_00BF
sub esp, 12
push 0
call SYMBNESTEND
add esp, 16
.L_00BF:
.L_00BE:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 340
je .L_00C1
sub esp, 4
push 0
push 0
push 74
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00C0
.L_00C1:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 338
je .L_00C3
sub esp, 4
push 0
push 0
push 74
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00C2
.L_00C3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-12], 0
jne .L_00C5
cmp dword ptr [ebp-16], 0
je .L_00C7
sub esp, 12
push dword ptr [ebp-4]
call SYMBNAMESPACEIMPORT
add esp, 16
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C4:
.L_00C2:
.L_00C0:
.L_00A3:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CENUMDECL, .-CENUMDECL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00C8,129

.section .text
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
HENUMCONSTDECL:
.type HENUMCONSTDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0066:
call CASSIGNTOKEN
test eax, eax
je .L_0069
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006B
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_006B:
.L_006A:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 16
je .L_006D
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 16
jmp .L_0067
.L_006D:
.L_006C:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_006E
mov dword ptr [ebp-8], 24
jmp .L_00CA
.L_006E:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.L_00CA:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .L_0071
push 0
push 1
push dword ptr [ebp+8]
push 5
call ERRREPORTWARN
add esp, 16
.L_0071:
.L_0070:
sub esp, 8
push 8
push dword ptr [ebp-4]
call ASTCONSTFLUSHTOINT
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_0069:
.L_0068:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HENUMCONSTDECL, .-HENUMCONSTDECL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
