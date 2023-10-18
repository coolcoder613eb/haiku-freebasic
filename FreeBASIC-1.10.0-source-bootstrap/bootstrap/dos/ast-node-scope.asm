	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTSCOPEBEGIN
_ASTSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
cmp dword ptr [_PARSER+100], 128
jb .L_006A
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_006A:
.L_0069:
push 0
push -2147483648
push 33
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
push dword ptr [ebp-8]
call _SYMBADDSCOPE
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [_AST+132]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+24], ebx
inc dword ptr [_PARSER+28]
inc dword ptr [_PARSER+100]
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+112], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [_AST+132], ebx
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+60]
mov dword ptr [_SYMB+98536], eax
push dword ptr [ebp-12]
call dword ptr [_IR+44]
add esp, 4
push 0
push dword ptr [ebp-12]
push 115
call _ASTNEWDBG
add esp, 12
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSCOPEBREAK
_ASTSCOPEBREAK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_006F:
push 0
push -2147483648
push 35
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [_AST+132]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_PARSER+100]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [_LEX+213384]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4280]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ecx+32], eax
push 0
push dword ptr [ebp+8]
push 98
call _ASTNEWBRANCH
add esp, 12
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+56]
call _ASTADD
add esp, 4
push dword ptr [ebp-4]
mov eax, dword ptr [_AST+40]
lea ecx, [eax+40]
push ecx
call _HADDTOBREAKLIST
add esp, 8
.L_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSCOPEEND
_ASTSCOPEEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0071:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
inc dword ptr [_PARSER+28]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
call _ASTSCOPEDESTROYVARS
add esp, 4
push dword ptr [ebp-4]
call _SYMBDELSCOPETB
add esp, 4
push dword ptr [ebp-4]
call dword ptr [_IR+48]
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+160]
mov dword ptr [_SYMB+98536], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [_AST+132], eax
mov eax, dword ptr [_AST+132]
mov ebx, dword ptr [eax+12]
mov dword ptr [_PARSER+112], ebx
add dword ptr [_PARSER+100], 4294967295
push 0
push dword ptr [ebp-4]
push 116
call _ASTNEWDBG
add esp, 12
push eax
call _ASTADD
add esp, 4
push 0
push -2147483648
push 34
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
.L_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSCOPEUPDBREAKLIST
_ASTSCOPEUPDBREAKLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-8], ebx
.L_0075:
cmp dword ptr [ebp-8], 0
je .L_0076
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+36]
cmp dword ptr [ebx+12], ecx
jne .L_0078
push 0
push dword ptr [ebp-8]
call _HDELLOCALS
add esp, 8
jmp .L_0077
.L_0078:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKBRANCH
add esp, 8
test eax, eax
jne .L_007A
jmp .L_0074
.L_007A:
.L_0079:
.L_0077:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+68]
mov dword ptr [ebp-8], ecx
jmp .L_0075
.L_0076:
mov dword ptr [ebp-4], -1
.L_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSCOPEDESTROYVARS
_ASTSCOPEDESTROYVARS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0102:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0104:
cmp dword ptr [ebp-4], 0
je .L_0105
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_0107
push dword ptr [ebp-4]
call _SYMBGETVARHASDTOR
add esp, 4
test eax, eax
je .L_0109
push -1
push dword ptr [ebp-4]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
call _ASTADD
add esp, 4
.L_0109:
.L_0108:
.L_0107:
.L_0106:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-4], ebx
jmp .L_0104
.L_0105:
.L_0103:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSCOPEALLOCLOCALS
_ASTSCOPEALLOCLOCALS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_010A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [_ENV+104], 1
jne .L_010D
.L_010E:
cmp dword ptr [ebp-4], 0
je .L_010F
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
je .L_0111
push dword ptr [ebp-4]
call dword ptr [_IR+164]
add esp, 4
.L_0111:
.L_0110:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-4], ebx
jmp .L_010E
.L_010F:
jmp .L_010C
.L_010D:
.L_0112:
cmp dword ptr [ebp-4], 0
je .L_0113
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
je .L_0115
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 114688
test ecx, ecx
je .L_0117
push dword ptr [ebp-4]
push dword ptr [_PARSER+108]
call dword ptr [_IR+32]
add esp, 8
jmp .L_0116
.L_0117:
push dword ptr [ebp-4]
push dword ptr [_PARSER+108]
call dword ptr [_IR+36]
add esp, 8
.L_0116:
.L_0115:
.L_0114:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_0113:
.L_010C:
.L_010B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADSCOPEBEGIN
_ASTLOADSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_011C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebx+88], ecx
cmp dword ptr [_AST+136], 0
je .L_011F
push dword ptr [ebp-8]
call dword ptr [_IR+156]
add esp, 4
mov ecx, dword ptr [ebp-8]
push dword ptr [ecx+64]
call _ASTSCOPEALLOCLOCALS
add esp, 4
.L_011F:
.L_011E:
mov dword ptr [ebp-4], 0
.L_011D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADSCOPEEND
_ASTLOADSCOPEEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0120:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [_AST+136], 0
je .L_0123
push dword ptr [ebp-8]
call dword ptr [_IR+160]
add esp, 4
.L_0123:
.L_0122:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+88]
mov dword ptr [ecx+8], eax
mov dword ptr [ebp-4], 0
.L_0121:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTTEMPSCOPEBEGIN
_ASTTEMPSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0124:
push dword ptr [ebp+12]
call _SYMBADDSCOPE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+112]
mov dword ptr [eax], ebx
inc dword ptr [_PARSER+100]
mov ebx, dword ptr [ebp-8]
mov dword ptr [_PARSER+112], ebx
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+60]
mov dword ptr [_SYMB+98536], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0125:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTTEMPSCOPEEND
_ASTTEMPSCOPEEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0126:
push dword ptr [ebp+8]
call _SYMBDELSCOPETB
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [_SYMB+98536], ebx
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_UNLINKONLY
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [_PARSER+112], ebx
add dword ptr [_PARSER+100], 4294967295
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_0128:
cmp dword ptr [ebp-4], 0
je .L_0129
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_012B
push dword ptr [ebp-4]
call _ASTDTORLISTDEL
add esp, 4
.L_012B:
.L_012A:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_0128
.L_0129:
.L_0127:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTTEMPSCOPECLONE
_ASTTEMPSCOPECLONE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_012C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_012E:
cmp dword ptr [ebp-4], 0
je .L_012F
push dword ptr [ebp-4]
call _SYMBCLONESYMBOL
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _ASTREPLACESYMBOLONTREE
add esp, 12
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_0131
push dword ptr [ebp-8]
call _ASTDTORLISTADD
add esp, 4
.L_0131:
.L_0130:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_012E
.L_012F:
.L_012D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTTEMPSCOPEDELETE
_ASTTEMPSCOPEDELETE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0132:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_0134:
cmp dword ptr [ebp-4], 0
je .L_0135
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _SYMBFREESYMBOL_REMONLY
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0134
.L_0135:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_REMONLY
add esp, 4
.L_0133:
pop ebx
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
.balign 16
_HADDTOBREAKLIST:
push ebp
mov ebp, esp
push ebx
.L_006B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .L_006E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_006D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBRANCHERROR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_007B:
mov eax, dword ptr [_ENV+192]
mov dword ptr [_Lt_0136], eax
mov dword ptr [_ENV+192], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .L_007E
push 0
push -1
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset _Lt_007F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0137
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 0
je .L_0082
push 0
push 3
push offset _Lt_0083
push -1
push offset _Lt_0137
call _fb_StrConcatAssign
add esp, 20
.L_0082:
.L_0081:
.L_007E:
.L_007D:
cmp dword ptr [ebp+16], 0
je .L_0085
push 0
push 7
push offset _Lt_0086
push -1
push offset _Lt_0137
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0088
push 0
push 9
push offset _Lt_0089
push -1
push offset _Lt_0137
call _fb_StrConcatAssign
add esp, 20
jmp .L_0087
.L_0088:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+60], 0
je .L_008A
push 0
push 8
push offset _Lt_008B
push -1
push offset _Lt_0137
call _fb_StrConcatAssign
add esp, 20
jmp .L_0087
.L_008A:
push 0
push 9
push offset _Lt_008C
push -1
push offset _Lt_0137
call _fb_StrConcatAssign
add esp, 20
.L_0087:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+16]
push -1
push offset _Lt_0137
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0137
call _fb_StrAssign
add esp, 20
.L_0085:
.L_0084:
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [_Lt_0137]
push dword ptr [ebp+8]
call _ERRREPORTEX
add esp, 20
mov eax, dword ptr [_Lt_0136]
mov dword ptr [_ENV+192], eax
.L_007C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0136,4
.balign 4
	.lcomm	_Lt_0137,12

.section .text
.balign 16
_HBRANCHWARNING:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_008E:
mov eax, dword ptr [_ENV+192]
mov dword ptr [_Lt_0138], eax
mov dword ptr [_ENV+192], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .L_0091
push 0
push -1
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset _Lt_007F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0139
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 0
je .L_0094
push 0
push 3
push offset _Lt_0083
push -1
push offset _Lt_0139
call _fb_StrConcatAssign
add esp, 20
.L_0094:
.L_0093:
.L_0091:
.L_0090:
cmp dword ptr [ebp+16], 0
je .L_0096
push 0
push 11
push offset _Lt_0097
push -1
push offset _Lt_0139
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+16]
push -1
push offset _Lt_0139
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0139
call _fb_StrAssign
add esp, 20
.L_0096:
.L_0095:
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [_Lt_0139]
push dword ptr [ebp+8]
call _ERRREPORTWARNEX
add esp, 20
mov eax, dword ptr [_Lt_0138]
mov dword ptr [_ENV+192], eax
.L_008F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0138,4
.balign 4
	.lcomm	_Lt_0139,12

.section .text
.balign 16
_HFINDCOMMONPARENT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
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
jle .L_009C
.L_009D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-12], ebx
.L_009F:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .L_009D
.L_009E:
jmp .L_009B
.L_009C:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jge .L_00A0
.L_00A1:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
movzx eax, word ptr [ebx+36]
mov dword ptr [ebp-16], eax
.L_00A3:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jne .L_00A1
.L_00A2:
.L_00A0:
.L_009B:
.L_00A4:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
je .L_00A5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKCROSSING:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00A6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 15
jne .L_00A9
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
jmp .L_00A8
.L_00A9:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
.L_00A8:
.L_00AA:
cmp dword ptr [ebp-4], 0
je .L_00AB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_00AD
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-8], ebx
jle .L_00AF
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebp-8], ebx
jge .L_00B1
push dword ptr [ebp-4]
call _SYMBGETVARHASCTOR
add esp, 4
test eax, eax
je .L_00B3
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 105
call _HBRANCHERROR
add esp, 12
jmp .L_00B2
.L_00B3:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4099
test ebx, ebx
jne .L_00B5
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
jne .L_00B7
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 14
call _HBRANCHWARNING
add esp, 12
.L_00B7:
.L_00B6:
.L_00B5:
.L_00B4:
.L_00B2:
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AC:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_00AA
.L_00AB:
.L_00A7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKSCOPELOCALS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_00B8:
cmp dword ptr [ebp+12], 0
jne .L_00BB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp+12], eax
.L_00BB:
.L_00BA:
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
.L_00BC:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKCROSSING
add esp, 16
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+160], 0
jne .L_00C0
jmp .L_00BD
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .L_00C2
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_00C4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKCROSSING
add esp, 16
.L_00C4:
.L_00C3:
jmp .L_00BD
.L_00C2:
.L_00C1:
.L_00BE:
jmp .L_00BC
.L_00BD:
.L_00B9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDESTROYBLOCKLOCALS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00C5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .L_00C8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
jmp .L_00C7
.L_00C8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_00C7:
.L_00C9:
cmp dword ptr [ebp-4], 0
je .L_00CA
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_00CC
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-12], ebx
jle .L_00CE
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jge .L_00D0
push dword ptr [ebp-4]
call _SYMBGETVARHASDTOR
add esp, 4
test eax, eax
je .L_00D2
push -1
push dword ptr [ebp-4]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00D4
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTADDAFTER
add esp, 8
mov dword ptr [ebp+20], eax
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-4], ebx
jmp .L_00C9
.L_00CA:
.L_00C6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELBACKWARDLOCALS:
push ebp
mov ebp, esp
push ebx
.L_00D5:
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
call _HDESTROYBLOCKLOCALS
add esp, 16
.L_00D6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELLOCALS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00D7:
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
.L_00D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
push dword ptr [ebp-12]
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call _HDESTROYBLOCKLOCALS
add esp, 16
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00DD
jmp .L_00DA
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ebp-8], ebx
jl .L_00DE
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebx+28]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_013A
.L_00DE:
mov dword ptr [ebp-20], 0
.L_013A:
cmp dword ptr [ebp-20], 0
je .L_00E1
cmp dword ptr [ebp+12], 0
je .L_00E3
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jg .L_00E5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call _HDESTROYBLOCKLOCALS
add esp, 16
.L_00E5:
.L_00E4:
.L_00E3:
.L_00E2:
jmp .L_00DA
.L_00E1:
.L_00E0:
.L_00DB:
jmp .L_00D9
.L_00DA:
.L_00D8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HISTARGETOUTSIDE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 12288
test ebx, ebx
je .L_00E9
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .L_00E8
.L_00E9:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+160]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [ebp+8]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00E8:
.L_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKBRANCH:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00EA:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+60], 0
jne .L_00ED
push 0
push dword ptr [ebp+12]
push 104
call _HBRANCHERROR
add esp, 12
jmp .L_00EB
.L_00ED:
.L_00EC:
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HISTARGETOUTSIDE
add esp, 8
test eax, eax
je .L_00EF
push 0
push dword ptr [ebp+12]
push 104
call _HBRANCHERROR
add esp, 12
jmp .L_00EB
.L_00EF:
.L_00EE:
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
jl .L_00F0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-32]
cmp eax, dword ptr [ebx+28]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_013E
.L_00F0:
mov dword ptr [ebp-40], 0
.L_013E:
cmp dword ptr [ebp-40], 0
je .L_00F3
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-24], eax
jle .L_00F5
push 0
push dword ptr [ebp+12]
call _HCHECKSCOPELOCALS
add esp, 8
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .L_00F7
push dword ptr [ebp+12]
call _HDELBACKWARDLOCALS
add esp, 4
.L_00F7:
.L_00F6:
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .L_00F9
push dword ptr [ebp+12]
call _HDELBACKWARDLOCALS
add esp, 4
jmp .L_00F8
.L_00F9:
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call _HCHECKCROSSING
add esp, 16
.L_00F8:
.L_00F4:
mov dword ptr [ebp-4], -1
jmp .L_00EB
.L_00F3:
.L_00F2:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 15
jne .L_00FB
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
jne .L_00FD
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _HFINDCOMMONPARENT
add esp, 8
push eax
push dword ptr [ebp+12]
call _HCHECKSCOPELOCALS
add esp, 8
.L_00FD:
.L_00FC:
jmp .L_00FA
.L_00FB:
mov dword ptr [ebp-36], -1
.L_00FA:
cmp dword ptr [ebp-36], 0
je .L_00FF
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jle .L_0101
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call _HCHECKCROSSING
add esp, 16
.L_0101:
.L_0100:
.L_00FF:
.L_00FE:
push -1
push dword ptr [ebp+12]
call _HDELLOCALS
add esp, 8
mov dword ptr [ebp-4], -1
.L_00EB:
mov eax, dword ptr [ebp-4]
pop esi
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
_Lt_007F:	.ascii	"to label: \0"
.balign 4
_Lt_0083:	.ascii	", \0"
.balign 4
_Lt_0086:	.ascii	"local \0"
.balign 4
_Lt_0089:	.ascii	"string: \0"
.balign 4
_Lt_008B:	.ascii	"array: \0"
.balign 4
_Lt_008C:	.ascii	"object: \0"
.balign 4
_Lt_0097:	.ascii	"variable: \0"
