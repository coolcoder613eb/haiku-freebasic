	.intel_syntax noprefix

.section .text
.balign 16

.globl _CVIEWSTMT
_CVIEWSTMT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .L_006A
mov dword ptr [ebp-24], -1
jmp .L_0080
.L_006A:
mov dword ptr [ebp-24], 0
.L_0080:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 463
je .L_006D
jmp .L_0069
.L_006D:
.L_006C:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
jne .L_006F
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0071
push 2048
push 284
call _HMATCH
add esp, 8
test eax, eax
jne .L_0073
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0073:
.L_0072:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0075
jmp .L_0069
.L_0075:
.L_0074:
jmp .L_0070
.L_0071:
mov dword ptr [ebp-16], -1
.L_0070:
.L_006F:
.L_006E:
cmp dword ptr [ebp-16], 0
je .L_0077
cmp dword ptr [ebp+8], 0
je .L_0079
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_007B
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .L_007A
.L_007B:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_007A:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_007D
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_007C
.L_007D:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_007C:
.L_0079:
.L_0078:
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0077:
.L_0076:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLCONSOLEVIEW
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_007F
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
.L_007F:
.L_007E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CWIDTHSTMT
_CWIDTHSTMT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0081:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_0084
push 0
push 40
call _HMATCH
add esp, 8
mov dword ptr [ebp-24], eax
jmp .L_0083
.L_0084:
mov dword ptr [ebp-24], 0
.L_0083:
cmp dword ptr [ebp+8], 0
je .L_0086
cmp dword ptr [ebp-24], 0
jne .L_0088
push dword ptr [ebp+8]
push 0
push 0
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0082
jmp .L_0087
.L_0088:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
je .L_0089
push dword ptr [ebp+8]
push 0
push 0
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0089:
.L_0087:
.L_0086:
.L_0085:
push 0
push 464
call _HMATCH
add esp, 8
test eax, eax
je .L_008B
push offset _Lt_008C
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-20], eax
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008E
jmp .L_0082
.L_008E:
.L_008D:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _RTLWIDTHDEV
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_008A
.L_008B:
push 0
push 35
call _HMATCH
add esp, 8
test eax, eax
je .L_008F
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0091
push 0
push 0
push 327
call _ERRREPORT
add esp, 12
jmp .L_0093
mov dword ptr [ebp-4], 0
jmp .L_0082
.L_0093:
.L_0092:
push 0
push 8
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-8], eax
.L_0091:
.L_0090:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .L_0095
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0097
jmp .L_0082
.L_0097:
.L_0096:
jmp .L_0094
.L_0095:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0094:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLWIDTHFILE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_008A
.L_008F:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .L_0098
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_009A
jmp .L_0082
.L_009A:
.L_0099:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_008A
.L_0098:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_009C
jmp .L_0082
.L_009C:
.L_009B:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBISSTRING
add esp, 4
test eax, eax
je .L_009E
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .L_00A0
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00A2
jmp .L_0082
.L_00A2:
.L_00A1:
jmp .L_009F
.L_00A0:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_009F:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _RTLWIDTHDEV
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_009D
.L_009E:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .L_00A4
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00A6
jmp .L_0082
.L_00A6:
.L_00A5:
jmp .L_00A3
.L_00A4:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_00A3:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
.L_009D:
.L_008A:
cmp dword ptr [ebp-24], 0
je .L_00A8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00AA
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_00A9
.L_00AA:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00A9:
.L_00A8:
.L_00A7:
.L_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCOLORSTMT
_CCOLORSTMT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00AB:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_00AE
push 0
push 40
call _HMATCH
add esp, 8
cmp eax, -1
jne .L_00B0
call _CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .L_00B2
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00B4
jmp .L_00AC
.L_00B4:
.L_00B3:
.L_00B2:
.L_00B1:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00B6
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_00B5
.L_00B6:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00B5:
.L_00B0:
.L_00AF:
jmp .L_00AD
.L_00AE:
push 0
push 40
call _HMATCH
add esp, 8
cmp eax, -1
jne .L_00B8
call _CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .L_00BA
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00BC
jmp .L_00AC
.L_00BC:
.L_00BB:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00BE
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_00BD
.L_00BE:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00BD:
jmp .L_00B9
.L_00BA:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00C0
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_00BF
.L_00C0:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00BF:
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .L_00C2
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00C4
jmp .L_00AC
.L_00C4:
.L_00C3:
.L_00C2:
.L_00C1:
.L_00B9:
jmp .L_00B7
.L_00B8:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .L_00C6
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00C8
jmp .L_00AC
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C5:
.L_00B7:
.L_00AD:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLCOLOR
add esp, 12
mov dword ptr [ebp-4], eax
.L_00AC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSCREENFUNCT
_CSCREENFUNCT:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00C9:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_00CC
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -1
call _CEXPRESSION
mov dword ptr [ebp-12], eax
.L_00CC:
.L_00CB:
cmp dword ptr [ebp-12], 0
jne .L_00CE
push -1
push 0
push 0
call _RTLPAGESET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00CD
.L_00CE:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00D0
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_00CF
.L_00D0:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00CF:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D2
jmp .L_00CA
.L_00D2:
.L_00D1:
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .L_00D4
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00D6
jmp .L_00CA
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLCONSOLEREADXY
add esp, 12
mov dword ptr [ebp-4], eax
.L_00CD:
cmp dword ptr [ebp-8], 0
je .L_00D8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00DA
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_00D9
.L_00DA:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00D9:
.L_00D8:
.L_00D7:
.L_00CA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
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
call _fb_StrAssign
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
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_008C:	.ascii	"LPT1:\0"
