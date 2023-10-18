	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBINITSYMBOLS
_SYMBINITSYMBOLS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_006A:
push 6
push 176
push 8000
lea eax, [_SYMB+4]
push eax
call _LISTINIT
add esp, 16
push 129
push 17
push 1000
lea eax, [_SYMB+98608]
push eax
call _POOLINIT
add esp, 16
mov dword ptr [_SYMB+98348], 0
push 7
push 28
push 500
lea eax, [_SYMB+98652]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_SYMB+98352], 8
mov word ptr [_SYMB+98388], 0
lea eax, [_SYMB+98408]
mov dword ptr [ebp-4], eax
lea eax, [_SYMB+98352]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
lea eax, [_SYMB+98352]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+32], 0
push 0
push 8000
mov eax, dword ptr [ebp-4]
lea ebx, [eax+16]
push ebx
call _HASHINIT
add esp, 12
jmp .L_006D
.L_006E:
push 12
push 0
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+16]
push eax
call _memset
add esp, 12
.L_006D:
lea eax, [_SYMB+98652]
push eax
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+36], eax
lea eax, [_SYMB+98352]
mov dword ptr [_SYMB+98528], eax
lea eax, [_SYMB+98408]
mov dword ptr [_SYMB+98536], eax
lea eax, [_SYMB+98420]
mov dword ptr [_SYMB+98532], eax
mov dword ptr [_SYMB+36], 0
mov dword ptr [_SYMB+40], 0
push dword ptr [_SYMB+98532]
call _SYMBHASHLISTADD
add esp, 4
push 0
push 8000
lea eax, [_SYMB+98564]
push eax
call _HASHINIT
add esp, 12
push 6
push 24
push 4000
lea eax, [_SYMB+98576]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_SYMB+99036], 0
call _SYMBDATAINIT
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBINIT
_SYMBINIT:
push ebp
mov ebp, esp
.L_0077:
cmp dword ptr [_SYMB], 0
je .L_007A
jmp .L_0078
.L_007A:
.L_0079:
call _SYMBINITSYMBOLS
call _SYMBCOMPINIT
call _SYMBMANGLEINIT
call _SYMBKEYWORDINIT
push dword ptr [ebp+8]
call _SYMBDEFINEINIT
add esp, 4
call _SYMBFWDREFINIT
call _SYMBVARINIT
call _SYMBPROCINIT
call _HINITDEFTYPETB
call _SYMBCOMPRTTIINIT
call _SYMBKEYWORDCONSTSINIT
call _SYMBKEYWORDTYPEINIT
mov dword ptr [_SYMB], -1
.L_0078:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBEND
_SYMBEND:
.L_007B:
cmp dword ptr [_SYMB], 0
jne .L_007E
jmp .L_007C
.L_007E:
.L_007D:
call _SYMBDELGLOBALTB
mov dword ptr [_SYMB+98412], 0
mov dword ptr [_SYMB+98416], 0
mov dword ptr [_SYMB+98536], 0
lea eax, [_SYMB+98576]
push eax
call _LISTEND
add esp, 4
lea eax, [_SYMB+98564]
push eax
call _HASHEND
add esp, 4
lea eax, [_SYMB+98424]
push eax
call _HASHEND
add esp, 4
call _SYMBCOMPRTTIEND
call _SYMBPROCEND
call _SYMBVAREND
call _SYMBFWDREFEND
call _SYMBDEFINEEND
call _SYMBMANGLEEND
call _SYMBCOMPEND
push dword ptr [_SYMB+98444]
lea eax, [_SYMB+98652]
push eax
call _LISTDELNODE
add esp, 8
lea eax, [_SYMB+98652]
push eax
call _LISTEND
add esp, 4
lea eax, [_SYMB+98608]
push eax
call _POOLEND
add esp, 4
lea eax, [_SYMB+4]
push eax
call _LISTEND
add esp, 4
mov dword ptr [_SYMB], 0
.L_007C:
ret
.balign 16

.globl _SYMBCANDUPLICATE
_SYMBCANDUPLICATE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_007F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0082
.L_0084:
jmp .L_0080
jmp .L_0081
.L_0085:
.L_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_008A
.L_008C:
jmp .L_0080
jmp .L_0089
.L_008A:
mov eax, dword ptr [ebp-12]
add eax, 4294967291
cmp eax, 8
ja .L_0089
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_008D+eax*4-20]
_.L_008D:
.int .L_008C
.int .L_0089
.int .L_0089
.int .L_008C
.int .L_008C
.int .L_008C
.int .L_008C
.int .L_008C
.int .L_008C
.L_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.L_0088:
cmp dword ptr [ebp+8], 0
jne .L_0086
.L_0087:
jmp .L_0081
.L_008E:
.L_008F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 5
je .L_0095
.L_0096:
cmp dword ptr [ebp-12], 8
je .L_0095
.L_0097:
cmp dword ptr [ebp-12], 14
je .L_0095
.L_0098:
cmp dword ptr [ebp-12], 11
jne .L_0094
.L_0095:
jmp .L_0080
jmp .L_0092
.L_0094:
cmp dword ptr [ebp-12], 10
jne .L_0099
.L_009A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_009C
jmp .L_0080
.L_009C:
.L_009B:
.L_0099:
.L_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.L_0091:
cmp dword ptr [ebp+8], 0
jne .L_008F
.L_0090:
jmp .L_0081
.L_009D:
.L_009E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_00A2
.L_00A4:
jmp .L_00A1
.L_00A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 262144
test eax, eax
je .L_00A7
jmp .L_0080
.L_00A7:
.L_00A6:
jmp .L_00A1
.L_00A8:
cmp dword ptr [_ENV+136], 3
je .L_00AA
jmp .L_0080
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00AC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .L_00AE
jmp .L_0080
jmp .L_00AD
.L_00AE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .L_00B0
jmp .L_0080
.L_00B0:
.L_00AF:
.L_00AD:
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_00B2
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
cmp eax, ecx
jne .L_00B4
jmp .L_0080
.L_00B4:
.L_00B3:
jmp .L_00B1
.L_00B2:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 17
je .L_00B6
jmp .L_0080
.L_00B6:
.L_00B5:
.L_00B1:
jmp .L_00A1
.L_00B7:
jmp .L_0080
jmp .L_00A1
.L_00A2:
mov eax, dword ptr [ebp-12]
add eax, 4294967293
cmp eax, 11
ja .L_00B7
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00B8+eax*4-12]
_.L_00B8:
.int .L_00A8
.int .L_00B7
.int .L_00B7
.int .L_00A8
.int .L_00A4
.int .L_00B7
.int .L_00A4
.int .L_00A5
.int .L_00B7
.int .L_00B7
.int .L_00A4
.int .L_00A4
.L_00A1:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp+8], ecx
.L_00A0:
cmp dword ptr [ebp+8], 0
jne .L_009E
.L_009F:
jmp .L_0081
.L_00B9:
.L_00BA:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
jmp .L_00BE
.L_00C0:
jmp .L_00BD
.L_00C1:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 262144
test ecx, ecx
je .L_00C3
jmp .L_0080
.L_00C3:
.L_00C2:
jmp .L_00BD
.L_00C4:
cmp dword ptr [_ENV+136], 3
je .L_00C6
jmp .L_0080
.L_00C6:
.L_00C5:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .L_00C8
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
and eax, 32
test eax, eax
jne .L_00CA
jmp .L_0080
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 1048576
test ecx, ecx
je .L_00CC
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp eax, ebx
jne .L_00CE
jmp .L_0080
.L_00CE:
.L_00CD:
jmp .L_00CB
.L_00CC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 17
je .L_00D0
jmp .L_0080
.L_00D0:
.L_00CF:
.L_00CB:
jmp .L_00BD
.L_00D1:
mov eax, dword ptr [ebp+12]
movzx ebx, word ptr [eax+36]
mov eax, dword ptr [ebp+8]
movzx ecx, word ptr [eax+36]
cmp ebx, ecx
jne .L_00D3
jmp .L_0080
.L_00D3:
.L_00D2:
jmp .L_00BD
.L_00D4:
mov ecx, dword ptr [ebp+12]
movzx ebx, word ptr [ecx+36]
mov ecx, dword ptr [ebp+8]
movzx eax, word ptr [ecx+36]
cmp ebx, eax
jne .L_00D6
cmp dword ptr [_ENV+136], 0
jne .L_00D8
jmp .L_0080
.L_00D8:
.L_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ebx, ecx
jne .L_00DA
jmp .L_0080
.L_00DA:
.L_00D9:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 1048576
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 1048576
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00DC
jmp .L_0080
.L_00DC:
.L_00DB:
.L_00D6:
.L_00D5:
jmp .L_00BD
.L_00DD:
jmp .L_0080
jmp .L_00BD
.L_00BE:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .L_00DD
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00DE+eax*4-4]
_.L_00DE:
.int .L_00D4
.int .L_00DD
.int .L_00C4
.int .L_00DD
.int .L_00DD
.int .L_00C4
.int .L_00C0
.int .L_00DD
.int .L_00C0
.int .L_00C1
.int .L_00DD
.int .L_00D1
.int .L_00C0
.int .L_00C0
.int .L_00DD
.int .L_00D4
.L_00BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.L_00BC:
cmp dword ptr [ebp+8], 0
jne .L_00BA
.L_00BB:
jmp .L_0081
.L_00DF:
.L_00E0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_00E4
.L_00E6:
jmp .L_0080
jmp .L_00E3
.L_00E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_00E9
jmp .L_0080
.L_00E9:
.L_00E8:
jmp .L_00E3
.L_00E4:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967291
cmp ebx, 6
ja .L_00E3
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.L_00EA+ebx*4-20]
_.L_00EA:
.int .L_00E6
.int .L_00E6
.int .L_00E6
.int .L_00E6
.int .L_00E3
.int .L_00E7
.int .L_00E6
.L_00E3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.L_00E2:
cmp dword ptr [ebp+8], 0
jne .L_00E0
.L_00E1:
jmp .L_0081
.L_00EB:
jmp .L_0081
.L_00EC:
.L_00ED:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_00F1
.L_00F3:
mov ebx, dword ptr [ebp+12]
movzx eax, word ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
movzx ecx, word ptr [ebx+36]
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+140]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+140]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [esi]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00F5
jmp .L_0080
.L_00F5:
.L_00F4:
jmp .L_00F0
.L_00F6:
jmp .L_0080
jmp .L_00F0
.L_00F1:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967295
cmp ebx, 15
ja .L_00F6
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.L_00F7+ebx*4-4]
_.L_00F7:
.int .L_00F3
.int .L_00F3
.int .L_00F6
.int .L_00F6
.int .L_00F3
.int .L_00F6
.int .L_00F6
.int .L_00F3
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F3
.L_00F0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.L_00EF:
cmp dword ptr [ebp+8], 0
jne .L_00ED
.L_00EE:
jmp .L_0081
.L_0082:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 15
ja .L_0081
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00F8+eax*4-4]
_.L_00F8:
.int .L_00B9
.int .L_009D
.int .L_009D
.int .L_00EB
.int .L_0084
.int .L_0084
.int .L_00DF
.int .L_0084
.int .L_0085
.int .L_0085
.int .L_0084
.int .L_0084
.int .L_0085
.int .L_008E
.int .L_0081
.int .L_00EC
.L_0081:
mov dword ptr [ebp-4], -1
.L_0080:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNEWSYMBOL
_SYMBNEWSYMBOL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00FD:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jne .L_0100
mov eax, dword ptr [_SYMB+98536]
mov dword ptr [ebp+16], eax
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_0102
cmp dword ptr [_PARSER+100], 0
jne .L_0104
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
jne .L_0106
lea eax, [_SYMB+98408]
mov dword ptr [ebp+16], eax
.L_0106:
.L_0105:
and dword ptr [ebp+44], -129
jmp .L_0103
.L_0104:
or dword ptr [ebp+44], 128
.L_0103:
jmp .L_0101
.L_0102:
or dword ptr [ebp+44], 128
.L_0101:
.L_0100:
.L_00FF:
cmp dword ptr [ebp+20], 0
jne .L_0108
mov eax, dword ptr [_SYMB+98532]
mov dword ptr [ebp+20], eax
.L_0108:
.L_0107:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+12], 0
jne .L_010A
mov dword ptr [ebp-12], -1
lea eax, [_SYMB+4]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp+12], eax
.L_010A:
.L_0109:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+44]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+48]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+12], 0
mov bx, word ptr [_PARSER+104]
mov eax, dword ptr [ebp+12]
mov word ptr [eax+38], bx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+36]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+40]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 2
test ebx, ebx
je .L_010C
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+12]
and eax, 12288
test eax, eax
je .L_010E
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], 0
jmp .L_010D
.L_010E:
mov eax, dword ptr [_PARSER+108]
movzx ebx, word ptr [eax+36]
inc ebx
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.L_010D:
jmp .L_010B
.L_010C:
mov bx, word ptr [_PARSER+100]
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.L_010B:
cmp dword ptr [ebp+28], 0
je .L_010F
push 0
push dword ptr [ebp+28]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_0134
.L_010F:
mov dword ptr [ebp-16], 0
.L_0134:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jle .L_0112
mov eax, dword ptr [ebp-8]
inc eax
push eax
lea eax, [_SYMB+98608]
push eax
call _POOLNEWITEM
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .L_0114
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push dword ptr [ebp+28]
call _HUCASE
add esp, 8
jmp .L_0113
.L_0114:
push 0
push 0
push dword ptr [ebp+28]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call _fb_StrAssign
add esp, 20
.L_0113:
jmp .L_0111
.L_0112:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+16], 0
and dword ptr [ebp+8], -33
.L_0111:
cmp dword ptr [ebp+32], 0
je .L_0116
push 0
push dword ptr [ebp+32]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
push 0
push 0
push dword ptr [ebp+32]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _fb_StrAssign
add esp, 20
jmp .L_0115
.L_0116:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.L_0115:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+40], 0
mov dword ptr [eax+44], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+48], 0
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+140], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32
test ebx, ebx
je .L_0118
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
call _HASHHASH
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+148], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+148]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_011A
mov eax, dword ptr [ebp+12]
push dword ptr [eax+148]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call _HASHADD
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+144], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+156], 0
jmp .L_0119
.L_011A:
mov eax, dword ptr [ebp+8]
and eax, 128
test eax, eax
jne .L_011C
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call _SYMBCANDUPLICATE
add esp, 8
test eax, eax
jne .L_011E
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
lea eax, [_SYMB+98608]
push eax
call _POOLDELITEM
add esp, 8
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0120
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _free
add esp, 4
.L_0120:
.L_011F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+24], 0
je .L_0122
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
call _free
add esp, 4
.L_0122:
.L_0121:
cmp dword ptr [ebp-12], 0
je .L_0124
push dword ptr [ebp+12]
lea eax, [_SYMB+4]
push eax
call _LISTDELNODE
add esp, 8
.L_0124:
.L_0123:
jmp .L_00FE
.L_011E:
.L_011D:
.L_011C:
.L_011B:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+144]
mov dword ptr [ebx+144], ecx
cmp dword ptr [_ENV+136], 3
jne .L_0126
mov dword ptr [ebp-24], 0
.L_0127:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx], 6
jne .L_0128
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+156]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_012A
jmp .L_0128
.L_012A:
.L_0129:
jmp .L_0127
.L_0128:
cmp dword ptr [ebp-24], 0
jne .L_012C
jmp .L_012D
.L_012C:
.L_012B:
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+156], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx+152], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebx+156], ecx
cmp dword ptr [ebp-20], 0
je .L_012F
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+152], ebx
.L_012F:
.L_012E:
jmp .L_0125
.L_0126:
.L_012D:
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+144]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+144]
mov ecx, dword ptr [ebx+16]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+152], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax+156], ecx
.L_0125:
.L_0119:
jmp .L_0117
.L_0118:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+144], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+152], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+156], 0
.L_0117:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+8], 0
je .L_0131
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+172], ecx
jmp .L_0130
.L_0131:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.L_0130:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ecx+168], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+172], 0
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx+160], ecx
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+164], 0
mov ebx, dword ptr [ebp+36]
and ebx, 31
cmp ebx, 23
jne .L_0133
push dword ptr [ebp+12]
push dword ptr [ebp+40]
call _SYMBADDTOFWDREF
add esp, 8
.L_0133:
.L_0132:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_00FE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTADD
_SYMBHASHLISTADD:
push ebp
mov ebp, esp
push ebx
.L_0135:
cmp dword ptr [_SYMB+40], 0
je .L_0138
mov eax, dword ptr [_SYMB+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .L_0137
.L_0138:
mov ebx, dword ptr [ebp+8]
mov dword ptr [_SYMB+36], ebx
.L_0137:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_SYMB+40]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [_SYMB+40], eax
.L_0136:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTADDBEFORE
_SYMBHASHLISTADDBEFORE:
push ebp
mov ebp, esp
push ebx
.L_0139:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_013C
mov eax, dword ptr [ebp+12]
mov dword ptr [_SYMB+36], eax
jmp .L_013B
.L_013C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
.L_013B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+16], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+16], ecx
.L_013A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTDEL
_SYMBHASHLISTDEL:
push ebp
mov ebp, esp
push ebx
.L_013D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_0140
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov ebx, dword ptr [eax+20]
mov dword ptr [ecx+20], ebx
jmp .L_013F
.L_0140:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
mov dword ptr [_SYMB+36], ecx
.L_013F:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_0142
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov ebx, dword ptr [ecx+16]
mov dword ptr [eax+16], ebx
jmp .L_0141
.L_0142:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [_SYMB+40], eax
.L_0141:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
.L_013E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTINSERTNAMESPACE
_SYMBHASHLISTINSERTNAMESPACE:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0143:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
.L_0145:
cmp dword ptr [ebp-12], 0
je .L_0146
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+144], 0
je .L_0148
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+152], 0
jne .L_014A
lea eax, [_SYMB+98576]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], -1
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+16]
lea ebx, [_SYMB+98564]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_014C
mov eax, dword ptr [ebp-12]
push dword ptr [eax+148]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
lea eax, [_SYMB+98564]
push eax
call _HASHADD
add esp, 16
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+4], 0
jmp .L_014B
.L_014C:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+16], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+16]
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ecx+12], ebx
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebx+4], ecx
.L_014B:
cmp dword ptr [ebp-8], 0
je .L_014E
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ecx+20], ebx
jmp .L_014D
.L_014E:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_014D:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
.L_014A:
.L_0149:
.L_0148:
.L_0147:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-12], ecx
jmp .L_0145
.L_0146:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+24], ecx
.L_0144:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTREMOVENAMESPACE
_SYMBHASHLISTREMOVENAMESPACE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_014F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
.L_0151:
cmp dword ptr [ebp-4], 0
je .L_0152
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
je .L_0154
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
cmp dword ptr [ebp-12], 0
je .L_0156
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
.L_0156:
.L_0155:
jmp .L_0153
.L_0154:
cmp dword ptr [ebp-12], 0
je .L_0158
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
jmp .L_0157
.L_0158:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
lea ebx, [_SYMB+98564]
push ebx
call _HASHDEL
add esp, 12
.L_0157:
.L_0153:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-4]
lea eax, [_SYMB+98576]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0151
.L_0152:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [eax+24], 0
.L_0150:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNEWCHAINPOOL
_SYMBNEWCHAINPOOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_015D:
call _CHAINPOOLNEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBLOOKUP
_SYMBLOOKUP:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01A8:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
push offset _Lt_01BA
push dword ptr [ebp+8]
call _HUCASE
add esp, 8
mov eax, offset _Lt_01BA
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HASHHASH
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_SYMB+40]
mov dword ptr [ebp-12], eax
.L_01AA:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-16], eax
.L_01AD:
cmp dword ptr [ebp-16], 0
je .L_01AE
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 6
jne .L_01B0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 2
je .L_01B2
push dword ptr [ebp-16]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01A9
.L_01B2:
.L_01B1:
.L_01B0:
.L_01AF:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-16], ebx
jmp .L_01AD
.L_01AE:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-12], eax
.L_01AC:
cmp dword ptr [ebp-12], 0
jne .L_01AA
.L_01AB:
cmp dword ptr [_SYMB+98528], 0
je .L_01B4
mov eax, dword ptr [_SYMB+98528]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 10
je .L_01B8
.L_01B9:
cmp dword ptr [ebp-16], 11
jne .L_01B7
.L_01B8:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSYMBLOOKUPTYPENS
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01A9
.L_01B7:
.L_01B5:
.L_01B4:
.L_01B3:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSYMBLOOKUPNS
add esp, 20
mov dword ptr [ebp-4], eax
.L_01A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01BA,129

.section .text
.balign 16

.globl _SYMBLOOKUPAT
_SYMBLOOKUPAT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01C9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_01CC
jmp .L_01CA
.L_01CC:
.L_01CB:
cmp dword ptr [ebp+16], 0
jne .L_01CE
push offset _Lt_01E4
push dword ptr [ebp+12]
call _HUCASE
add esp, 8
mov ecx, offset _Lt_01E4
mov dword ptr [ebp+12], ecx
.L_01CE:
.L_01CD:
push dword ptr [ebp+12]
call _HASHHASH
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+72]
push ecx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-12], eax
.L_01CF:
cmp dword ptr [ebp-12], 0
je .L_01D0
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 128
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_01D2
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+156]
mov dword ptr [ebp-12], ecx
jmp .L_01D1
.L_01D2:
jmp .L_01D0
.L_01D1:
jmp .L_01CF
.L_01D0:
cmp dword ptr [ebp-12], 0
jne .L_01D4
cmp dword ptr [ebp+20], 0
jne .L_01D6
mov dword ptr [ebp-4], 0
jmp .L_01CA
.L_01D6:
.L_01D5:
jmp .L_01D3
.L_01D4:
push dword ptr [ebp-12]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_01CA
.L_01D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_01D8
mov dword ptr [ebp-4], 0
jmp .L_01CA
.L_01D8:
.L_01D7:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+92]
cmp dword ptr [ecx], 0
jne .L_01DA
mov dword ptr [ebp-4], 0
jmp .L_01CA
.L_01DA:
.L_01D9:
lea ecx, [_SYMB+98352]
cmp dword ptr [ebp+8], ecx
jne .L_01DC
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOOKUPIMPORTHASH
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_01CA
.L_01DC:
.L_01DB:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 10
je .L_01E0
.L_01E1:
cmp dword ptr [ebp-16], 11
jne .L_01DF
.L_01E0:
push 1
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOOKUPIMPORTLIST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01CA
.L_01DF:
.L_01DD:
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOOKUPIMPORTLIST
add esp, 16
mov dword ptr [ebp-4], eax
.L_01CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01E4,129

.section .text
.balign 16

.globl _SYMBLOOKUPBYNAMEANDCLASS
_SYMBLOOKUPBYNAMEANDCLASS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01E7:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01EA
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_01E9
.L_01EA:
mov dword ptr [ebp-4], 0
.L_01E9:
.L_01E8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDBYCLASS
_SYMBFINDBYCLASS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01EB:
mov dword ptr [ebp-12], 0
.L_01ED:
cmp dword ptr [ebp+8], 0
je .L_01EE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_01EF:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_01F3
mov dword ptr [ebp-12], -1
jmp .L_01EE
.L_01F3:
.L_01F2:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_01F1:
cmp dword ptr [ebp-8], 0
jne .L_01EF
.L_01F0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .L_01ED
.L_01EE:
cmp dword ptr [ebp-12], 0
jne .L_01F5
mov dword ptr [ebp-4], 0
jmp .L_01EC
.L_01F5:
.L_01F4:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_01F7
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_01F9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01EC
jmp .L_01F8
.L_01F9:
mov dword ptr [ebp-4], 0
jmp .L_01EC
.L_01F8:
.L_01F7:
.L_01F6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDVARBYSUFFIX
_SYMBFINDVARBYSUFFIX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01FA:
cmp dword ptr [ebp+12], 17
jne .L_01FD
.L_01FE:
cmp dword ptr [ebp+8], 0
je .L_01FF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0200:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .L_0204
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 17
je .L_0208
.L_0209:
cmp dword ptr [ebp-12], 18
je .L_0208
.L_020A:
cmp dword ptr [ebp-12], 4
jne .L_0207
.L_0208:
jmp .L_020B
.L_0207:
.L_0205:
.L_0204:
.L_0203:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_0202:
cmp dword ptr [ebp-8], 0
jne .L_0200
.L_0201:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .L_01FE
.L_01FF:
jmp .L_01FC
.L_01FD:
.L_020C:
cmp dword ptr [ebp+8], 0
je .L_020D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_020E:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .L_0212
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .L_0214
jmp .L_020B
.L_0214:
.L_0213:
.L_0212:
.L_0211:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_0210:
cmp dword ptr [ebp-8], 0
jne .L_020E
.L_020F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_020C
.L_020D:
.L_01FC:
mov dword ptr [ebp-4], 0
jmp .L_01FB
.L_020B:
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_0216
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0215
.L_0216:
mov dword ptr [ebp-4], 0
.L_0215:
.L_01FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDVARBYDEFTYPE
_SYMBFINDVARBYDEFTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0217:
cmp dword ptr [ebp+12], 17
jne .L_021A
.L_021B:
cmp dword ptr [ebp+8], 0
je .L_021C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_021D:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .L_0221
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_0223
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .L_0227
.L_0228:
cmp dword ptr [ebp-12], 18
je .L_0227
.L_0229:
cmp dword ptr [ebp-12], 4
jne .L_0226
.L_0227:
jmp .L_022A
.L_0226:
.L_0224:
jmp .L_0222
.L_0223:
jmp .L_022A
.L_0222:
.L_0221:
.L_0220:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_021F:
cmp dword ptr [ebp-8], 0
jne .L_021D
.L_021E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_021B
.L_021C:
jmp .L_0219
.L_021A:
.L_022B:
cmp dword ptr [ebp+8], 0
je .L_022C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_022D:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_0231
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_0233
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .L_0235
jmp .L_022A
.L_0235:
.L_0234:
jmp .L_0232
.L_0233:
jmp .L_022A
.L_0232:
.L_0231:
.L_0230:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_022F:
cmp dword ptr [ebp-8], 0
jne .L_022D
.L_022E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_022B
.L_022C:
.L_0219:
mov dword ptr [ebp-4], 0
jmp .L_0218
.L_022A:
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_0237
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0236
.L_0237:
mov dword ptr [ebp-4], 0
.L_0236:
.L_0218:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDBYCLASSANDTYPE
_SYMBFINDBYCLASSANDTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0238:
mov dword ptr [ebp-4], 0
.L_023A:
cmp dword ptr [ebp+8], 0
je .L_023B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_023C:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
cmp eax, dword ptr [ebx]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
cmp ecx, dword ptr [ebx+28]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0240
cmp dword ptr [ebp+12], 1
jne .L_0242
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
jne .L_0244
jmp .L_0239
.L_0244:
.L_0243:
.L_0242:
.L_0241:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0239
.L_0240:
.L_023F:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-8], ecx
.L_023E:
cmp dword ptr [ebp-8], 0
jne .L_023C
.L_023D:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp+8], eax
jmp .L_023A
.L_023B:
.L_0239:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELFROMCHAINLIST
_SYMBDELFROMCHAINLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0247:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+152]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-4], 0
je .L_024A
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+156], ebx
cmp dword ptr [ebp-8], 0
je .L_024C
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+152], eax
.L_024C:
.L_024B:
jmp .L_0249
.L_024A:
cmp dword ptr [ebp-8], 0
je .L_024E
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+144]
mov ebx, dword ptr [eax+16]
mov dword ptr [ecx], ebx
jmp .L_024D
.L_024E:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+140]
lea ebx, [ecx+4]
push ebx
call _HASHDEL
add esp, 12
.L_024D:
.L_0249:
.L_0248:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELFROMHASH
_SYMBDELFROMHASH:
push ebp
mov ebp, esp
.L_024F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+144], 0
jne .L_0252
jmp .L_0250
.L_0252:
.L_0251:
push dword ptr [ebp+8]
call _SYMBDELFROMCHAINLIST
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+144], 0
.L_0250:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFREESYMBOL
_SYMBFREESYMBOL:
push ebp
mov ebp, esp
push ebx
.L_0253:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
cmp ebx, 23
jne .L_0256
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBREMOVEFROMFWDREF
add esp, 8
.L_0256:
.L_0255:
push dword ptr [ebp+8]
call _SYMBDELFROMHASH
add esp, 4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_UNLINKONLY
add esp, 4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_REMONLY
add esp, 4
.L_0254:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFREESYMBOL_REMONLY
_SYMBFREESYMBOL_REMONLY:
push ebp
mov ebp, esp
.L_0257:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [_SYMB+98608]
push eax
call _POOLDELITEM
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_025A
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _free
add esp, 4
.L_025A:
.L_0259:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_025C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _free
add esp, 4
.L_025C:
.L_025B:
push dword ptr [ebp+8]
lea eax, [_SYMB+4]
push eax
call _LISTDELNODE
add esp, 8
.L_0258:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFREESYMBOL_UNLINKONLY
_SYMBFREESYMBOL_UNLINKONLY:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_025D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-8], 0
je .L_0260
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+172], eax
jmp .L_025F
.L_0260:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
.L_025F:
cmp dword ptr [ebp-12], 0
je .L_0262
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+168], eax
jmp .L_0261
.L_0262:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_0261:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+168], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+172], 0
.L_025E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELSYMBOL
_SYMBDELSYMBOL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0263:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0266
.L_0268:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBDELVAR
add esp, 8
jmp .L_0265
.L_0269:
push dword ptr [ebp+8]
call _SYMBDELCONST
add esp, 4
jmp .L_0265
.L_026A:
push dword ptr [ebp+8]
call _SYMBDELPROTOTYPE
add esp, 4
jmp .L_0265
.L_026B:
push dword ptr [ebp+8]
call _SYMBDELDEFINE
add esp, 4
jmp .L_0265
.L_026C:
push dword ptr [ebp+8]
call _SYMBDELLABEL
add esp, 4
jmp .L_0265
.L_026D:
push dword ptr [ebp+8]
call _SYMBDELENUM
add esp, 4
jmp .L_0265
.L_026E:
push dword ptr [ebp+8]
call _SYMBDELSTRUCT
add esp, 4
jmp .L_0265
.L_026F:
push dword ptr [ebp+8]
call _SYMBDELSCOPE
add esp, 4
jmp .L_0265
.L_0270:
push dword ptr [ebp+8]
call _SYMBDELNAMESPACE
add esp, 4
jmp .L_0265
.L_0271:
push 0
push dword ptr [ebp+8]
call _SYMBNAMESPACEREMOVE
add esp, 8
jmp .L_0265
.L_0272:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
jmp .L_0265
.L_0266:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 16
ja .L_0272
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_0273+ebx*4-4]
_.L_0273:
.int .L_0268
.int .L_0269
.int .L_026A
.int .L_0272
.int .L_026B
.int .L_0272
.int .L_026C
.int .L_0270
.int .L_026D
.int .L_026E
.int .L_0272
.int .L_0268
.int .L_0272
.int .L_0272
.int .L_026F
.int .L_0272
.int .L_0271
.L_0265:
.L_0264:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCLONESYMBOL
_SYMBCLONESYMBOL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0274:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_0277
.L_0279:
push dword ptr [ebp+8]
call _SYMBADDPROCPTRFROMFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0276
.L_027A:
push dword ptr [ebp+8]
call _SYMBCLONEVAR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0276
.L_027B:
push dword ptr [ebp+8]
call _SYMBCLONECONST
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0276
.L_027C:
push dword ptr [ebp+8]
call _SYMBCLONELABEL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0276
.L_027D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .L_027F
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp+8]
call _SYMBGETDESCTYPEARRAYDTYPE
add esp, 12
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBGETDESCTYPEDIMENSIONS
add esp, 4
push eax
call _SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_027E
.L_027F:
push dword ptr [ebp+8]
call _SYMBCLONESIMPLESTRUCT
add esp, 4
mov dword ptr [ebp-4], eax
.L_027E:
jmp .L_0276
.L_0280:
mov dword ptr [ebp-4], 0
jmp .L_0276
.L_0277:
mov eax, dword ptr [ebp-16]
add eax, 4294967295
cmp eax, 9
ja .L_0280
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0281+eax*4-4]
_.L_0281:
.int .L_027A
.int .L_027B
.int .L_0279
.int .L_0280
.int .L_0280
.int .L_0280
.int .L_027C
.int .L_0280
.int .L_0280
.int .L_027D
.L_0276:
.L_0275:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELGLOBALTB
_SYMBDELGLOBALTB:
push ebp
mov ebp, esp
sub esp, 4
.L_0282:
.L_0284:
mov eax, dword ptr [_SYMB+98416]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0288
jmp .L_0285
.L_0288:
.L_0287:
push -1
push dword ptr [ebp-4]
call _SYMBDELSYMBOL
add esp, 8
.L_0286:
jmp .L_0284
.L_0285:
.L_0283:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELSYMBOLTB
_SYMBDELSYMBOLTB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0289:
cmp dword ptr [ebp+12], 0
je .L_028C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_028D:
cmp dword ptr [ebp-4], 0
je .L_028E
push dword ptr [ebp-4]
call _SYMBDELFROMHASH
add esp, 4
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
jne .L_0290
push -1
push dword ptr [ebp-4]
call _SYMBNAMESPACEREMOVE
add esp, 8
.L_0290:
.L_028F:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .L_028D
.L_028E:
jmp .L_028B
.L_028C:
.L_0291:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0295
jmp .L_0292
.L_0295:
.L_0294:
push -1
push dword ptr [ebp-4]
call _SYMBDELSYMBOL
add esp, 8
.L_0293:
jmp .L_0291
.L_0292:
.L_028B:
.L_028A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASCTOR
_SYMBHASCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0296:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_0297:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASDEFCTOR
_SYMBHASDEFCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0298:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASDEFCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_0299:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASDTOR
_SYMBHASDTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_029A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASDTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_029B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISDATADESC
_SYMBISDATADESC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_029C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_029F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
cmp eax, dword ptr [_AST+116]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_029F:
.L_029E:
.L_029D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISARRAY
_SYMBISARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_02A6
.L_02A7:
cmp dword ptr [ebp-8], 12
jne .L_02A5
.L_02A6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_02A3
.L_02A5:
mov dword ptr [ebp-4], 0
.L_02A8:
.L_02A3:
.L_02A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISSTRING
_SYMBISSTRING:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02AA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_02AD
.L_02AF:
mov dword ptr [ebp-4], -1
jmp .L_02AC
.L_02B0:
mov dword ptr [ebp-4], 0
jmp .L_02AC
.L_02AD:
mov eax, dword ptr [ebp-8]
add eax, 4294967292
cmp eax, 14
ja .L_02B0
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_02B1+eax*4-16]
_.L_02B1:
.int .L_02AF
.int .L_02B0
.int .L_02B0
.int .L_02AF
.int .L_02B0
.int .L_02B0
.int .L_02B0
.int .L_02B0
.int .L_02B0
.int .L_02B0
.int .L_02B0
.int .L_02B0
.int .L_02B0
.int .L_02AF
.int .L_02AF
.L_02AC:
.L_02AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETVALISTTYPE
_SYMBGETVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_02B2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_02B5
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02B8
.L_02B9:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_02BB
mov dword ptr [ebp-4], 2
.L_02BB:
.L_02BA:
jmp .L_02B6
.L_02B8:
cmp dword ptr [ebp-8], 20
jne .L_02BC
.L_02BD:
cmp dword ptr [ebp+12], 0
je .L_02BF
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 15728640
sar ebx, 20
mov dword ptr [ebp-4], ebx
.L_02BF:
.L_02BE:
jmp .L_02B6
.L_02BC:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_02C1
mov dword ptr [ebp-12], 24
jmp .L_02C7
.L_02C1:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_02C7:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_02C4
mov ebx, dword ptr [ebp+8]
and ebx, 480
test ebx, ebx
je .L_02C6
mov dword ptr [ebp-4], 1
.L_02C6:
.L_02C5:
.L_02C4:
.L_02C3:
.L_02C0:
.L_02B6:
.L_02B5:
.L_02B4:
.L_02B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBTYPETOSTR
_SYMBTYPETOSTR:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02C8:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], -2147483648
jne .L_02CB
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_02C9
.L_02CB:
.L_02CA:
cmp dword ptr [ebp+20], 0
jg .L_02CD
jl .L_02F4
cmp dword ptr [ebp+16], 0
ja .L_02CD
.L_02F4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.L_02CD:
.L_02CC:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-28]
add eax, 9
mov edx, 1
mov ecx, eax
sal edx, cl
and edx, dword ptr [ebp+8]
test edx, edx
je .L_02CF
push 0
push 7
push offset _Lt_02D0
push -1
lea edx, [ebp-24]
push edx
call _fb_StrAssign
add esp, 20
jmp .L_02CE
.L_02CF:
push 0
push 1
push offset _Lt_0000
push -1
lea edx, [ebp-24]
push edx
call _fb_StrAssign
add esp, 20
.L_02CE:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-36], edx
jmp .L_02D2
.L_02D4:
push 0
push -1
push dword ptr [ebp+12]
call _HGETNAMESPACEPREFIX
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_02D1
.L_02D6:
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp+20], edx
mov eax, -1
jne .L_02F5
cmp dword ptr [ebp+16], ebx
jne .L_02F5
.L_02F6:
xor eax, eax
.L_02F5:
or eax, dword ptr [ebp+24]
je .L_02D9
cmp dword ptr [ebp-32], 18
jne .L_02DB
.L_02DC:
add dword ptr [ebp+16], 4294967295
adc dword ptr [ebp+20], 4294967295
jmp .L_02DA
.L_02DB:
cmp dword ptr [ebp-32], 7
jne .L_02DD
.L_02DE:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ___divdi3
add esp, 16
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.L_02DD:
.L_02DA:
push 0
push 4
push offset _Lt_02DF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02D9:
.L_02D8:
jmp .L_02D1
.L_02E0:
cmp dword ptr [ebp-28], 0
jle .L_02E2
dec dword ptr [ebp-28]
.L_02E2:
.L_02E1:
cmp dword ptr [ebp-28], 0
jle .L_02E4
push 0
push 8
push offset _Lt_02E5
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02E4:
.L_02E3:
push 0
push -1
push dword ptr [ebp+12]
call _SYMBPROCPTRTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-28], 0
jle .L_02E7
push 0
push 2
push offset _Lt_02E8
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02E7:
.L_02E6:
jmp .L_02D1
.L_02E9:
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_02D1
.L_02D2:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 19
ja .L_02E9
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_02EB+eax*4-16]
_.L_02EB:
.int .L_02D6
.int .L_02E9
.int .L_02E9
.int .L_02D6
.int .L_02E9
.int .L_02E9
.int .L_02D4
.int .L_02E9
.int .L_02E9
.int .L_02E9
.int .L_02E9
.int .L_02E9
.int .L_02E9
.int .L_02E9
.int .L_02D6
.int .L_02E9
.int .L_02D4
.int .L_02E9
.int .L_02E0
.int .L_02D4
.L_02D1:
mov eax, dword ptr [ebp-28]
dec eax
mov dword ptr [ebp-36], eax
jmp .L_02EC
.L_02EF:
mov eax, dword ptr [ebp-36]
add eax, 9
mov edx, 1
mov ecx, eax
sal edx, cl
and edx, dword ptr [ebp+8]
test edx, edx
je .L_02F1
push 0
push 7
push offset _Lt_02F2
push -1
lea edx, [ebp-24]
push edx
call _fb_StrConcatAssign
add esp, 20
.L_02F1:
.L_02F0:
push 0
push 5
push offset _Lt_02F3
push -1
lea edx, [ebp-24]
push edx
call _fb_StrConcatAssign
add esp, 20
.L_02ED:
dec dword ptr [ebp-36]
.L_02EC:
cmp dword ptr [ebp-36], 0
jge .L_02EF
.L_02EE:
push 0
push -1
lea edx, [ebp-24]
push edx
push -1
lea edx, [ebp-12]
push edx
call _fb_StrAssign
add esp, 20
lea edx, [ebp-24]
push edx
call _fb_StrDelete
add esp, 4
.L_02C9:
lea edx, [ebp-12]
push edx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETDEFTYPE
_SYMBGETDEFTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_02F7:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 97
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-8], 122
setbe al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_02FC
add dword ptr [ebp-8], 4294967264
.L_02FC:
.L_02FB:
mov eax, dword ptr [ebp-8]
add eax, 4294967231
mov ebx, eax
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 30
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_02FE
cmp dword ptr [_ENV+136], 3
jne .L_0300
mov dword ptr [ebp-4], 15
jmp .L_02FF
.L_0300:
mov dword ptr [ebp-4], 8
.L_02FF:
jmp .L_02FD
.L_02FE:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_DEFTYPETB+eax*4]
mov dword ptr [ebp-4], ebx
.L_02FD:
.L_02F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETDEFTYPE
_SYMBSETDEFTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0305:
cmp dword ptr [ebp+8], 65
jae .L_0308
mov dword ptr [ebp+8], 65
jmp .L_0307
.L_0308:
cmp dword ptr [ebp+8], 95
jbe .L_0309
mov dword ptr [ebp+8], 95
.L_0309:
.L_0307:
cmp dword ptr [ebp+12], 65
jae .L_030B
mov dword ptr [ebp+12], 65
jmp .L_030A
.L_030B:
cmp dword ptr [ebp+12], 95
jbe .L_030C
mov dword ptr [ebp+12], 95
.L_030C:
.L_030A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jle .L_030E
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
pop dword ptr [ebp+12]
.L_030E:
.L_030D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
jmp .L_0310
.L_0313:
mov eax, dword ptr [ebp-4]
add eax, 4294967231
mov ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [_DEFTYPETB+ebx*4], eax
.L_0311:
inc dword ptr [ebp-4]
.L_0310:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_0313
.L_0312:
.L_0306:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBRECALCLEN
_SYMBRECALCLEN:
push ebp
mov ebp, esp
push ebx
.L_0314:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0317
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBCALCPARAMLEN
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
jmp .L_0316
.L_0317:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBCALCLEN
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
.L_0316:
.L_0315:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETTYPE
_SYMBSETTYPE:
push ebp
mov ebp, esp
push ebx
.L_0318:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+32], eax
push dword ptr [ebp+8]
call _SYMBRECALCLEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_031B
push dword ptr [ebp+8]
call _SYMBPROCRECALCREALTYPE
add esp, 4
.L_031B:
.L_031A:
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 23
jne .L_031D
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _SYMBADDTOFWDREF
add esp, 8
.L_031D:
.L_031C:
.L_0319:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCLEN
_SYMBCALCLEN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_031E:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0320
mov dword ptr [ebp-12], 24
jmp .L_032B
.L_0320:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_032B:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_0323
.L_0325:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_0322
.L_0326:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_0322
.L_0327:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0328
mov dword ptr [ebp-20], 24
jmp .L_032C
.L_0328:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_032C:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .L_0322
.L_0323:
mov eax, dword ptr [ebp-16]
add eax, 4294967278
cmp eax, 2
ja .L_0327
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_032A+eax*4-72]
_.L_032A:
.int .L_0325
.int .L_0327
.int .L_0326
.L_0322:
.L_031F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCDEREFLEN
_SYMBCALCDEREFLEN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_032D:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
push eax
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .L_0330
cmp dword ptr [ebp-16], 0
jne .L_0330
.L_0333:
cmp dword ptr [ebp+8], 32
jne .L_0332
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.L_0332:
.L_0331:
.L_0330:
.L_032F:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.L_032E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISPARENTNAMESPACE
_SYMBISPARENTNAMESPACE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0334:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
je .L_0337
mov dword ptr [ebp-4], 0
jmp .L_0335
.L_0337:
.L_0336:
cmp dword ptr [ebp+12], 0
jne .L_0339
mov dword ptr [ebp-4], 0
jmp .L_0335
.L_0339:
.L_0338:
cmp dword ptr [ebp+16], 0
je .L_033B
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .L_033A
.L_033B:
mov eax, dword ptr [_SYMB+98528]
mov dword ptr [ebp-8], eax
.L_033A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 262144
test ebx, ebx
jne .L_033D
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0335
.L_033D:
.L_033C:
.L_033E:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_033F
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 10
jne .L_0341
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .L_0343
mov dword ptr [ebp-4], -1
jmp .L_0335
.L_0343:
.L_0342:
.L_0341:
.L_0340:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_033E
.L_033F:
mov dword ptr [ebp-4], 0
.L_0335:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKACCESS
_SYMBCHECKACCESS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0351:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 6291456
test ebx, ebx
jne .L_0354
mov dword ptr [ebp-4], -1
jmp .L_0352
.L_0354:
.L_0353:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
.L_0355:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0357:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 10
jne .L_0355
.L_0356:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HSYMBCHECKACCESSPARENT
add esp, 8
mov dword ptr [ebp-4], eax
.L_0352:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKACCESSSTRUCT
_SYMBCHECKACCESSSTRUCT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0358:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_035A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 6291456
test ebx, ebx
je .L_035E
jmp .L_035B
.L_035E:
.L_035D:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
lea ebx, [_SYMB+98352]
cmp dword ptr [ebp-8], ebx
jne .L_0360
mov dword ptr [ebp-4], -1
jmp .L_0359
.L_0360:
.L_035F:
.L_035C:
jmp .L_035A
.L_035B:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
.L_0361:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0363:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 10
jne .L_0361
.L_0362:
.L_0364:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HSYMBCHECKACCESSPARENT
add esp, 8
test eax, eax
je .L_0368
mov dword ptr [ebp-4], -1
jmp .L_0359
.L_0368:
.L_0367:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_0366:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-8], eax
jne .L_0364
.L_0365:
mov dword ptr [ebp-4], 0
.L_0359:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKCONSTASSIGNTOPLEVEL
_SYMBCHECKCONSTASSIGNTOPLEVEL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0369:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
and eax, 261632
mov ebx, dword ptr [ebp+12]
and ebx, 261632
or eax, ebx
test eax, eax
jne .L_036C
mov dword ptr [ebp-4], -1
jmp .L_036A
.L_036C:
.L_036B:
cmp dword ptr [ebp+24], 4
jne .L_036E
mov dword ptr [ebp-4], -1
jmp .L_036A
.L_036E:
.L_036D:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
and eax, 480
sar eax, 5
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+24], 1
jne .L_0370
.L_0371:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp-16]
inc eax
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
and eax, 512
test eax, eax
je .L_0373
mov eax, dword ptr [ebp+28]
inc dword ptr [eax]
.L_0373:
.L_0372:
jmp .L_036F
.L_0370:
cmp dword ptr [ebp+24], 0
jne .L_0374
.L_0375:
mov dword ptr [ebp-8], 1
jmp .L_036F
.L_0374:
inc dword ptr [ebp-20]
.L_0376:
.L_036F:
.L_0377:
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebp-12]
setle al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp-16]
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0378
mov ebx, dword ptr [ebp-8]
add ebx, 9
mov eax, 1
mov ecx, ebx
sal eax, cl
and eax, dword ptr [ebp+8]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
add eax, 9
mov ebx, 1
mov ecx, eax
sal ebx, cl
and ebx, dword ptr [ebp+12]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebp-24], ebx
jne .L_037A
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebx], eax
jge .L_037C
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
.L_037C:
.L_037B:
.L_037A:
.L_0379:
mov ebx, dword ptr [ebp-24]
not ebx
and ebx, dword ptr [ebp-28]
je .L_037E
jmp .L_036A
.L_037E:
.L_037D:
dec dword ptr [ebp-20]
inc dword ptr [ebp-8]
jmp .L_0377
.L_0378:
mov dword ptr [ebp-4], -1
.L_036A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKCONSTASSIGN
_SYMBCHECKCONSTASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0394:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0397
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 22
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
and ebx, 31
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0399
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSYMBCHECKCONSTASSIGNFUNCPTR
add esp, 28
and dword ptr [ebp-8], eax
.L_0399:
.L_0398:
.L_0397:
.L_0396:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0395:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFOREACHGLOBAL
_SYMBFOREACHGLOBAL:
push ebp
mov ebp, esp
.L_03AA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [_SYMB+98412]
call _HFOREACHGLOBAL
add esp, 12
.L_03AB:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDUMPPRETTYTOSTR
_SYMBDUMPPRETTYTOSTR:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03C9:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push 2
push offset _Lt_03CB
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [_CLASSNAMESPRETTY+ebx*4-4]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_03CA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__symb:
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
_HINITDEFTYPETB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006F:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [_ENV+136], 3
jne .L_0072
mov dword ptr [ebp-4], 15
jmp .L_0071
.L_0072:
mov dword ptr [ebp-4], 8
.L_0071:
mov dword ptr [ebp-8], 0
.L_0076:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [_DEFTYPETB+eax*4], ebx
.L_0074:
inc dword ptr [ebp-8]
.L_0073:
cmp dword ptr [ebp-8], 30
jle .L_0076
.L_0075:
.L_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CHAINPOOLNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0159:
inc dword ptr [_SYMB+98348]
cmp dword ptr [_SYMB+98348], 4096
jl .L_015C
mov dword ptr [_SYMB+98348], 0
.L_015C:
.L_015B:
mov eax, dword ptr [_SYMB+98348]
imul eax, 24
mov ebx, offset _SYMB
add ebx, eax
lea eax, [ebx+44]
mov dword ptr [ebp-4], eax
.L_015A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_015F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
.L_0161:
cmp dword ptr [ebp-28], 0
je .L_0162
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+56]
lea eax, [ebx+72]
push eax
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0164
call _CHAINPOOLNEXT
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_0166
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 20
jne .L_0169
.L_016A:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_016C
mov dword ptr [ebp-24], -1
.L_016C:
.L_016B:
jmp .L_0167
.L_0169:
cmp dword ptr [ebp-36], 10
jne .L_016D
.L_016E:
mov dword ptr [ebp-24], -1
.L_016D:
.L_0167:
jmp .L_0165
.L_0166:
mov dword ptr [ebp-24], -1
.L_0165:
cmp dword ptr [ebp-24], -1
jne .L_0170
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-32]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+8], -1
cmp dword ptr [ebp-12], 0
jne .L_0172
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-12], ebx
jmp .L_0171
.L_0172:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebx+4], eax
.L_0171:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_0170:
.L_016F:
.L_0164:
.L_0163:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-28], ebx
jmp .L_0161
.L_0162:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_0160:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYMBLOOKUPNS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0173:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_SYMB+40]
mov dword ptr [ebp+20], eax
.L_0175:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
.L_0178:
cmp dword ptr [ebp-8], 0
je .L_0179
mov eax, dword ptr [ebp+20]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .L_017B
push dword ptr [ebp-8]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0174
jmp .L_017A
.L_017B:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
jne .L_017D
push dword ptr [ebp-8]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0174
jmp .L_017C
.L_017D:
cmp dword ptr [ebp-12], 0
jne .L_017F
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
.L_017F:
.L_017E:
.L_017C:
.L_017A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
jmp .L_0178
.L_0179:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp+20], eax
.L_0177:
cmp dword ptr [ebp+20], 0
jne .L_0175
.L_0176:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
lea eax, [_SYMB+98564]
push eax
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0181
cmp dword ptr [ebp-12], 0
je .L_0183
push dword ptr [ebp-12]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
jmp .L_0174
.L_0183:
.L_0182:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_0174
.L_0181:
.L_0180:
cmp dword ptr [ebp-12], 0
je .L_0185
push dword ptr [ebp-12]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0174
.L_0185:
.L_0184:
mov dword ptr [ebp-4], 0
.L_0174:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYMBLOOKUPTYPENS:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0186:
mov eax, dword ptr [_SYMB+40]
mov dword ptr [ebp+20], eax
.L_0188:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
.L_018B:
cmp dword ptr [ebp-8], 0
je .L_018C
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_018E
push dword ptr [ebp-8]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0187
.L_018E:
.L_018D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
jmp .L_018B
.L_018C:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp+20], eax
.L_018A:
cmp dword ptr [ebp+20], 0
jne .L_0188
.L_0189:
mov eax, dword ptr [_SYMB+98528]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
lea ebx, [eax+72]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
.L_018F:
cmp dword ptr [ebp-8], 0
je .L_0190
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0192
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
jmp .L_0191
.L_0192:
jmp .L_0190
.L_0191:
jmp .L_018F
.L_0190:
cmp dword ptr [ebp-8], 0
je .L_0194
push dword ptr [ebp-8]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .L_0187
.L_0194:
.L_0193:
mov eax, dword ptr [_SYMB+98528]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+92], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+92]
cmp dword ptr [ecx], 0
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0196
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _HLOOKUPIMPORTLIST
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-8], 0
.L_0197:
cmp dword ptr [ebp-20], 0
je .L_0198
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0199:
cmp dword ptr [ebp-8], 0
je .L_019A
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 20
jne .L_019D
.L_019E:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_01A0
mov eax, dword ptr [ebp-20]
push dword ptr [eax]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0187
.L_01A0:
.L_019F:
jmp .L_019B
.L_019D:
cmp dword ptr [ebp-28], 10
jne .L_01A1
.L_01A2:
.L_01A1:
.L_019B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
jmp .L_0199
.L_019A:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-20], eax
jmp .L_0197
.L_0198:
.L_0196:
.L_0195:
mov eax, dword ptr [_SYMB+40]
mov dword ptr [ebp+20], eax
.L_01A3:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01A7
push dword ptr [ebp-8]
call _SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0187
.L_01A7:
.L_01A6:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp+20], ebx
.L_01A5:
cmp dword ptr [ebp+20], 0
jne .L_01A3
.L_01A4:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
lea ebx, [_SYMB+98564]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.L_0187:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPIMPORTHASH:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_01BB:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [_SYMB+98564]
push eax
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01BE
mov dword ptr [ebp-4], 0
jmp .L_01BC
.L_01BE:
.L_01BD:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
.L_01BF:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-24], ebx
.L_01C2:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+68], eax
jne .L_01C6
call _CHAINPOOLNEXT
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-28]
mov dword ptr [ecx+4], 0
mov ecx, dword ptr [ebp-28]
mov dword ptr [ecx+8], -1
cmp dword ptr [ebp-12], 0
jne .L_01C8
mov ecx, dword ptr [ebp-28]
mov dword ptr [ebp-12], ecx
jmp .L_01C7
.L_01C8:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-28]
mov dword ptr [ecx+4], ebx
.L_01C7:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-16], ebx
.L_01C6:
.L_01C5:
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-24], ecx
.L_01C4:
cmp dword ptr [ebp-24], 0
jne .L_01C2
.L_01C3:
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], ebx
.L_01C1:
cmp dword ptr [ebp-20], 0
jne .L_01BF
.L_01C0:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_01BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYMBCHECKACCESSPARENT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0345:
mov eax, dword ptr [_SYMB+98528]
mov dword ptr [ebp-8], eax
.L_0347:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_0348
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 10
jne .L_034A
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .L_034C
mov dword ptr [ebp-4], -1
jmp .L_0346
.L_034C:
.L_034B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4194304
je .L_034E
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_0350
mov dword ptr [ebp-4], -1
jmp .L_0346
.L_0350:
.L_034F:
.L_034E:
.L_034D:
.L_034A:
.L_0349:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_0347
.L_0348:
.L_0346:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYMBCHECKCONSTASSIGNFUNCPTR:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0383:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_0385
mov dword ptr [ebp-8], 2
jmp .L_03D0
.L_0385:
mov dword ptr [ebp-8], 1
.L_03D0:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+28]
call _TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0388
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 41
jmp .L_0384
.L_0388:
.L_0387:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+8]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp ebx, ecx
je .L_038A
mov ecx, dword ptr [ebp+32]
mov dword ptr [ecx], 28
jmp .L_0384
.L_038A:
.L_0389:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBAREPROCMODESEQUAL
add esp, 8
test eax, eax
jne .L_038C
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 42
jmp .L_0384
.L_038C:
.L_038B:
mov eax, dword ptr [ebp+16]
movsx ecx, word ptr [eax+68]
mov eax, dword ptr [ebp+20]
movsx ebx, word ptr [eax+68]
cmp ecx, ebx
je .L_038E
mov ebx, dword ptr [ebp+32]
mov dword ptr [ebx], 43
jmp .L_0384
.L_038E:
.L_038D:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-20], ebx
.L_038F:
cmp dword ptr [ebp-16], 0
je .L_0390
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+28]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp-40], ecx
push dword ptr [ebp+32]
mov dword ptr [ebp-44], 0
lea ecx, [ebp-44]
push ecx
push dword ptr [ebp-40]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _SYMBCHECKCONSTASSIGN
add esp, 28
test eax, eax
jne .L_0393
jmp .L_0384
.L_0393:
.L_0392:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .L_038F
.L_0390:
mov dword ptr [ebp-4], -1
.L_0384:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFOREACHGLOBAL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_039C:
.L_039E:
cmp dword ptr [ebp+8], 0
je .L_039F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 8
jne .L_03A2
.L_03A3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _HFOREACHGLOBAL
add esp, 12
jmp .L_03A0
.L_03A2:
cmp dword ptr [ebp-4], 10
jne .L_03A4
.L_03A5:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _HFOREACHGLOBAL
add esp, 12
jmp .L_03A0
.L_03A4:
cmp dword ptr [ebp-4], 15
jne .L_03A6
.L_03A7:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _HFOREACHGLOBAL
add esp, 12
jmp .L_03A0
.L_03A6:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-4], ebx
jne .L_03A8
.L_03A9:
push dword ptr [ebp+8]
call dword ptr [ebp+16]
add esp, 4
.L_03A8:
.L_03A0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .L_039E
.L_039F:
.L_039D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETNAMESPACEPREFIX:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03AC:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
jne .L_03AF
push 0
push 13
push offset _Lt_03B0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_03AD
.L_03AF:
.L_03AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
.L_03B1:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-16], eax
je .L_03B2
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push 2
push offset _Lt_0007
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+140], 0
jne .L_03B6
jmp .L_03B2
.L_03B6:
.L_03B5:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .L_03B1
.L_03B2:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_03AD:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36

.globl _SYMB
.balign 4
	.lcomm	_SYMB,99640
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_DEFTYPETB,124

.section .data
.balign 4
_Lt_02D0:	.ascii	"const \0"
.balign 4
_Lt_02DF:	.ascii	" * \0"
.balign 4
_Lt_02E5:	.ascii	"typeof(\0"
.balign 4
_Lt_02E8:	.ascii	")\0"
.balign 4
_Lt_02F2:	.ascii	" const\0"
.balign 4
_Lt_02F3:	.ascii	" ptr\0"
.balign 4
_Lt_03B0:	.ascii	"<no hash tb>\0"
.balign 4
_CLASSNAMESPRETTY:
.int _Lt_03B8
.int _Lt_03B9
.int _Lt_03BA
.int _Lt_03BB
.int _Lt_03BC
.int _Lt_03BD
.int _Lt_03BE
.int _Lt_03BF
.int _Lt_03C0
.int _Lt_03C1
.int _Lt_03C2
.int _Lt_03C3
.int _Lt_03C4
.int _Lt_03C5
.int _Lt_03C6
.int _Lt_03C7
.int _Lt_03C8
.balign 4
_Lt_03B8:	.ascii	"variable\0"
.balign 4
_Lt_03B9:	.ascii	"constant\0"
.balign 4
_Lt_03BA:	.ascii	"procedure\0"
.balign 4
_Lt_03BB:	.ascii	"parameter\0"
.balign 4
_Lt_03BC:	.ascii	"#define\0"
.balign 4
_Lt_03BD:	.ascii	"keyword\0"
.balign 4
_Lt_03BE:	.ascii	"label\0"
.balign 4
_Lt_03BF:	.ascii	"namespace\0"
.balign 4
_Lt_03C0:	.ascii	"enum\0"
.balign 4
_Lt_03C1:	.ascii	"type\0"
.balign 4
_Lt_03C2:	.ascii	"class\0"
.balign 4
_Lt_03C3:	.ascii	"field\0"
.balign 4
_Lt_03C4:	.ascii	"type alias\0"
.balign 4
_Lt_03C5:	.ascii	"forward reference\0"
.balign 4
_Lt_03C6:	.ascii	"scope\0"
.balign 4
_Lt_03C7:	.ascii	"reserved\0"
.balign 4
_Lt_03C8:	.ascii	"namespace import\0"
.balign 4
_Lt_03CB:	.ascii	" \0"

.section .ctors
.int _fb_ctor__symb
