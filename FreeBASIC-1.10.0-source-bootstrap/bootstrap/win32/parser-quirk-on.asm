	.intel_syntax noprefix

.section .text
.balign 16

.globl _CONSTMT@0
_CONSTMT@0:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.L_008B:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 2048
push 500
call _HMATCH@8
test eax, eax
je .L_008E
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_0090
push 0
push -1
push 17
call _ERRREPORT@12
jmp .L_008C
.L_0090:
.L_008F:
mov dword ptr [ebp-16], -1
jmp .L_008D
.L_008E:
mov dword ptr [ebp-16], 0
.L_008D:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 499
jne .L_0092
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0091
.L_0092:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0094
jmp .L_008C
.L_0094:
.L_0093:
.L_0091:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 393
jne .L_0097
.L_0098:
mov dword ptr [ebp-12], -1
jmp .L_0095
.L_0097:
cmp dword ptr [ebp-36], 394
jne .L_0099
.L_009A:
cmp dword ptr [ebp-8], 0
jne .L_009C
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_009C:
.L_009B:
mov eax, dword ptr [_ENV+1040]
and eax, 65536
test eax, eax
jne .L_009E
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .L_008C
.L_009E:
.L_009D:
cmp dword ptr [_ENV+1100], 0
jne .L_00A0
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .L_008C
.L_00A0:
.L_009F:
mov dword ptr [ebp-12], 0
jmp .L_0095
.L_0099:
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .L_008C
.L_00A1:
.L_0095:
cmp dword ptr [ebp-8], 0
jne .L_00A3
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-20], 0
push 0
call _LEXGETCLASS@4
cmp eax, 3
jne .L_00A5
push 2
push offset _Lt_0006
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00A7
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-20], -1
.L_00A7:
.L_00A6:
.L_00A5:
.L_00A4:
cmp dword ptr [ebp-20], 0
jne .L_00A9
push 34
lea eax, [ebp-32]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-28], eax
push 7
push dword ptr [ebp-28]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_00AB
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-24], eax
.L_00AB:
.L_00AA:
push 2048
call _LEXSKIPTOKEN@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call _RTLERRORSETHANDLER@8
jmp .L_00A8
.L_00A9:
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
call _ASTNEWCONSTI@16
push eax
call _RTLERRORSETHANDLER@8
.L_00A8:
mov dword ptr [ebp-4], -1
jmp .L_00A2
.L_00A3:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CGOTBSTMT@8
mov dword ptr [ebp-4], eax
.L_00A2:
.L_008C:
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
call _fb_StrAssign@20
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
_CGOTBSTMT@8:
push ebp
mov ebp, esp
sub esp, 876
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
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
je .L_006D
push 0
push 0
push dword ptr [ebp+8]
push 0
push 9
call _ASTNEWCONV@20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_006F
push 0
push -1
push 20
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0069
.L_006F:
.L_006E:
.L_006D:
.L_006C:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 9
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
push 64
push dword ptr [ebp+8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
mov dword ptr [ebp-8], 0
.L_0070:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-872], eax
cmp dword ptr [ebp-872], 3
je .L_0076
.L_0077:
cmp dword ptr [ebp-872], 0
jne .L_0075
.L_0076:
push 34
lea eax, [ebp-864]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-860], eax
cmp dword ptr [ebp-8], 64
jge .L_0079
push 7
push dword ptr [ebp-860]
call _SYMBFINDBYCLASS@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+eax*4-820], 0
jne .L_007B
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.L_007B:
.L_007A:
jmp .L_0078
.L_0079:
cmp dword ptr [ebp-8], 64
jne .L_007C
push 0
push 0
push 287
call _ERRREPORT@12
.L_007C:
.L_0078:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0073
.L_0075:
push 0
push 0
push 14
call _ERRREPORT@12
cmp dword ptr [ebp-8], 64
jge .L_007F
push 0
call _SYMBUNIQUELABEL@0
push eax
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.L_007F:
.L_007E:
.L_007D:
.L_0073:
inc dword ptr [ebp-8]
.L_0072:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_0070
.L_0071:
cmp dword ptr [ebp-8], 64
jl .L_0081
mov dword ptr [ebp-8], 63
.L_0081:
.L_0080:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-872], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-876], eax
jmp .L_0083
.L_0086:
mov ebx, dword ptr [ebp-872]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-872]
mov dword ptr [ebp+ecx*8-528], ebx
mov dword ptr [ebp+ecx*8-524], eax
.L_0084:
inc dword ptr [ebp-872]
.L_0083:
mov ebx, dword ptr [ebp-876]
cmp dword ptr [ebp-872], ebx
jle .L_0086
.L_0085:
cmp dword ptr [ebp-8], 0
je .L_0087
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-868], ebx
jmp .L_00AE
.L_0087:
mov dword ptr [ebp-868], 0
.L_00AE:
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
call _ASTBUILDJMPTB@36
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .L_008A
push dword ptr [ebp+8]
call _ASTADD@4
jmp .L_0089
.L_008A:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [_PARSER+108]
call _ASTGOSUBADDJUMPPTR@12
.L_0089:
push -1
push dword ptr [ebp-16]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_0006:	.ascii	"0\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
