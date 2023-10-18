	.intel_syntax noprefix

.section .text
.balign 16

.globl CVIEWSTMT
CVIEWSTMT:
.type CVIEWSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .L_0069
mov dword ptr [ebp-24], -1
jmp .L_007F
.L_0069:
mov dword ptr [ebp-24], 0
.L_007F:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 463
je .L_006C
jmp .L_0068
.L_006C:
.L_006B:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
jne .L_006E
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0070
sub esp, 8
push 2048
push 284
call HMATCH
add esp, 16
test eax, eax
jne .L_0072
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0072:
.L_0071:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0074
jmp .L_0068
.L_0074:
.L_0073:
jmp .L_006F
.L_0070:
mov dword ptr [ebp-16], -1
.L_006F:
.L_006E:
.L_006D:
cmp dword ptr [ebp-16], 0
je .L_0076
cmp dword ptr [ebp+8], 0
je .L_0078
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_007A
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
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
cmp eax, 41
je .L_007C
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
jmp .L_007B
.L_007C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_007B:
.L_0078:
.L_0077:
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0076:
.L_0075:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLCONSOLEVIEW
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_007E
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
.L_007E:
.L_007D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CVIEWSTMT, .-CVIEWSTMT
.cfi_endproc
.balign 16

.globl CWIDTHSTMT
CWIDTHSTMT:
.type CWIDTHSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0083
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_0082
.L_0083:
mov dword ptr [ebp-24], 0
.L_0082:
cmp dword ptr [ebp+8], 0
je .L_0085
cmp dword ptr [ebp-24], 0
jne .L_0087
sub esp, 4
push dword ptr [ebp+8]
push 0
push 0
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0081
jmp .L_0086
.L_0087:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
je .L_0088
sub esp, 4
push dword ptr [ebp+8]
push 0
push 0
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0088:
.L_0086:
.L_0085:
.L_0084:
sub esp, 8
push 0
push 464
call HMATCH
add esp, 16
test eax, eax
je .L_008A
sub esp, 12
push offset Lt_008B
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008D
jmp .L_0081
.L_008D:
.L_008C:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call RTLWIDTHDEV
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_008A:
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
test eax, eax
je .L_008E
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0090
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_0092
mov dword ptr [ebp-4], 0
jmp .L_0081
.L_0092:
.L_0091:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_0090:
.L_008F:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0094
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0096
jmp .L_0081
.L_0096:
.L_0095:
jmp .L_0093
.L_0094:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0093:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLWIDTHFILE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_008E:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0097
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0099
jmp .L_0081
.L_0099:
.L_0098:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_0097:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_009B
jmp .L_0081
.L_009B:
.L_009A:
sub esp, 12
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBISSTRING
add esp, 16
test eax, eax
je .L_009D
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_009F
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00A1
jmp .L_0081
.L_00A1:
.L_00A0:
jmp .L_009E
.L_009F:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_009E:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call RTLWIDTHDEV
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_009C
.L_009D:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00A3
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00A5
jmp .L_0081
.L_00A5:
.L_00A4:
jmp .L_00A2
.L_00A3:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_00A2:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
.L_009C:
.L_0089:
cmp dword ptr [ebp-24], 0
je .L_00A7
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00A9
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
jmp .L_00A8
.L_00A9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00A8:
.L_00A7:
.L_00A6:
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CWIDTHSTMT, .-CWIDTHSTMT
.cfi_endproc
.balign 16

.globl CCOLORSTMT
CCOLORSTMT:
.type CCOLORSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00AA:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_00AD
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
cmp eax, -1
jne .L_00AF
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .L_00B1
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00B3
jmp .L_00AB
.L_00B3:
.L_00B2:
.L_00B1:
.L_00B0:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00B5
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
jmp .L_00B4
.L_00B5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00B4:
.L_00AF:
.L_00AE:
jmp .L_00AC
.L_00AD:
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
cmp eax, -1
jne .L_00B7
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .L_00B9
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00BB
jmp .L_00AB
.L_00BB:
.L_00BA:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00BD
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
jmp .L_00BC
.L_00BD:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00BC:
jmp .L_00B8
.L_00B9:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00BF
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
jmp .L_00BE
.L_00BF:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00BE:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .L_00C1
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00C3
jmp .L_00AB
.L_00C3:
.L_00C2:
.L_00C1:
.L_00C0:
.L_00B8:
jmp .L_00B6
.L_00B7:
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .L_00C5
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00C7
jmp .L_00AB
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C4:
.L_00B6:
.L_00AC:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLCOLOR
add esp, 16
mov dword ptr [ebp-4], eax
.L_00AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CCOLORSTMT, .-CCOLORSTMT
.cfi_endproc
.balign 16

.globl CSCREENFUNCT
CSCREENFUNCT:
.type CSCREENFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00C8:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_00CB
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], -1
call CEXPRESSION
mov dword ptr [ebp-12], eax
.L_00CB:
.L_00CA:
cmp dword ptr [ebp-12], 0
jne .L_00CD
sub esp, 4
push -1
push 0
push 0
call RTLPAGESET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00CC
.L_00CD:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_00CF
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_00CE
.L_00CF:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00CE:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D1
jmp .L_00C9
.L_00D1:
.L_00D0:
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00D3
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00D5
jmp .L_00C9
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
sub esp, 4
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLCONSOLEREADXY
add esp, 16
mov dword ptr [ebp-4], eax
.L_00CC:
cmp dword ptr [ebp-8], 0
je .L_00D7
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00D9
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
jmp .L_00D8
.L_00D9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00D8:
.L_00D7:
.L_00D6:
.L_00C9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSCREENFUNCT, .-CSCREENFUNCT
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
Lt_008B:	.ascii	"LPT1:\0"
