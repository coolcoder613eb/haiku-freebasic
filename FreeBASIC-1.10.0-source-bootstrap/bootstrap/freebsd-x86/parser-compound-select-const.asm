	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERSELCONSTSTMTINIT
PARSERSELCONSTSTMTINIT:
.L_0067:
mov dword ptr [CTX], 0
.L_0068:
ret
.balign 16

.globl PARSERSELCONSTSTMTEND
PARSERSELCONSTSTMTEND:
.L_0069:
.L_006A:
ret
.balign 16

.globl CSELCONSTSTMTBEGIN
CSELCONSTSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_006B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
call ASTSCOPEBEGIN
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_006E
push 0
push 0
push 27
call ERRREPORT
add esp, 12
.L_006E:
.L_006D:
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0070
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
mov dword ptr [ebp-4], eax
.L_0070:
.L_006F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0071
mov dword ptr [ebp-36], 24
jmp .L_008E
.L_0071:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.L_008E:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .L_0074
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_0073
.L_0074:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 4
je .L_0078
.L_0079:
cmp dword ptr [ebp-40], 7
jne .L_0077
.L_0078:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 20
je .L_007B
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.L_007B:
.L_007A:
.L_0077:
.L_0075:
.L_0073:
cmp dword ptr [ebp-4], 0
jne .L_007D
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_007D:
.L_007C:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 9
je .L_007F
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_0080
mov dword ptr [ebp-40], 24
jmp .L_008F
.L_0080:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-40], ebx
.L_008F:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+256]
cmp dword ptr [SYMB_DTYPETB+ebx+4], eax
jg .L_0083
push 0
push 0
push dword ptr [ebp-4]
push 0
push 9
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
push 0
push 0
push dword ptr [ebp-4]
push 0
push 14
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
.L_0082:
.L_007F:
.L_007E:
cmp dword ptr [ebp-28], 4
je .L_0086
.L_0087:
cmp dword ptr [ebp-28], 7
jne .L_0085
.L_0086:
mov eax, dword ptr [ebp-28]
and eax, 480
je .L_0088
mov dword ptr [ebp-40], 24
jmp .L_0090
.L_0088:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0090:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
mov dword ptr [ebp-28], ebx
.L_0085:
.L_0084:
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_008B
or dword ptr [ebp-24], 2
.L_008B:
.L_008A:
push dword ptr [ebp-24]
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2048
mov eax, dword ptr [ebp-24]
and eax, 2
je .L_008D
push -1
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 8
push eax
call ASTADDUNSCOPED
add esp, 4
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .L_008C
.L_008D:
push 0
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
push 0
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 8
push eax
call ASTNEWLINK
add esp, 12
push eax
call ASTADD
add esp, 4
.L_008C:
push 0
push dword ptr [ebp-16]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
push 0
push 270
call CCOMPSTMTPUSH
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
mov eax, dword ptr [CTX]
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
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSELCONSTSTMTNEXT
CSELCONSTSTMTNEXT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.L_009F:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_00A2
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jle .L_00A4
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
.L_00A4:
.L_00A3:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 268
jne .L_00A6
push 2048
call LEXSKIPTOKEN
add esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+28], eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], -1
jmp .L_00A0
.L_00A6:
.L_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
.L_00A7:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call CEXPRESSION
push eax
call CCONSTINTEXPRRANGED
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
mov eax, dword ptr [CTX]
cmp dword ptr [ebp-4], eax
jne .L_00AB
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
add edx, 4294959104
adc eax, 4294967295
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+36], edx
mov dword ptr [ebx+40], eax
.L_00AB:
.L_00AA:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+36]
mov eax, dword ptr [edx+40]
sub dword ptr [ebp-16], ebx
sbb dword ptr [ebp-12], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 284
jne .L_00AD
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call CEXPRESSION
push eax
call CCONSTINTEXPRRANGED
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
ja .L_00AF
jb .L_00BD
cmp dword ptr [ebp-24], edx
jae .L_00AF
.L_00BD:
push 0
push 0
push 323
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], edx
.L_00AF:
.L_00AE:
jmp .L_00AC
.L_00AD:
mov edx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], edx
mov dword ptr [ebp-20], ebx
.L_00AC:
mov ebx, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
sub ebx, dword ptr [ebp-16]
sbb edx, dword ptr [ebp-12]
add ebx, 1
adc edx, 0
mov eax, dword ptr [CTX]
neg eax
add eax, 8192
mov esi, eax
mov ecx, esi
sar ecx, 31
cmp edx, ecx
jb .L_00B1
ja .L_00BE
cmp ebx, esi
jbe .L_00B1
.L_00BE:
push 0
push 0
push 69
call ERRREPORT
add esp, 12
jmp .L_00A9
.L_00B1:
.L_00B0:
cmp dword ptr [ebp-12], 0
mov esi, -1
ja .L_00BF
jb .L_00C0
cmp dword ptr [ebp-16], 16384
jae .L_00BF
.L_00C0:
xor esi, esi
.L_00BF:
cmp dword ptr [ebp-20], 0
mov ecx, -1
ja .L_00C1
jb .L_00C2
cmp dword ptr [ebp-24], 16384
jae .L_00C1
.L_00C2:
xor ecx, ecx
.L_00C1:
or esi, ecx
je .L_00B3
push 0
push 0
push 69
call ERRREPORT
add esp, 12
jmp .L_00A9
.L_00B3:
.L_00B2:
.L_00B4:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call HSELCONSTADDCASE
add esp, 16
test eax, eax
jne .L_00B8
cmp dword ptr [CTX], 8192
jl .L_00BA
push 0
push 0
push 287
call ERRREPORT
add esp, 12
jmp .L_00B9
.L_00BA:
push 0
push 0
push 4
call ERRREPORT
add esp, 12
.L_00B9:
jmp .L_00B5
.L_00B8:
.L_00B7:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-12], eax
jne .L_00BC
cmp dword ptr [ebp-16], ecx
jne .L_00BC
.L_00C3:
jmp .L_00B5
.L_00BC:
.L_00BB:
add dword ptr [ebp-16], 1
adc dword ptr [ebp-12], 0
.L_00B6:
jmp .L_00B4
.L_00B5:
.L_00A9:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .L_00A7
.L_00A8:
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
call ASTSCOPEBEGIN
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+20]
.L_00A0:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSELCONSTSTMTEND
CSELCONSTSTMTEND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00C4:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_00C7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
.L_00C7:
.L_00C6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_00C9
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.L_00C9:
.L_00C8:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp dword ptr [CTX], ebx
jle .L_00CB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
sal eax, 3
mov ebx, offset CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [CTX]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_00CD
.L_00D0:
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ecx, offset CTX
add ecx, eax
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
sub dword ptr [ecx+4], ebx
sbb dword ptr [ecx+8], eax
mov ebx, dword ptr [ebp-24]
sal ebx, 3
mov eax, offset CTX
add eax, ebx
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
jb .L_00D2
ja .L_00D7
cmp dword ptr [eax+4], ecx
jbe .L_00D2
.L_00D7:
mov ecx, dword ptr [ebp-24]
sal ecx, 3
mov ebx, offset CTX
add ebx, ecx
mov eax, dword ptr [ebx+4]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], ecx
.L_00D2:
.L_00D1:
.L_00CE:
inc dword ptr [ebp-24]
.L_00CD:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_00D0
.L_00CF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-16]
add dword ptr [eax+36], ebx
adc dword ptr [eax+40], ecx
.L_00CB:
.L_00CA:
cmp dword ptr [ebp-8], 0
jb .L_00D4
ja .L_00D8
cmp dword ptr [ebp-12], 8192
jb .L_00D4
.L_00D8:
push 0
push 0
push 287
call ERRREPORT
add esp, 12
.L_00D4:
.L_00D3:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [CTX]
sub ecx, dword ptr [ebx+24]
push ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+24]
sal ebx, 2
mov ecx, offset CTX
add ecx, ebx
lea ebx, [ecx+65540]
push ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
sal ecx, 3
mov ebx, offset CTX
add ebx, ecx
lea ecx, [ebx+4]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call ASTBUILDJMPTB
add esp, 36
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [CTX], ecx
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+48]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00D6
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSCOPEEND
add esp, 4
.L_00D6:
.L_00D5:
push dword ptr [ebp+8]
call CCOMPSTMTPOP
add esp, 4
.L_00C5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__parserzcompoundzselectzconst:
.L_0002:
.L_0003:
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
HSELCONSTADDCASE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0091:
cmp dword ptr [CTX], 8192
jl .L_0094
mov dword ptr [ebp-4], 0
jmp .L_0092
.L_0094:
.L_0093:
mov eax, dword ptr [CTX]
sub eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
.L_0095:
mov eax, dword ptr [ebp-8]
sub eax, dword ptr [ebp-12]
cmp eax, 1
jle .L_0096
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-12]
mov ebx, eax
shr ebx, 1
mov eax, ebx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp+8]
sal eax, 3
mov ebx, offset CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ebp-20], ecx
ja .L_0098
jb .L_00D9
cmp dword ptr [ebp-24], eax
jae .L_0098
.L_00D9:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .L_0097
.L_0098:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-20], eax
jb .L_0099
ja .L_00DA
cmp dword ptr [ebp-24], ecx
jbe .L_0099
.L_00DA:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ecx
jmp .L_0097
.L_0099:
mov dword ptr [ebp-4], 0
jmp .L_0092
.L_0097:
jmp .L_0095
.L_0096:
mov ecx, dword ptr [CTX]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
inc ecx
mov dword ptr [ebp-20], ecx
jmp .L_009B
.L_009E:
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov eax, offset CTX
add eax, ecx
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov ebx, offset CTX
add ebx, ecx
mov esi, dword ptr [eax-4]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], esi
mov dword ptr [ebx+8], ecx
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ecx, offset CTX
add ecx, esi
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ebx, offset CTX
add ebx, esi
mov esi, dword ptr [ecx+65536]
mov dword ptr [ebx+65540], esi
.L_009C:
dec dword ptr [ebp-16]
.L_009B:
mov esi, dword ptr [ebp-20]
cmp dword ptr [ebp-16], esi
jge .L_009E
.L_009D:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp+8]
sal esi, 3
mov ebx, offset CTX
add ebx, esi
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
mov dword ptr [ebx+4], ecx
mov dword ptr [ebx+8], esi
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
sal ecx, 2
mov esi, offset CTX
add esi, ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+65540], ecx
inc dword ptr [CTX]
mov dword ptr [ebp-4], -1
.L_0092:
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
.balign 4
	.lcomm	CTX,98308

.section .ctors
.int fb_ctor__parserzcompoundzselectzconst
