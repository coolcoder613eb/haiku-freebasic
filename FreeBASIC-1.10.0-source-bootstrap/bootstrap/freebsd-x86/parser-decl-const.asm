	.intel_syntax noprefix

.section .text
.balign 16

.globl CCONSTDECL
CCONSTDECL:
push ebp
mov ebp, esp
sub esp, 8
.L_00B3:
push 9
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00B6
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00B4
.L_00B6:
.L_00B5:
push 2048
call LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
call HGETTYPE
add esp, 8
.L_00B7:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call CCONSTASSIGN
add esp, 12
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00BB
jmp .L_00B8
.L_00BB:
.L_00BA:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00B9:
jmp .L_00B7
.L_00B8:
.L_00B4:
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
HGETTYPE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0066:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_0069
push 2048
call LEXSKIPTOKEN
add esp, 4
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
call CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_006D
push 0
push 0
push 14
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.L_006D:
.L_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_0071
.L_0072:
cmp dword ptr [ebp-16], 18
je .L_0071
.L_0073:
cmp dword ptr [ebp-16], 4
je .L_0071
.L_0074:
cmp dword ptr [ebp-16], 7
je .L_0071
.L_0075:
cmp dword ptr [ebp-16], 20
je .L_0071
.L_0076:
cmp dword ptr [ebp-16], 23
jne .L_0070
.L_0071:
push 0
push -1
push 24
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_0070:
.L_006E:
jmp .L_0068
.L_0069:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_0068:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
CCONSTASSIGN:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.L_0077:
call CCURRENTPARENTID
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-32], eax
jmp .L_007A
.L_007C:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_007E
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_0080
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_0082
push 0
push 0
push 90
call ERRREPORT
add esp, 12
.L_0082:
.L_0081:
.L_0080:
.L_007F:
.L_007E:
.L_007D:
jmp .L_0079
.L_0083:
cmp dword ptr [ENV+136], 3
je .L_0085
lea ebx, [SYMB+98352]
cmp dword ptr [SYMB+98528], ebx
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [PARSER+100], 0
seta bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0087
push 0
push 0
push 4
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_0078
.L_0087:
.L_0086:
.L_0085:
.L_0084:
jmp .L_0079
.L_0088:
cmp dword ptr [ENV+136], 3
je .L_008A
push 0
push 0
push 4
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_0078
.L_008A:
.L_0089:
jmp .L_0079
.L_008B:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_0078
jmp .L_0079
.L_007A:
cmp dword ptr [ebp-32], 5
ja .L_008B
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.L_008C+ebx*4]
.L_008C:
.int .L_007C
.int .L_0088
.int .L_0083
.int .L_008B
.int .L_008B
.int .L_0088
.L_0079:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_00BE
call fb_StrAssign
add esp, 20
push 4096
call LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
push 0
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], -2147483648
jne .L_008E
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HGETTYPE
add esp, 8
.L_008E:
.L_008D:
cmp dword ptr [ebp-8], -2147483648
je .L_0090
cmp dword ptr [ebp+8], -2147483648
je .L_0092
push 0
push 1
push 0
push offset Lt_00BE
push 17
call ERRREPORTEX
add esp, 20
.L_0092:
.L_0091:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp+12], 0
or dword ptr [ebp+16], 1048576
.L_0090:
.L_008F:
mov dword ptr [ebp-4], 0
call CASSIGNTOKEN
test eax, eax
jne .L_0094
push 0
push 0
push 10
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], -1
.L_0094:
.L_0093:
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0096
push 0
push 1
push 0
push offset Lt_00BE
push 11
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], -2147483648
jne .L_0098
mov dword ptr [ebp+8], 8
.L_0098:
.L_0097:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-12], eax
.L_0096:
.L_0095:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 4
je .L_009B
.L_009C:
cmp dword ptr [ebp-28], 7
jne .L_009A
.L_009B:
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-16], eax
.L_009A:
.L_0099:
cmp dword ptr [ebp-16], 0
je .L_009E
cmp dword ptr [ebp+8], -2147483648
je .L_00A0
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 17
je .L_00A2
push 0
push 1
push 0
push offset Lt_00BE
push 24
call ERRREPORTEX
add esp, 20
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+16]
lea eax, [ebp-24]
push eax
push 0
push dword ptr [ebp-28]
push offset Lt_00BE
call SYMBREUSEORADDCONST
add esp, 20
test eax, eax
jne .L_00A4
push 0
push 1
push 0
push offset Lt_00BE
push 4
call ERRREPORTEX
add esp, 20
.L_00A4:
.L_00A3:
jmp .L_009D
.L_009E:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .L_00A6
push 0
push 1
push 0
push offset Lt_00BE
push 11
call ERRREPORTEX
add esp, 20
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-28], 8
.L_00A6:
.L_00A5:
cmp dword ptr [ebp+8], -2147483648
je .L_00A8
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTCHECKASSIGNTOTYPE
add esp, 16
test eax, eax
jne .L_00AA
push 0
push 1
push 0
push offset Lt_00BE
push 20
call ERRREPORTEX
add esp, 20
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp+12], 0
push 0
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-12], eax
.L_00AA:
.L_00A9:
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
je .L_00AC
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AE
push 0
push 1
push 0
push offset Lt_00BE
push 24
call ERRREPORTEX
add esp, 20
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
jmp .L_00A7
.L_00A8:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+8]
mov dword ptr [ebp+12], esi
.L_00A7:
push dword ptr [ebp+16]
mov esi, dword ptr [ebp-12]
lea eax, [esi+20]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push offset Lt_00BE
call SYMBREUSEORADDCONST
add esp, 20
test eax, eax
jne .L_00B0
push 0
push 1
push 0
push offset Lt_00BE
push 4
call ERRREPORTEX
add esp, 20
.L_00B0:
.L_00AF:
.L_009D:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
cmp dword ptr [ebp-4], 0
je .L_00B2
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.L_00B2:
.L_00B1:
.L_0078:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00BE,129
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
