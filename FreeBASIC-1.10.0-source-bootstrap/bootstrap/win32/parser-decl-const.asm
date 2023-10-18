	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCONSTDECL@4
_CCONSTDECL@4:
push ebp
mov ebp, esp
sub esp, 8
.L_00B4:
push 9
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00B7
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00B5
.L_00B7:
.L_00B6:
push 2048
call _LEXSKIPTOKEN@4
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
call _HGETTYPE@8
.L_00B8:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _CCONSTASSIGN@12
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_00BC
jmp .L_00B9
.L_00BC:
.L_00BB:
push 0
call _LEXSKIPTOKEN@4
.L_00BA:
jmp .L_00B8
.L_00B9:
.L_00B5:
mov esp, ebp
pop ebp
ret 4
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
_HGETTYPE@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0067:
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .L_006A
push 2048
call _LEXSKIPTOKEN@4
push 1
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CSYMBOLTYPE@20
test eax, eax
jne .L_006E
push 0
push 0
push 14
call _ERRREPORT@12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.L_006E:
.L_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_0072
.L_0073:
cmp dword ptr [ebp-16], 18
je .L_0072
.L_0074:
cmp dword ptr [ebp-16], 4
je .L_0072
.L_0075:
cmp dword ptr [ebp-16], 7
je .L_0072
.L_0076:
cmp dword ptr [ebp-16], 20
je .L_0072
.L_0077:
cmp dword ptr [ebp-16], 23
jne .L_0071
.L_0072:
push 0
push -1
push 24
call _ERRREPORT@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_0071:
.L_006F:
jmp .L_0069
.L_006A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_0069:
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_CCONSTASSIGN@12:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.L_0078:
call _CCURRENTPARENTID@0
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-32], eax
jmp .L_007B
.L_007D:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_007F
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .L_0081
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
jle .L_0083
push 0
push 0
push 90
call _ERRREPORT@12
.L_0083:
.L_0082:
.L_0081:
.L_0080:
.L_007F:
.L_007E:
jmp .L_007A
.L_0084:
cmp dword ptr [_ENV+136], 3
je .L_0086
lea ebx, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], ebx
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [_PARSER+100], 0
seta bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0088
push 0
push 0
push 4
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_0079
.L_0088:
.L_0087:
.L_0086:
.L_0085:
jmp .L_007A
.L_0089:
cmp dword ptr [_ENV+136], 3
je .L_008B
push 0
push 0
push 4
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_0079
.L_008B:
.L_008A:
jmp .L_007A
.L_008C:
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_0079
jmp .L_007A
.L_007B:
cmp dword ptr [ebp-32], 5
ja .L_008C
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.L_008D+ebx*4]
_.L_008D:
.int .L_007D
.int .L_0089
.int .L_0084
.int .L_008C
.int .L_008C
.int .L_0089
.L_007A:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_00BF
call _fb_StrAssign@20
push 4096
call _LEXCHECKTOKEN@4
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
push 0
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp+8], -2147483648
jne .L_008F
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HGETTYPE@8
.L_008F:
.L_008E:
cmp dword ptr [ebp-8], -2147483648
je .L_0091
cmp dword ptr [ebp+8], -2147483648
je .L_0093
push 0
push 1
push 0
push offset _Lt_00BF
push 17
call _ERRREPORTEX@20
.L_0093:
.L_0092:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp+12], 0
or dword ptr [ebp+16], 1048576
.L_0091:
.L_0090:
mov dword ptr [ebp-4], 0
call _CASSIGNTOKEN@0
test eax, eax
jne .L_0095
push 0
push 0
push 10
call _ERRREPORT@12
mov dword ptr [ebp-4], -1
.L_0095:
.L_0094:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0097
push 0
push 1
push 0
push offset _Lt_00BF
push 11
call _ERRREPORTEX@20
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], -2147483648
jne .L_0099
mov dword ptr [ebp+8], 8
.L_0099:
.L_0098:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-12], eax
.L_0097:
.L_0096:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 4
je .L_009C
.L_009D:
cmp dword ptr [ebp-28], 7
jne .L_009B
.L_009C:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-16], eax
.L_009B:
.L_009A:
cmp dword ptr [ebp-16], 0
je .L_009F
cmp dword ptr [ebp+8], -2147483648
je .L_00A1
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 17
je .L_00A3
push 0
push 1
push 0
push offset _Lt_00BF
push 24
call _ERRREPORTEX@20
.L_00A3:
.L_00A2:
.L_00A1:
.L_00A0:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+16]
lea eax, [ebp-24]
push eax
push 0
push dword ptr [ebp-28]
push offset _Lt_00BF
call _SYMBREUSEORADDCONST@20
test eax, eax
jne .L_00A5
push 0
push 1
push 0
push offset _Lt_00BF
push 4
call _ERRREPORTEX@20
.L_00A5:
.L_00A4:
jmp .L_009E
.L_009F:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .L_00A7
push 0
push 1
push 0
push offset _Lt_00BF
push 11
call _ERRREPORTEX@20
push dword ptr [ebp-12]
call _ASTDELTREE@4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-28], 8
.L_00A7:
.L_00A6:
cmp dword ptr [ebp+8], -2147483648
je .L_00A9
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTCHECKASSIGNTOTYPE@16
test eax, eax
jne .L_00AB
push 0
push 1
push 0
push offset _Lt_00BF
push 20
call _ERRREPORTEX@20
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp+12], 0
push 0
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-12], eax
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp-28]
cmp eax, dword ptr [ebp+8]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [ebx+8]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
je .L_00AD
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONV@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AF
push 0
push 1
push 0
push offset _Lt_00BF
push 24
call _ERRREPORTEX@20
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AC:
jmp .L_00A8
.L_00A9:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+8]
mov dword ptr [ebp+12], esi
.L_00A8:
push dword ptr [ebp+16]
mov esi, dword ptr [ebp-12]
lea eax, [esi+24]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push offset _Lt_00BF
call _SYMBREUSEORADDCONST@20
test eax, eax
jne .L_00B1
push 0
push 1
push 0
push offset _Lt_00BF
push 4
call _ERRREPORTEX@20
.L_00B1:
.L_00B0:
.L_009E:
push dword ptr [ebp-12]
call _ASTDELNODE@4
cmp dword ptr [ebp-4], 0
je .L_00B3
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
.L_00B3:
.L_00B2:
.L_0079:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_00BF,129
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
