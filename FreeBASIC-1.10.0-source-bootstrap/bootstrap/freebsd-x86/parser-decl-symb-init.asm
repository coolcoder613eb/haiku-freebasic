	.intel_syntax noprefix

.section .text
.balign 16

.globl CINITIALIZER
CINITIALIZER:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00FB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00FE
push 0
push -1
push 75
call ERRREPORT
add esp, 12
jmp .L_00FC
.L_00FE:
.L_00FD:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 1
jne .L_0100
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_00FF
.L_0100:
mov dword ptr [ebp-8], 0
.L_00FF:
mov ebx, dword ptr [TOP_CTX]
mov dword ptr [ebp-16], ebx
lea ebx, [ebp-48]
mov dword ptr [TOP_CTX], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-36], -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
lea ebx, [ebp-48]
push ebx
call HUPDATECONTEXTDTYPE
add esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+52]
push dword ptr [ebx+48]
push dword ptr [ebp-8]
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-32], eax
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call TYPEHASCTOR
add esp, 8
test eax, eax
je .L_0102
or dword ptr [ebp-28], 2
.L_0102:
.L_0101:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [eax]
cmp ecx, 12
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0104
push 0
lea ecx, [ebp-48]
push ecx
call HARRAYINIT
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0103
.L_0104:
mov eax, dword ptr [ebp-44]
and eax, 511
cmp eax, 20
jne .L_0106
lea eax, [ebp-48]
push eax
call HUDTINIT
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0105
.L_0106:
push 0
lea eax, [ebp-48]
push eax
call HELMINIT
add esp, 8
mov dword ptr [ebp-12], eax
.L_0105:
.L_0103:
mov eax, dword ptr [ebp-16]
mov dword ptr [TOP_CTX], eax
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-32]
call ASTTYPEINIEND
add esp, 8
cmp dword ptr [ebp-12], 0
je .L_0107
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-52], eax
jmp .L_0109
.L_0107:
mov dword ptr [ebp-52], 0
.L_0109:
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
.L_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__parserzdeclzsymbzinit:
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
HUPDATECONTEXTDTYPE:
push ebp
mov ebp, esp
push ebx
.L_0066:
cmp dword ptr [ebp+12], -2147483648
jne .L_0069
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ecx+8], ebx
jmp .L_0068
.L_0069:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+8], ebx
.L_0068:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOASSIGN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_006A:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTCHECKASSIGNTOTYPE
add esp, 16
test eax, eax
jne .L_006D
push 0
push 128
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_006F
cmp dword ptr [ebp+16], 0
je .L_0071
jmp .L_006B
.L_0071:
.L_0070:
push 0
push -1
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp+12], eax
.L_006F:
.L_006E:
jmp .L_006C
.L_006D:
mov dword ptr [ebp-12], -1
.L_006C:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIADDASSIGN
add esp, 24
mov dword ptr [ebp-4], -1
.L_006B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HELMINIT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0072:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [PARSER+160]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+32]
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [PARSER+156], eax
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0075
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-8], eax
.L_0075:
.L_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+160], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [PARSER+156], ebx
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HARRAYINIT:
push ebp
mov ebp, esp
sub esp, 36
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 123
jne .L_0079
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+12]
mov dword ptr [ebp-20], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+60]
cmp dword ptr [eax+12], ebx
jl .L_007B
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+60], 0
jle .L_007C
mov dword ptr [ebp-24], 67
jmp .L_0111
.L_007C:
mov dword ptr [ebp-24], 63
.L_0111:
push dword ptr [ebp-24]
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 125
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
jmp .L_0077
.L_007B:
.L_007A:
jmp .L_0078
.L_0079:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+60]
dec ebx
cmp dword ptr [eax+12], ebx
jge .L_007F
push 0
push 0
push 64
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+12]
mov dword ptr [ebp-20], -1
.L_007F:
.L_007E:
.L_0078:
cmp dword ptr [ebp-20], 0
je .L_0081
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call ASTTYPEINISCOPEBEGIN
add esp, 12
.L_0081:
.L_0080:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
jl .L_0083
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
sal ecx, 4
mov ebx, dword ptr [eax+64]
add ebx, ecx
cmp dword ptr [ebx+12], 2147483648
jne .L_0085
cmp dword ptr [ebx+8], 0
jne .L_0085
.L_0112:
mov dword ptr [ebp-16], 4294967295
mov dword ptr [ebp-12], 4294967295
jmp .L_0084
.L_0085:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
sal eax, 4
mov ebx, dword ptr [ecx+64]
add ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
sal esi, 4
mov eax, dword ptr [ecx+64]
add eax, esi
mov ecx, dword ptr [ebx+8]
mov esi, dword ptr [ebx+12]
sub ecx, dword ptr [eax]
sbb esi, dword ptr [eax+4]
add ecx, 1
adc esi, 0
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], esi
.L_0084:
jmp .L_0082
.L_0083:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.L_0082:
mov dword ptr [ebp-8], 0
.L_0086:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov esi, dword ptr [eax+60]
dec esi
cmp dword ptr [ecx+12], esi
jge .L_008A
push 0
push dword ptr [ebp+8]
call HARRAYINIT
add esp, 8
test eax, eax
jne .L_008C
jmp .L_0077
.L_008C:
.L_008B:
jmp .L_0089
.L_008A:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 511
cmp esi, 20
jne .L_008E
cmp dword ptr [ebp-20], 0
je .L_0090
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+20]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
and dword ptr [eax+20], -5
push dword ptr [ebp+8]
call HUDTINIT
add esp, 4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-24]
mov dword ptr [eax+20], esi
cmp dword ptr [ebp-28], 0
jne .L_0092
jmp .L_0077
.L_0092:
.L_0091:
jmp .L_008F
.L_0090:
push dword ptr [ebp+8]
call HUDTINIT
add esp, 4
test eax, eax
jne .L_0094
jmp .L_0077
.L_0094:
.L_0093:
.L_008F:
jmp .L_008D
.L_008E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HELMINIT
add esp, 8
test eax, eax
jne .L_0096
jmp .L_0077
.L_0096:
.L_0095:
.L_008D:
.L_0089:
inc dword ptr [ebp-8]
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
cmp eax, dword ptr [ebp-12]
mov ecx, -1
jg .L_0113
jl .L_0114
cmp esi, dword ptr [ebp-16]
jae .L_0113
.L_0114:
xor ecx, ecx
.L_0113:
cmp dword ptr [ebp-12], 4294967295
mov esi, -1
jne .L_0115
cmp dword ptr [ebp-16], 4294967295
jne .L_0115
.L_0116:
xor esi, esi
.L_0115:
and ecx, esi
je .L_0098
jmp .L_0087
.L_0098:
.L_0097:
.L_0088:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .L_0086
.L_0087:
cmp dword ptr [ebp-12], 4294967295
jne .L_009A
cmp dword ptr [ebp-16], 4294967295
jne .L_009A
.L_0117:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+12]
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
add esp, 16
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call SYMBMAYBEADDARRAYDESC
add esp, 4
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov esi, dword ptr [eax+4]
and esi, 3
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
push esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax]
push dword ptr [esi+64]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
push dword ptr [eax+60]
call SYMBCHECKARRAYSIZE
add esp, 20
test eax, eax
jne .L_009C
push 0
push 0
push 50
call ERRREPORT
add esp, 12
push 0
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
add esp, 16
.L_009C:
.L_009B:
.L_009A:
.L_0099:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
sub dword ptr [ebp-16], esi
sbb dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jl .L_009E
jg .L_0119
cmp dword ptr [ebp-16], 0
jbe .L_009E
.L_0119:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+12]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBCALCARRAYELEMENTS
add esp, 8
push edx
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
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
pop dword ptr [ebp-16]
pop dword ptr [ebp-12]
add esp, 8
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+20]
and edx, 2
test edx, edx
je .L_00A0
mov edx, dword ptr [ebp+8]
push dword ptr [edx+8]
call SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_00A2
push 0
push 0
push 183
call ERRREPORT
add esp, 12
jmp .L_00A1
.L_00A2:
push dword ptr [ebp-24]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00A4
push 0
push 0
push 204
call ERRREPORT
add esp, 12
.L_00A4:
.L_00A3:
.L_00A1:
.L_00A0:
.L_009F:
cmp dword ptr [ebp-24], 0
je .L_00A6
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIADDCTORLIST
add esp, 24
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
mov eax, dword ptr [edx+4]
and eax, 262144
test eax, eax
je .L_00A8
mov edx, dword ptr [ENV+296]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-32], edx
mov dword ptr [ebp-28], eax
jmp .L_00A7
.L_00A8:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+4]
and eax, 511
mov edx, eax
mov dword ptr [ebp-36], edx
jmp .L_00AA
.L_00AC:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
mov esi, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], edx
jmp .L_00A9
.L_00AD:
mov esi, dword ptr [ebp+8]
push dword ptr [esi+8]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
jmp .L_00A9
.L_00AA:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 14
ja .L_00AD
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_00AE+eax*4-16]
.L_00AE:
.int .L_00AC
.int .L_00AD
.int .L_00AD
.int .L_00AC
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AC
.L_00A9:
.L_00A7:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push eax
push edx
push dword ptr [ebp-28]
push dword ptr [ebp-32]
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
pop dword ptr [ebp-32]
pop dword ptr [ebp-28]
add esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov edx, dword ptr [ebp+8]
push dword ptr [edx+16]
call ASTTYPEINIADDPAD
add esp, 12
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+16]
mov esi, dword ptr [ebp-32]
mov edx, dword ptr [ebp-28]
add dword ptr [eax+20], esi
adc dword ptr [eax+24], edx
.L_00A5:
.L_009E:
.L_009D:
cmp dword ptr [ebp-20], 0
je .L_00B0
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+16]
call ASTTYPEINISCOPEEND
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 125
je .L_00B2
push 0
push 0
push 65
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 125
call HSKIPUNTIL
add esp, 16
jmp .L_00B1
.L_00B2:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00B1:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
.L_00B0:
.L_00AF:
mov dword ptr [ebp-4], -1
.L_0077:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUDTINIT:
push ebp
mov ebp, esp
sub esp, 112
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00B3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 2
test ebx, ebx
je .L_00B6
mov ebx, dword ptr [PARSER+160]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [PARSER+156]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [PARSER+160], ebx
call CEXPRESSION
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp-48]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [PARSER+160], eax
cmp dword ptr [ebp-104], 0
jne .L_00B8
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
mov dword ptr [ebp-104], eax
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 4
jne .L_00BA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+56], 2
jne .L_00BC
mov eax, dword ptr [ebp-104]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-104]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ecx+8]
cmp esi, dword ptr [eax+8]
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00BE
push 0
push dword ptr [ebp-104]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00B4
.L_00BE:
.L_00BD:
.L_00BC:
.L_00BB:
.L_00BA:
.L_00B9:
lea eax, [ebp-108]
push eax
push dword ptr [ebp-104]
call CBYDESCARRAYARGPARENS
add esp, 4
push eax
push dword ptr [ebp-104]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-104], eax
cmp dword ptr [ebp-104], 0
jne .L_00C0
jmp .L_00B4
.L_00C0:
.L_00BF:
cmp dword ptr [ebp-108], 0
je .L_00C2
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-104]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIADDCTORCALL
add esp, 20
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .L_00B4
.L_00C2:
.L_00C1:
push 0
push dword ptr [ebp-104]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00B4
.L_00B6:
.L_00B5:
mov dword ptr [ebp-88], -1
mov dword ptr [ebp-92], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_00C4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .L_00C6
push 0
push dword ptr [ebp+8]
call HELMINIT
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_00B4
.L_00C6:
.L_00C5:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-92], eax
mov dword ptr [ebp-88], 0
jmp .L_00C3
.L_00C4:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINISCOPEBEGIN
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00C3:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov ebx, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], eax
lea ebx, [ebp-84]
push edi
mov edi, ebx
mov esi, dword ptr [ebp+8]
mov ecx, 9
rep movsd
pop edi
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], -1
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+28]
.L_00C7:
cmp dword ptr [ebp-36], 0
jne .L_00CB
push 0
push 0
push 67
call ERRREPORT
add esp, 12
jmp .L_00C8
.L_00CB:
.L_00CA:
cmp dword ptr [ebp-12], 0
jl .L_00CD
jg .L_011E
cmp dword ptr [ebp-16], 0
jbe .L_00CD
.L_011E:
mov ebx, dword ptr [ebp-36]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
sub ecx, dword ptr [ebp-16]
sbb eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jl .L_00CF
jg .L_011F
cmp dword ptr [ebp-32], 0
jbe .L_00CF
.L_011F:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call ASTTYPEINIADDPAD
add esp, 12
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [ebp-28]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+48]
mov ecx, dword ptr [eax+52]
add ebx, dword ptr [ebp-24]
adc ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+16]
mov dword ptr [esi+20], ebx
mov dword ptr [esi+24], ecx
push dword ptr [ebp-36]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00D1
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.L_00D1:
.L_00D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
mov dword ptr [eax], ebx
push 0
push -2147483648
push dword ptr [ebp+8]
call HUPDATECONTEXTDTYPE
add esp, 12
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx+20], -3
push dword ptr [ebp-36]
call SYMBHASCTOR
add esp, 4
test eax, eax
je .L_00D3
mov eax, dword ptr [ebp+8]
or dword ptr [eax+20], 2
.L_00D3:
.L_00D2:
mov dword ptr [ebp-104], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 4
test ebx, ebx
jne .L_00D5
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+20], 4
push -1
push dword ptr [ebp+8]
call HARRAYINIT
add esp, 8
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp+8]
and dword ptr [eax+20], -5
jmp .L_00D4
.L_00D5:
push -1
push dword ptr [ebp+8]
call HARRAYINIT
add esp, 8
mov dword ptr [ebp-104], eax
.L_00D4:
cmp dword ptr [ebp-104], 0
jne .L_00D7
mov eax, dword ptr [ebp-36]
cmp eax, dword ptr [ebp-40]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00D9
push 0
push -1
push 24
call ERRREPORT
add esp, 12
jmp .L_00B4
.L_00D9:
.L_00D8:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+24]
mov dword ptr [ebp-112], ebx
lea ebx, [ebp-84]
push edi
mov edi, dword ptr [ebp+8]
mov esi, ebx
mov ecx, 9
rep movsd
pop edi
lea ebx, [ebp-108]
push ebx
push -1
push dword ptr [ebp-112]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-112], eax
cmp dword ptr [ebp-112], 0
jne .L_00DB
jmp .L_00B4
.L_00DB:
.L_00DA:
cmp dword ptr [ebp-88], 0
je .L_00DD
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00DF
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
jmp .L_00DE
.L_00DF:
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIREMOVELASTNODE
add esp, 4
.L_00DE:
.L_00DD:
.L_00DC:
cmp dword ptr [ebp-108], 0
je .L_00E1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-112]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIADDCTORCALL
add esp, 20
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_00B4
.L_00E1:
.L_00E0:
push -1
push dword ptr [ebp-112]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00B4
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+112], 0
jle .L_00E3
push dword ptr [ebp-36]
call SYMBGETREALSIZE
add esp, 4
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
push dword ptr [ebp-36]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-36], eax
jmp .L_00E2
.L_00E3:
.L_00E4:
push dword ptr [ebp-36]
call SYMBGETREALSIZE
add esp, 4
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
push dword ptr [ebp-36]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_00E8
jmp .L_00E5
.L_00E8:
.L_00E7:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+48]
mov edx, dword ptr [eax+52]
add ebx, dword ptr [ebp-24]
adc edx, dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov esi, dword ptr [ecx+28]
mov eax, dword ptr [ecx+32]
cmp edx, eax
jl .L_00EA
jg .L_0123
cmp ebx, esi
jb .L_00EA
.L_0123:
jmp .L_00E5
.L_00EA:
.L_00E9:
.L_00E6:
jmp .L_00E4
.L_00E5:
.L_00E2:
mov esi, dword ptr [ebp+8]
cmp dword ptr [esi+28], 1
jle .L_00EC
cmp dword ptr [ebp-36], 0
jne .L_00EE
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_00F0
jmp .L_00C8
.L_00F0:
.L_00EF:
cmp dword ptr [ebp-92], 0
je .L_00F2
jmp .L_00C8
.L_00F2:
.L_00F1:
.L_00EE:
.L_00ED:
.L_00EC:
.L_00EB:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .L_00F4
jmp .L_00C8
.L_00F4:
.L_00F3:
.L_00C9:
jmp .L_00C7
.L_00C8:
cmp dword ptr [ebp-88], 0
je .L_00F6
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00F8
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
jmp .L_00F7
.L_00F8:
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINISCOPEEND
add esp, 8
.L_00F7:
.L_00F6:
.L_00F5:
lea eax, [ebp-84]
push edi
mov edi, dword ptr [ebp+8]
mov esi, eax
mov ecx, 9
rep movsd
pop edi
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-100], eax
mov dword ptr [ebp-96], edx
mov edx, dword ptr [ebp-100]
mov eax, dword ptr [ebp-96]
sub edx, dword ptr [ebp-16]
sbb eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], edx
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jl .L_00FA
jg .L_0124
cmp dword ptr [ebp-32], 0
jbe .L_00FA
.L_0124:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov edx, dword ptr [ebp+8]
push dword ptr [edx+16]
call ASTTYPEINIADDPAD
add esp, 12
.L_00FA:
.L_00F9:
mov eax, dword ptr [ebp-100]
mov edx, dword ptr [ebp-96]
add eax, dword ptr [ebp-24]
adc edx, dword ptr [ebp-20]
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+16]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], edx
mov dword ptr [ebp-4], -1
.L_00B4:
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
TOP_CTX:
.long 0

.section .ctors
.int fb_ctor__parserzdeclzsymbzinit
