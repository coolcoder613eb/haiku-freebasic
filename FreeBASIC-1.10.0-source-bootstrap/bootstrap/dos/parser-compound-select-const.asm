	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERSELCONSTSTMTINIT
_PARSERSELCONSTSTMTINIT:
.L_0068:
mov dword ptr [_CTX], 0
.L_0069:
ret
.balign 16

.globl _PARSERSELCONSTSTMTEND
_PARSERSELCONSTSTMTEND:
.L_006A:
.L_006B:
ret
.balign 16

.globl _CSELCONSTSTMTBEGIN
_CSELCONSTSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_006C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
call _ASTSCOPEBEGIN
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_006F
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
.L_006F:
.L_006E:
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0071
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0071:
.L_0070:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0072
mov dword ptr [ebp-36], 24
jmp .L_008F
.L_0072:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.L_008F:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .L_0075
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 4
je .L_0079
.L_007A:
cmp dword ptr [ebp-40], 7
jne .L_0078
.L_0079:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 20
je .L_007C
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.L_007C:
.L_007B:
.L_0078:
.L_0076:
.L_0074:
cmp dword ptr [ebp-4], 0
jne .L_007E
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_007E:
.L_007D:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 9
je .L_0080
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_0081
mov dword ptr [ebp-40], 24
jmp .L_0090
.L_0081:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-40], ebx
.L_0090:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+256]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], eax
jg .L_0084
push 0
push 0
push dword ptr [ebp-4]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0083
.L_0084:
push 0
push 0
push dword ptr [ebp-4]
push 0
push 14
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
.L_0083:
.L_0080:
.L_007F:
cmp dword ptr [ebp-28], 4
je .L_0087
.L_0088:
cmp dword ptr [ebp-28], 7
jne .L_0086
.L_0087:
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0089
mov dword ptr [ebp-40], 24
jmp .L_0091
.L_0089:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0091:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
mov dword ptr [ebp-28], ebx
.L_0086:
.L_0085:
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
jne .L_008C
or dword ptr [ebp-24], 2
.L_008C:
.L_008B:
push dword ptr [ebp-24]
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2048
mov eax, dword ptr [ebp-24]
and eax, 2
je .L_008E
push -1
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTADDUNSCOPED
add esp, 4
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .L_008D
.L_008E:
push 0
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTNEWLINK
add esp, 12
push eax
call _ASTADD
add esp, 4
.L_008D:
push 0
push dword ptr [ebp-16]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push 0
push 270
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+12], -1
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [_CTX]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-28]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+36], 0
mov dword ptr [ebx+40], 0
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+48], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+56], eax
.L_006D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELCONSTSTMTNEXT
_CSELCONSTSTMTNEXT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.L_00A0:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_00A3
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
.L_00A3:
.L_00A2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jle .L_00A5
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
.L_00A5:
.L_00A4:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 268
jne .L_00A7
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+28], eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
call _ASTSCOPEBEGIN
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], -1
jmp .L_00A1
.L_00A7:
.L_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
.L_00A8:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _CEXPRESSION
push eax
call _CCONSTINTEXPRRANGED
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
mov eax, dword ptr [_CTX]
cmp dword ptr [ebp-4], eax
jne .L_00AC
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
add edx, 4294959104
adc eax, 4294967295
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+36], edx
mov dword ptr [ebx+40], eax
.L_00AC:
.L_00AB:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+36]
mov eax, dword ptr [edx+40]
sub dword ptr [ebp-16], ebx
sbb dword ptr [ebp-12], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 284
jne .L_00AE
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _CEXPRESSION
push eax
call _CCONSTINTEXPRRANGED
add esp, 8
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov edx, dword ptr [eax+40]
sub dword ptr [ebp-24], ebx
sbb dword ptr [ebp-20], edx
mov edx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-20], ebx
ja .L_00B0
jb .L_00BE
cmp dword ptr [ebp-24], edx
jae .L_00B0
.L_00BE:
push 0
push 0
push 323
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], edx
.L_00B0:
.L_00AF:
jmp .L_00AD
.L_00AE:
mov edx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], edx
mov dword ptr [ebp-20], ebx
.L_00AD:
mov ebx, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
sub ebx, dword ptr [ebp-16]
sbb edx, dword ptr [ebp-12]
add ebx, 1
adc edx, 0
mov eax, dword ptr [_CTX]
neg eax
add eax, 8192
mov esi, eax
mov ecx, esi
sar ecx, 31
cmp edx, ecx
jb .L_00B2
ja .L_00BF
cmp ebx, esi
jbe .L_00B2
.L_00BF:
push 0
push 0
push 69
call _ERRREPORT
add esp, 12
jmp .L_00AA
.L_00B2:
.L_00B1:
cmp dword ptr [ebp-12], 0
mov esi, -1
ja .L_00C0
jb .L_00C1
cmp dword ptr [ebp-16], 16384
jae .L_00C0
.L_00C1:
xor esi, esi
.L_00C0:
cmp dword ptr [ebp-20], 0
mov ecx, -1
ja .L_00C2
jb .L_00C3
cmp dword ptr [ebp-24], 16384
jae .L_00C2
.L_00C3:
xor ecx, ecx
.L_00C2:
or esi, ecx
je .L_00B4
push 0
push 0
push 69
call _ERRREPORT
add esp, 12
jmp .L_00AA
.L_00B4:
.L_00B3:
.L_00B5:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call _HSELCONSTADDCASE
add esp, 16
test eax, eax
jne .L_00B9
cmp dword ptr [_CTX], 8192
jl .L_00BB
push 0
push 0
push 287
call _ERRREPORT
add esp, 12
jmp .L_00BA
.L_00BB:
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
.L_00BA:
jmp .L_00B6
.L_00B9:
.L_00B8:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-12], eax
jne .L_00BD
cmp dword ptr [ebp-16], ecx
jne .L_00BD
.L_00C4:
jmp .L_00B6
.L_00BD:
.L_00BC:
add dword ptr [ebp-16], 1
adc dword ptr [ebp-12], 0
.L_00B7:
jmp .L_00B5
.L_00B6:
.L_00AA:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_00A8
.L_00A9:
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
call _ASTSCOPEBEGIN
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+20]
.L_00A1:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELCONSTSTMTEND
_CSELCONSTSTMTEND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00C5:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_00C8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
.L_00C8:
.L_00C7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_00CA
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
.L_00CA:
.L_00C9:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp dword ptr [_CTX], ebx
jle .L_00CC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
sal eax, 3
mov ebx, offset _CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [_CTX]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_00CE
.L_00D1:
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ecx, offset _CTX
add ecx, eax
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
sub dword ptr [ecx+4], ebx
sbb dword ptr [ecx+8], eax
mov ebx, dword ptr [ebp-24]
sal ebx, 3
mov eax, offset _CTX
add eax, ebx
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
jb .L_00D3
ja .L_00D8
cmp dword ptr [eax+4], ecx
jbe .L_00D3
.L_00D8:
mov ecx, dword ptr [ebp-24]
sal ecx, 3
mov ebx, offset _CTX
add ebx, ecx
mov eax, dword ptr [ebx+4]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], ecx
.L_00D3:
.L_00D2:
.L_00CF:
inc dword ptr [ebp-24]
.L_00CE:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_00D1
.L_00D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-16]
add dword ptr [eax+36], ebx
adc dword ptr [eax+40], ecx
.L_00CC:
.L_00CB:
cmp dword ptr [ebp-8], 0
jb .L_00D5
ja .L_00D9
cmp dword ptr [ebp-12], 8192
jb .L_00D5
.L_00D9:
push 0
push 0
push 287
call _ERRREPORT
add esp, 12
.L_00D5:
.L_00D4:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [_CTX]
sub ecx, dword ptr [ebx+24]
push ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+24]
sal ebx, 2
mov ecx, offset _CTX
add ecx, ebx
lea ebx, [ecx+65540]
push ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
sal ecx, 3
mov ebx, offset _CTX
add ebx, ecx
lea ecx, [ebx+4]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call _ASTBUILDJMPTB
add esp, 36
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [_CTX], ecx
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+48]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00D7
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTSCOPEEND
add esp, 4
.L_00D7:
.L_00D6:
push dword ptr [ebp+8]
call _CCOMPSTMTPOP
add esp, 4
.L_00C6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__parserzcompoundzselectzconst:
.L_0002:
.L_0003:
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
_HSELCONSTADDCASE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0092:
cmp dword ptr [_CTX], 8192
jl .L_0095
mov dword ptr [ebp-4], 0
jmp .L_0093
.L_0095:
.L_0094:
mov eax, dword ptr [_CTX]
sub eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
.L_0096:
mov eax, dword ptr [ebp-8]
sub eax, dword ptr [ebp-12]
cmp eax, 1
jle .L_0097
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-12]
mov ebx, eax
shr ebx, 1
mov eax, ebx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp+8]
sal eax, 3
mov ebx, offset _CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ebp-20], ecx
ja .L_0099
jb .L_00DA
cmp dword ptr [ebp-24], eax
jae .L_0099
.L_00DA:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .L_0098
.L_0099:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-20], eax
jb .L_009A
ja .L_00DB
cmp dword ptr [ebp-24], ecx
jbe .L_009A
.L_00DB:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ecx
jmp .L_0098
.L_009A:
mov dword ptr [ebp-4], 0
jmp .L_0093
.L_0098:
jmp .L_0096
.L_0097:
mov ecx, dword ptr [_CTX]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
inc ecx
mov dword ptr [ebp-20], ecx
jmp .L_009C
.L_009F:
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov eax, offset _CTX
add eax, ecx
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov ebx, offset _CTX
add ebx, ecx
mov esi, dword ptr [eax-4]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], esi
mov dword ptr [ebx+8], ecx
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ecx, offset _CTX
add ecx, esi
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ebx, offset _CTX
add ebx, esi
mov esi, dword ptr [ecx+65536]
mov dword ptr [ebx+65540], esi
.L_009D:
dec dword ptr [ebp-16]
.L_009C:
mov esi, dword ptr [ebp-20]
cmp dword ptr [ebp-16], esi
jge .L_009F
.L_009E:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp+8]
sal esi, 3
mov ebx, offset _CTX
add ebx, esi
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
mov dword ptr [ebx+4], ecx
mov dword ptr [ebx+8], esi
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
sal ecx, 2
mov esi, offset _CTX
add esi, ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+65540], ecx
inc dword ptr [_CTX]
mov dword ptr [ebp-4], -1
.L_0093:
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
.balign 4
	.lcomm	_CTX,98308

.section .ctors
.int _fb_ctor__parserzcompoundzselectzconst
