	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTMISCINIT
ASTMISCINIT:
push ebp
mov ebp, esp
sub esp, 4
.L_005D:
push 6
push 12
push 64
lea eax, [AST+148]
push eax
call LISTINIT
add esp, 16
lea eax, [AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
mov dword ptr [AST+192], 0
mov dword ptr [AST+196], -1
.L_005E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTMISCEND
ASTMISCEND:
push ebp
mov ebp, esp
sub esp, 4
.L_0060:
lea eax, [AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call free
add esp, 4
lea eax, [AST+148]
push eax
call LISTEND
add esp, 4
.L_0061:
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISTREEEQUAL
ASTISTREEEQUAL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0063:
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
je .L_0066
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .L_0068
mov dword ptr [ebp-4], -1
.L_0068:
.L_0067:
jmp .L_0064
.L_0066:
.L_0065:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .L_006A
jmp .L_0064
.L_006A:
.L_0069:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .L_006C
jmp .L_0064
.L_006C:
.L_006B:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .L_006E
jmp .L_0064
.L_006E:
.L_006D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_0070
.L_0072:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+12], ecx
je .L_0074
jmp .L_0064
.L_0074:
.L_0073:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
jne .L_00AF
cmp dword ptr [ecx+20], esi
je .L_0076
.L_00AF:
jmp .L_0064
.L_0076:
.L_0075:
jmp .L_006F
.L_0077:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [esi+12], ecx
je .L_0079
jmp .L_0064
.L_0079:
.L_0078:
jmp .L_006F
.L_007A:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 480
je .L_007B
mov dword ptr [ebp-12], 24
jmp .L_00AC
.L_007B:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_00AC:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov esi, dword ptr [SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], esi
cmp dword ptr [ebp-16], 1
jne .L_007F
.L_0080:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [esi+20]
fld qword ptr [ecx+20]
fcomip st, st(1)
fstp st(0)
jz .L_0082
jmp .L_0064
.L_0082:
.L_0081:
jmp .L_007D
.L_007F:
cmp dword ptr [ebp-16], 0
jne .L_0083
.L_0084:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [esi+20]
mov ebx, dword ptr [esi+24]
cmp dword ptr [ecx+24], ebx
jne .L_00B0
cmp dword ptr [ecx+20], eax
je .L_0086
.L_00B0:
jmp .L_0064
.L_0086:
.L_0085:
.L_0083:
.L_007D:
jmp .L_006F
.L_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+24], ecx
jne .L_00B1
cmp dword ptr [eax+20], esi
je .L_0089
.L_00B1:
jmp .L_0064
.L_0089:
.L_0088:
jmp .L_006F
.L_008A:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [esi+24], eax
jne .L_00B2
cmp dword ptr [esi+20], ebx
je .L_008C
.L_00B2:
jmp .L_0064
.L_008C:
.L_008B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+28]
cmp dword ptr [ebx+28], esi
je .L_008E
jmp .L_0064
.L_008E:
.L_008D:
jmp .L_006F
.L_008F:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .L_0091
jmp .L_0064
.L_0091:
.L_0090:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
cmp dword ptr [eax+24], ebx
je .L_0093
jmp .L_0064
.L_0093:
.L_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+28]
cmp dword ptr [ebx+28], esi
je .L_0095
jmp .L_0064
.L_0095:
.L_0094:
jmp .L_006F
.L_0096:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .L_0098
jmp .L_0064
.L_0098:
.L_0097:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
cmp dword ptr [eax+24], ebx
je .L_009A
jmp .L_0064
.L_009A:
.L_0099:
jmp .L_006F
.L_009B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
cmp dword ptr [ebx+12], esi
je .L_009D
jmp .L_0064
.L_009D:
.L_009C:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .L_009F
jmp .L_0064
.L_009F:
.L_009E:
jmp .L_006F
.L_00A0:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+12]
cmp dword ptr [eax+12], ebx
je .L_00A2
jmp .L_0064
.L_00A2:
.L_00A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov esi, dword ptr [eax+24]
cmp dword ptr [ebx+24], esi
jne .L_00B3
cmp dword ptr [ebx+20], ecx
je .L_00A4
.L_00B3:
jmp .L_0064
.L_00A4:
.L_00A3:
jmp .L_006F
.L_00A5:
jmp .L_006F
.L_00A6:
jmp .L_0064
jmp .L_006F
.L_0070:
mov ecx, dword ptr [ebp-8]
add ecx, 4294967295
cmp ecx, 22
ja .L_006F
mov ecx, dword ptr [ebp-8]
jmp dword ptr [.L_00A7+ecx*4-4]
.L_00A7:
.int .L_00A6
.int .L_00A6
.int .L_008F
.int .L_0096
.int .L_00A5
.int .L_009B
.int .L_00A6
.int .L_006F
.int .L_00A6
.int .L_006F
.int .L_006F
.int .L_006F
.int .L_006F
.int .L_006F
.int .L_00A6
.int .L_007A
.int .L_0072
.int .L_008A
.int .L_0077
.int .L_0087
.int .L_006F
.int .L_006F
.int .L_00A0
.L_006F:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_00A9
jmp .L_0064
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .L_00AB
jmp .L_0064
.L_00AB:
.L_00AA:
mov dword ptr [ebp-4], -1
.L_0064:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISEQUALPARAMINIT
ASTISEQUALPARAMINIT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00B4:
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
je .L_00B7
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .L_00B9
mov dword ptr [ebp-4], -1
.L_00B9:
.L_00B8:
jmp .L_00B5
.L_00B7:
.L_00B6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .L_00BB
jmp .L_00B5
.L_00BB:
.L_00BA:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .L_00BD
jmp .L_00B5
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .L_00BF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
cmp eax, 22
jne .L_00C1
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBCALCPROCMATCH
add esp, 12
test eax, eax
jne .L_00C4
jmp .L_00B5
.L_00C4:
.L_00C3:
jmp .L_00C0
.L_00C1:
jmp .L_00B5
.L_00C0:
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_00C6
.L_00C8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
cmp dword ptr [ebx+20], ecx
je .L_00CA
jmp .L_00B5
.L_00CA:
.L_00C9:
jmp .L_00C5
.L_00CB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ecx+12], eax
je .L_00CD
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .L_00CF
jmp .L_00B5
.L_00CF:
.L_00CE:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .L_00D1
jmp .L_00B5
.L_00D1:
.L_00D0:
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
cmp dword ptr [eax+24], ebx
jne .L_010E
cmp dword ptr [eax+20], esi
je .L_00D3
.L_010E:
jmp .L_00B5
.L_00D3:
.L_00D2:
jmp .L_00C5
.L_00D4:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [esi+12], eax
je .L_00D6
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .L_00D8
jmp .L_00B5
.L_00D8:
.L_00D7:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .L_00DA
jmp .L_00B5
.L_00DA:
.L_00D9:
.L_00D6:
.L_00D5:
jmp .L_00C5
.L_00DB:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 480
je .L_00DC
mov dword ptr [ebp-12], 24
jmp .L_010B
.L_00DC:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_010B:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00DF
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
fld qword ptr [eax+20]
fld qword ptr [esi+20]
fcomip st, st(1)
fstp st(0)
jz .L_00E1
jmp .L_00B5
.L_00E1:
.L_00E0:
jmp .L_00DE
.L_00DF:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [esi+24], ebx
jne .L_010F
cmp dword ptr [esi+20], ecx
je .L_00E3
.L_010F:
jmp .L_00B5
.L_00E3:
.L_00E2:
.L_00DE:
jmp .L_00C5
.L_00E4:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov esi, dword ptr [ebx+24]
cmp dword ptr [ecx+24], esi
jne .L_0110
cmp dword ptr [ecx+20], eax
je .L_00E6
.L_0110:
jmp .L_00B5
.L_00E6:
.L_00E5:
jmp .L_00C5
.L_00E7:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
cmp dword ptr [eax+24], ecx
jne .L_0111
cmp dword ptr [eax+20], ebx
je .L_00E9
.L_0111:
jmp .L_00B5
.L_00E9:
.L_00E8:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
cmp dword ptr [ebx+28], eax
je .L_00EB
jmp .L_00B5
.L_00EB:
.L_00EA:
jmp .L_00C5
.L_00EC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
cmp dword ptr [eax+20], ecx
je .L_00EE
jmp .L_00B5
.L_00EE:
.L_00ED:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
je .L_00F0
jmp .L_00B5
.L_00F0:
.L_00EF:
jmp .L_00C5
.L_00F1:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+12]
cmp dword ptr [ebx+12], eax
je .L_00F3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .L_00F5
jmp .L_00B5
.L_00F5:
.L_00F4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .L_00F7
jmp .L_00B5
.L_00F7:
.L_00F6:
.L_00F3:
.L_00F2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
cmp dword ptr [eax+20], ecx
je .L_00F9
jmp .L_00B5
.L_00F9:
.L_00F8:
jmp .L_00C5
.L_00FA:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .L_00FC
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .L_00FE
jmp .L_00B5
.L_00FE:
.L_00FD:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .L_0100
jmp .L_00B5
.L_0100:
.L_00FF:
.L_00FC:
.L_00FB:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [ebx+24], eax
jne .L_0112
cmp dword ptr [ebx+20], esi
je .L_0102
.L_0112:
jmp .L_00B5
.L_0102:
.L_0101:
jmp .L_00C5
.L_0103:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [esi+12], ebx
je .L_0105
jmp .L_00B5
.L_0105:
.L_0104:
jmp .L_00C5
.L_00C6:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967293
cmp ebx, 20
ja .L_00C5
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_0106+ebx*4-12]
.L_0106:
.int .L_00EC
.int .L_00EC
.int .L_00C5
.int .L_00F1
.int .L_00C5
.int .L_00C5
.int .L_0103
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C8
.int .L_00DB
.int .L_00CB
.int .L_00E7
.int .L_00D4
.int .L_00E4
.int .L_00C5
.int .L_00C5
.int .L_00FA
.L_00C5:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .L_0108
jmp .L_00B5
.L_0108:
.L_0107:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .L_010A
jmp .L_00B5
.L_010A:
.L_0109:
mov dword ptr [ebp-4], -1
.L_00B5:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTHASSIDEFX
ASTHASSIDEFX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0113:
cmp dword ptr [ebp+8], 0
jne .L_0116
jmp .L_0114
.L_0116:
.L_0115:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_0118
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+12]
and eax, 524288
test eax, eax
jne .L_011A
mov dword ptr [ebp-4], -1
jmp .L_0114
.L_011A:
.L_0119:
.L_0118:
.L_0117:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_011C
mov dword ptr [ebp-4], -1
jmp .L_0114
.L_011C:
.L_011B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTHASSIDEFX
add esp, 4
mov dword ptr [ebp-4], eax
.L_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISSYMBOLONTREE
ASTISSYMBOLONTREE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_011D:
cmp dword ptr [ebp+12], 0
jne .L_0120
mov dword ptr [ebp-4], 0
jmp .L_011E
.L_0120:
.L_011F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_0122
.L_0124:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-8], eax
jne .L_0126
mov dword ptr [ebp-4], -1
jmp .L_011E
.L_0126:
.L_0125:
cmp dword ptr [ebp-8], 0
je .L_0128
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
je .L_012A
mov dword ptr [ebp-4], -1
jmp .L_011E
.L_012A:
.L_0129:
.L_0128:
.L_0127:
jmp .L_0121
.L_012B:
mov dword ptr [ebp-4], -1
jmp .L_011E
jmp .L_0121
.L_0122:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967290
cmp ebx, 17
ja .L_0121
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.L_012C+ebx*4-24]
.L_012C:
.int .L_0124
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0121
.int .L_0124
.int .L_0124
.int .L_0124
.int .L_012B
.int .L_0121
.int .L_0121
.int .L_0124
.L_0121:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+56], 0
je .L_012E
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
push dword ptr [ebp+8]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
je .L_0130
mov dword ptr [ebp-4], -1
jmp .L_011E
.L_0130:
.L_012F:
.L_012E:
.L_012D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
je .L_0132
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
push dword ptr [ebp+8]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
je .L_0134
mov dword ptr [ebp-4], -1
jmp .L_011E
.L_0134:
.L_0133:
.L_0132:
.L_0131:
mov dword ptr [ebp-4], 0
.L_011E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREPLACESYMBOLONTREE
ASTREPLACESYMBOLONTREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0135:
cmp dword ptr [ebp+8], 0
jne .L_0138
jmp .L_0136
.L_0138:
.L_0137:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .L_013A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
.L_013A:
.L_0139:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_013C
.L_013E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+28], eax
jne .L_0140
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+28], ebx
.L_0140:
.L_013F:
jmp .L_013B
.L_0141:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+20], eax
jne .L_0143
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+20], ebx
.L_0143:
.L_0142:
jmp .L_013B
.L_0144:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTREPLACESYMBOLONCALL
add esp, 12
jmp .L_013B
.L_013C:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967293
cmp ebx, 23
ja .L_013B
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_0145+ebx*4-12]
.L_0145:
.int .L_013E
.int .L_013E
.int .L_013B
.int .L_013B
.int .L_013E
.int .L_013B
.int .L_0144
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013E
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_013B
.int .L_0141
.L_013B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_0147
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTREPLACESYMBOLONTREE
add esp, 12
.L_0147:
.L_0146:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_0149
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTREPLACESYMBOLONTREE
add esp, 12
.L_0149:
.L_0148:
.L_0136:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREPLACEFWDREF
ASTREPLACEFWDREF:
push ebp
mov ebp, esp
push ebx
.L_014A:
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
je .L_014D
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call TYPEMERGE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
.L_014D:
.L_014C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_014F
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTREPLACEFWDREF
add esp, 16
.L_014F:
.L_014E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_0151
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTREPLACEFWDREF
add esp, 16
.L_0151:
.L_0150:
.L_014B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISCONSTANT
ASTISCONSTANT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0154:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0157
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .L_0159
mov dword ptr [ebp-4], -1
jmp .L_0155
.L_0159:
.L_0158:
.L_0157:
.L_0156:
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
.L_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTGETSTRLITSYMBOL
ASTGETSTRLITSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_015C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_015F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0161
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1024
test eax, eax
je .L_0163
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0163:
.L_0162:
.L_0161:
.L_0160:
.L_015F:
.L_015E:
.L_015D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCHECKCONST
ASTCHECKCONST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0164:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-28], ebx
jmp .L_0167
.L_0169:
push dword ptr [ebp+12]
call ASTCONSTGETASDOUBLE
add esp, 4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fabs
fstp qword ptr [ebp-36]
fld qword ptr [ebp-36]
fld qword ptr [Lt_0185]
fcomip st, st(1)
fstp st(0)
jz .L_016D
.L_016E:
fld qword ptr [ebp-36]
fld qword ptr [Lt_0186]
fcomip st, st(1)
fstp st(0)
ja .L_016C
fld qword ptr [ebp-36]
fld qword ptr [Lt_0187]
fcomip st, st(1)
fstp st(0)
jb .L_016C
.L_016D:
mov dword ptr [ebp-4], -1
jmp .L_016A
.L_016C:
fld qword ptr [ebp-12]
fstp dword ptr [ebp-16]
fld dword ptr [ebp-16]
fadd dword ptr [ebp-16]
fld dword ptr [ebp-16]
fcomip st, st(1)
fstp st(0)
jnz .L_0171
fld qword ptr [ebp-12]
fadd qword ptr [ebp-12]
fld qword ptr [ebp-12]
fcomip st, st(1)
fstp st(0)
setz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0170
.L_0171:
mov dword ptr [ebp-4], -1
.L_0170:
.L_016F:
.L_016A:
jmp .L_0166
.L_0172:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 0
mov eax, -1
jne .L_018E
cmp dword ptr [ebp-24], 0
je .L_018D
.L_018E:
xor eax, eax
.L_018D:
cmp dword ptr [ebp-20], 0
mov edx, -1
jne .L_0190
cmp dword ptr [ebp-24], 1
je .L_018F
.L_0190:
xor edx, edx
.L_018F:
or eax, edx
cmp dword ptr [ebp-20], 4294967295
mov edx, -1
jne .L_0192
cmp dword ptr [ebp-24], 4294967295
je .L_0191
.L_0192:
xor edx, edx
.L_0191:
or eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0166
.L_0173:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0174
mov dword ptr [ebp-32], 24
jmp .L_0188
.L_0174:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0188:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-36], edx
jmp .L_0177
.L_0179:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .L_0193
jl .L_0194
cmp dword ptr [ebp-24], 4294967168
jae .L_0193
.L_0194:
xor eax, eax
.L_0193:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .L_0195
jg .L_0196
cmp dword ptr [ebp-24], 255
jbe .L_0195
.L_0196:
xor edx, edx
.L_0195:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0176
.L_017A:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .L_0197
jl .L_0198
cmp dword ptr [ebp-24], 4294934528
jae .L_0197
.L_0198:
xor eax, eax
.L_0197:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .L_0199
jg .L_019A
cmp dword ptr [ebp-24], 65535
jbe .L_0199
.L_019A:
xor edx, edx
.L_0199:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0176
.L_017B:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .L_019B
jl .L_019C
cmp dword ptr [ebp-24], 2147483648
jae .L_019B
.L_019C:
xor eax, eax
.L_019B:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .L_019D
jg .L_019E
cmp dword ptr [ebp-24], 4294967295
jbe .L_019D
.L_019E:
xor edx, edx
.L_019D:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .L_0176
.L_017C:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 480
je .L_017D
mov dword ptr [ebp-40], 24
jmp .L_0189
.L_017D:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0189:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0180
push dword ptr [ebp+12]
call ASTCONSTGETASDOUBLE
add esp, 4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fld qword ptr [Lt_018A]
fcomip st, st(1)
fstp st(0)
setbe al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-12]
fld qword ptr [Lt_018B]
fcomip st, st(1)
fstp st(0)
setae dl
shr edx, 1
sbb edx, edx
and eax, edx
mov dword ptr [ebp-4], eax
.L_0180:
.L_017F:
jmp .L_0176
.L_0177:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 7
ja .L_0176
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_0181+eax*4-4]
.L_0181:
.int .L_0179
.int .L_0179
.int .L_017A
.int .L_017A
.int .L_017B
.int .L_017B
.int .L_017C
.int .L_017C
.L_0176:
jmp .L_0166
.L_0167:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 14
ja .L_0173
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_0182+eax*4-4]
.L_0182:
.int .L_0172
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0169
.L_0166:
mov eax, dword ptr [ebp-4]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [AST+232]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_0184
push 0
push 1
push 0
push 25
call ERRREPORTWARN
add esp, 16
.L_0184:
.L_0183:
.L_0165:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPTRCHECK
ASTPTRCHECK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01A3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
jne .L_01A6
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 16
jne .L_01A8
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_01A9
mov dword ptr [ebp-12], 24
jmp .L_01B2
.L_01A9:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_01B2:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_01AC
push dword ptr [ebp+20]
call ASTCONSTEQZERO
add esp, 4
mov dword ptr [ebp-4], eax
.L_01AC:
.L_01AB:
.L_01A8:
.L_01A7:
jmp .L_01A4
.L_01A6:
.L_01A5:
mov eax, dword ptr [ebp+8]
and eax, 31
test eax, eax
jne .L_01AE
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .L_01B0
mov dword ptr [ebp-4], -1
jmp .L_01A4
.L_01B0:
.L_01AF:
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
jmp .L_01A4
jmp .L_01AD
.L_01AE:
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .L_01B1
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
jmp .L_01A4
.L_01B1:
.L_01AD:
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
call TYPECALCMATCH
add esp, 20
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTUPDSTRCONCAT
ASTUPDSTRCONCAT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01B6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .L_01B9
jmp .L_01B7
.L_01B9:
.L_01B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-16], eax
jmp .L_01BB
.L_01BD:
jmp .L_01BA
.L_01BE:
jmp .L_01B7
jmp .L_01BA
.L_01BB:
mov eax, dword ptr [ebp-16]
add eax, 4294967289
cmp eax, 11
ja .L_01BE
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_01BF+eax*4-28]
.L_01BF:
.int .L_01BD
.int .L_01BE
.int .L_01BE
.int .L_01BE
.int .L_01BE
.int .L_01BE
.int .L_01BE
.int .L_01BE
.int .L_01BE
.int .L_01BE
.int .L_01BD
.int .L_01BD
.L_01BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_01C1
push dword ptr [ebp-8]
call ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.L_01C1:
.L_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_01C3
push dword ptr [ebp-12]
call ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.L_01C3:
.L_01C2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_01C5
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 28
jne .L_01C7
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
je .L_01C9
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call RTLSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01C8
.L_01C9:
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call RTLWSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
.L_01C8:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_01C7:
.L_01C6:
.L_01C5:
.L_01C4:
.L_01B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDBRANCH
ASTBUILDBRANCH:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_01CA:
cmp dword ptr [ebp+8], 0
jne .L_01CD
mov dword ptr [ebp-4], 0
jmp .L_01CB
.L_01CD:
.L_01CC:
push dword ptr [ebp+8]
call ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01CE
mov dword ptr [ebp-32], 24
jmp .L_0224
.L_01CE:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0224:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 2
jne .L_01D1
mov dword ptr [ebp-4], 0
jmp .L_01CB
.L_01D1:
.L_01D0:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-40], ebx
jmp .L_01D3
.L_01D5:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 20
je .L_01D7
mov dword ptr [ebp-4], 0
jmp .L_01CB
.L_01D7:
.L_01D6:
jmp .L_01D2
.L_01D8:
push 0
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp+8]
push 0
push 0
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_01DA
push 0
lea eax, [ebp-44]
push eax
push dword ptr [ebp+8]
push 0
push 32
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_01DC
push 27
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_01DE
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 9
push offset Lt_01E0
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset Lt_01DF
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
push -1
push 99
call ERRREPORT
add esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_01CB
.L_01DE:
.L_01DD:
push 0
push -1
push 99
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_01CB
.L_01DC:
.L_01DB:
.L_01DA:
.L_01D9:
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-48]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
jmp .L_01D2
.L_01D3:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967292
cmp ebx, 16
ja .L_01D2
mov ebx, dword ptr [ebp-40]
jmp dword ptr [.L_01E4+ebx*4-16]
.L_01E4:
.int .L_01D5
.int .L_01D2
.int .L_01D2
.int .L_01D5
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D2
.int .L_01D8
.L_01D2:
push dword ptr [ebp+8]
call ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
lea eax, [AST+148]
push eax
call LISTGETHEAD
add esp, 4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+20]
not ebx
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_01E6
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-12], 0
.L_01E7:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 15
jne .L_01E8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 1
jne .L_01EB
.L_01EC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
jmp .L_01E9
.L_01EB:
cmp dword ptr [ebp-40], 2
jne .L_01ED
.L_01EE:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
jmp .L_01E9
.L_01ED:
mov dword ptr [ebp-8], 0
.L_01EF:
.L_01E9:
jmp .L_01E7
.L_01E8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 16
jne .L_01F2
.L_01F3:
push dword ptr [ebp-8]
call ASTCONSTEQZERO
add esp, 4
mov ebx, dword ptr [ebp+16]
cmp eax, ebx
je .L_01F5
push 0
push dword ptr [ebp+12]
push 98
call ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-16], eax
jmp .L_01F4
.L_01F5:
call ASTNEWNOP
mov dword ptr [ebp-16], eax
.L_01F4:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
jmp .L_01F0
.L_01F2:
cmp dword ptr [ebp-40], 3
jne .L_01F6
.L_01F7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-44], ebx
jmp .L_01F9
.L_01FB:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+28], eax
cmp dword ptr [ebp+16], 0
jne .L_01FD
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call ASTGETINVERSELOGOP
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
.L_01FD:
.L_01FC:
jmp .L_01F8
.L_01FE:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01FF
mov dword ptr [ebp-52], 24
jmp .L_0225
.L_01FF:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0225:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .L_0202
mov eax, dword ptr [IR+272]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_0204
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-56], eax
jmp .L_0206
.L_0208:
mov eax, dword ptr [IR+272]
and eax, 1024
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_0205
.L_0206:
mov eax, dword ptr [ebp-56]
add eax, 4294967283
cmp eax, 1
ja .L_0205
mov eax, dword ptr [ebp-56]
jmp dword ptr [.L_0209+eax*4-52]
.L_0209:
.int .L_0208
.int .L_0208
.L_0205:
.L_0204:
.L_0203:
jmp .L_0201
.L_0202:
mov eax, dword ptr [IR+272]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
.L_0201:
cmp dword ptr [ebp-48], 0
je .L_020B
push dword ptr [ebp-8]
push dword ptr [ebp+12]
cmp dword ptr [ebp+16], 0
je .L_020C
mov dword ptr [ebp-56], 95
jmp .L_0226
.L_020C:
mov dword ptr [ebp-56], 92
.L_0226:
push dword ptr [ebp-56]
call ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_020A
.L_020B:
mov dword ptr [ebp-8], 0
.L_020A:
jmp .L_01F8
.L_020E:
mov dword ptr [ebp-8], 0
jmp .L_01F8
.L_01F9:
mov eax, dword ptr [ebp-44]
add eax, 4294967268
cmp eax, 22
ja .L_020E
mov eax, dword ptr [ebp-44]
jmp dword ptr [.L_020F+eax*4-112]
.L_020F:
.int .L_01FE
.int .L_01FE
.int .L_020E
.int .L_020E
.int .L_020E
.int .L_020E
.int .L_01FE
.int .L_01FE
.int .L_020E
.int .L_020E
.int .L_01FE
.int .L_020E
.int .L_01FE
.int .L_01FE
.int .L_01FE
.int .L_020E
.int .L_020E
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.L_01F8:
jmp .L_01F0
.L_01F6:
mov dword ptr [ebp-8], 0
.L_0210:
.L_01F0:
cmp dword ptr [ebp-8], 0
je .L_0212
cmp dword ptr [ebp-12], 0
je .L_0214
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 1
jne .L_0217
.L_0218:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .L_0215
.L_0217:
cmp dword ptr [ebp-40], 2
jne .L_0219
.L_021A:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
jmp .L_0215
.L_0219:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.L_021B:
.L_0215:
jmp .L_0213
.L_0214:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.L_0213:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_01CB
.L_0212:
.L_0211:
jmp .L_01E5
.L_01E6:
mov dword ptr [ebp-8], 0
.L_01E5:
cmp dword ptr [ebp-20], 4
je .L_021E
.L_021F:
cmp dword ptr [ebp-20], 7
jne .L_021D
.L_021E:
mov ebx, dword ptr [ebp-20]
and ebx, -512
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+16]
and ecx, 511
or ebx, ecx
mov dword ptr [ebp-20], ebx
.L_021D:
.L_021C:
cmp dword ptr [ebp-24], 0
je .L_0221
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-28], eax
push 64
push dword ptr [ebp+8]
push dword ptr [ebp-28]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 0
call ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-28]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp+8], eax
.L_0221:
.L_0220:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp+8]
cmp dword ptr [ebp+16], 0
je .L_0222
mov dword ptr [ebp-36], 48
jmp .L_0227
.L_0222:
mov dword ptr [ebp-36], 45
.L_0227:
push dword ptr [ebp-36]
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTADD
ASTDTORLISTADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0236:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .L_0239
jmp .L_0237
.L_0239:
.L_0238:
lea eax, [AST+148]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
lea ebx, [AST+180]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
jle .L_023C
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
sal ecx, 2
mov eax, dword ptr [ebx]
add eax, ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [eax-4]
mov dword ptr [ecx+4], ebx
jmp .L_023B
.L_023C:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+4], 0
.L_023B:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+8], 0
.L_0237:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTADDREF
ASTDTORLISTADDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_023D:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .L_0240
jmp .L_023E
.L_0240:
.L_023F:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_0241:
cmp dword ptr [ebp-4], 0
je .L_0242
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_0244
mov ebx, dword ptr [ebp-4]
inc dword ptr [ebx+8]
jmp .L_0242
.L_0244:
.L_0243:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0241
.L_0242:
.L_023E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTREMOVEREF
ASTDTORLISTREMOVEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0245:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .L_0248
jmp .L_0246
.L_0248:
.L_0247:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_0249:
cmp dword ptr [ebp-4], 0
je .L_024A
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_024C
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+8], 0
jg .L_024E
push dword ptr [ebp-4]
lea ebx, [AST+148]
push ebx
call LISTDELNODE
add esp, 8
.L_024E:
.L_024D:
jmp .L_024A
.L_024C:
.L_024B:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0249
.L_024A:
.L_0246:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTFLUSH
ASTDTORLISTFLUSH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_024F:
mov dword ptr [ebp-16], 0
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-8], eax
.L_0251:
cmp dword ptr [ebp-8], 0
je .L_0252
push dword ptr [ebp-8]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_0254
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
lea eax, [AST+148]
push eax
call LISTDELNODE
add esp, 8
jmp .L_0253
.L_0254:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], -1
jne .L_0255
push dword ptr [ebp-8]
lea eax, [AST+148]
push eax
call LISTDELNODE
add esp, 8
.L_0255:
.L_0253:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0251
.L_0252:
cmp dword ptr [ebp+8], 0
jne .L_0257
mov dword ptr [AST+192], 0
.L_0257:
.L_0256:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0250:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTDEL
ASTDTORLISTDEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0258:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .L_025B
jmp .L_0259
.L_025B:
.L_025A:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_025C:
cmp dword ptr [ebp-4], 0
je .L_025D
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_025F
push dword ptr [ebp-4]
lea ebx, [AST+148]
push ebx
call LISTDELNODE
add esp, 8
jmp .L_025D
.L_025F:
.L_025E:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_025C
.L_025D:
.L_0259:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTSCOPEBEGIN
ASTDTORLISTSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0260:
cmp dword ptr [ebp+8], 0
jne .L_0263
inc dword ptr [AST+192]
mov eax, dword ptr [AST+192]
mov dword ptr [ebp+8], eax
.L_0263:
.L_0262:
lea eax, [AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+4], ecx
jne .L_0266
mov ecx, dword ptr [ebp-4]
add dword ptr [ecx+8], 8
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+8]
sal eax, 2
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call XREALLOCATE
add esp, 8
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx], eax
.L_0266:
.L_0265:
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
.L_0261:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTSCOPEEND
ASTDTORLISTSCOPEEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0267:
lea eax, [AST+180]
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
.L_0268:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTUNSCOPE
ASTDTORLISTUNSCOPE:
push ebp
mov ebp, esp
.L_0270:
push 0
push dword ptr [ebp+8]
call HASTDTORLISTRESCOPE
add esp, 8
.L_0271:
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTSCOPEDELETE
ASTDTORLISTSCOPEDELETE:
push ebp
mov ebp, esp
.L_0272:
push -1
push dword ptr [ebp+8]
call HASTDTORLISTRESCOPE
add esp, 8
.L_0273:
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSETTYPE
ASTSETTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0274:
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
jne .L_0278
.L_0279:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .L_027C
.L_027D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
jmp .L_027A
.L_027C:
cmp dword ptr [ebp-8], 2
jne .L_027E
.L_027F:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTSETTYPE
add esp, 12
.L_027E:
.L_027A:
jmp .L_0276
.L_0278:
cmp dword ptr [ebp-4], 19
jne .L_0280
.L_0281:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
jmp .L_0276
.L_0280:
cmp dword ptr [ebp-4], 10
jne .L_0282
.L_0283:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTSETTYPE
add esp, 12
jmp .L_0276
.L_0282:
cmp dword ptr [ebp-4], 26
jne .L_0284
.L_0285:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
.L_0284:
.L_0276:
.L_0275:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSIZEOF
ASTSIZEOF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0286:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 4
je .L_028B
.L_028C:
cmp dword ptr [ebp-12], 7
je .L_028B
.L_028D:
cmp dword ptr [ebp-12], 18
jne .L_028A
.L_028B:
mov edx, dword ptr [ebp+8]
cmp dword ptr [edx+12], 0
je .L_028F
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], -1
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+12]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.L_028F:
.L_028E:
.L_028A:
.L_0288:
.L_0287:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISACCESSTOLOCAL
ASTISACCESSTOLOCAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0292:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0296
.L_0297:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HSYMBISONLOCALSTACK
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0294
.L_0296:
cmp dword ptr [ebp-8], 18
jne .L_0298
.L_0299:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
jne .L_029B
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSYMBISONLOCALSTACK
add esp, 4
mov dword ptr [ebp-4], eax
.L_029B:
.L_029A:
jmp .L_0294
.L_0298:
cmp dword ptr [ebp-8], 9
jne .L_029C
.L_029D:
mov dword ptr [ebp-4], -1
jmp .L_0294
.L_029C:
cmp dword ptr [ebp-8], 19
jne .L_029E
.L_029F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 20
jne .L_02A1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+56], 0
je .L_02A3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 3
jne .L_02A4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .L_02AA
.L_02A4:
mov dword ptr [ebp-12], 0
.L_02AA:
cmp dword ptr [ebp-12], 0
je .L_02A7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 6
jne .L_02A9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+56]
call ASTISACCESSTOLOCAL
add esp, 4
mov dword ptr [ebp-4], eax
.L_02A9:
.L_02A8:
.L_02A7:
.L_02A6:
.L_02A3:
.L_02A2:
jmp .L_02A0
.L_02A1:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTISACCESSTOLOCAL
add esp, 4
mov dword ptr [ebp-4], eax
.L_02A0:
.L_029E:
.L_0294:
.L_0293:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISRELATIONALBOP
ASTISRELATIONALBOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_02AC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_02AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_02AF:
.L_02AE:
.L_02AD:
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
HHASDTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_022C:
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0230
.L_0231:
mov dword ptr [ebp-4], -1
jmp .L_022E
.L_0230:
cmp dword ptr [ebp-8], 39
jne .L_0232
.L_0233:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 16777216
test eax, eax
je .L_0235
mov dword ptr [ebp-4], -1
.L_0235:
.L_0234:
.L_0232:
.L_022E:
.L_022D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HASTDTORLISTRESCOPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_026A:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_026C:
cmp dword ptr [ebp-4], 0
je .L_026D
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_026F
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_026F:
.L_026E:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_026C
.L_026D:
.L_026B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYMBISONLOCALSTACK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0290:
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
.L_0291:
mov eax, dword ptr [ebp-4]
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
.balign 8
Lt_0185:	.quad	0x0000000000000000
.balign 8
Lt_0186:	.quad	0x36A6D601AD376AB9
.balign 8
Lt_0187:	.quad	0x47EC363CBF21F28A
.balign 8
Lt_018A:	.quad	0xC3E0000000000000
.balign 8
Lt_018B:	.quad	0x43F0000000000000
.balign 4
Lt_01DF:	.ascii	" \"\0"
.balign 4
Lt_01E0:	.ascii	".cast()\"\0"
