	.intel_syntax noprefix

.section .text
.balign 16

.globl CVIEWSTMT
CVIEWSTMT:
push ebp
mov ebp, esp
sub esp, 24
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
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 463
je .L_006C
jmp .L_0068
.L_006C:
.L_006B:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
jne .L_006E
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0070
push 2048
push 284
call HMATCH
add esp, 8
test eax, eax
jne .L_0072
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0072:
.L_0071:
push 8
call HMATCHEXPR
add esp, 4
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
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_007A
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .L_0079
.L_007A:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0079:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_007C
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_007B
.L_007C:
push 0
call LEXSKIPTOKEN
add esp, 4
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
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLCONSOLEVIEW
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_007E
push dword ptr [ebp-8]
call ASTADD
add esp, 4
.L_007E:
.L_007D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CWIDTHSTMT
CWIDTHSTMT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_0083
push 0
push 40
call HMATCH
add esp, 8
mov dword ptr [ebp-24], eax
jmp .L_0082
.L_0083:
mov dword ptr [ebp-24], 0
.L_0082:
cmp dword ptr [ebp+8], 0
je .L_0085
cmp dword ptr [ebp-24], 0
jne .L_0087
push dword ptr [ebp+8]
push 0
push 0
call RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0081
jmp .L_0086
.L_0087:
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
je .L_0088
push dword ptr [ebp+8]
push 0
push 0
call RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0088:
.L_0086:
.L_0085:
.L_0084:
push 0
push 464
call HMATCH
add esp, 8
test eax, eax
je .L_008A
push offset Lt_008B
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-20], eax
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008D
jmp .L_0081
.L_008D:
.L_008C:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call RTLWIDTHDEV
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_008A:
push 0
push 35
call HMATCH
add esp, 8
test eax, eax
je .L_008E
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0090
push 0
push 0
push 327
call ERRREPORT
add esp, 12
jmp .L_0092
mov dword ptr [ebp-4], 0
jmp .L_0081
.L_0092:
.L_0091:
push 0
push 8
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-8], eax
.L_0090:
.L_008F:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .L_0094
push 8
call HMATCHEXPR
add esp, 4
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
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLWIDTHFILE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_008E:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .L_0097
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0099
jmp .L_0081
.L_0099:
.L_0098:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0089
.L_0097:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_009B
jmp .L_0081
.L_009B:
.L_009A:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBISSTRING
add esp, 4
test eax, eax
je .L_009D
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .L_009F
push 8
call HMATCHEXPR
add esp, 4
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
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call RTLWIDTHDEV
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_009C
.L_009D:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .L_00A3
push 8
call HMATCHEXPR
add esp, 4
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
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
.L_009C:
.L_0089:
cmp dword ptr [ebp-24], 0
je .L_00A7
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00A9
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00A8
.L_00A9:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00A8:
.L_00A7:
.L_00A6:
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCOLORSTMT
CCOLORSTMT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00AA:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_00AD
push 0
push 40
call HMATCH
add esp, 8
cmp eax, -1
jne .L_00AF
call CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call HMATCH
add esp, 8
cmp eax, -1
jne .L_00B1
push -1
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00B3
jmp .L_00AB
.L_00B3:
.L_00B2:
.L_00B1:
.L_00B0:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00B5
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00B4
.L_00B5:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00B4:
.L_00AF:
.L_00AE:
jmp .L_00AC
.L_00AD:
push 0
push 40
call HMATCH
add esp, 8
cmp eax, -1
jne .L_00B7
call CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call HMATCH
add esp, 8
cmp eax, -1
jne .L_00B9
push -1
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00BB
jmp .L_00AB
.L_00BB:
.L_00BA:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00BD
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00BC
.L_00BD:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00BC:
jmp .L_00B8
.L_00B9:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00BF
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00BE
.L_00BF:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00BE:
push 0
push 44
call HMATCH
add esp, 8
cmp eax, -1
jne .L_00C1
push -1
call HMATCHEXPR
add esp, 4
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
push 0
push 44
call HMATCH
add esp, 8
cmp eax, -1
jne .L_00C5
push -1
call HMATCHEXPR
add esp, 4
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
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLCOLOR
add esp, 12
mov dword ptr [ebp-4], eax
.L_00AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSCREENFUNCT
CSCREENFUNCT:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00C8:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_00CB
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -1
call CEXPRESSION
mov dword ptr [ebp-12], eax
.L_00CB:
.L_00CA:
cmp dword ptr [ebp-12], 0
jne .L_00CD
push -1
push 0
push 0
call RTLPAGESET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00CC
.L_00CD:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00CF
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .L_00CE
.L_00CF:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00CE:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D1
jmp .L_00C9
.L_00D1:
.L_00D0:
mov dword ptr [ebp-20], 0
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .L_00D3
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00D5
jmp .L_00C9
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLCONSOLEREADXY
add esp, 12
mov dword ptr [ebp-4], eax
.L_00CC:
cmp dword ptr [ebp-8], 0
je .L_00D7
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00D9
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00D8
.L_00D9:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00D8:
.L_00D7:
.L_00D6:
.L_00C9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0012:
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
add esp, 20
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
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_008B:	.ascii	"LPT1:\0"
