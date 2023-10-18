	.intel_syntax noprefix

.section .text
.balign 16

.globl CONSTMT
CONSTMT:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.L_008A:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
push 500
call HMATCH
add esp, 8
test eax, eax
je .L_008D
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_008F
push 0
push -1
push 17
call ERRREPORT
add esp, 12
jmp .L_008B
.L_008F:
.L_008E:
mov dword ptr [ebp-16], -1
jmp .L_008C
.L_008D:
mov dword ptr [ebp-16], 0
.L_008C:
mov dword ptr [ebp-8], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 499
jne .L_0091
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_0090
.L_0091:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0093
jmp .L_008B
.L_0093:
.L_0092:
.L_0090:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 393
jne .L_0096
.L_0097:
mov dword ptr [ebp-12], -1
jmp .L_0094
.L_0096:
cmp dword ptr [ebp-36], 394
jne .L_0098
.L_0099:
cmp dword ptr [ebp-8], 0
jne .L_009B
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
.L_009B:
.L_009A:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
jne .L_009D
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_008B
.L_009D:
.L_009C:
cmp dword ptr [ENV+1100], 0
jne .L_009F
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_008B
.L_009F:
.L_009E:
mov dword ptr [ebp-12], 0
jmp .L_0094
.L_0098:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_008B
.L_00A0:
.L_0094:
cmp dword ptr [ebp-8], 0
jne .L_00A2
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-20], 0
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 3
jne .L_00A4
push 2
push offset Lt_0006
push 0
call LEXGETTEXT
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00A6
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-20], -1
.L_00A6:
.L_00A5:
.L_00A4:
.L_00A3:
cmp dword ptr [ebp-20], 0
jne .L_00A8
push 34
lea eax, [ebp-32]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-28], eax
push 7
push dword ptr [ebp-28]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_00AA
push 64
call LEXGETTEXT
push eax
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-24], eax
.L_00AA:
.L_00A9:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call RTLERRORSETHANDLER
add esp, 8
jmp .L_00A7
.L_00A8:
mov eax, dword ptr [ebp-16]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
call RTLERRORSETHANDLER
add esp, 8
.L_00A7:
mov dword ptr [ebp-4], -1
jmp .L_00A1
.L_00A2:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CGOTBSTMT
add esp, 8
mov dword ptr [ebp-4], eax
.L_00A1:
.L_008B:
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
.balign 16
CGOTBSTMT:
push ebp
mov ebp, esp
sub esp, 876
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
lea eax, [ebp-528]
mov dword ptr [ebp-564], eax
lea eax, [ebp-528]
mov dword ptr [ebp-560], eax
mov dword ptr [ebp-556], 512
mov dword ptr [ebp-552], 8
mov dword ptr [ebp-548], 1
mov dword ptr [ebp-544], 49
mov dword ptr [ebp-540], 64
mov dword ptr [ebp-536], 0
mov dword ptr [ebp-532], 63
lea eax, [ebp-820]
mov dword ptr [ebp-856], eax
lea eax, [ebp-820]
mov dword ptr [ebp-852], eax
mov dword ptr [ebp-848], 256
mov dword ptr [ebp-844], 4
mov dword ptr [ebp-840], 1
mov dword ptr [ebp-836], 49
mov dword ptr [ebp-832], 64
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 63
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 9
je .L_006C
push 0
push 0
push dword ptr [ebp+8]
push 0
push 9
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_006E
push 0
push -1
push 20
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0068
.L_006E:
.L_006D:
.L_006C:
.L_006B:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 9
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push 64
push dword ptr [ebp+8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-8], 0
.L_006F:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-872], eax
cmp dword ptr [ebp-872], 3
je .L_0075
.L_0076:
cmp dword ptr [ebp-872], 0
jne .L_0074
.L_0075:
push 34
lea eax, [ebp-864]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-860], eax
cmp dword ptr [ebp-8], 64
jge .L_0078
push 7
push dword ptr [ebp-860]
call SYMBFINDBYCLASS
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+eax*4-820], 0
jne .L_007A
push 64
call LEXGETTEXT
push eax
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.L_007A:
.L_0079:
jmp .L_0077
.L_0078:
cmp dword ptr [ebp-8], 64
jne .L_007B
push 0
push 0
push 287
call ERRREPORT
add esp, 12
.L_007B:
.L_0077:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_0072
.L_0074:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
cmp dword ptr [ebp-8], 64
jge .L_007E
push 0
call SYMBUNIQUELABEL
push eax
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.L_007E:
.L_007D:
.L_007C:
.L_0072:
inc dword ptr [ebp-8]
.L_0071:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .L_006F
.L_0070:
cmp dword ptr [ebp-8], 64
jl .L_0080
mov dword ptr [ebp-8], 63
.L_0080:
.L_007F:
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-872], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-876], eax
jmp .L_0082
.L_0085:
mov ebx, dword ptr [ebp-872]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-872]
mov dword ptr [ebp+ecx*8-528], ebx
mov dword ptr [ebp+ecx*8-524], eax
.L_0083:
inc dword ptr [ebp-872]
.L_0082:
mov ebx, dword ptr [ebp-876]
cmp dword ptr [ebp-872], ebx
jle .L_0085
.L_0084:
cmp dword ptr [ebp-8], 0
je .L_0086
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-868], ebx
jmp .L_00AD
.L_0086:
mov dword ptr [ebp-868], 0
.L_00AD:
mov eax, dword ptr [ebp-868]
mov ebx, eax
sar ebx, 31
push ebx
push eax
push 0
push 1
push dword ptr [ebp-16]
push dword ptr [ebp-8]
lea eax, [ebp-820]
push eax
lea eax, [ebp-528]
push eax
push dword ptr [ebp-12]
call ASTBUILDJMPTB
add esp, 36
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .L_0089
push dword ptr [ebp+8]
call ASTADD
add esp, 4
jmp .L_0088
.L_0089:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [PARSER+108]
call ASTGOSUBADDJUMPPTR
add esp, 12
.L_0088:
push -1
push dword ptr [ebp-16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0006:	.ascii	"0\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
