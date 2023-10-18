	.intel_syntax noprefix

.section .text
.balign 16

.globl _CINITIALIZER@16
_CINITIALIZER@16:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00FC:
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
je .L_00FF
push 0
push -1
push 75
call _ERRREPORT@12
jmp .L_00FD
.L_00FF:
.L_00FE:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 1
jne .L_0101
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0100
.L_0101:
mov dword ptr [ebp-8], 0
.L_0100:
mov ebx, dword ptr [_TOP_CTX]
mov dword ptr [ebp-16], ebx
lea ebx, [ebp-48]
mov dword ptr [_TOP_CTX], ebx
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
call _HUPDATECONTEXTDTYPE@12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+52]
push dword ptr [ebx+48]
push dword ptr [ebp-8]
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _ASTTYPEINIBEGIN@20
mov dword ptr [ebp-32], eax
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _TYPEHASCTOR@8
test eax, eax
je .L_0103
or dword ptr [ebp-28], 2
.L_0103:
.L_0102:
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
je .L_0105
push 0
lea ecx, [ebp-48]
push ecx
call _HARRAYINIT@8
mov dword ptr [ebp-12], eax
jmp .L_0104
.L_0105:
mov eax, dword ptr [ebp-44]
and eax, 511
cmp eax, 20
jne .L_0107
lea eax, [ebp-48]
push eax
call _HUDTINIT@4
mov dword ptr [ebp-12], eax
jmp .L_0106
.L_0107:
push 0
lea eax, [ebp-48]
push eax
call _HELMINIT@8
mov dword ptr [ebp-12], eax
.L_0106:
.L_0104:
mov eax, dword ptr [ebp-16]
mov dword ptr [_TOP_CTX], eax
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-32]
call _ASTTYPEINIEND@8
cmp dword ptr [ebp-12], 0
je .L_0108
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-52], eax
jmp .L_010A
.L_0108:
mov dword ptr [ebp-52], 0
.L_010A:
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
.L_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_fb_ctor__parserzdeclzsymbzinit:
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
_HUPDATECONTEXTDTYPE@12:
push ebp
mov ebp, esp
push ebx
.L_0067:
cmp dword ptr [ebp+12], -2147483648
jne .L_006A
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
jmp .L_0069
.L_006A:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+8], ebx
.L_0069:
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HDOASSIGN@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
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
call _ASTCHECKASSIGNTOTYPE@16
test eax, eax
jne .L_006E
push 0
push 128
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_0070
cmp dword ptr [ebp+16], 0
je .L_0072
jmp .L_006C
.L_0072:
.L_0071:
push 0
push -1
push 24
call _ERRREPORT@12
push dword ptr [ebp+12]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWCONSTZ@8
mov dword ptr [ebp+12], eax
.L_0070:
.L_006F:
jmp .L_006D
.L_006E:
mov dword ptr [ebp-12], -1
.L_006D:
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
call _ASTTYPEINIADDASSIGN@24
mov dword ptr [ebp-4], -1
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HELMINIT@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_PARSER+160]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+32]
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [_PARSER+156], eax
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0076
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_0076:
.L_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+160], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [_PARSER+156], ebx
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HDOASSIGN@12
mov dword ptr [ebp-4], eax
.L_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HARRAYINIT@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0077:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 123
jne .L_007A
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+12]
mov dword ptr [ebp-20], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+64]
cmp dword ptr [eax+12], ebx
jl .L_007C
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+64], 0
jle .L_007D
mov dword ptr [ebp-24], 67
jmp .L_0112
.L_007D:
mov dword ptr [ebp-24], 63
.L_0112:
push dword ptr [ebp-24]
call _ERRREPORT@12
push 0
push 0
push -1
push 125
call _HSKIPUNTIL@16
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
jmp .L_0078
.L_007C:
.L_007B:
jmp .L_0079
.L_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+64]
dec ebx
cmp dword ptr [eax+12], ebx
jge .L_0080
push 0
push 0
push 64
call _ERRREPORT@12
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+12]
mov dword ptr [ebp-20], -1
.L_0080:
.L_007F:
.L_0079:
cmp dword ptr [ebp-20], 0
je .L_0082
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _ASTTYPEINISCOPEBEGIN@12
.L_0082:
.L_0081:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
jl .L_0084
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
sal ecx, 4
mov ebx, dword ptr [eax+68]
add ebx, ecx
cmp dword ptr [ebx+12], 2147483648
jne .L_0086
cmp dword ptr [ebx+8], 0
jne .L_0086
.L_0113:
mov dword ptr [ebp-16], 4294967295
mov dword ptr [ebp-12], 4294967295
jmp .L_0085
.L_0086:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
sal eax, 4
mov ebx, dword ptr [ecx+68]
add ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
sal esi, 4
mov eax, dword ptr [ecx+68]
add eax, esi
mov ecx, dword ptr [ebx+8]
mov esi, dword ptr [ebx+12]
sub ecx, dword ptr [eax]
sbb esi, dword ptr [eax+4]
add ecx, 1
adc esi, 0
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], esi
.L_0085:
jmp .L_0083
.L_0084:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.L_0083:
mov dword ptr [ebp-8], 0
.L_0087:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov esi, dword ptr [eax+64]
dec esi
cmp dword ptr [ecx+12], esi
jge .L_008B
push 0
push dword ptr [ebp+8]
call _HARRAYINIT@8
test eax, eax
jne .L_008D
jmp .L_0078
.L_008D:
.L_008C:
jmp .L_008A
.L_008B:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 511
cmp esi, 20
jne .L_008F
cmp dword ptr [ebp-20], 0
je .L_0091
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+20]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
and dword ptr [eax+20], -5
push dword ptr [ebp+8]
call _HUDTINIT@4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-24]
mov dword ptr [eax+20], esi
cmp dword ptr [ebp-28], 0
jne .L_0093
jmp .L_0078
.L_0093:
.L_0092:
jmp .L_0090
.L_0091:
push dword ptr [ebp+8]
call _HUDTINIT@4
test eax, eax
jne .L_0095
jmp .L_0078
.L_0095:
.L_0094:
.L_0090:
jmp .L_008E
.L_008F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HELMINIT@8
test eax, eax
jne .L_0097
jmp .L_0078
.L_0097:
.L_0096:
.L_008E:
.L_008A:
inc dword ptr [ebp-8]
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
cmp eax, dword ptr [ebp-12]
mov ecx, -1
jg .L_0114
jl .L_0115
cmp esi, dword ptr [ebp-16]
jae .L_0114
.L_0115:
xor ecx, ecx
.L_0114:
cmp dword ptr [ebp-12], 4294967295
mov esi, -1
jne .L_0116
cmp dword ptr [ebp-16], 4294967295
jne .L_0116
.L_0117:
xor esi, esi
.L_0116:
and ecx, esi
je .L_0099
jmp .L_0088
.L_0099:
.L_0098:
.L_0089:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_0087
.L_0088:
cmp dword ptr [ebp-12], 4294967295
jne .L_009B
cmp dword ptr [ebp-16], 4294967295
jne .L_009B
.L_0118:
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
call _SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS@16
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call _SYMBMAYBEADDARRAYDESC@4
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
push dword ptr [esi+68]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
push dword ptr [eax+64]
call _SYMBCHECKARRAYSIZE@20
test eax, eax
jne .L_009D
push 0
push 0
push 50
call _ERRREPORT@12
push 0
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS@16
.L_009D:
.L_009C:
.L_009B:
.L_009A:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
sub dword ptr [ebp-16], esi
sbb dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jl .L_009F
jg .L_011A
cmp dword ptr [ebp-16], 0
jbe .L_009F
.L_011A:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+12]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBCALCARRAYELEMENTS@8
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
je .L_00A1
mov edx, dword ptr [ebp+8]
push dword ptr [edx+8]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_00A3
push 0
push 0
push 183
call _ERRREPORT@12
jmp .L_00A2
.L_00A3:
push dword ptr [ebp-24]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_00A5
push 0
push 0
push 204
call _ERRREPORT@12
.L_00A5:
.L_00A4:
.L_00A2:
.L_00A1:
.L_00A0:
cmp dword ptr [ebp-24], 0
je .L_00A7
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
call _ASTTYPEINIADDCTORLIST@24
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
mov eax, dword ptr [edx+4]
and eax, 262144
test eax, eax
je .L_00A9
mov edx, dword ptr [_ENV+296]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-32], edx
mov dword ptr [ebp-28], eax
jmp .L_00A8
.L_00A9:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+4]
and eax, 511
mov edx, eax
mov dword ptr [ebp-36], edx
jmp .L_00AB
.L_00AD:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
mov esi, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], edx
jmp .L_00AA
.L_00AE:
mov esi, dword ptr [ebp+8]
push dword ptr [esi+8]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
call _SYMBCALCLEN@8
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
jmp .L_00AA
.L_00AB:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 14
ja .L_00AE
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_00AF+eax*4-16]
_.L_00AF:
.int .L_00AD
.int .L_00AE
.int .L_00AE
.int .L_00AD
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AD
.L_00AA:
.L_00A8:
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
call _ASTTYPEINIADDPAD@12
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+16]
mov esi, dword ptr [ebp-32]
mov edx, dword ptr [ebp-28]
add dword ptr [eax+24], esi
adc dword ptr [eax+28], edx
.L_00A6:
.L_009F:
.L_009E:
cmp dword ptr [ebp-20], 0
je .L_00B1
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+16]
call _ASTTYPEINISCOPEEND@8
push 0
call _LEXGETTOKEN@4
cmp eax, 125
je .L_00B3
push 0
push 0
push 65
call _ERRREPORT@12
push 0
push 0
push -1
push 125
call _HSKIPUNTIL@16
jmp .L_00B2
.L_00B3:
push 0
call _LEXSKIPTOKEN@4
.L_00B2:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
.L_00B1:
.L_00B0:
mov dword ptr [ebp-4], -1
.L_0078:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HUDTINIT@4:
push ebp
mov ebp, esp
sub esp, 112
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00B4:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 2
test ebx, ebx
je .L_00B7
mov ebx, dword ptr [_PARSER+160]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [_PARSER+156]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [_PARSER+160], ebx
call _CEXPRESSION@0
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp-48]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [_PARSER+160], eax
cmp dword ptr [ebp-104], 0
jne .L_00B9
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-104], eax
.L_00B9:
.L_00B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 4
jne .L_00BB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+56], 2
jne .L_00BD
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
je .L_00BF
push 0
push dword ptr [ebp-104]
push dword ptr [ebp+8]
call _HDOASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_00B5
.L_00BF:
.L_00BE:
.L_00BD:
.L_00BC:
.L_00BB:
.L_00BA:
lea eax, [ebp-108]
push eax
push dword ptr [ebp-104]
call _CBYDESCARRAYARGPARENS@4
push eax
push dword ptr [ebp-104]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTBUILDIMPLICITCTORCALLEX@16
mov dword ptr [ebp-104], eax
cmp dword ptr [ebp-104], 0
jne .L_00C1
jmp .L_00B5
.L_00C1:
.L_00C0:
cmp dword ptr [ebp-108], 0
je .L_00C3
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-104]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIADDCTORCALL@20
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .L_00B5
.L_00C3:
.L_00C2:
push 0
push dword ptr [ebp-104]
push dword ptr [ebp+8]
call _HDOASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_00B5
.L_00B7:
.L_00B6:
mov dword ptr [ebp-88], -1
mov dword ptr [ebp-92], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_00C5
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .L_00C7
push 0
push dword ptr [ebp+8]
call _HELMINIT@8
mov dword ptr [ebp-4], eax
jmp .L_00B5
.L_00C7:
.L_00C6:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-92], eax
mov dword ptr [ebp-88], 0
jmp .L_00C4
.L_00C5:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINISCOPEBEGIN@12
push 0
call _LEXSKIPTOKEN@4
.L_00C4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov ebx, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
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
.L_00C8:
cmp dword ptr [ebp-36], 0
jne .L_00CC
push 0
push 0
push 67
call _ERRREPORT@12
jmp .L_00C9
.L_00CC:
.L_00CB:
cmp dword ptr [ebp-12], 0
jl .L_00CE
jg .L_011F
cmp dword ptr [ebp-16], 0
jbe .L_00CE
.L_011F:
mov ebx, dword ptr [ebp-36]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
sub ecx, dword ptr [ebp-16]
sbb eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jl .L_00D0
jg .L_0120
cmp dword ptr [ebp-32], 0
jbe .L_00D0
.L_0120:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call _ASTTYPEINIADDPAD@12
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [ebp-28]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
.L_00D0:
.L_00CF:
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+48]
mov ecx, dword ptr [eax+52]
add ebx, dword ptr [ebp-24]
adc ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+16]
mov dword ptr [esi+24], ebx
mov dword ptr [esi+28], ecx
push dword ptr [ebp-36]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_00D2
push 0
push 0
push 202
call _ERRREPORT@12
.L_00D2:
.L_00D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
mov dword ptr [eax], ebx
push 0
push -2147483648
push dword ptr [ebp+8]
call _HUPDATECONTEXTDTYPE@12
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx+20], -3
push dword ptr [ebp-36]
call _SYMBHASCTOR@4
test eax, eax
je .L_00D4
mov eax, dword ptr [ebp+8]
or dword ptr [eax+20], 2
.L_00D4:
.L_00D3:
mov dword ptr [ebp-104], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 4
test ebx, ebx
jne .L_00D6
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+20], 4
push -1
push dword ptr [ebp+8]
call _HARRAYINIT@8
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp+8]
and dword ptr [eax+20], -5
jmp .L_00D5
.L_00D6:
push -1
push dword ptr [ebp+8]
call _HARRAYINIT@8
mov dword ptr [ebp-104], eax
.L_00D5:
cmp dword ptr [ebp-104], 0
jne .L_00D8
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
je .L_00DA
push 0
push -1
push 24
call _ERRREPORT@12
jmp .L_00B5
.L_00DA:
.L_00D9:
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
call _ASTBUILDIMPLICITCTORCALLEX@16
mov dword ptr [ebp-112], eax
cmp dword ptr [ebp-112], 0
jne .L_00DC
jmp .L_00B5
.L_00DC:
.L_00DB:
cmp dword ptr [ebp-88], 0
je .L_00DE
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00E0
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00DF
.L_00E0:
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIREMOVELASTNODE@4
.L_00DF:
.L_00DE:
.L_00DD:
cmp dword ptr [ebp-108], 0
je .L_00E2
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-112]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIADDCTORCALL@20
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_00B5
.L_00E2:
.L_00E1:
push -1
push dword ptr [ebp-112]
push dword ptr [ebp+8]
call _HDOASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_00B5
.L_00D8:
.L_00D7:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+116], 0
jle .L_00E4
push dword ptr [ebp-36]
call _SYMBGETREALSIZE@4
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
push dword ptr [ebp-36]
call _SYMBUDTGETNEXTINITABLEFIELD@4
mov dword ptr [ebp-36], eax
jmp .L_00E3
.L_00E4:
.L_00E5:
push dword ptr [ebp-36]
call _SYMBGETREALSIZE@4
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
push dword ptr [ebp-36]
call _SYMBUDTGETNEXTINITABLEFIELD@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_00E9
jmp .L_00E6
.L_00E9:
.L_00E8:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+48]
mov edx, dword ptr [eax+52]
add ebx, dword ptr [ebp-24]
adc edx, dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov esi, dword ptr [ecx+32]
mov eax, dword ptr [ecx+36]
cmp edx, eax
jl .L_00EB
jg .L_0124
cmp ebx, esi
jb .L_00EB
.L_0124:
jmp .L_00E6
.L_00EB:
.L_00EA:
.L_00E7:
jmp .L_00E5
.L_00E6:
.L_00E3:
mov esi, dword ptr [ebp+8]
cmp dword ptr [esi+28], 1
jle .L_00ED
cmp dword ptr [ebp-36], 0
jne .L_00EF
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_00F1
jmp .L_00C9
.L_00F1:
.L_00F0:
cmp dword ptr [ebp-92], 0
je .L_00F3
jmp .L_00C9
.L_00F3:
.L_00F2:
.L_00EF:
.L_00EE:
.L_00ED:
.L_00EC:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_00F5
jmp .L_00C9
.L_00F5:
.L_00F4:
.L_00CA:
jmp .L_00C8
.L_00C9:
cmp dword ptr [ebp-88], 0
je .L_00F7
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00F9
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00F8
.L_00F9:
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINISCOPEEND@8
.L_00F8:
.L_00F7:
.L_00F6:
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
call _SYMBCALCLEN@8
mov dword ptr [ebp-100], eax
mov dword ptr [ebp-96], edx
mov edx, dword ptr [ebp-100]
mov eax, dword ptr [ebp-96]
sub edx, dword ptr [ebp-16]
sbb eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], edx
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jl .L_00FB
jg .L_0125
cmp dword ptr [ebp-32], 0
jbe .L_00FB
.L_0125:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov edx, dword ptr [ebp+8]
push dword ptr [edx+16]
call _ASTTYPEINIADDPAD@12
.L_00FB:
.L_00FA:
mov eax, dword ptr [ebp-100]
mov edx, dword ptr [ebp-96]
add eax, dword ptr [ebp-24]
adc edx, dword ptr [ebp-20]
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+16]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], edx
mov dword ptr [ebp-4], -1
.L_00B5:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_TOP_CTX:
.long 0

.section .ctors
.int _fb_ctor__parserzdeclzsymbzinit
