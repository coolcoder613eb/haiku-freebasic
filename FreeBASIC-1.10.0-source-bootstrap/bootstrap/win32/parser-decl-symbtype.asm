	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCONSTINTEXPR@8
_CCONSTINTEXPR@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0068:
cmp dword ptr [ebp+8], 0
jne .L_006B
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.L_006B:
.L_006A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .L_006D
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.L_006D:
.L_006C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_0069:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HISCONSTINRANGE@16
_HISCONSTINRANGE@16:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_006E:
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0071
mov dword ptr [ebp-12], 24
jmp .L_008B
.L_0071:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.L_008B:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
imul ebx, 24
lea eax, [_Lt_0095+ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0073
mov dword ptr [ebp-16], 24
jmp .L_008C
.L_0073:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_008C:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0076
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0077
mov dword ptr [ebp-20], 24
jmp .L_008D
.L_0077:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.L_008D:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_007A
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+4]
mov esi, -1
jg .L_0096
jl .L_0097
cmp ecx, dword ptr [eax]
jae .L_0096
.L_0097:
xor esi, esi
.L_0096:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp ecx, dword ptr [eax+12]
mov edi, -1
jl .L_0098
jg .L_0099
cmp ebx, dword ptr [eax+8]
jbe .L_0098
.L_0099:
xor edi, edi
.L_0098:
and esi, edi
mov dword ptr [ebp-4], esi
jmp .L_0079
.L_007A:
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_007B
mov dword ptr [ebp-24], 24
jmp .L_008E
.L_007B:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.L_008E:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov edi, dword ptr [_SYMB_DTYPETB+esi+20]
cmp edi, 7
sete dl
mov edi, edx
shr edi, 1
sbb edi, edi
mov dword ptr [ebp-32], edi
mov edi, dword ptr [ebp+20]
and edi, 480
je .L_007D
mov dword ptr [ebp-28], 24
jmp .L_008F
.L_007D:
mov edi, dword ptr [ebp+20]
and edi, 31
mov dword ptr [ebp-28], edi
.L_008F:
mov edi, dword ptr [ebp-28]
imul edi, 28
mov esi, dword ptr [_SYMB_DTYPETB+edi+20]
cmp esi, 8
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .L_0080
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .L_009C
jl .L_009D
cmp dword ptr [ebp+12], 0
jae .L_009C
.L_009D:
xor esi, esi
.L_009C:
mov edi, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [edi+12]
mov ecx, -1
jb .L_009E
ja .L_009F
cmp ebx, dword ptr [edi+8]
jbe .L_009E
.L_009F:
xor ecx, ecx
.L_009E:
and esi, ecx
mov dword ptr [ebp-4], esi
jmp .L_007F
.L_0080:
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .L_00A0
jl .L_00A1
cmp dword ptr [ebp+12], 0
jae .L_00A0
.L_00A1:
xor esi, esi
.L_00A0:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov edi, dword ptr [ebp+16]
cmp edi, dword ptr [ecx+20]
mov eax, -1
jb .L_00A2
ja .L_00A3
cmp ebx, dword ptr [ecx+16]
jbe .L_00A2
.L_00A3:
xor eax, eax
.L_00A2:
and esi, eax
mov dword ptr [ebp-4], esi
.L_007F:
.L_0079:
jmp .L_0075
.L_0076:
mov esi, dword ptr [ebp+20]
and esi, 480
je .L_0081
mov dword ptr [ebp-20], 24
jmp .L_0091
.L_0081:
mov esi, dword ptr [ebp+20]
and esi, 31
mov dword ptr [ebp-20], esi
.L_0091:
mov esi, dword ptr [ebp-20]
imul esi, 28
cmp dword ptr [_SYMB_DTYPETB+esi+8], 0
je .L_0084
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_0085
mov dword ptr [ebp-24], 24
jmp .L_0092
.L_0085:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.L_0092:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov eax, dword ptr [_SYMB_DTYPETB+esi+20]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0087
mov dword ptr [ebp-28], 24
jmp .L_0093
.L_0087:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0093:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov esi, dword ptr [_SYMB_DTYPETB+eax+20]
cmp esi, 7
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .L_008A
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [esi+12]
mov ebx, -1
jb .L_00A6
ja .L_00A7
cmp ecx, dword ptr [esi+8]
jbe .L_00A6
.L_00A7:
xor ebx, ebx
.L_00A6:
mov dword ptr [ebp-4], ebx
jmp .L_0089
.L_008A:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
cmp esi, dword ptr [ebx+20]
mov eax, -1
jb .L_00A8
ja .L_00A9
cmp ecx, dword ptr [ebx+16]
jbe .L_00A8
.L_00A9:
xor eax, eax
.L_00A8:
mov dword ptr [ebp-4], eax
.L_0089:
jmp .L_0083
.L_0084:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+20]
mov esi, -1
jb .L_00AA
ja .L_00AB
cmp ecx, dword ptr [eax+16]
jbe .L_00AA
.L_00AB:
xor esi, esi
.L_00AA:
mov dword ptr [ebp-4], esi
.L_0083:
.L_0075:
.L_006F:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .data
.balign 4
_Lt_0095:
.quad 0xFFFFFFFFFFFFFFFF
.quad 0x0
.quad 0x0
.quad 0xFFFFFFFFFFFFFF80
.quad 0x7F
.quad 0x7F
.quad 0x0
.quad 0x7F
.quad 0xFF
.quad 0xFFFFFFFFFFFF8000
.quad 0x7FFF
.quad 0x7FFF
.quad 0x0
.quad 0x7FFF
.quad 0xFFFF
.quad 0xFFFFFFFF80000000
.quad 0x7FFFFFFF
.quad 0x7FFFFFFF
.quad 0x0
.quad 0x7FFFFFFF
.quad 0xFFFFFFFF
.quad 0x8000000000000000
.quad 0x7FFFFFFFFFFFFFFF
.quad 0x7FFFFFFFFFFFFFFF
.quad 0x0
.quad 0x7FFFFFFFFFFFFFFF
.quad 0xFFFFFFFFFFFFFFFF

.section .text
.balign 16

.globl _CCONSTINTEXPRRANGED@8
_CCONSTINTEXPRRANGED@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AC:
cmp dword ptr [ebp+8], 0
jne .L_00AF
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.L_00AF:
.L_00AE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .L_00B1
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 13
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.L_00B1:
.L_00B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push 13
push dword ptr [ebp+8]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push dword ptr [ebp+12]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HISCONSTINRANGE@16
not eax
test eax, eax
je .L_00B3
push 0
push 1
push 0
push 25
call _ERRREPORTWARN@16
.L_00B3:
.L_00B2:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.L_00AD:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl __ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN@8
__ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00C8:
.L_00CA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_00CD:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
je .L_00D3
.L_00D4:
cmp dword ptr [ebp-8], 13
je .L_00D3
.L_00D5:
cmp dword ptr [ebp-8], 14
jne .L_00D2
.L_00D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00D7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax], ebx
.L_00D7:
.L_00D6:
jmp .L_00D0
.L_00D2:
cmp dword ptr [ebp-8], 1
je .L_00D9
.L_00DA:
cmp dword ptr [ebp-8], 2
jne .L_00D8
.L_00D9:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
jne .L_00DC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.L_00DC:
.L_00DB:
.L_00D8:
.L_00D0:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-4], ebx
.L_00CF:
cmp dword ptr [ebp-4], 0
jne .L_00CD
.L_00CE:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.L_00CC:
cmp dword ptr [ebp+12], 0
jne .L_00CA
.L_00CB:
.L_00C9:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl __ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12
__ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.L_00DD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00E0
jmp .L_00DE
.L_00E0:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax+32]
cmp esi, dword ptr [ebx]
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_00E2
jmp .L_00DE
.L_00E2:
.L_00E1:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .L_00E4
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
pop dword ptr [ebp-8]
.L_00E4:
.L_00E3:
push 0
push -1
push 3
push offset _Lt_00E6
push -1
push -1
push dword ptr [ebp+12]
call _HGETTOKENDESCRIPTION@4
push eax
push 11
push offset _Lt_00E5
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 0
push 16
push offset _Lt_00E9
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-4]
call _SYMBDUMPPRETTYTOSTR@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push 0
push 14
push offset _Lt_00EA
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-8]
call _SYMBDUMPPRETTYTOSTR@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-20]
push 1
push 0
push 37
call _ERRREPORTWARN@16
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_00DE:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CTYPEOREXPRESSION@20
_CTYPEOREXPRESSION@20:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00F0:
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 265
sete al
shr eax, 1
sbb eax, eax
push 64
push 1
mov ebx, eax
call _LEXGETLOOKAHEAD@8
cmp eax, 41
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00F3
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+2068]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_00F5
push dword ptr [ebp-32]
lea eax, [ebp-20]
push eax
call __ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN@8
.L_00F5:
.L_00F4:
.L_00F3:
.L_00F2:
push 0
push 1
call _LEXGETLOOKAHEADCLASS@8
cmp eax, 5
jne .L_00F6
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_0111
.L_00F6:
mov dword ptr [ebp-24], 0
.L_0111:
cmp dword ptr [ebp-24], 0
je .L_00F8
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_0112
.L_00F8:
mov dword ptr [ebp-28], 0
.L_0112:
cmp dword ptr [ebp-28], 0
je .L_00FB
mov dword ptr [ebp-12], 0
jmp .L_00FA
.L_00FB:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 91
jne .L_00FE
.L_00FF:
mov dword ptr [ebp-12], 0
jmp .L_00FC
.L_00FE:
cmp dword ptr [ebp-32], 40
jne .L_0100
.L_0101:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 377
je .L_0105
.L_0106:
cmp dword ptr [ebp-36], 345
je .L_0105
.L_0107:
cmp dword ptr [ebp-36], 346
jne .L_0104
.L_0105:
jmp .L_0102
.L_0104:
mov dword ptr [ebp-12], 0
.L_0108:
.L_0102:
.L_0100:
.L_00FC:
.L_00FA:
mov eax, dword ptr [ebp+8]
cmp eax, 465
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-12]
mov ebx, dword ptr [_ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_010A
mov dword ptr [ebp-12], 0
.L_010A:
.L_0109:
cmp dword ptr [ebp-12], 0
je .L_010C
push 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _CSYMBOLTYPE@20
test eax, eax
je .L_010E
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call __ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12
mov dword ptr [_PARSER+92], 0
mov dword ptr [ebp-4], 0
jmp .L_00F1
.L_010E:
.L_010D:
.L_010C:
.L_010B:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call __ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12
push -1
call _CEXPRESSIONWITHNIDXARRAY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0110
mov dword ptr [_PARSER+92], 0
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0110:
.L_010F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _CTYPEOF@20
_CTYPEOF@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0119:
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
push 0
call _ASTDTORLISTSCOPEBEGIN@4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 377
call _CTYPEOREXPRESSION@20
mov dword ptr [ebp-4], eax
call _ASTDTORLISTSCOPEEND@0
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTDTORLISTSCOPEDELETE@4
cmp dword ptr [ebp-4], 0
jne .L_011C
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTTYPEMEMBER@20
jmp .L_011A
.L_011C:
.L_011B:
push dword ptr [ebp-4]
call _ASTREMOVENIDXARRAY@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebx], eax
push dword ptr [ebp+20]
push dword ptr [ebp-4]
call _ASTSIZEOF@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp-4]
mov edx, dword ptr [ebp+24]
mov ebx, dword ptr [eax+12]
mov dword ptr [edx], ebx
push dword ptr [ebp-4]
call _ASTDELTREE@4
.L_011A:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _HINTEGERTYPEFROMBITSIZE@12
_HINTEGERTYPEFROMBITSIZE@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_011D:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_0120
cmp dword ptr [ebp+8], 8
jne .L_0120
.L_012B:
.L_0121:
mov dword ptr [ebp-8], 2
jmp .L_011F
.L_0120:
cmp dword ptr [ebp+12], 0
jne .L_0122
cmp dword ptr [ebp+8], 16
jne .L_0122
.L_012C:
.L_0123:
mov dword ptr [ebp-8], 5
jmp .L_011F
.L_0122:
cmp dword ptr [ebp+12], 0
jne .L_0124
cmp dword ptr [ebp+8], 32
jne .L_0124
.L_012D:
.L_0125:
mov dword ptr [ebp-8], 11
jmp .L_011F
.L_0124:
cmp dword ptr [ebp+12], 0
jne .L_0126
cmp dword ptr [ebp+8], 64
jne .L_0126
.L_012E:
.L_0127:
mov dword ptr [ebp-8], 13
jmp .L_011F
.L_0126:
push 0
push -1
push 310
call _ERRREPORT@12
mov dword ptr [ebp-8], 8
.L_0128:
.L_011F:
cmp dword ptr [ebp+16], 0
je .L_012A
push dword ptr [ebp-8]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp-8], eax
.L_012A:
.L_0129:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CSYMBOLTYPE@20
_CSYMBOLTYPE@20:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0164:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 377
jne .L_0167
push 2048
call _LEXSKIPTOKEN@4
push 0
push 40
call _HMATCH@8
test eax, eax
jne .L_0169
push 0
push 0
push 6
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
.L_0169:
.L_0168:
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CTYPEOF@20
push 0
push 41
call _HMATCH@8
test eax, eax
jne .L_016C
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
.L_016C:
.L_016B:
jmp .L_0166
.L_0167:
push 0
call _LEXGETTOKEN@4
cmp eax, 335
jne .L_016E
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-16], -1
.L_016E:
.L_016D:
push 2048
push 375
call _HMATCH@8
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .L_0170
.L_0172:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .L_016F
.L_0173:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
jmp .L_016F
.L_0174:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .L_016F
.L_0175:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .L_016F
.L_0176:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
jmp .L_016F
.L_0177:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
jmp .L_016F
.L_0178:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 301
call _HMATCH@8
test eax, eax
je .L_017A
push 8
call _CGTINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call _HINTEGERTYPEFROMBITSIZE@12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call _HMATCH@8
test eax, eax
jne .L_017C
push 0
push -1
push 309
call _ERRREPORT@12
.L_017C:
.L_017B:
jmp .L_0179
.L_017A:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1044]
mov dword ptr [eax], edx
.L_0179:
jmp .L_016F
.L_017D:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 301
call _HMATCH@8
test eax, eax
je .L_017F
push 8
call _CGTINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call _HINTEGERTYPEFROMBITSIZE@12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call _HMATCH@8
test eax, eax
jne .L_0181
push 0
push -1
push 309
call _ERRREPORT@12
.L_0181:
.L_0180:
jmp .L_017E
.L_017F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.L_017E:
jmp .L_016F
.L_0182:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 11
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .L_016F
.L_0183:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .L_016F
.L_0184:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 13
jmp .L_016F
.L_0185:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 14
jmp .L_016F
.L_0186:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 15
jmp .L_016F
.L_0187:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 16
jmp .L_016F
.L_0188:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 17
jmp .L_016F
.L_0189:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
jmp .L_016F
.L_018A:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
jmp .L_016F
.L_018B:
push 0
call _LEXGETTOKEN@4
cmp eax, 346
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 54
inc dword ptr [ebp-20]
push dword ptr [ebp-12]
call _CSYMBOLTYPEFUNCPTR@4
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_018D
jmp .L_0165
.L_018D:
.L_018C:
jmp .L_016F
.L_0170:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 27
ja .L_016F
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_018E+eax*4-1380]
_.L_018E:
.int .L_018B
.int .L_018B
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_0173
.int .L_0174
.int .L_0175
.int .L_0176
.int .L_0177
.int .L_0178
.int .L_017D
.int .L_0182
.int .L_0183
.int .L_0184
.int .L_0185
.int .L_0186
.int .L_0187
.int .L_0188
.int .L_0189
.int .L_018A
.int .L_0172
.L_016F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], -2147483648
je .L_0190
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 511
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 4
je .L_0194
.L_0195:
cmp dword ptr [ebp-24], 7
jne .L_0193
.L_0194:
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], 0
mov dword ptr [edx+4], 0
jmp .L_0191
.L_0193:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .L_0197
mov dword ptr [ebp-28], 24
jmp .L_0218
.L_0197:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-28], edx
.L_0218:
mov edx, dword ptr [ebp-28]
imul edx, 28
mov ebx, dword ptr [_SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
.L_0196:
.L_0191:
jmp .L_018F
.L_0190:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], -1
cmp dword ptr [_PARSER+52], 0
je .L_019A
push 0
call _LEXGETTOKEN@4
cmp eax, 46
jne .L_019C
push 64
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
.L_019C:
.L_019B:
.L_019A:
.L_0199:
cmp dword ptr [ebp-32], 0
je .L_019E
mov eax, dword ptr [ebp+24]
and eax, 8
je .L_019F
mov dword ptr [ebp-36], 0
jmp .L_0219
.L_019F:
mov dword ptr [ebp-36], 50
.L_0219:
push dword ptr [ebp-36]
lea eax, [ebp-28]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-24], eax
.L_019E:
.L_019D:
cmp dword ptr [ebp-24], 0
je .L_01A2
mov eax, dword ptr [ebp+24]
and eax, 8
je .L_01A4
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 2
je .L_01A8
.L_01A9:
cmp dword ptr [ebp-36], 1
je .L_01A8
.L_01AA:
cmp dword ptr [ebp-36], 12
jne .L_01A7
.L_01A8:
mov eax, dword ptr [ebp-24]
mov dword ptr [_PARSER+92], eax
.L_01A7:
.L_01A5:
.L_01A4:
.L_01A3:
.L_01AB:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
.L_01AE:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 10
jne .L_01B3
.L_01B4:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-36]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+40]
mov edx, dword ptr [ebx+44]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], edx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .L_01AC
jmp .L_01B1
.L_01B3:
cmp dword ptr [ebp-40], 9
jne .L_01B5
.L_01B6:
push 2048
call _LEXSKIPTOKEN@4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 10
mov ecx, dword ptr [ebp+12]
mov edx, dword ptr [ebp-36]
mov dword ptr [ecx], edx
mov ecx, dword ptr [_SYMB_DTYPETB+284]
mov edx, ecx
sar edx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], edx
jmp .L_01AC
jmp .L_01B1
.L_01B5:
cmp dword ptr [ebp-40], 13
jne .L_01B7
.L_01B8:
push dword ptr [ebp-36]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_01BA
push 0
push 0
push 202
call _ERRREPORT@12
.L_01BA:
.L_01B9:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-36]
mov ecx, dword ptr [ebp+8]
mov edx, dword ptr [eax+28]
mov dword ptr [ecx], edx
mov edx, dword ptr [ebp-36]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [edx+32]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ecx], ebx
mov dword ptr [ecx+4], edx
mov ebx, dword ptr [ebp-36]
mov edx, dword ptr [ebx+12]
and edx, 2097152
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], edx
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 480
sar ebx, 5
add dword ptr [ebp-20], ebx
jmp .L_01AC
.L_01B7:
.L_01B1:
mov ebx, dword ptr [ebp-36]
mov edx, dword ptr [ebx+160]
mov dword ptr [ebp-36], edx
.L_01B0:
cmp dword ptr [ebp-36], 0
jne .L_01AE
.L_01AF:
mov edx, dword ptr [ebp-24]
mov ebx, dword ptr [edx+4]
mov dword ptr [ebp-24], ebx
.L_01AD:
cmp dword ptr [ebp-24], 0
jne .L_01AB
.L_01AC:
mov ebx, dword ptr [ebp+24]
and ebx, 8
je .L_01BC
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
je .L_01BE
mov dword ptr [_PARSER+92], 0
.L_01BE:
.L_01BD:
.L_01BC:
.L_01BB:
.L_01A2:
.L_01A1:
.L_018F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
jne .L_01C0
cmp dword ptr [ebp-8], 0
je .L_01C2
push 0
push 0
push 17
call _ERRREPORT@12
.L_01C2:
.L_01C1:
cmp dword ptr [ebp-16], 0
je .L_01C4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 512
.L_01C4:
.L_01C3:
mov dword ptr [ebp-4], 0
jmp .L_0165
.L_01C0:
.L_01BF:
cmp dword ptr [ebp-8], 0
je .L_01C6
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 480
je .L_01C7
mov dword ptr [ebp-24], 24
jmp .L_021A
.L_01C7:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_021A:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
jmp .L_01CA
.L_01CC:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 32505856
test edx, edx
je .L_01CE
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 4194307
jmp .L_01CD
.L_01CE:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 3
.L_01CD:
jmp .L_01C9
.L_01CF:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 6
jmp .L_01C9
.L_01D0:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 9
jmp .L_01C9
.L_01D1:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 32505856
test ebx, ebx
je .L_01D3
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 9437196
jmp .L_01D2
.L_01D3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 12
.L_01D2:
jmp .L_01C9
.L_01D4:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 14
jmp .L_01C9
.L_01D5:
push 0
push -1
push 17
call _ERRREPORT@12
jmp .L_01C9
.L_01CA:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967294
cmp ebx, 11
ja .L_01D5
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_01D6+ebx*4-8]
_.L_01D6:
.int .L_01CC
.int .L_01D5
.int .L_01D5
.int .L_01CF
.int .L_01D5
.int .L_01D5
.int .L_01D0
.int .L_01D5
.int .L_01D5
.int .L_01D1
.int .L_01D5
.int .L_01D4
.L_01C9:
.L_01C6:
.L_01C5:
.L_0166:
push 0
call _LEXGETTOKEN@4
cmp eax, 42
jne .L_01D8
push 0
call _LEXSKIPTOKEN@4
push 8
call _CEQINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .L_01D9
mov dword ptr [ebp-24], 24
jmp .L_021B
.L_01D9:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-24], eax
.L_021B:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
jmp .L_01DC
.L_01DE:
mov eax, dword ptr [ebp+16]
add dword ptr [eax], 1
adc dword ptr [eax+4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .L_01E0
jl .L_0223
cmp dword ptr [eax], 1
ja .L_01E0
.L_0223:
push 0
push -1
push 17
call _ERRREPORT@12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 2
mov dword ptr [eax+4], 0
.L_01E0:
.L_01DF:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 18
jmp .L_01DB
.L_01E1:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .L_01E3
jl .L_0224
cmp dword ptr [eax], 1
jae .L_01E3
.L_0224:
push 0
push -1
push 17
call _ERRREPORT@12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 1
mov dword ptr [eax+4], 0
.L_01E3:
.L_01E2:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .L_01E4
mov dword ptr [ebp-32], 24
jmp .L_021C
.L_01E4:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-32], eax
.L_021C:
cmp dword ptr [ebp-32], 7
jne .L_01E7
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov edx, ebx
sar edx, 31
push edx
push ebx
push dword ptr [eax+4]
push dword ptr [eax]
push edx
push eax
mov eax, [esp+8]
mul dword ptr [esp+16]
xchg eax, [esp+8]
imul eax, [esp+20]
add eax, edx
mov edx, [esp+12]
imul edx, [esp+16]
add edx, eax
mov [esp+12], edx
pop eax
pop edx
pop dword ptr [eax]
pop dword ptr [eax+4]
add esp, 8
.L_01E7:
.L_01E6:
jmp .L_01DB
.L_01E8:
push 0
push -1
push 17
call _ERRREPORT@12
jmp .L_01DB
.L_01DC:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967292
cmp ebx, 13
ja .L_01E8
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_01E9+ebx*4-16]
_.L_01E9:
.int .L_01E1
.int .L_01E8
.int .L_01E8
.int .L_01E1
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01DE
.L_01DB:
mov ebx, dword ptr [ebp+24]
and ebx, 4
je .L_01EB
push 0
push -1
push 324
call _ERRREPORT@12
.L_01EB:
.L_01EA:
cmp dword ptr [ebp-16], 0
je .L_01ED
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.L_01ED:
.L_01EC:
jmp .L_01D7
.L_01D8:
cmp dword ptr [ebp-16], 0
je .L_01EF
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.L_01EF:
.L_01EE:
.L_01F0:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .L_01F4
.L_01F6:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 373
je .L_01FA
.L_01FB:
cmp dword ptr [ebp-28], 374
jne .L_01F9
.L_01FA:
cmp dword ptr [ebp-20], 8
jl .L_01FD
push 0
push 0
push 274
call _ERRREPORT@12
jmp .L_01FC
.L_01FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
add edx, 32
or ebx, edx
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 32505856
or ebx, edx
or ebx, 512
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], ebx
inc dword ptr [ebp-20]
.L_01FC:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_01F7
.L_01F9:
push 0
push 0
push 273
call _ERRREPORT@12
jmp .L_01F1
.L_01FE:
.L_01F7:
jmp .L_01F3
.L_01FF:
cmp dword ptr [ebp-20], 8
jl .L_0201
push 0
push 0
push 274
call _ERRREPORT@12
jmp .L_0200
.L_0201:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 31
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
add eax, 32
or edx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 261632
sal ebx, 1
or edx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 32505856
or edx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], edx
inc dword ptr [ebp-20]
.L_0200:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_01F3
.L_0202:
jmp .L_01F1
jmp .L_01F3
.L_01F4:
mov edx, dword ptr [ebp-24]
add edx, 4294966961
cmp edx, 39
ja .L_0202
mov edx, dword ptr [ebp-24]
jmp dword ptr [_.L_0203+edx*4-1340]
_.L_0203:
.int .L_01F6
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_01FF
.int .L_01FF
.L_01F3:
.L_01F2:
jmp .L_01F0
.L_01F1:
.L_01D7:
cmp dword ptr [ebp-20], 0
jle .L_0205
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .L_0206
mov dword ptr [ebp-24], 24
jmp .L_021D
.L_0206:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-24], edx
.L_021D:
mov edx, dword ptr [ebp-24]
imul edx, 28
mov ebx, dword ptr [_SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
jmp .L_0204
.L_0205:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .L_0208
mov dword ptr [ebp-24], 24
jmp .L_021E
.L_0208:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_021E:
cmp dword ptr [ebp-24], 23
jne .L_020B
mov ebx, dword ptr [ebp+24]
and ebx, 2
test ebx, ebx
jne .L_020D
push 0
push -1
push 71
call _ERRREPORT@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_020D:
.L_020C:
jmp .L_020A
.L_020B:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+4], 0
jg .L_020E
jl .L_0225
cmp dword ptr [ebx], 0
ja .L_020E
.L_0225:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .L_0212
.L_0213:
cmp dword ptr [ebp-28], 7
jne .L_0211
.L_0212:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .L_0215
push 0
push 0
push 28
call _ERRREPORT@12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
add edx, 32
or ebx, edx
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 32505856
or ebx, edx
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], ebx
.L_0215:
.L_0214:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 480
je .L_0216
mov dword ptr [ebp-32], 24
jmp .L_021F
.L_0216:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_021F:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_0211:
.L_020F:
.L_020E:
.L_020A:
.L_0204:
mov dword ptr [ebp-4], -1
.L_0165:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
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
_CSYMBOLTYPEFUNCPTR@4:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_00B4:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
push -1
call _CPROCCALLINGCONV@8
mov dword ptr [ebp-12], eax
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-24], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push 0
call _CPARAMETERS@16
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _CBYREFATTRIBUTE@8
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .L_00B8
cmp dword ptr [ebp+8], 0
jne .L_00BA
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-8], 0
jmp .L_00B9
.L_00BA:
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
push -1
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _CPROCRETTYPE@24
.L_00B9:
jmp .L_00B7
.L_00B8:
cmp dword ptr [ebp+8], 0
je .L_00BC
push 0
push 0
push 68
call _ERRREPORT@12
mov dword ptr [ebp-8], 8
jmp .L_00BB
.L_00BC:
mov dword ptr [ebp-8], 0
.L_00BB:
.L_00B7:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _SYMBADDPROCPTR@24
mov dword ptr [ebp-4], eax
.L_00B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETTOKENDESCRIPTION@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00BD:
cmp dword ptr [ebp+8], 377
jne .L_00C0
.L_00C1:
push 0
push 7
push offset _Lt_00C2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00BF
.L_00C0:
cmp dword ptr [ebp+8], 465
jne .L_00C3
.L_00C4:
push 0
push 4
push offset _Lt_00C5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00BF
.L_00C3:
push 0
push 7
push offset _Lt_00C7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00C6:
.L_00BF:
.L_00BE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_CMANGLEMODIFIER@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_012F:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 386
jne .L_0132
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .L_0134
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0137
.L_0139:
call _FBIS64BIT@0
mov ebx, dword ptr [_ENV+284]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_013B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 11
jne .L_013E
.L_013F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 8388608
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [ebp-4], -1
jmp .L_013C
.L_013E:
cmp dword ptr [ebp-20], 12
jne .L_0140
.L_0141:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 9437184
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .L_013C
.L_0140:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0142:
.L_013C:
jmp .L_013A
.L_013B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 11
jne .L_0145
.L_0146:
jmp .L_0143
.L_0145:
cmp dword ptr [ebp-20], 12
jne .L_0147
.L_0148:
jmp .L_0143
.L_0147:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0149:
.L_0143:
.L_013A:
jmp .L_0135
.L_0137:
push 5
push offset _Lt_014B
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .L_014A
.L_014C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_014F
.L_0150:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 4194304
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_014D
.L_014F:
cmp dword ptr [ebp-20], 2
je .L_0152
.L_0153:
cmp dword ptr [ebp-20], 3
jne .L_0151
.L_0152:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 4194304
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
jmp .L_014D
.L_0151:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0154:
.L_014D:
jmp .L_0135
.L_014A:
push 18
push offset _Lt_0156
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrCompare@16
test eax, eax
je .L_0158
.L_0159:
push 20
push offset _Lt_0157
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0155
.L_0158:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_015C
.L_015D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 19922944
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_015A
.L_015C:
cmp dword ptr [ebp-20], 20
jne .L_015E
.L_015F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 19922944
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, eax
call _FBGETBACKENDVALISTTYPE@0
sal eax, 20
and eax, 15728640
or dword ptr [ebx+120], eax
jmp .L_015A
.L_015E:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0160:
.L_015A:
jmp .L_0135
.L_0155:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0161
.L_0162:
push 0
push 0
push 304
call _ERRREPORT@12
jmp .L_0135
.L_0161:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0163:
.L_0135:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
push 0
call _LEXSKIPTOKEN@4
jmp .L_0133
.L_0134:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0133:
.L_0132:
.L_0131:
.L_0130:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_00C2:	.ascii	"typeof\0"
.balign 4
_Lt_00C5:	.ascii	"len\0"
.balign 4
_Lt_00C7:	.ascii	"sizeof\0"
.balign 4
_Lt_00E5:	.ascii	"Ambigious \0"
.balign 4
_Lt_00E6:	.ascii	"()\0"
.balign 4
_Lt_00E9:	.ascii	", referring to \0"
.balign 4
_Lt_00EA:	.ascii	", instead of \0"
.balign 4
_Lt_0138:	.ascii	"long\0"
.balign 4
_Lt_014B:	.ascii	"char\0"
.balign 4
_Lt_0156:	.ascii	"__builtin_va_list\0"
.balign 4
_Lt_0157:	.ascii	"__builtin_va_list[]\0"
