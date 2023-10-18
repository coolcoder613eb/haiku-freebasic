	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTMISCINIT
_ASTMISCINIT:
push ebp
mov ebp, esp
sub esp, 4
.L_005E:
push 6
push 12
push 64
lea eax, [_AST+148]
push eax
call _LISTINIT
add esp, 16
lea eax, [_AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
mov dword ptr [_AST+192], 0
mov dword ptr [_AST+196], -1
.L_005F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTMISCEND
_ASTMISCEND:
push ebp
mov ebp, esp
sub esp, 4
.L_0061:
lea eax, [_AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _free
add esp, 4
lea eax, [_AST+148]
push eax
call _LISTEND
add esp, 4
.L_0062:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISTREEEQUAL
_ASTISTREEEQUAL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0064:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0067
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .L_0069
mov dword ptr [ebp-4], -1
.L_0069:
.L_0068:
jmp .L_0065
.L_0067:
.L_0066:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .L_006B
jmp .L_0065
.L_006B:
.L_006A:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .L_006D
jmp .L_0065
.L_006D:
.L_006C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .L_006F
jmp .L_0065
.L_006F:
.L_006E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_0071
.L_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+12], ecx
je .L_0075
jmp .L_0065
.L_0075:
.L_0074:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
jne .L_00B0
cmp dword ptr [ecx+20], esi
je .L_0077
.L_00B0:
jmp .L_0065
.L_0077:
.L_0076:
jmp .L_0070
.L_0078:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [esi+12], ecx
je .L_007A
jmp .L_0065
.L_007A:
.L_0079:
jmp .L_0070
.L_007B:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 480
je .L_007C
mov dword ptr [ebp-12], 24
jmp .L_00AD
.L_007C:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_00AD:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov esi, dword ptr [_SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], esi
cmp dword ptr [ebp-16], 1
jne .L_0080
.L_0081:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [esi+20]
fld qword ptr [ecx+20]
fcomip st, st(1)
fstp st(0)
jz .L_0083
jmp .L_0065
.L_0083:
.L_0082:
jmp .L_007E
.L_0080:
cmp dword ptr [ebp-16], 0
jne .L_0084
.L_0085:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [esi+20]
mov ebx, dword ptr [esi+24]
cmp dword ptr [ecx+24], ebx
jne .L_00B1
cmp dword ptr [ecx+20], eax
je .L_0087
.L_00B1:
jmp .L_0065
.L_0087:
.L_0086:
.L_0084:
.L_007E:
jmp .L_0070
.L_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+24], ecx
jne .L_00B2
cmp dword ptr [eax+20], esi
je .L_008A
.L_00B2:
jmp .L_0065
.L_008A:
.L_0089:
jmp .L_0070
.L_008B:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [esi+24], eax
jne .L_00B3
cmp dword ptr [esi+20], ebx
je .L_008D
.L_00B3:
jmp .L_0065
.L_008D:
.L_008C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+28]
cmp dword ptr [ebx+28], esi
je .L_008F
jmp .L_0065
.L_008F:
.L_008E:
jmp .L_0070
.L_0090:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .L_0092
jmp .L_0065
.L_0092:
.L_0091:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
cmp dword ptr [eax+24], ebx
je .L_0094
jmp .L_0065
.L_0094:
.L_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+28]
cmp dword ptr [ebx+28], esi
je .L_0096
jmp .L_0065
.L_0096:
.L_0095:
jmp .L_0070
.L_0097:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .L_0099
jmp .L_0065
.L_0099:
.L_0098:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
cmp dword ptr [eax+24], ebx
je .L_009B
jmp .L_0065
.L_009B:
.L_009A:
jmp .L_0070
.L_009C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
cmp dword ptr [ebx+12], esi
je .L_009E
jmp .L_0065
.L_009E:
.L_009D:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .L_00A0
jmp .L_0065
.L_00A0:
.L_009F:
jmp .L_0070
.L_00A1:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+12]
cmp dword ptr [eax+12], ebx
je .L_00A3
jmp .L_0065
.L_00A3:
.L_00A2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov esi, dword ptr [eax+24]
cmp dword ptr [ebx+24], esi
jne .L_00B4
cmp dword ptr [ebx+20], ecx
je .L_00A5
.L_00B4:
jmp .L_0065
.L_00A5:
.L_00A4:
jmp .L_0070
.L_00A6:
jmp .L_0070
.L_00A7:
jmp .L_0065
jmp .L_0070
.L_0071:
mov ecx, dword ptr [ebp-8]
add ecx, 4294967295
cmp ecx, 22
ja .L_0070
mov ecx, dword ptr [ebp-8]
jmp dword ptr [_.L_00A8+ecx*4-4]
_.L_00A8:
.int .L_00A7
.int .L_00A7
.int .L_0090
.int .L_0097
.int .L_00A6
.int .L_009C
.int .L_00A7
.int .L_0070
.int .L_00A7
.int .L_0070
.int .L_0070
.int .L_0070
.int .L_0070
.int .L_0070
.int .L_00A7
.int .L_007B
.int .L_0073
.int .L_008B
.int .L_0078
.int .L_0088
.int .L_0070
.int .L_0070
.int .L_00A1
.L_0070:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_00AA
jmp .L_0065
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_00AC
jmp .L_0065
.L_00AC:
.L_00AB:
mov dword ptr [ebp-4], -1
.L_0065:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISEQUALPARAMINIT
_ASTISEQUALPARAMINIT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00B5:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00B8
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .L_00BA
mov dword ptr [ebp-4], -1
.L_00BA:
.L_00B9:
jmp .L_00B6
.L_00B8:
.L_00B7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .L_00BC
jmp .L_00B6
.L_00BC:
.L_00BB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .L_00BE
jmp .L_00B6
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .L_00C0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
cmp eax, 22
jne .L_00C2
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBCALCPROCMATCH
add esp, 12
test eax, eax
jne .L_00C5
jmp .L_00B6
.L_00C5:
.L_00C4:
jmp .L_00C1
.L_00C2:
jmp .L_00B6
.L_00C1:
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_00C7
.L_00C9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
cmp dword ptr [ebx+20], ecx
je .L_00CB
jmp .L_00B6
.L_00CB:
.L_00CA:
jmp .L_00C6
.L_00CC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ecx+12], eax
je .L_00CE
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .L_00D0
jmp .L_00B6
.L_00D0:
.L_00CF:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .L_00D2
jmp .L_00B6
.L_00D2:
.L_00D1:
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
cmp dword ptr [eax+24], ebx
jne .L_010F
cmp dword ptr [eax+20], esi
je .L_00D4
.L_010F:
jmp .L_00B6
.L_00D4:
.L_00D3:
jmp .L_00C6
.L_00D5:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [esi+12], eax
je .L_00D7
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .L_00D9
jmp .L_00B6
.L_00D9:
.L_00D8:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .L_00DB
jmp .L_00B6
.L_00DB:
.L_00DA:
.L_00D7:
.L_00D6:
jmp .L_00C6
.L_00DC:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 480
je .L_00DD
mov dword ptr [ebp-12], 24
jmp .L_010C
.L_00DD:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_010C:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00E0
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
fld qword ptr [eax+20]
fld qword ptr [esi+20]
fcomip st, st(1)
fstp st(0)
jz .L_00E2
jmp .L_00B6
.L_00E2:
.L_00E1:
jmp .L_00DF
.L_00E0:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [esi+24], ebx
jne .L_0110
cmp dword ptr [esi+20], ecx
je .L_00E4
.L_0110:
jmp .L_00B6
.L_00E4:
.L_00E3:
.L_00DF:
jmp .L_00C6
.L_00E5:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov esi, dword ptr [ebx+24]
cmp dword ptr [ecx+24], esi
jne .L_0111
cmp dword ptr [ecx+20], eax
je .L_00E7
.L_0111:
jmp .L_00B6
.L_00E7:
.L_00E6:
jmp .L_00C6
.L_00E8:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
cmp dword ptr [eax+24], ecx
jne .L_0112
cmp dword ptr [eax+20], ebx
je .L_00EA
.L_0112:
jmp .L_00B6
.L_00EA:
.L_00E9:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
cmp dword ptr [ebx+28], eax
je .L_00EC
jmp .L_00B6
.L_00EC:
.L_00EB:
jmp .L_00C6
.L_00ED:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
cmp dword ptr [eax+20], ecx
je .L_00EF
jmp .L_00B6
.L_00EF:
.L_00EE:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
je .L_00F1
jmp .L_00B6
.L_00F1:
.L_00F0:
jmp .L_00C6
.L_00F2:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+12]
cmp dword ptr [ebx+12], eax
je .L_00F4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .L_00F6
jmp .L_00B6
.L_00F6:
.L_00F5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .L_00F8
jmp .L_00B6
.L_00F8:
.L_00F7:
.L_00F4:
.L_00F3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
cmp dword ptr [eax+20], ecx
je .L_00FA
jmp .L_00B6
.L_00FA:
.L_00F9:
jmp .L_00C6
.L_00FB:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .L_00FD
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .L_00FF
jmp .L_00B6
.L_00FF:
.L_00FE:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .L_0101
jmp .L_00B6
.L_0101:
.L_0100:
.L_00FD:
.L_00FC:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [ebx+24], eax
jne .L_0113
cmp dword ptr [ebx+20], esi
je .L_0103
.L_0113:
jmp .L_00B6
.L_0103:
.L_0102:
jmp .L_00C6
.L_0104:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [esi+12], ebx
je .L_0106
jmp .L_00B6
.L_0106:
.L_0105:
jmp .L_00C6
.L_00C7:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967293
cmp ebx, 20
ja .L_00C6
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_0107+ebx*4-12]
_.L_0107:
.int .L_00ED
.int .L_00ED
.int .L_00C6
.int .L_00F2
.int .L_00C6
.int .L_00C6
.int .L_0104
.int .L_00C6
.int .L_00C6
.int .L_00C6
.int .L_00C6
.int .L_00C6
.int .L_00C9
.int .L_00DC
.int .L_00CC
.int .L_00E8
.int .L_00D5
.int .L_00E5
.int .L_00C6
.int .L_00C6
.int .L_00FB
.L_00C6:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .L_0109
jmp .L_00B6
.L_0109:
.L_0108:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .L_010B
jmp .L_00B6
.L_010B:
.L_010A:
mov dword ptr [ebp-4], -1
.L_00B6:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTHASSIDEFX
_ASTHASSIDEFX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0114:
cmp dword ptr [ebp+8], 0
jne .L_0117
jmp .L_0115
.L_0117:
.L_0116:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_0119
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+12]
and eax, 524288
test eax, eax
jne .L_011B
mov dword ptr [ebp-4], -1
jmp .L_0115
.L_011B:
.L_011A:
.L_0119:
.L_0118:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_011D
mov dword ptr [ebp-4], -1
jmp .L_0115
.L_011D:
.L_011C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTHASSIDEFX
add esp, 4
mov dword ptr [ebp-4], eax
.L_0115:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISSYMBOLONTREE
_ASTISSYMBOLONTREE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_011E:
cmp dword ptr [ebp+12], 0
jne .L_0121
mov dword ptr [ebp-4], 0
jmp .L_011F
.L_0121:
.L_0120:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_0123
.L_0125:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-8], eax
jne .L_0127
mov dword ptr [ebp-4], -1
jmp .L_011F
.L_0127:
.L_0126:
cmp dword ptr [ebp-8], 0
je .L_0129
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
je .L_012B
mov dword ptr [ebp-4], -1
jmp .L_011F
.L_012B:
.L_012A:
.L_0129:
.L_0128:
jmp .L_0122
.L_012C:
mov dword ptr [ebp-4], -1
jmp .L_011F
jmp .L_0122
.L_0123:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967290
cmp ebx, 17
ja .L_0122
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.L_012D+ebx*4-24]
_.L_012D:
.int .L_0125
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0122
.int .L_0125
.int .L_0125
.int .L_0125
.int .L_012C
.int .L_0122
.int .L_0122
.int .L_0125
.L_0122:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+56], 0
je .L_012F
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
push dword ptr [ebp+8]
call _ASTISSYMBOLONTREE
add esp, 8
test eax, eax
je .L_0131
mov dword ptr [ebp-4], -1
jmp .L_011F
.L_0131:
.L_0130:
.L_012F:
.L_012E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
je .L_0133
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
push dword ptr [ebp+8]
call _ASTISSYMBOLONTREE
add esp, 8
test eax, eax
je .L_0135
mov dword ptr [ebp-4], -1
jmp .L_011F
.L_0135:
.L_0134:
.L_0133:
.L_0132:
mov dword ptr [ebp-4], 0
.L_011F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREPLACESYMBOLONTREE
_ASTREPLACESYMBOLONTREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0136:
cmp dword ptr [ebp+8], 0
jne .L_0139
jmp .L_0137
.L_0139:
.L_0138:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .L_013B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
.L_013B:
.L_013A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_013D
.L_013F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+28], eax
jne .L_0141
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+28], ebx
.L_0141:
.L_0140:
jmp .L_013C
.L_0142:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+20], eax
jne .L_0144
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+20], ebx
.L_0144:
.L_0143:
jmp .L_013C
.L_0145:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTREPLACESYMBOLONCALL
add esp, 12
jmp .L_013C
.L_013D:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967293
cmp ebx, 23
ja .L_013C
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_0146+ebx*4-12]
_.L_0146:
.int .L_013F
.int .L_013F
.int .L_013C
.int .L_013C
.int .L_013F
.int .L_013C
.int .L_0145
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013F
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_013C
.int .L_0142
.L_013C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_0148
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTREPLACESYMBOLONTREE
add esp, 12
.L_0148:
.L_0147:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_014A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _ASTREPLACESYMBOLONTREE
add esp, 12
.L_014A:
.L_0149:
.L_0137:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREPLACEFWDREF
_ASTREPLACEFWDREF:
push ebp
mov ebp, esp
push ebx
.L_014B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
cmp ebx, 23
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_014E
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _TYPEMERGE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
.L_014E:
.L_014D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_0150
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTREPLACEFWDREF
add esp, 16
.L_0150:
.L_014F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_0152
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _ASTREPLACEFWDREF
add esp, 16
.L_0152:
.L_0151:
.L_014C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISCONSTANT
_ASTISCONSTANT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0155:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0158
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .L_015A
mov dword ptr [ebp-4], -1
jmp .L_0156
.L_015A:
.L_0159:
.L_0158:
.L_0157:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-4], ebx
.L_0156:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTGETSTRLITSYMBOL
_ASTGETSTRLITSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_015D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_0160
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0162
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1024
test eax, eax
je .L_0164
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0164:
.L_0163:
.L_0162:
.L_0161:
.L_0160:
.L_015F:
.L_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTCHECKCONST
_ASTCHECKCONST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0165:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-28], ebx
jmp .L_0168
.L_016A:
push dword ptr [ebp+12]
call _ASTCONSTGETASDOUBLE
add esp, 4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fabs
fstp qword ptr [ebp-36]
fld qword ptr [ebp-36]
fld qword ptr [_Lt_0186]
fcomip st, st(1)
fstp st(0)
jz .L_016E
.L_016F:
fld qword ptr [ebp-36]
fld qword ptr [_Lt_0187]
fcomip st, st(1)
fstp st(0)
ja .L_016D
fld qword ptr [ebp-36]
fld qword ptr [_Lt_0188]
fcomip st, st(1)
fstp st(0)
jb .L_016D
.L_016E:
mov dword ptr [ebp-4], -1
jmp .L_016B
.L_016D:
fld qword ptr [ebp-12]
fstp dword ptr [ebp-16]
fld dword ptr [ebp-16]
fadd dword ptr [ebp-16]
fld dword ptr [ebp-16]
fcomip st, st(1)
fstp st(0)
jnz .L_0172
fld qword ptr [ebp-12]
fadd qword ptr [ebp-12]
fld qword ptr [ebp-12]
fcomip st, st(1)
fstp st(0)
setz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0171
.L_0172:
mov dword ptr [ebp-4], -1
.L_0171:
.L_0170:
.L_016B:
jmp .L_0167
.L_0173:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 0
mov eax, -1
jne .L_018F
cmp dword ptr [ebp-24], 0
je .L_018E
.L_018F:
xor eax, eax
.L_018E:
cmp dword ptr [ebp-20], 0
mov edx, -1
jne .L_0191
cmp dword ptr [ebp-24], 1
je .L_0190
.L_0191:
xor edx, edx
.L_0190:
or eax, edx
cmp dword ptr [ebp-20], 4294967295
mov edx, -1
jne .L_0193
cmp dword ptr [ebp-24], 4294967295
je .L_0192
.L_0193:
xor edx, edx
.L_0192:
or eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0167
.L_0174:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0175
mov dword ptr [ebp-32], 24
jmp .L_0189
.L_0175:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0189:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-36], edx
jmp .L_0178
.L_017A:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .L_0194
jl .L_0195
cmp dword ptr [ebp-24], 4294967168
jae .L_0194
.L_0195:
xor eax, eax
.L_0194:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .L_0196
jg .L_0197
cmp dword ptr [ebp-24], 255
jbe .L_0196
.L_0197:
xor edx, edx
.L_0196:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0177
.L_017B:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .L_0198
jl .L_0199
cmp dword ptr [ebp-24], 4294934528
jae .L_0198
.L_0199:
xor eax, eax
.L_0198:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .L_019A
jg .L_019B
cmp dword ptr [ebp-24], 65535
jbe .L_019A
.L_019B:
xor edx, edx
.L_019A:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0177
.L_017C:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .L_019C
jl .L_019D
cmp dword ptr [ebp-24], 2147483648
jae .L_019C
.L_019D:
xor eax, eax
.L_019C:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .L_019E
jg .L_019F
cmp dword ptr [ebp-24], 4294967295
jbe .L_019E
.L_019F:
xor edx, edx
.L_019E:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0177
.L_017D:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 480
je .L_017E
mov dword ptr [ebp-40], 24
jmp .L_018A
.L_017E:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_018A:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0181
push dword ptr [ebp+12]
call _ASTCONSTGETASDOUBLE
add esp, 4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fld qword ptr [_Lt_018B]
fcomip st, st(1)
fstp st(0)
setbe al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-12]
fld qword ptr [_Lt_018C]
fcomip st, st(1)
fstp st(0)
setae dl
shr edx, 1
sbb edx, edx
and eax, edx
mov dword ptr [ebp-4], eax
.L_0181:
.L_0180:
jmp .L_0177
.L_0178:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 7
ja .L_0177
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_0182+eax*4-4]
_.L_0182:
.int .L_017A
.int .L_017A
.int .L_017B
.int .L_017B
.int .L_017C
.int .L_017C
.int .L_017D
.int .L_017D
.L_0177:
jmp .L_0167
.L_0168:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 14
ja .L_0174
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_0183+eax*4-4]
_.L_0183:
.int .L_0173
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_016A
.L_0167:
mov eax, dword ptr [ebp-4]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_AST+232]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_0185
push 0
push 1
push 0
push 25
call _ERRREPORTWARN
add esp, 16
.L_0185:
.L_0184:
.L_0166:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTPTRCHECK
_ASTPTRCHECK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01A4:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
jne .L_01A7
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 16
jne .L_01A9
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_01AA
mov dword ptr [ebp-12], 24
jmp .L_01B3
.L_01AA:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_01B3:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_01AD
push dword ptr [ebp+20]
call _ASTCONSTEQZERO
add esp, 4
mov dword ptr [ebp-4], eax
.L_01AD:
.L_01AC:
.L_01A9:
.L_01A8:
jmp .L_01A5
.L_01A7:
.L_01A6:
mov eax, dword ptr [ebp+8]
and eax, 31
test eax, eax
jne .L_01AF
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .L_01B1
mov dword ptr [ebp-4], -1
jmp .L_01A5
.L_01B1:
.L_01B0:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov ebx, dword ptr [ebp-8]
and ebx, 480
sar ebx, 5
cmp eax, ebx
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_01A5
jmp .L_01AE
.L_01AF:
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .L_01B2
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov ebx, dword ptr [ebp-8]
and ebx, 480
sar ebx, 5
cmp eax, ebx
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_01A5
.L_01B2:
.L_01AE:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
and eax, 511
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
and eax, 511
push eax
call _TYPECALCMATCH
add esp, 20
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTUPDSTRCONCAT
_ASTUPDSTRCONCAT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01B7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_01BA
jmp .L_01B8
.L_01BA:
.L_01B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-16], eax
jmp .L_01BC
.L_01BE:
jmp .L_01BB
.L_01BF:
jmp .L_01B8
jmp .L_01BB
.L_01BC:
mov eax, dword ptr [ebp-16]
add eax, 4294967289
cmp eax, 11
ja .L_01BF
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_01C0+eax*4-28]
_.L_01C0:
.int .L_01BE
.int .L_01BF
.int .L_01BF
.int .L_01BF
.int .L_01BF
.int .L_01BF
.int .L_01BF
.int .L_01BF
.int .L_01BF
.int .L_01BF
.int .L_01BE
.int .L_01BE
.L_01BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_01C2
push dword ptr [ebp-8]
call _ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_01C2:
.L_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_01C4
push dword ptr [ebp-12]
call _ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_01C4:
.L_01C3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_01C6
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 28
jne .L_01C8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
je .L_01CA
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _RTLSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01C9
.L_01CA:
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _RTLWSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
.L_01C9:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
.L_01C8:
.L_01C7:
.L_01C6:
.L_01C5:
.L_01B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDBRANCH
_ASTBUILDBRANCH:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_01CB:
cmp dword ptr [ebp+8], 0
jne .L_01CE
mov dword ptr [ebp-4], 0
jmp .L_01CC
.L_01CE:
.L_01CD:
push dword ptr [ebp+8]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01CF
mov dword ptr [ebp-32], 24
jmp .L_0225
.L_01CF:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0225:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 2
jne .L_01D2
mov dword ptr [ebp-4], 0
jmp .L_01CC
.L_01D2:
.L_01D1:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-40], ebx
jmp .L_01D4
.L_01D6:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 20
je .L_01D8
mov dword ptr [ebp-4], 0
jmp .L_01CC
.L_01D8:
.L_01D7:
jmp .L_01D3
.L_01D9:
push 0
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp+8]
push 0
push 0
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_01DB
push 0
lea eax, [ebp-44]
push eax
push dword ptr [ebp+8]
push 0
push 32
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_01DD
push 27
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_01DF
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 9
push offset _Lt_01E1
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset _Lt_01E0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
push -1
push 99
call _ERRREPORT
add esp, 12
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_01CC
.L_01DF:
.L_01DE:
push 0
push -1
push 99
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_01CC
.L_01DD:
.L_01DC:
.L_01DB:
.L_01DA:
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-48]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
jmp .L_01D3
.L_01D4:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967292
cmp ebx, 16
ja .L_01D3
mov ebx, dword ptr [ebp-40]
jmp dword ptr [_.L_01E5+ebx*4-16]
_.L_01E5:
.int .L_01D6
.int .L_01D3
.int .L_01D3
.int .L_01D6
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D9
.L_01D3:
push dword ptr [ebp+8]
call _ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
lea eax, [_AST+148]
push eax
call _LISTGETHEAD
add esp, 4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+20]
not ebx
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_01E7
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-12], 0
.L_01E8:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 15
jne .L_01E9
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 1
jne .L_01EC
.L_01ED:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
jmp .L_01EA
.L_01EC:
cmp dword ptr [ebp-40], 2
jne .L_01EE
.L_01EF:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
jmp .L_01EA
.L_01EE:
mov dword ptr [ebp-8], 0
.L_01F0:
.L_01EA:
jmp .L_01E8
.L_01E9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 16
jne .L_01F3
.L_01F4:
push dword ptr [ebp-8]
call _ASTCONSTEQZERO
add esp, 4
mov ebx, dword ptr [ebp+16]
cmp eax, ebx
je .L_01F6
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-16], eax
jmp .L_01F5
.L_01F6:
call _ASTNEWNOP
mov dword ptr [ebp-16], eax
.L_01F5:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
jmp .L_01F1
.L_01F3:
cmp dword ptr [ebp-40], 3
jne .L_01F7
.L_01F8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-44], ebx
jmp .L_01FA
.L_01FC:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+28], eax
cmp dword ptr [ebp+16], 0
jne .L_01FE
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call _ASTGETINVERSELOGOP
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
.L_01FE:
.L_01FD:
jmp .L_01F9
.L_01FF:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_0200
mov dword ptr [ebp-52], 24
jmp .L_0226
.L_0200:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0226:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_0203
mov eax, dword ptr [_IR+272]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_0205
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-56], eax
jmp .L_0207
.L_0209:
mov eax, dword ptr [_IR+272]
and eax, 1024
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_0206
.L_0207:
mov eax, dword ptr [ebp-56]
add eax, 4294967283
cmp eax, 1
ja .L_0206
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_020A+eax*4-52]
_.L_020A:
.int .L_0209
.int .L_0209
.L_0206:
.L_0205:
.L_0204:
jmp .L_0202
.L_0203:
mov eax, dword ptr [_IR+272]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
.L_0202:
cmp dword ptr [ebp-48], 0
je .L_020C
push dword ptr [ebp-8]
push dword ptr [ebp+12]
cmp dword ptr [ebp+16], 0
je .L_020D
mov dword ptr [ebp-56], 95
jmp .L_0227
.L_020D:
mov dword ptr [ebp-56], 92
.L_0227:
push dword ptr [ebp-56]
call _ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_020B
.L_020C:
mov dword ptr [ebp-8], 0
.L_020B:
jmp .L_01F9
.L_020F:
mov dword ptr [ebp-8], 0
jmp .L_01F9
.L_01FA:
mov eax, dword ptr [ebp-44]
add eax, 4294967268
cmp eax, 22
ja .L_020F
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.L_0210+eax*4-112]
_.L_0210:
.int .L_01FF
.int .L_01FF
.int .L_020F
.int .L_020F
.int .L_020F
.int .L_020F
.int .L_01FF
.int .L_01FF
.int .L_020F
.int .L_020F
.int .L_01FF
.int .L_020F
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_020F
.int .L_020F
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.L_01F9:
jmp .L_01F1
.L_01F7:
mov dword ptr [ebp-8], 0
.L_0211:
.L_01F1:
cmp dword ptr [ebp-8], 0
je .L_0213
cmp dword ptr [ebp-12], 0
je .L_0215
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 1
jne .L_0218
.L_0219:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .L_0216
.L_0218:
cmp dword ptr [ebp-40], 2
jne .L_021A
.L_021B:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
jmp .L_0216
.L_021A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.L_021C:
.L_0216:
jmp .L_0214
.L_0215:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.L_0214:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_01CC
.L_0213:
.L_0212:
jmp .L_01E6
.L_01E7:
mov dword ptr [ebp-8], 0
.L_01E6:
cmp dword ptr [ebp-20], 4
je .L_021F
.L_0220:
cmp dword ptr [ebp-20], 7
jne .L_021E
.L_021F:
mov ebx, dword ptr [ebp-20]
and ebx, -512
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+16]
and ecx, 511
or ebx, ecx
mov dword ptr [ebp-20], ebx
.L_021E:
.L_021D:
cmp dword ptr [ebp-24], 0
je .L_0222
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-28], eax
push 64
push dword ptr [ebp+8]
push dword ptr [ebp-28]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 0
call _ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-28]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp+8], eax
.L_0222:
.L_0221:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call _ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp+8]
cmp dword ptr [ebp+16], 0
je .L_0223
mov dword ptr [ebp-36], 48
jmp .L_0228
.L_0223:
mov dword ptr [ebp-36], 45
.L_0228:
push dword ptr [ebp-36]
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTADD
_ASTDTORLISTADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0237:
push dword ptr [ebp+8]
call _HHASDTOR
add esp, 4
test eax, eax
jne .L_023A
jmp .L_0238
.L_023A:
.L_0239:
lea eax, [_AST+148]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
lea ebx, [_AST+180]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
jle .L_023D
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
sal ecx, 2
mov eax, dword ptr [ebx]
add eax, ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [eax-4]
mov dword ptr [ecx+4], ebx
jmp .L_023C
.L_023D:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+4], 0
.L_023C:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+8], 0
.L_0238:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTADDREF
_ASTDTORLISTADDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_023E:
push dword ptr [ebp+8]
call _HHASDTOR
add esp, 4
test eax, eax
jne .L_0241
jmp .L_023F
.L_0241:
.L_0240:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_0242:
cmp dword ptr [ebp-4], 0
je .L_0243
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_0245
mov ebx, dword ptr [ebp-4]
inc dword ptr [ebx+8]
jmp .L_0243
.L_0245:
.L_0244:
push dword ptr [ebp-4]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0242
.L_0243:
.L_023F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTREMOVEREF
_ASTDTORLISTREMOVEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0246:
push dword ptr [ebp+8]
call _HHASDTOR
add esp, 4
test eax, eax
jne .L_0249
jmp .L_0247
.L_0249:
.L_0248:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_024A:
cmp dword ptr [ebp-4], 0
je .L_024B
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_024D
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+8], 0
jg .L_024F
push dword ptr [ebp-4]
lea ebx, [_AST+148]
push ebx
call _LISTDELNODE
add esp, 8
.L_024F:
.L_024E:
jmp .L_024B
.L_024D:
.L_024C:
push dword ptr [ebp-4]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_024A
.L_024B:
.L_0247:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTFLUSH
_ASTDTORLISTFLUSH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0250:
mov dword ptr [ebp-16], 0
lea eax, [_AST+148]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-8], eax
.L_0252:
cmp dword ptr [ebp-8], 0
je .L_0253
push dword ptr [ebp-8]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_0255
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
lea eax, [_AST+148]
push eax
call _LISTDELNODE
add esp, 8
jmp .L_0254
.L_0255:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], -1
jne .L_0256
push dword ptr [ebp-8]
lea eax, [_AST+148]
push eax
call _LISTDELNODE
add esp, 8
.L_0256:
.L_0254:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0252
.L_0253:
cmp dword ptr [ebp+8], 0
jne .L_0258
mov dword ptr [_AST+192], 0
.L_0258:
.L_0257:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0251:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTDEL
_ASTDTORLISTDEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0259:
push dword ptr [ebp+8]
call _HHASDTOR
add esp, 4
test eax, eax
jne .L_025C
jmp .L_025A
.L_025C:
.L_025B:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_025D:
cmp dword ptr [ebp-4], 0
je .L_025E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_0260
push dword ptr [ebp-4]
lea ebx, [_AST+148]
push ebx
call _LISTDELNODE
add esp, 8
jmp .L_025E
.L_0260:
.L_025F:
push dword ptr [ebp-4]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_025D
.L_025E:
.L_025A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTSCOPEBEGIN
_ASTDTORLISTSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0261:
cmp dword ptr [ebp+8], 0
jne .L_0264
inc dword ptr [_AST+192]
mov eax, dword ptr [_AST+192]
mov dword ptr [ebp+8], eax
.L_0264:
.L_0263:
lea eax, [_AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+4], ecx
jne .L_0267
mov ecx, dword ptr [ebp-4]
add dword ptr [ecx+8], 8
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+8]
sal eax, 2
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _XREALLOCATE
add esp, 8
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx], eax
.L_0267:
.L_0266:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp-4]
inc dword ptr [ebx+4]
.L_0262:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTSCOPEEND
_ASTDTORLISTSCOPEEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0268:
lea eax, [_AST+180]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
sal ecx, 2
mov ebx, dword ptr [eax]
add ebx, ecx
mov ecx, dword ptr [ebx-4]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-8]
dec dword ptr [ecx+4]
.L_0269:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTUNSCOPE
_ASTDTORLISTUNSCOPE:
push ebp
mov ebp, esp
.L_0271:
push 0
push dword ptr [ebp+8]
call _HASTDTORLISTRESCOPE
add esp, 8
.L_0272:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTSCOPEDELETE
_ASTDTORLISTSCOPEDELETE:
push ebp
mov ebp, esp
.L_0273:
push -1
push dword ptr [ebp+8]
call _HASTDTORLISTRESCOPE
add esp, 8
.L_0274:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSETTYPE
_ASTSETTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0275:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 15
jne .L_0279
.L_027A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .L_027D
.L_027E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTSETTYPE
add esp, 12
jmp .L_027B
.L_027D:
cmp dword ptr [ebp-8], 2
jne .L_027F
.L_0280:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTSETTYPE
add esp, 12
.L_027F:
.L_027B:
jmp .L_0277
.L_0279:
cmp dword ptr [ebp-4], 19
jne .L_0281
.L_0282:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTSETTYPE
add esp, 12
jmp .L_0277
.L_0281:
cmp dword ptr [ebp-4], 10
jne .L_0283
.L_0284:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTSETTYPE
add esp, 12
jmp .L_0277
.L_0283:
cmp dword ptr [ebp-4], 26
jne .L_0285
.L_0286:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTSETTYPE
add esp, 12
.L_0285:
.L_0277:
.L_0276:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSIZEOF
_ASTSIZEOF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0287:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 4
je .L_028C
.L_028D:
cmp dword ptr [ebp-12], 7
je .L_028C
.L_028E:
cmp dword ptr [ebp-12], 18
jne .L_028B
.L_028C:
mov edx, dword ptr [ebp+8]
cmp dword ptr [edx+12], 0
je .L_0290
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], -1
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+12]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.L_0290:
.L_028F:
.L_028B:
.L_0289:
.L_0288:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISACCESSTOLOCAL
_ASTISACCESSTOLOCAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0293:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0297
.L_0298:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HSYMBISONLOCALSTACK
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0295
.L_0297:
cmp dword ptr [ebp-8], 18
jne .L_0299
.L_029A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
jne .L_029C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSYMBISONLOCALSTACK
add esp, 4
mov dword ptr [ebp-4], eax
.L_029C:
.L_029B:
jmp .L_0295
.L_0299:
cmp dword ptr [ebp-8], 9
jne .L_029D
.L_029E:
mov dword ptr [ebp-4], -1
jmp .L_0295
.L_029D:
cmp dword ptr [ebp-8], 19
jne .L_029F
.L_02A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 20
jne .L_02A2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+56], 0
je .L_02A4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 3
jne .L_02A5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .L_02AB
.L_02A5:
mov dword ptr [ebp-12], 0
.L_02AB:
cmp dword ptr [ebp-12], 0
je .L_02A8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 6
jne .L_02AA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+56]
call _ASTISACCESSTOLOCAL
add esp, 4
mov dword ptr [ebp-4], eax
.L_02AA:
.L_02A9:
.L_02A8:
.L_02A7:
.L_02A4:
.L_02A3:
jmp .L_02A1
.L_02A2:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTISACCESSTOLOCAL
add esp, 4
mov dword ptr [ebp-4], eax
.L_02A1:
.L_029F:
.L_0295:
.L_0294:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISRELATIONALBOP
_ASTISRELATIONALBOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_02AD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_02B0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
sal ebx, 4
mov eax, dword ptr [_AST_OPTB+ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_02B0:
.L_02AF:
.L_02AE:
mov eax, dword ptr [ebp-4]
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
_HHASDTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_022D:
push dword ptr [ebp+8]
call _SYMBHASDTOR
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0231
.L_0232:
mov dword ptr [ebp-4], -1
jmp .L_022F
.L_0231:
cmp dword ptr [ebp-8], 39
jne .L_0233
.L_0234:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 16777216
test eax, eax
je .L_0236
mov dword ptr [ebp-4], -1
.L_0236:
.L_0235:
.L_0233:
.L_022F:
.L_022E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASTDTORLISTRESCOPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_026B:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_026D:
cmp dword ptr [ebp-4], 0
je .L_026E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_0270
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_0270:
.L_026F:
push dword ptr [ebp-4]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_026D
.L_026E:
.L_026C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYMBISONLOCALSTACK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0291:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov dword ptr [ebp-4], ebx
.L_0292:
mov eax, dword ptr [ebp-4]
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
.balign 8
_Lt_0186:	.quad	0x0000000000000000
.balign 8
_Lt_0187:	.quad	0x36A6D601AD376AB9
.balign 8
_Lt_0188:	.quad	0x47EC363CBF21F28A
.balign 8
_Lt_018B:	.quad	0xC3E0000000000000
.balign 8
_Lt_018C:	.quad	0x43F0000000000000
.balign 4
_Lt_01E0:	.ascii	" \"\0"
.balign 4
_Lt_01E1:	.ascii	".cast()\"\0"
