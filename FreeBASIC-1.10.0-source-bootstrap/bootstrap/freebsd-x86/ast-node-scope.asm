	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTSCOPEBEGIN
ASTSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
cmp dword ptr [PARSER+100], 128
jb .L_0069
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_0069:
.L_0068:
push 0
push -2147483648
push 33
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call ASTADD
add esp, 4
push dword ptr [ebp-8]
call SYMBADDSCOPE
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [AST+132]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+24], ebx
inc dword ptr [PARSER+28]
inc dword ptr [PARSER+100]
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+112], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [AST+132], ebx
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+60]
mov dword ptr [SYMB+98536], eax
push dword ptr [ebp-12]
call dword ptr [IR+44]
add esp, 4
push 0
push dword ptr [ebp-12]
push 115
call ASTNEWDBG
add esp, 12
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSCOPEBREAK
ASTSCOPEBREAK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_006E:
push 0
push -2147483648
push 35
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [AST+132]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [PARSER+100]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+16568]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ecx+32], eax
push 0
push dword ptr [ebp+8]
push 98
call ASTNEWBRANCH
add esp, 12
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+56]
call ASTADD
add esp, 4
push dword ptr [ebp-4]
mov eax, dword ptr [AST+40]
lea ecx, [eax+40]
push ecx
call HADDTOBREAKLIST
add esp, 8
.L_006F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSCOPEEND
ASTSCOPEEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0070:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
inc dword ptr [PARSER+28]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
call ASTSCOPEDESTROYVARS
add esp, 4
push dword ptr [ebp-4]
call SYMBDELSCOPETB
add esp, 4
push dword ptr [ebp-4]
call dword ptr [IR+48]
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+160]
mov dword ptr [SYMB+98536], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [AST+132], eax
mov eax, dword ptr [AST+132]
mov ebx, dword ptr [eax+12]
mov dword ptr [PARSER+112], ebx
add dword ptr [PARSER+100], 4294967295
push 0
push dword ptr [ebp-4]
push 116
call ASTNEWDBG
add esp, 12
push eax
call ASTADD
add esp, 4
push 0
push -2147483648
push 34
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
.L_0071:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSCOPEUPDBREAKLIST
ASTSCOPEUPDBREAKLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0072:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-8], ebx
.L_0074:
cmp dword ptr [ebp-8], 0
je .L_0075
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+36]
cmp dword ptr [ebx+12], ecx
jne .L_0077
push 0
push dword ptr [ebp-8]
call HDELLOCALS
add esp, 8
jmp .L_0076
.L_0077:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKBRANCH
add esp, 8
test eax, eax
jne .L_0079
jmp .L_0073
.L_0079:
.L_0078:
.L_0076:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+68]
mov dword ptr [ebp-8], ecx
jmp .L_0074
.L_0075:
mov dword ptr [ebp-4], -1
.L_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSCOPEDESTROYVARS
ASTSCOPEDESTROYVARS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0101:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0103:
cmp dword ptr [ebp-4], 0
je .L_0104
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_0106
push dword ptr [ebp-4]
call SYMBGETVARHASDTOR
add esp, 4
test eax, eax
je .L_0108
push -1
push dword ptr [ebp-4]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
call ASTADD
add esp, 4
.L_0108:
.L_0107:
.L_0106:
.L_0105:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-4], ebx
jmp .L_0103
.L_0104:
.L_0102:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSCOPEALLOCLOCALS
ASTSCOPEALLOCLOCALS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0109:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ENV+104], 1
jne .L_010C
.L_010D:
cmp dword ptr [ebp-4], 0
je .L_010E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0110
push dword ptr [ebp-4]
call dword ptr [IR+164]
add esp, 4
.L_0110:
.L_010F:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-4], ebx
jmp .L_010D
.L_010E:
jmp .L_010B
.L_010C:
.L_0111:
cmp dword ptr [ebp-4], 0
je .L_0112
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 3
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0114
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 114688
test ecx, ecx
je .L_0116
push dword ptr [ebp-4]
push dword ptr [PARSER+108]
call dword ptr [IR+32]
add esp, 8
jmp .L_0115
.L_0116:
push dword ptr [ebp-4]
push dword ptr [PARSER+108]
call dword ptr [IR+36]
add esp, 8
.L_0115:
.L_0114:
.L_0113:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .L_0111
.L_0112:
.L_010B:
.L_010A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADSCOPEBEGIN
ASTLOADSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_011B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebx+88], ecx
cmp dword ptr [AST+136], 0
je .L_011E
push dword ptr [ebp-8]
call dword ptr [IR+156]
add esp, 4
mov ecx, dword ptr [ebp-8]
push dword ptr [ecx+64]
call ASTSCOPEALLOCLOCALS
add esp, 4
.L_011E:
.L_011D:
mov dword ptr [ebp-4], 0
.L_011C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADSCOPEEND
ASTLOADSCOPEEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_011F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [AST+136], 0
je .L_0122
push dword ptr [ebp-8]
call dword ptr [IR+160]
add esp, 4
.L_0122:
.L_0121:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+88]
mov dword ptr [ecx+8], eax
mov dword ptr [ebp-4], 0
.L_0120:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTEMPSCOPEBEGIN
ASTTEMPSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0123:
push dword ptr [ebp+12]
call SYMBADDSCOPE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+112]
mov dword ptr [eax], ebx
inc dword ptr [PARSER+100]
mov ebx, dword ptr [ebp-8]
mov dword ptr [PARSER+112], ebx
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+60]
mov dword ptr [SYMB+98536], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0124:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTEMPSCOPEEND
ASTTEMPSCOPEEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0125:
push dword ptr [ebp+8]
call SYMBDELSCOPETB
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [SYMB+98536], ebx
push dword ptr [ebp+8]
call SYMBFREESYMBOL_UNLINKONLY
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [PARSER+112], ebx
add dword ptr [PARSER+100], 4294967295
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_0127:
cmp dword ptr [ebp-4], 0
je .L_0128
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_012A
push dword ptr [ebp-4]
call ASTDTORLISTDEL
add esp, 4
.L_012A:
.L_0129:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_0127
.L_0128:
.L_0126:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTEMPSCOPECLONE
ASTTEMPSCOPECLONE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_012B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_012D:
cmp dword ptr [ebp-4], 0
je .L_012E
push dword ptr [ebp-4]
call SYMBCLONESYMBOL
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call ASTREPLACESYMBOLONTREE
add esp, 12
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_0130
push dword ptr [ebp-8]
call ASTDTORLISTADD
add esp, 4
.L_0130:
.L_012F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_012D
.L_012E:
.L_012C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTEMPSCOPEDELETE
ASTTEMPSCOPEDELETE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0131:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_0133:
cmp dword ptr [ebp-4], 0
je .L_0134
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call SYMBFREESYMBOL_REMONLY
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0133
.L_0134:
push dword ptr [ebp+8]
call SYMBFREESYMBOL_REMONLY
add esp, 4
.L_0132:
pop ebx
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
HADDTOBREAKLIST:
push ebp
mov ebp, esp
push ebx
.L_006A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .L_006D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_006C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBRANCHERROR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_007A:
mov eax, dword ptr [ENV+192]
mov dword ptr [Lt_0135], eax
mov dword ptr [ENV+192], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .L_007D
push 0
push -1
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset Lt_007E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0136
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 0
je .L_0081
push 0
push 3
push offset Lt_0082
push -1
push offset Lt_0136
call fb_StrConcatAssign
add esp, 20
.L_0081:
.L_0080:
.L_007D:
.L_007C:
cmp dword ptr [ebp+16], 0
je .L_0084
push 0
push 7
push offset Lt_0085
push -1
push offset Lt_0136
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0087
push 0
push 9
push offset Lt_0088
push -1
push offset Lt_0136
call fb_StrConcatAssign
add esp, 20
jmp .L_0086
.L_0087:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+60], 0
je .L_0089
push 0
push 8
push offset Lt_008A
push -1
push offset Lt_0136
call fb_StrConcatAssign
add esp, 20
jmp .L_0086
.L_0089:
push 0
push 9
push offset Lt_008B
push -1
push offset Lt_0136
call fb_StrConcatAssign
add esp, 20
.L_0086:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+16]
push -1
push offset Lt_0136
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0136
call fb_StrAssign
add esp, 20
.L_0084:
.L_0083:
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [Lt_0136]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 20
mov eax, dword ptr [Lt_0135]
mov dword ptr [ENV+192], eax
.L_007B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0135,4
.balign 4
	.lcomm	Lt_0136,12

.section .text
.balign 16
HBRANCHWARNING:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_008D:
mov eax, dword ptr [ENV+192]
mov dword ptr [Lt_0137], eax
mov dword ptr [ENV+192], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .L_0090
push 0
push -1
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset Lt_007E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0138
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 0
je .L_0093
push 0
push 3
push offset Lt_0082
push -1
push offset Lt_0138
call fb_StrConcatAssign
add esp, 20
.L_0093:
.L_0092:
.L_0090:
.L_008F:
cmp dword ptr [ebp+16], 0
je .L_0095
push 0
push 11
push offset Lt_0096
push -1
push offset Lt_0138
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+16]
push -1
push offset Lt_0138
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0138
call fb_StrAssign
add esp, 20
.L_0095:
.L_0094:
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [Lt_0138]
push dword ptr [ebp+8]
call ERRREPORTWARNEX
add esp, 20
mov eax, dword ptr [Lt_0137]
mov dword ptr [ENV+192], eax
.L_008E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0137,4
.balign 4
	.lcomm	Lt_0138,12

.section .text
.balign 16
HFINDCOMMONPARENT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0098:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
movzx eax, word ptr [ebx+36]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_009B
.L_009C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-12], ebx
.L_009E:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .L_009C
.L_009D:
jmp .L_009A
.L_009B:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jge .L_009F
.L_00A0:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
movzx eax, word ptr [ebx+36]
mov dword ptr [ebp-16], eax
.L_00A2:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jne .L_00A0
.L_00A1:
.L_009F:
.L_009A:
.L_00A3:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
je .L_00A4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
jmp .L_00A3
.L_00A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
.L_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKCROSSING:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00A5:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 15
jne .L_00A8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
jmp .L_00A7
.L_00A8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
.L_00A7:
.L_00A9:
cmp dword ptr [ebp-4], 0
je .L_00AA
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_00AC
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-8], ebx
jle .L_00AE
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebp-8], ebx
jge .L_00B0
push dword ptr [ebp-4]
call SYMBGETVARHASCTOR
add esp, 4
test eax, eax
je .L_00B2
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 105
call HBRANCHERROR
add esp, 12
jmp .L_00B1
.L_00B2:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4099
test ebx, ebx
jne .L_00B4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
jne .L_00B6
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 14
call HBRANCHWARNING
add esp, 12
.L_00B6:
.L_00B5:
.L_00B4:
.L_00B3:
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_00A9
.L_00AA:
.L_00A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKSCOPELOCALS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_00B7:
cmp dword ptr [ebp+12], 0
jne .L_00BA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp+12], eax
.L_00BA:
.L_00B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
.L_00BB:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKCROSSING
add esp, 16
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+160], 0
jne .L_00BF
jmp .L_00BC
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .L_00C1
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_00C3
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKCROSSING
add esp, 16
.L_00C3:
.L_00C2:
jmp .L_00BC
.L_00C1:
.L_00C0:
.L_00BD:
jmp .L_00BB
.L_00BC:
.L_00B8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDESTROYBLOCKLOCALS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00C4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .L_00C7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
jmp .L_00C6
.L_00C7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_00C6:
.L_00C8:
cmp dword ptr [ebp-4], 0
je .L_00C9
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_00CB
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-12], ebx
jle .L_00CD
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jge .L_00CF
push dword ptr [ebp-4]
call SYMBGETVARHASDTOR
add esp, 4
test eax, eax
je .L_00D1
push -1
push dword ptr [ebp-4]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00D3
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+20], eax
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-4], ebx
jmp .L_00C8
.L_00C9:
.L_00C5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDELBACKWARDLOCALS:
push ebp
mov ebp, esp
push ebx
.L_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
push dword ptr [ebx+12]
call HDESTROYBLOCKLOCALS
add esp, 16
.L_00D5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDELLOCALS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-16], eax
.L_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
push dword ptr [ebp-12]
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call HDESTROYBLOCKLOCALS
add esp, 16
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00DC
jmp .L_00D9
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ebp-8], ebx
jl .L_00DD
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebx+28]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0139
.L_00DD:
mov dword ptr [ebp-20], 0
.L_0139:
cmp dword ptr [ebp-20], 0
je .L_00E0
cmp dword ptr [ebp+12], 0
je .L_00E2
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jg .L_00E4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call HDESTROYBLOCKLOCALS
add esp, 16
.L_00E4:
.L_00E3:
.L_00E2:
.L_00E1:
jmp .L_00D9
.L_00E0:
.L_00DF:
.L_00DA:
jmp .L_00D8
.L_00D9:
.L_00D7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HISTARGETOUTSIDE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 12288
test ebx, ebx
je .L_00E8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .L_00E7
.L_00E8:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+160]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [ebp+8]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00E7:
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKBRANCH:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00E9:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+60], 0
jne .L_00EC
push 0
push dword ptr [ebp+12]
push 104
call HBRANCHERROR
add esp, 12
jmp .L_00EA
.L_00EC:
.L_00EB:
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HISTARGETOUTSIDE
add esp, 8
test eax, eax
je .L_00EE
push 0
push dword ptr [ebp+12]
push 104
call HBRANCHERROR
add esp, 12
jmp .L_00EA
.L_00EE:
.L_00ED:
mov eax, dword ptr [ebp-12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ebp-32], ebx
jl .L_00EF
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-32]
cmp eax, dword ptr [ebx+28]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_013D
.L_00EF:
mov dword ptr [ebp-40], 0
.L_013D:
cmp dword ptr [ebp-40], 0
je .L_00F2
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-24], eax
jle .L_00F4
push 0
push dword ptr [ebp+12]
call HCHECKSCOPELOCALS
add esp, 8
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .L_00F6
push dword ptr [ebp+12]
call HDELBACKWARDLOCALS
add esp, 4
.L_00F6:
.L_00F5:
jmp .L_00F3
.L_00F4:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .L_00F8
push dword ptr [ebp+12]
call HDELBACKWARDLOCALS
add esp, 4
jmp .L_00F7
.L_00F8:
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call HCHECKCROSSING
add esp, 16
.L_00F7:
.L_00F3:
mov dword ptr [ebp-4], -1
jmp .L_00EA
.L_00F2:
.L_00F1:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 15
jne .L_00FA
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+24]
cmp ecx, dword ptr [eax+24]
setle cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+28]
cmp esi, dword ptr [eax+28]
setge dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
mov dword ptr [ebp-36], ecx
cmp dword ptr [ebp-36], 0
jne .L_00FC
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call HFINDCOMMONPARENT
add esp, 8
push eax
push dword ptr [ebp+12]
call HCHECKSCOPELOCALS
add esp, 8
.L_00FC:
.L_00FB:
jmp .L_00F9
.L_00FA:
mov dword ptr [ebp-36], -1
.L_00F9:
cmp dword ptr [ebp-36], 0
je .L_00FE
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jle .L_0100
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call HCHECKCROSSING
add esp, 16
.L_0100:
.L_00FF:
.L_00FE:
.L_00FD:
push -1
push dword ptr [ebp+12]
call HDELLOCALS
add esp, 8
mov dword ptr [ebp-4], -1
.L_00EA:
mov eax, dword ptr [ebp-4]
pop esi
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
Lt_007E:	.ascii	"to label: \0"
.balign 4
Lt_0082:	.ascii	", \0"
.balign 4
Lt_0085:	.ascii	"local \0"
.balign 4
Lt_0088:	.ascii	"string: \0"
.balign 4
Lt_008A:	.ascii	"array: \0"
.balign 4
Lt_008B:	.ascii	"object: \0"
.balign 4
Lt_0096:	.ascii	"variable: \0"
