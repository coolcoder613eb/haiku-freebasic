	.intel_syntax noprefix

.section .text
.balign 16

.globl CCONSTINTEXPR
CCONSTINTEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0067:
cmp dword ptr [ebp+8], 0
jne .L_006A
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_006A:
.L_0069:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .L_006C
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_006C:
.L_006B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_0068:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl HISCONSTINRANGE
HISCONSTINRANGE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0070
mov dword ptr [ebp-12], 24
jmp .L_008A
.L_0070:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.L_008A:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
imul ebx, 24
lea eax, [Lt_0094+ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0072
mov dword ptr [ebp-16], 24
jmp .L_008B
.L_0072:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_008B:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0075
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0076
mov dword ptr [ebp-20], 24
jmp .L_008C
.L_0076:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.L_008C:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0079
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+4]
mov esi, -1
jg .L_0095
jl .L_0096
cmp ecx, dword ptr [eax]
jae .L_0095
.L_0096:
xor esi, esi
.L_0095:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp ecx, dword ptr [eax+12]
mov edi, -1
jl .L_0097
jg .L_0098
cmp ebx, dword ptr [eax+8]
jbe .L_0097
.L_0098:
xor edi, edi
.L_0097:
and esi, edi
mov dword ptr [ebp-4], esi
jmp .L_0078
.L_0079:
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_007A
mov dword ptr [ebp-24], 24
jmp .L_008D
.L_007A:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.L_008D:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov edi, dword ptr [SYMB_DTYPETB+esi+20]
cmp edi, 7
sete dl
mov edi, edx
shr edi, 1
sbb edi, edi
mov dword ptr [ebp-32], edi
mov edi, dword ptr [ebp+20]
and edi, 480
je .L_007C
mov dword ptr [ebp-28], 24
jmp .L_008E
.L_007C:
mov edi, dword ptr [ebp+20]
and edi, 31
mov dword ptr [ebp-28], edi
.L_008E:
mov edi, dword ptr [ebp-28]
imul edi, 28
mov esi, dword ptr [SYMB_DTYPETB+edi+20]
cmp esi, 8
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .L_007F
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .L_009B
jl .L_009C
cmp dword ptr [ebp+12], 0
jae .L_009B
.L_009C:
xor esi, esi
.L_009B:
mov edi, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [edi+12]
mov ecx, -1
jb .L_009D
ja .L_009E
cmp ebx, dword ptr [edi+8]
jbe .L_009D
.L_009E:
xor ecx, ecx
.L_009D:
and esi, ecx
mov dword ptr [ebp-4], esi
jmp .L_007E
.L_007F:
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .L_009F
jl .L_00A0
cmp dword ptr [ebp+12], 0
jae .L_009F
.L_00A0:
xor esi, esi
.L_009F:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov edi, dword ptr [ebp+16]
cmp edi, dword ptr [ecx+20]
mov eax, -1
jb .L_00A1
ja .L_00A2
cmp ebx, dword ptr [ecx+16]
jbe .L_00A1
.L_00A2:
xor eax, eax
.L_00A1:
and esi, eax
mov dword ptr [ebp-4], esi
.L_007E:
.L_0078:
jmp .L_0074
.L_0075:
mov esi, dword ptr [ebp+20]
and esi, 480
je .L_0080
mov dword ptr [ebp-20], 24
jmp .L_0090
.L_0080:
mov esi, dword ptr [ebp+20]
and esi, 31
mov dword ptr [ebp-20], esi
.L_0090:
mov esi, dword ptr [ebp-20]
imul esi, 28
cmp dword ptr [SYMB_DTYPETB+esi+8], 0
je .L_0083
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_0084
mov dword ptr [ebp-24], 24
jmp .L_0091
.L_0084:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.L_0091:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov eax, dword ptr [SYMB_DTYPETB+esi+20]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0086
mov dword ptr [ebp-28], 24
jmp .L_0092
.L_0086:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0092:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov esi, dword ptr [SYMB_DTYPETB+eax+20]
cmp esi, 7
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .L_0089
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [esi+12]
mov ebx, -1
jb .L_00A5
ja .L_00A6
cmp ecx, dword ptr [esi+8]
jbe .L_00A5
.L_00A6:
xor ebx, ebx
.L_00A5:
mov dword ptr [ebp-4], ebx
jmp .L_0088
.L_0089:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
cmp esi, dword ptr [ebx+20]
mov eax, -1
jb .L_00A7
ja .L_00A8
cmp ecx, dword ptr [ebx+16]
jbe .L_00A7
.L_00A8:
xor eax, eax
.L_00A7:
mov dword ptr [ebp-4], eax
.L_0088:
jmp .L_0082
.L_0083:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+20]
mov esi, -1
jb .L_00A9
ja .L_00AA
cmp ecx, dword ptr [eax+16]
jbe .L_00A9
.L_00AA:
xor esi, esi
.L_00A9:
mov dword ptr [ebp-4], esi
.L_0082:
.L_0074:
.L_006E:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0094:
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

.globl CCONSTINTEXPRRANGED
CCONSTINTEXPRRANGED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AB:
cmp dword ptr [ebp+8], 0
jne .L_00AE
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .L_00B0
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
push 0
push 13
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push 13
push dword ptr [ebp+8]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push dword ptr [ebp+12]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HISCONSTINRANGE
add esp, 16
not eax
test eax, eax
je .L_00B2
push 0
push 1
push 0
push 25
call ERRREPORTWARN
add esp, 16
.L_00B2:
.L_00B1:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.L_00AC:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN
_ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00C7:
.L_00C9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_00CC:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
je .L_00D2
.L_00D3:
cmp dword ptr [ebp-8], 13
je .L_00D2
.L_00D4:
cmp dword ptr [ebp-8], 14
jne .L_00D1
.L_00D2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00D6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax], ebx
.L_00D6:
.L_00D5:
jmp .L_00CF
.L_00D1:
cmp dword ptr [ebp-8], 1
je .L_00D8
.L_00D9:
cmp dword ptr [ebp-8], 2
jne .L_00D7
.L_00D8:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
jne .L_00DB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.L_00DB:
.L_00DA:
.L_00D7:
.L_00CF:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-4], ebx
.L_00CE:
cmp dword ptr [ebp-4], 0
jne .L_00CC
.L_00CD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.L_00CB:
cmp dword ptr [ebp+12], 0
jne .L_00C9
.L_00CA:
.L_00C8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll
_ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.L_00DC:
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
je .L_00DF
jmp .L_00DD
.L_00DF:
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
je .L_00E1
jmp .L_00DD
.L_00E1:
.L_00E0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .L_00E3
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
pop dword ptr [ebp-8]
.L_00E3:
.L_00E2:
push 0
push -1
push 3
push offset Lt_00E5
push -1
push -1
push dword ptr [ebp+12]
call HGETTOKENDESCRIPTION
add esp, 4
push eax
push 11
push offset Lt_00E4
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 0
push 16
push offset Lt_00E8
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-4]
call SYMBDUMPPRETTYTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 14
push offset Lt_00E9
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-8]
call SYMBDUMPPRETTYTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-20]
push 1
push 0
push 37
call ERRREPORTWARN
add esp, 16
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_00DD:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CTYPEOREXPRESSION
CTYPEOREXPRESSION:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00EF:
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 265
sete al
shr eax, 1
sbb eax, eax
push 64
push 1
mov ebx, eax
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00F2
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_00F4
push dword ptr [ebp-32]
lea eax, [ebp-20]
push eax
call _ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN
add esp, 8
.L_00F4:
.L_00F3:
.L_00F2:
.L_00F1:
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 8
cmp eax, 5
jne .L_00F5
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_0110
.L_00F5:
mov dword ptr [ebp-24], 0
.L_0110:
cmp dword ptr [ebp-24], 0
je .L_00F7
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_0111
.L_00F7:
mov dword ptr [ebp-28], 0
.L_0111:
cmp dword ptr [ebp-28], 0
je .L_00FA
mov dword ptr [ebp-12], 0
jmp .L_00F9
.L_00FA:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 91
jne .L_00FD
.L_00FE:
mov dword ptr [ebp-12], 0
jmp .L_00FB
.L_00FD:
cmp dword ptr [ebp-32], 40
jne .L_00FF
.L_0100:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 377
je .L_0104
.L_0105:
cmp dword ptr [ebp-36], 345
je .L_0104
.L_0106:
cmp dword ptr [ebp-36], 346
jne .L_0103
.L_0104:
jmp .L_0101
.L_0103:
mov dword ptr [ebp-12], 0
.L_0107:
.L_0101:
.L_00FF:
.L_00FB:
.L_00F9:
mov eax, dword ptr [ebp+8]
cmp eax, 465
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-12]
mov ebx, dword ptr [ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0109
mov dword ptr [ebp-12], 0
.L_0109:
.L_0108:
cmp dword ptr [ebp-12], 0
je .L_010B
push 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call CSYMBOLTYPE
add esp, 20
test eax, eax
je .L_010D
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll
add esp, 12
mov dword ptr [PARSER+92], 0
mov dword ptr [ebp-4], 0
jmp .L_00F0
.L_010D:
.L_010C:
.L_010B:
.L_010A:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll
add esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_010F
mov dword ptr [PARSER+92], 0
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_010F:
.L_010E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CTYPEOF
CTYPEOF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0118:
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
push 0
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 377
call CTYPEOREXPRESSION
add esp, 20
mov dword ptr [ebp-4], eax
call ASTDTORLISTSCOPEEND
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call ASTDTORLISTSCOPEDELETE
add esp, 4
cmp dword ptr [ebp-4], 0
jne .L_011B
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTTYPEMEMBER
add esp, 20
jmp .L_0119
.L_011B:
.L_011A:
push dword ptr [ebp-4]
call ASTREMOVENIDXARRAY
add esp, 4
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
call ASTSIZEOF
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp-4]
mov edx, dword ptr [ebp+24]
mov ebx, dword ptr [eax+12]
mov dword ptr [edx], ebx
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
.L_0119:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HINTEGERTYPEFROMBITSIZE
HINTEGERTYPEFROMBITSIZE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_011C:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_011F
cmp dword ptr [ebp+8], 8
jne .L_011F
.L_012A:
.L_0120:
mov dword ptr [ebp-8], 2
jmp .L_011E
.L_011F:
cmp dword ptr [ebp+12], 0
jne .L_0121
cmp dword ptr [ebp+8], 16
jne .L_0121
.L_012B:
.L_0122:
mov dword ptr [ebp-8], 5
jmp .L_011E
.L_0121:
cmp dword ptr [ebp+12], 0
jne .L_0123
cmp dword ptr [ebp+8], 32
jne .L_0123
.L_012C:
.L_0124:
mov dword ptr [ebp-8], 11
jmp .L_011E
.L_0123:
cmp dword ptr [ebp+12], 0
jne .L_0125
cmp dword ptr [ebp+8], 64
jne .L_0125
.L_012D:
.L_0126:
mov dword ptr [ebp-8], 13
jmp .L_011E
.L_0125:
push 0
push -1
push 310
call ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 8
.L_0127:
.L_011E:
cmp dword ptr [ebp+16], 0
je .L_0129
push dword ptr [ebp-8]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
.L_0129:
.L_0128:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSYMBOLTYPE
CSYMBOLTYPE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0163:
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
call LEXGETTOKEN
add esp, 4
cmp eax, 377
jne .L_0166
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_0168
push 0
push 0
push 6
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
.L_0168:
.L_0167:
mov dword ptr [ebp-24], 0
lea eax, [ebp-24]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CTYPEOF
add esp, 20
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_016B
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
.L_016B:
.L_016A:
jmp .L_0165
.L_0166:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 335
jne .L_016D
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-16], -1
.L_016D:
.L_016C:
push 2048
push 375
call HMATCH
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_016F
.L_0171:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .L_016E
.L_0172:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
jmp .L_016E
.L_0173:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .L_016E
.L_0174:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .L_016E
.L_0175:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
jmp .L_016E
.L_0176:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
jmp .L_016E
.L_0177:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 301
call HMATCH
add esp, 8
test eax, eax
je .L_0179
push 8
call CGTINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call HINTEGERTYPEFROMBITSIZE
add esp, 12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .L_017B
push 0
push -1
push 309
call ERRREPORT
add esp, 12
.L_017B:
.L_017A:
jmp .L_0178
.L_0179:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1044]
mov dword ptr [eax], edx
.L_0178:
jmp .L_016E
.L_017C:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 301
call HMATCH
add esp, 8
test eax, eax
je .L_017E
push 8
call CGTINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call HINTEGERTYPEFROMBITSIZE
add esp, 12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .L_0180
push 0
push -1
push 309
call ERRREPORT
add esp, 12
.L_0180:
.L_017F:
jmp .L_017D
.L_017E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.L_017D:
jmp .L_016E
.L_0181:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 11
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .L_016E
.L_0182:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .L_016E
.L_0183:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 13
jmp .L_016E
.L_0184:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 14
jmp .L_016E
.L_0185:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 15
jmp .L_016E
.L_0186:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 16
jmp .L_016E
.L_0187:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 17
jmp .L_016E
.L_0188:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
jmp .L_016E
.L_0189:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
jmp .L_016E
.L_018A:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 346
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 54
inc dword ptr [ebp-20]
push dword ptr [ebp-12]
call CSYMBOLTYPEFUNCPTR
add esp, 4
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_018C
jmp .L_0164
.L_018C:
.L_018B:
jmp .L_016E
.L_016F:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 27
ja .L_016E
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_018D+eax*4-1380]
.L_018D:
.int .L_018A
.int .L_018A
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_0172
.int .L_0173
.int .L_0174
.int .L_0175
.int .L_0176
.int .L_0177
.int .L_017C
.int .L_0181
.int .L_0182
.int .L_0183
.int .L_0184
.int .L_0185
.int .L_0186
.int .L_0187
.int .L_0188
.int .L_0189
.int .L_0171
.L_016E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], -2147483648
je .L_018F
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 511
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 4
je .L_0193
.L_0194:
cmp dword ptr [ebp-24], 7
jne .L_0192
.L_0193:
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], 0
mov dword ptr [edx+4], 0
jmp .L_0190
.L_0192:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .L_0196
mov dword ptr [ebp-28], 24
jmp .L_0217
.L_0196:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-28], edx
.L_0217:
mov edx, dword ptr [ebp-28]
imul edx, 28
mov ebx, dword ptr [SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
.L_0195:
.L_0190:
jmp .L_018E
.L_018F:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], -1
cmp dword ptr [PARSER+52], 0
je .L_0199
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_019B
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
.L_019B:
.L_019A:
.L_0199:
.L_0198:
cmp dword ptr [ebp-32], 0
je .L_019D
mov eax, dword ptr [ebp+24]
and eax, 8
je .L_019E
mov dword ptr [ebp-36], 0
jmp .L_0218
.L_019E:
mov dword ptr [ebp-36], 50
.L_0218:
push dword ptr [ebp-36]
lea eax, [ebp-28]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-24], eax
.L_019D:
.L_019C:
cmp dword ptr [ebp-24], 0
je .L_01A1
mov eax, dword ptr [ebp+24]
and eax, 8
je .L_01A3
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 2
je .L_01A7
.L_01A8:
cmp dword ptr [ebp-36], 1
je .L_01A7
.L_01A9:
cmp dword ptr [ebp-36], 12
jne .L_01A6
.L_01A7:
mov eax, dword ptr [ebp-24]
mov dword ptr [PARSER+92], eax
.L_01A6:
.L_01A4:
.L_01A3:
.L_01A2:
.L_01AA:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
.L_01AD:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 10
jne .L_01B2
.L_01B3:
push 2048
call LEXSKIPTOKEN
add esp, 4
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
call CMANGLEMODIFIER
add esp, 8
jmp .L_01AB
jmp .L_01B0
.L_01B2:
cmp dword ptr [ebp-40], 9
jne .L_01B4
.L_01B5:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 10
mov ecx, dword ptr [ebp+12]
mov edx, dword ptr [ebp-36]
mov dword ptr [ecx], edx
mov ecx, dword ptr [SYMB_DTYPETB+284]
mov edx, ecx
sar edx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], edx
jmp .L_01AB
jmp .L_01B0
.L_01B4:
cmp dword ptr [ebp-40], 13
jne .L_01B6
.L_01B7:
push dword ptr [ebp-36]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_01B9
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.L_01B9:
.L_01B8:
push 2048
call LEXSKIPTOKEN
add esp, 4
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
jmp .L_01AB
.L_01B6:
.L_01B0:
mov ebx, dword ptr [ebp-36]
mov edx, dword ptr [ebx+156]
mov dword ptr [ebp-36], edx
.L_01AF:
cmp dword ptr [ebp-36], 0
jne .L_01AD
.L_01AE:
mov edx, dword ptr [ebp-24]
mov ebx, dword ptr [edx+4]
mov dword ptr [ebp-24], ebx
.L_01AC:
cmp dword ptr [ebp-24], 0
jne .L_01AA
.L_01AB:
mov ebx, dword ptr [ebp+24]
and ebx, 8
je .L_01BB
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
je .L_01BD
mov dword ptr [PARSER+92], 0
.L_01BD:
.L_01BC:
.L_01BB:
.L_01BA:
.L_01A1:
.L_01A0:
.L_018E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
jne .L_01BF
cmp dword ptr [ebp-8], 0
je .L_01C1
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_01C1:
.L_01C0:
cmp dword ptr [ebp-16], 0
je .L_01C3
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 512
.L_01C3:
.L_01C2:
mov dword ptr [ebp-4], 0
jmp .L_0164
.L_01BF:
.L_01BE:
cmp dword ptr [ebp-8], 0
je .L_01C5
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 480
je .L_01C6
mov dword ptr [ebp-24], 24
jmp .L_0219
.L_01C6:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_0219:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
jmp .L_01C9
.L_01CB:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 32505856
test edx, edx
je .L_01CD
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 4194307
jmp .L_01CC
.L_01CD:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 3
.L_01CC:
jmp .L_01C8
.L_01CE:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 6
jmp .L_01C8
.L_01CF:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], 9
jmp .L_01C8
.L_01D0:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 32505856
test ebx, ebx
je .L_01D2
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 9437196
jmp .L_01D1
.L_01D2:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 12
.L_01D1:
jmp .L_01C8
.L_01D3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 14
jmp .L_01C8
.L_01D4:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
jmp .L_01C8
.L_01C9:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967294
cmp ebx, 11
ja .L_01D4
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_01D5+ebx*4-8]
.L_01D5:
.int .L_01CB
.int .L_01D4
.int .L_01D4
.int .L_01CE
.int .L_01D4
.int .L_01D4
.int .L_01CF
.int .L_01D4
.int .L_01D4
.int .L_01D0
.int .L_01D4
.int .L_01D3
.L_01C8:
.L_01C5:
.L_01C4:
.L_0165:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 42
jne .L_01D7
push 0
call LEXSKIPTOKEN
add esp, 4
push 8
call CEQINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .L_01D8
mov dword ptr [ebp-24], 24
jmp .L_021A
.L_01D8:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-24], eax
.L_021A:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
jmp .L_01DB
.L_01DD:
mov eax, dword ptr [ebp+16]
add dword ptr [eax], 1
adc dword ptr [eax+4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .L_01DF
jl .L_0222
cmp dword ptr [eax], 1
ja .L_01DF
.L_0222:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 2
mov dword ptr [eax+4], 0
.L_01DF:
.L_01DE:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 18
jmp .L_01DA
.L_01E0:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .L_01E2
jl .L_0223
cmp dword ptr [eax], 1
jae .L_01E2
.L_0223:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 1
mov dword ptr [eax+4], 0
.L_01E2:
.L_01E1:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .L_01E3
mov dword ptr [ebp-32], 24
jmp .L_021B
.L_01E3:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-32], eax
.L_021B:
cmp dword ptr [ebp-32], 7
jne .L_01E6
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [SYMB_DTYPETB+200]
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
.L_01E6:
.L_01E5:
jmp .L_01DA
.L_01E7:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
jmp .L_01DA
.L_01DB:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967292
cmp ebx, 13
ja .L_01E7
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_01E8+ebx*4-16]
.L_01E8:
.int .L_01E0
.int .L_01E7
.int .L_01E7
.int .L_01E0
.int .L_01E7
.int .L_01E7
.int .L_01E7
.int .L_01E7
.int .L_01E7
.int .L_01E7
.int .L_01E7
.int .L_01E7
.int .L_01E7
.int .L_01DD
.L_01DA:
mov ebx, dword ptr [ebp+24]
and ebx, 4
je .L_01EA
push 0
push -1
push 324
call ERRREPORT
add esp, 12
.L_01EA:
.L_01E9:
cmp dword ptr [ebp-16], 0
je .L_01EC
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.L_01EC:
.L_01EB:
jmp .L_01D6
.L_01D7:
cmp dword ptr [ebp-16], 0
je .L_01EE
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.L_01EE:
.L_01ED:
.L_01EF:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_01F3
.L_01F5:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 373
je .L_01F9
.L_01FA:
cmp dword ptr [ebp-28], 374
jne .L_01F8
.L_01F9:
cmp dword ptr [ebp-20], 8
jl .L_01FC
push 0
push 0
push 274
call ERRREPORT
add esp, 12
jmp .L_01FB
.L_01FC:
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
.L_01FB:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_01F6
.L_01F8:
push 0
push 0
push 273
call ERRREPORT
add esp, 12
jmp .L_01F0
.L_01FD:
.L_01F6:
jmp .L_01F2
.L_01FE:
cmp dword ptr [ebp-20], 8
jl .L_0200
push 0
push 0
push 274
call ERRREPORT
add esp, 12
jmp .L_01FF
.L_0200:
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
.L_01FF:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_01F2
.L_0201:
jmp .L_01F0
jmp .L_01F2
.L_01F3:
mov edx, dword ptr [ebp-24]
add edx, 4294966961
cmp edx, 39
ja .L_0201
mov edx, dword ptr [ebp-24]
jmp dword ptr [.L_0202+edx*4-1340]
.L_0202:
.int .L_01F5
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_01FE
.int .L_01FE
.L_01F2:
.L_01F1:
jmp .L_01EF
.L_01F0:
.L_01D6:
cmp dword ptr [ebp-20], 0
jle .L_0204
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .L_0205
mov dword ptr [ebp-24], 24
jmp .L_021C
.L_0205:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-24], edx
.L_021C:
mov edx, dword ptr [ebp-24]
imul edx, 28
mov ebx, dword ptr [SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
jmp .L_0203
.L_0204:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .L_0207
mov dword ptr [ebp-24], 24
jmp .L_021D
.L_0207:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_021D:
cmp dword ptr [ebp-24], 23
jne .L_020A
mov ebx, dword ptr [ebp+24]
and ebx, 2
test ebx, ebx
jne .L_020C
push 0
push -1
push 71
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_020C:
.L_020B:
jmp .L_0209
.L_020A:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+4], 0
jg .L_020D
jl .L_0224
cmp dword ptr [ebx], 0
ja .L_020D
.L_0224:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .L_0211
.L_0212:
cmp dword ptr [ebp-28], 7
jne .L_0210
.L_0211:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .L_0214
push 0
push 0
push 28
call ERRREPORT
add esp, 12
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
.L_0214:
.L_0213:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 480
je .L_0215
mov dword ptr [ebp-32], 24
jmp .L_021E
.L_0215:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_021E:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_0210:
.L_020E:
.L_020D:
.L_0209:
.L_0203:
mov dword ptr [ebp-4], -1
.L_0164:
mov eax, dword ptr [ebp-4]
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
CSYMBOLTYPEFUNCPTR:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_00B3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
push -1
call CPROCCALLINGCONV
add esp, 8
mov dword ptr [ebp-12], eax
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-24], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push 0
call CPARAMETERS
add esp, 16
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call CBYREFATTRIBUTE
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_00B7
cmp dword ptr [ebp+8], 0
jne .L_00B9
push 0
push 0
push 17
call ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 0
jmp .L_00B8
.L_00B9:
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
push -1
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call CPROCRETTYPE
add esp, 24
.L_00B8:
jmp .L_00B6
.L_00B7:
cmp dword ptr [ebp+8], 0
je .L_00BB
push 0
push 0
push 68
call ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 8
jmp .L_00BA
.L_00BB:
mov dword ptr [ebp-8], 0
.L_00BA:
.L_00B6:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call SYMBADDPROCPTR
add esp, 24
mov dword ptr [ebp-4], eax
.L_00B4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HGETTOKENDESCRIPTION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00BC:
cmp dword ptr [ebp+8], 377
jne .L_00BF
.L_00C0:
push 0
push 7
push offset Lt_00C1
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00BE
.L_00BF:
cmp dword ptr [ebp+8], 465
jne .L_00C2
.L_00C3:
push 0
push 4
push offset Lt_00C4
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00BE
.L_00C2:
push 0
push 7
push offset Lt_00C6
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00C5:
.L_00BE:
.L_00BD:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
CMANGLEMODIFIER:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_012E:
mov dword ptr [ebp-4], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 386
jne .L_0131
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
jne .L_0133
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 5
push offset Lt_0137
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0136
.L_0138:
call FBIS64BIT
mov ebx, dword ptr [ENV+284]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_013A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 11
jne .L_013D
.L_013E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 8388608
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [ebp-4], -1
jmp .L_013B
.L_013D:
cmp dword ptr [ebp-20], 12
jne .L_013F
.L_0140:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 9437184
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .L_013B
.L_013F:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_0141:
.L_013B:
jmp .L_0139
.L_013A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 11
jne .L_0144
.L_0145:
jmp .L_0142
.L_0144:
cmp dword ptr [ebp-20], 12
jne .L_0146
.L_0147:
jmp .L_0142
.L_0146:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_0148:
.L_0142:
.L_0139:
jmp .L_0134
.L_0136:
push 5
push offset Lt_014A
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0149
.L_014B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_014E
.L_014F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 4194304
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_014C
.L_014E:
cmp dword ptr [ebp-20], 2
je .L_0151
.L_0152:
cmp dword ptr [ebp-20], 3
jne .L_0150
.L_0151:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 4194304
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
jmp .L_014C
.L_0150:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_0153:
.L_014C:
jmp .L_0134
.L_0149:
push 18
push offset Lt_0155
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0157
.L_0158:
push 20
push offset Lt_0156
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0154
.L_0157:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_015B
.L_015C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 19922944
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_0159
.L_015B:
cmp dword ptr [ebp-20], 20
jne .L_015D
.L_015E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 19922944
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, eax
call FBGETBACKENDVALISTTYPE
sal eax, 20
and eax, 15728640
or dword ptr [ebx+116], eax
jmp .L_0159
.L_015D:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_015F:
.L_0159:
jmp .L_0134
.L_0154:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0160
.L_0161:
push 0
push 0
push 304
call ERRREPORT
add esp, 12
jmp .L_0134
.L_0160:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_0162:
.L_0134:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_0132
.L_0133:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_0132:
.L_0131:
.L_0130:
.L_012F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_00C1:	.ascii	"typeof\0"
.balign 4
Lt_00C4:	.ascii	"len\0"
.balign 4
Lt_00C6:	.ascii	"sizeof\0"
.balign 4
Lt_00E4:	.ascii	"Ambigious \0"
.balign 4
Lt_00E5:	.ascii	"()\0"
.balign 4
Lt_00E8:	.ascii	", referring to \0"
.balign 4
Lt_00E9:	.ascii	", instead of \0"
.balign 4
Lt_0137:	.ascii	"long\0"
.balign 4
Lt_014A:	.ascii	"char\0"
.balign 4
Lt_0155:	.ascii	"__builtin_va_list\0"
.balign 4
Lt_0156:	.ascii	"__builtin_va_list[]\0"
