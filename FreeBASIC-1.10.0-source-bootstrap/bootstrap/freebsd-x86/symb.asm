	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBINITSYMBOLS
SYMBINITSYMBOLS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0069:
push 6
push 176
push 8000
lea eax, [SYMB+4]
push eax
call LISTINIT
add esp, 16
push 129
push 17
push 1000
lea eax, [SYMB+98608]
push eax
call POOLINIT
add esp, 16
mov dword ptr [SYMB+98348], 0
push 7
push 28
push 500
lea eax, [SYMB+98652]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+98352], 8
mov word ptr [SYMB+98388], 0
lea eax, [SYMB+98408]
mov dword ptr [ebp-4], eax
lea eax, [SYMB+98352]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
lea eax, [SYMB+98352]
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
call HASHINIT
add esp, 12
jmp .L_006C
.L_006D:
push 12
push 0
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+16]
push eax
call memset
add esp, 12
.L_006C:
lea eax, [SYMB+98652]
push eax
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+36], eax
lea eax, [SYMB+98352]
mov dword ptr [SYMB+98528], eax
lea eax, [SYMB+98408]
mov dword ptr [SYMB+98536], eax
lea eax, [SYMB+98420]
mov dword ptr [SYMB+98532], eax
mov dword ptr [SYMB+36], 0
mov dword ptr [SYMB+40], 0
push dword ptr [SYMB+98532]
call SYMBHASHLISTADD
add esp, 4
push 0
push 8000
lea eax, [SYMB+98564]
push eax
call HASHINIT
add esp, 12
push 6
push 24
push 4000
lea eax, [SYMB+98576]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+99036], 0
call SYMBDATAINIT
.L_006A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBINIT
SYMBINIT:
push ebp
mov ebp, esp
.L_0076:
cmp dword ptr [SYMB], 0
je .L_0079
jmp .L_0077
.L_0079:
.L_0078:
call SYMBINITSYMBOLS
call SYMBCOMPINIT
call SYMBMANGLEINIT
call SYMBKEYWORDINIT
push dword ptr [ebp+8]
call SYMBDEFINEINIT
add esp, 4
call SYMBFWDREFINIT
call SYMBVARINIT
call SYMBPROCINIT
call HINITDEFTYPETB
call SYMBCOMPRTTIINIT
call SYMBKEYWORDCONSTSINIT
call SYMBKEYWORDTYPEINIT
mov dword ptr [SYMB], -1
.L_0077:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBEND
SYMBEND:
.L_007A:
cmp dword ptr [SYMB], 0
jne .L_007D
jmp .L_007B
.L_007D:
.L_007C:
call SYMBDELGLOBALTB
mov dword ptr [SYMB+98412], 0
mov dword ptr [SYMB+98416], 0
mov dword ptr [SYMB+98536], 0
lea eax, [SYMB+98576]
push eax
call LISTEND
add esp, 4
lea eax, [SYMB+98564]
push eax
call HASHEND
add esp, 4
lea eax, [SYMB+98424]
push eax
call HASHEND
add esp, 4
call SYMBCOMPRTTIEND
call SYMBPROCEND
call SYMBVAREND
call SYMBFWDREFEND
call SYMBDEFINEEND
call SYMBMANGLEEND
call SYMBCOMPEND
push dword ptr [SYMB+98444]
lea eax, [SYMB+98652]
push eax
call LISTDELNODE
add esp, 8
lea eax, [SYMB+98652]
push eax
call LISTEND
add esp, 4
lea eax, [SYMB+98608]
push eax
call POOLEND
add esp, 4
lea eax, [SYMB+4]
push eax
call LISTEND
add esp, 4
mov dword ptr [SYMB], 0
.L_007B:
ret
.balign 16

.globl SYMBCANDUPLICATE
SYMBCANDUPLICATE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_007E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0081
.L_0083:
jmp .L_007F
jmp .L_0080
.L_0084:
.L_0085:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_0089
.L_008B:
jmp .L_007F
jmp .L_0088
.L_0089:
mov eax, dword ptr [ebp-12]
add eax, 4294967291
cmp eax, 8
ja .L_0088
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_008C+eax*4-20]
.L_008C:
.int .L_008B
.int .L_0088
.int .L_0088
.int .L_008B
.int .L_008B
.int .L_008B
.int .L_008B
.int .L_008B
.int .L_008B
.L_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.L_0087:
cmp dword ptr [ebp+8], 0
jne .L_0085
.L_0086:
jmp .L_0080
.L_008D:
.L_008E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 5
je .L_0094
.L_0095:
cmp dword ptr [ebp-12], 8
je .L_0094
.L_0096:
cmp dword ptr [ebp-12], 14
je .L_0094
.L_0097:
cmp dword ptr [ebp-12], 11
jne .L_0093
.L_0094:
jmp .L_007F
jmp .L_0091
.L_0093:
cmp dword ptr [ebp-12], 10
jne .L_0098
.L_0099:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_009B
jmp .L_007F
.L_009B:
.L_009A:
.L_0098:
.L_0091:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.L_0090:
cmp dword ptr [ebp+8], 0
jne .L_008E
.L_008F:
jmp .L_0080
.L_009C:
.L_009D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_00A1
.L_00A3:
jmp .L_00A0
.L_00A4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 262144
test eax, eax
je .L_00A6
jmp .L_007F
.L_00A6:
.L_00A5:
jmp .L_00A0
.L_00A7:
cmp dword ptr [ENV+136], 3
je .L_00A9
jmp .L_007F
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_00AB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .L_00AD
jmp .L_007F
jmp .L_00AC
.L_00AD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .L_00AF
jmp .L_007F
.L_00AF:
.L_00AE:
.L_00AC:
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_00B1
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
cmp eax, ecx
jne .L_00B3
jmp .L_007F
.L_00B3:
.L_00B2:
jmp .L_00B0
.L_00B1:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 17
je .L_00B5
jmp .L_007F
.L_00B5:
.L_00B4:
.L_00B0:
jmp .L_00A0
.L_00B6:
jmp .L_007F
jmp .L_00A0
.L_00A1:
mov eax, dword ptr [ebp-12]
add eax, 4294967293
cmp eax, 11
ja .L_00B6
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00B7+eax*4-12]
.L_00B7:
.int .L_00A7
.int .L_00B6
.int .L_00B6
.int .L_00A7
.int .L_00A3
.int .L_00B6
.int .L_00A3
.int .L_00A4
.int .L_00B6
.int .L_00B6
.int .L_00A3
.int .L_00A3
.L_00A0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp+8], ecx
.L_009F:
cmp dword ptr [ebp+8], 0
jne .L_009D
.L_009E:
jmp .L_0080
.L_00B8:
.L_00B9:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00BF:
jmp .L_00BC
.L_00C0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 262144
test ecx, ecx
je .L_00C2
jmp .L_007F
.L_00C2:
.L_00C1:
jmp .L_00BC
.L_00C3:
cmp dword ptr [ENV+136], 3
je .L_00C5
jmp .L_007F
.L_00C5:
.L_00C4:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .L_00C7
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
and eax, 32
test eax, eax
jne .L_00C9
jmp .L_007F
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 1048576
test ecx, ecx
je .L_00CB
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp eax, ebx
jne .L_00CD
jmp .L_007F
.L_00CD:
.L_00CC:
jmp .L_00CA
.L_00CB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 17
je .L_00CF
jmp .L_007F
.L_00CF:
.L_00CE:
.L_00CA:
jmp .L_00BC
.L_00D0:
mov eax, dword ptr [ebp+12]
movzx ebx, word ptr [eax+36]
mov eax, dword ptr [ebp+8]
movzx ecx, word ptr [eax+36]
cmp ebx, ecx
jne .L_00D2
jmp .L_007F
.L_00D2:
.L_00D1:
jmp .L_00BC
.L_00D3:
mov ecx, dword ptr [ebp+12]
movzx ebx, word ptr [ecx+36]
mov ecx, dword ptr [ebp+8]
movzx eax, word ptr [ecx+36]
cmp ebx, eax
jne .L_00D5
cmp dword ptr [ENV+136], 0
jne .L_00D7
jmp .L_007F
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ebx, ecx
jne .L_00D9
jmp .L_007F
.L_00D9:
.L_00D8:
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
je .L_00DB
jmp .L_007F
.L_00DB:
.L_00DA:
.L_00D5:
.L_00D4:
jmp .L_00BC
.L_00DC:
jmp .L_007F
jmp .L_00BC
.L_00BD:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .L_00DC
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00DD+eax*4-4]
.L_00DD:
.int .L_00D3
.int .L_00DC
.int .L_00C3
.int .L_00DC
.int .L_00DC
.int .L_00C3
.int .L_00BF
.int .L_00DC
.int .L_00BF
.int .L_00C0
.int .L_00DC
.int .L_00D0
.int .L_00BF
.int .L_00BF
.int .L_00DC
.int .L_00D3
.L_00BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.L_00BB:
cmp dword ptr [ebp+8], 0
jne .L_00B9
.L_00BA:
jmp .L_0080
.L_00DE:
.L_00DF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_00E3
.L_00E5:
jmp .L_007F
jmp .L_00E2
.L_00E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_00E8
jmp .L_007F
.L_00E8:
.L_00E7:
jmp .L_00E2
.L_00E3:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967291
cmp ebx, 6
ja .L_00E2
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.L_00E9+ebx*4-20]
.L_00E9:
.int .L_00E5
.int .L_00E5
.int .L_00E5
.int .L_00E5
.int .L_00E2
.int .L_00E6
.int .L_00E5
.L_00E2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.L_00E1:
cmp dword ptr [ebp+8], 0
jne .L_00DF
.L_00E0:
jmp .L_0080
.L_00EA:
jmp .L_0080
.L_00EB:
.L_00EC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_00F0
.L_00F2:
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
je .L_00F4
jmp .L_007F
.L_00F4:
.L_00F3:
jmp .L_00EF
.L_00F5:
jmp .L_007F
jmp .L_00EF
.L_00F0:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967295
cmp ebx, 15
ja .L_00F5
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.L_00F6+ebx*4-4]
.L_00F6:
.int .L_00F2
.int .L_00F2
.int .L_00F5
.int .L_00F5
.int .L_00F2
.int .L_00F5
.int .L_00F5
.int .L_00F2
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F2
.L_00EF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.L_00EE:
cmp dword ptr [ebp+8], 0
jne .L_00EC
.L_00ED:
jmp .L_0080
.L_0081:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 15
ja .L_0080
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00F7+eax*4-4]
.L_00F7:
.int .L_00B8
.int .L_009C
.int .L_009C
.int .L_00EA
.int .L_0083
.int .L_0083
.int .L_00DE
.int .L_0083
.int .L_0084
.int .L_0084
.int .L_0083
.int .L_0083
.int .L_0084
.int .L_008D
.int .L_0080
.int .L_00EB
.L_0080:
mov dword ptr [ebp-4], -1
.L_007F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNEWSYMBOL
SYMBNEWSYMBOL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00FC:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jne .L_00FF
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_0101
cmp dword ptr [PARSER+100], 0
jne .L_0103
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .L_0105
lea eax, [SYMB+98408]
mov dword ptr [ebp+16], eax
.L_0105:
.L_0104:
and dword ptr [ebp+44], -129
jmp .L_0102
.L_0103:
or dword ptr [ebp+44], 128
.L_0102:
jmp .L_0100
.L_0101:
or dword ptr [ebp+44], 128
.L_0100:
.L_00FF:
.L_00FE:
cmp dword ptr [ebp+20], 0
jne .L_0107
mov eax, dword ptr [SYMB+98532]
mov dword ptr [ebp+20], eax
.L_0107:
.L_0106:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+12], 0
jne .L_0109
mov dword ptr [ebp-12], -1
lea eax, [SYMB+4]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp+12], eax
.L_0109:
.L_0108:
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
mov bx, word ptr [PARSER+104]
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
je .L_010B
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+12]
and eax, 12288
test eax, eax
je .L_010D
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], 0
jmp .L_010C
.L_010D:
mov eax, dword ptr [PARSER+108]
movzx ebx, word ptr [eax+36]
inc ebx
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.L_010C:
jmp .L_010A
.L_010B:
mov bx, word ptr [PARSER+100]
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.L_010A:
cmp dword ptr [ebp+28], 0
je .L_010E
push 0
push dword ptr [ebp+28]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_0133
.L_010E:
mov dword ptr [ebp-16], 0
.L_0133:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jle .L_0111
mov eax, dword ptr [ebp-8]
inc eax
push eax
lea eax, [SYMB+98608]
push eax
call POOLNEWITEM
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .L_0113
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push dword ptr [ebp+28]
call HUCASE
add esp, 8
jmp .L_0112
.L_0113:
push 0
push 0
push dword ptr [ebp+28]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call fb_StrAssign
add esp, 20
.L_0112:
jmp .L_0110
.L_0111:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+16], 0
and dword ptr [ebp+8], -33
.L_0110:
cmp dword ptr [ebp+32], 0
je .L_0115
push 0
push dword ptr [ebp+32]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
push 0
push 0
push dword ptr [ebp+32]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call fb_StrAssign
add esp, 20
jmp .L_0114
.L_0115:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.L_0114:
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
je .L_0117
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
call HASHHASH
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
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0119
mov eax, dword ptr [ebp+12]
push dword ptr [eax+148]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call HASHADD
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+144], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+156], 0
jmp .L_0118
.L_0119:
mov eax, dword ptr [ebp+8]
and eax, 128
test eax, eax
jne .L_011B
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call SYMBCANDUPLICATE
add esp, 8
test eax, eax
jne .L_011D
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
lea eax, [SYMB+98608]
push eax
call POOLDELITEM
add esp, 8
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_011F
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call free
add esp, 4
.L_011F:
.L_011E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+24], 0
je .L_0121
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
call free
add esp, 4
.L_0121:
.L_0120:
cmp dword ptr [ebp-12], 0
je .L_0123
push dword ptr [ebp+12]
lea eax, [SYMB+4]
push eax
call LISTDELNODE
add esp, 8
.L_0123:
.L_0122:
jmp .L_00FD
.L_011D:
.L_011C:
.L_011B:
.L_011A:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+144]
mov dword ptr [ebx+144], ecx
cmp dword ptr [ENV+136], 3
jne .L_0125
mov dword ptr [ebp-24], 0
.L_0126:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx], 6
jne .L_0127
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+156]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_0129
jmp .L_0127
.L_0129:
.L_0128:
jmp .L_0126
.L_0127:
cmp dword ptr [ebp-24], 0
jne .L_012B
jmp .L_012C
.L_012B:
.L_012A:
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
je .L_012E
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+152], ebx
.L_012E:
.L_012D:
jmp .L_0124
.L_0125:
.L_012C:
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
.L_0124:
.L_0118:
jmp .L_0116
.L_0117:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+144], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+152], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+156], 0
.L_0116:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+8], 0
je .L_0130
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+172], ecx
jmp .L_012F
.L_0130:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.L_012F:
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
jne .L_0132
push dword ptr [ebp+12]
push dword ptr [ebp+40]
call SYMBADDTOFWDREF
add esp, 8
.L_0132:
.L_0131:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASHLISTADD
SYMBHASHLISTADD:
push ebp
mov ebp, esp
push ebx
.L_0134:
cmp dword ptr [SYMB+40], 0
je .L_0137
mov eax, dword ptr [SYMB+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .L_0136
.L_0137:
mov ebx, dword ptr [ebp+8]
mov dword ptr [SYMB+36], ebx
.L_0136:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [SYMB+40]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [SYMB+40], eax
.L_0135:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASHLISTADDBEFORE
SYMBHASHLISTADDBEFORE:
push ebp
mov ebp, esp
push ebx
.L_0138:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_013B
mov eax, dword ptr [ebp+12]
mov dword ptr [SYMB+36], eax
jmp .L_013A
.L_013B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
.L_013A:
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
.L_0139:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASHLISTDEL
SYMBHASHLISTDEL:
push ebp
mov ebp, esp
push ebx
.L_013C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_013F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov ebx, dword ptr [eax+20]
mov dword ptr [ecx+20], ebx
jmp .L_013E
.L_013F:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
mov dword ptr [SYMB+36], ecx
.L_013E:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_0141
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov ebx, dword ptr [ecx+16]
mov dword ptr [eax+16], ebx
jmp .L_0140
.L_0141:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [SYMB+40], eax
.L_0140:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
.L_013D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASHLISTINSERTNAMESPACE
SYMBHASHLISTINSERTNAMESPACE:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0142:
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
.L_0144:
cmp dword ptr [ebp-12], 0
je .L_0145
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+144], 0
je .L_0147
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+152], 0
jne .L_0149
lea eax, [SYMB+98576]
push eax
call LISTNEWNODE
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
lea ebx, [SYMB+98564]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_014B
mov eax, dword ptr [ebp-12]
push dword ptr [eax+148]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
lea eax, [SYMB+98564]
push eax
call HASHADD
add esp, 16
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+4], 0
jmp .L_014A
.L_014B:
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
.L_014A:
cmp dword ptr [ebp-8], 0
je .L_014D
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ecx+20], ebx
jmp .L_014C
.L_014D:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_014C:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
.L_0149:
.L_0148:
.L_0147:
.L_0146:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-12], ecx
jmp .L_0144
.L_0145:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+24], ecx
.L_0143:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASHLISTREMOVENAMESPACE
SYMBHASHLISTREMOVENAMESPACE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_014E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
.L_0150:
cmp dword ptr [ebp-4], 0
je .L_0151
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
je .L_0153
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
cmp dword ptr [ebp-12], 0
je .L_0155
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
.L_0155:
.L_0154:
jmp .L_0152
.L_0153:
cmp dword ptr [ebp-12], 0
je .L_0157
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
jmp .L_0156
.L_0157:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
lea ebx, [SYMB+98564]
push ebx
call HASHDEL
add esp, 12
.L_0156:
.L_0152:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-4]
lea eax, [SYMB+98576]
push eax
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0150
.L_0151:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [eax+24], 0
.L_014F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNEWCHAINPOOL
SYMBNEWCHAINPOOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_015C:
call CHAINPOOLNEXT
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
.L_015D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBLOOKUP
SYMBLOOKUP:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01A7:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
push offset Lt_01B9
push dword ptr [ebp+8]
call HUCASE
add esp, 8
mov eax, offset Lt_01B9
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call HASHHASH
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [SYMB+40]
mov dword ptr [ebp-12], eax
.L_01A9:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-16], eax
.L_01AC:
cmp dword ptr [ebp-16], 0
je .L_01AD
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 6
jne .L_01AF
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
je .L_01B1
push dword ptr [ebp-16]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01A8
.L_01B1:
.L_01B0:
.L_01AF:
.L_01AE:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-16], ebx
jmp .L_01AC
.L_01AD:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-12], eax
.L_01AB:
cmp dword ptr [ebp-12], 0
jne .L_01A9
.L_01AA:
cmp dword ptr [SYMB+98528], 0
je .L_01B3
mov eax, dword ptr [SYMB+98528]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 10
je .L_01B7
.L_01B8:
cmp dword ptr [ebp-16], 11
jne .L_01B6
.L_01B7:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSYMBLOOKUPTYPENS
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_01A8
.L_01B6:
.L_01B4:
.L_01B3:
.L_01B2:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSYMBLOOKUPNS
add esp, 20
mov dword ptr [ebp-4], eax
.L_01A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01B9,129

.section .text
.balign 16

.globl SYMBLOOKUPAT
SYMBLOOKUPAT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01C8:
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
je .L_01CB
jmp .L_01C9
.L_01CB:
.L_01CA:
cmp dword ptr [ebp+16], 0
jne .L_01CD
push offset Lt_01E3
push dword ptr [ebp+12]
call HUCASE
add esp, 8
mov ecx, offset Lt_01E3
mov dword ptr [ebp+12], ecx
.L_01CD:
.L_01CC:
push dword ptr [ebp+12]
call HASHHASH
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+72]
push ecx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-12], eax
.L_01CE:
cmp dword ptr [ebp-12], 0
je .L_01CF
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
je .L_01D1
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+156]
mov dword ptr [ebp-12], ecx
jmp .L_01D0
.L_01D1:
jmp .L_01CF
.L_01D0:
jmp .L_01CE
.L_01CF:
cmp dword ptr [ebp-12], 0
jne .L_01D3
cmp dword ptr [ebp+20], 0
jne .L_01D5
mov dword ptr [ebp-4], 0
jmp .L_01C9
.L_01D5:
.L_01D4:
jmp .L_01D2
.L_01D3:
push dword ptr [ebp-12]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_01C9
.L_01D2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_01D7
mov dword ptr [ebp-4], 0
jmp .L_01C9
.L_01D7:
.L_01D6:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+92]
cmp dword ptr [ecx], 0
jne .L_01D9
mov dword ptr [ebp-4], 0
jmp .L_01C9
.L_01D9:
.L_01D8:
lea ecx, [SYMB+98352]
cmp dword ptr [ebp+8], ecx
jne .L_01DB
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOOKUPIMPORTHASH
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_01C9
.L_01DB:
.L_01DA:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 10
je .L_01DF
.L_01E0:
cmp dword ptr [ebp-16], 11
jne .L_01DE
.L_01DF:
push 1
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOOKUPIMPORTLIST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01C9
.L_01DE:
.L_01DC:
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOOKUPIMPORTLIST
add esp, 16
mov dword ptr [ebp-4], eax
.L_01C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01E3,129

.section .text
.balign 16

.globl SYMBLOOKUPBYNAMEANDCLASS
SYMBLOOKUPBYNAMEANDCLASS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01E6:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01E9
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_01E8
.L_01E9:
mov dword ptr [ebp-4], 0
.L_01E8:
.L_01E7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDBYCLASS
SYMBFINDBYCLASS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01EA:
mov dword ptr [ebp-12], 0
.L_01EC:
cmp dword ptr [ebp+8], 0
je .L_01ED
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_01EE:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_01F2
mov dword ptr [ebp-12], -1
jmp .L_01ED
.L_01F2:
.L_01F1:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_01F0:
cmp dword ptr [ebp-8], 0
jne .L_01EE
.L_01EF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .L_01EC
.L_01ED:
cmp dword ptr [ebp-12], 0
jne .L_01F4
mov dword ptr [ebp-4], 0
jmp .L_01EB
.L_01F4:
.L_01F3:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_01F6
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_01F8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01EB
jmp .L_01F7
.L_01F8:
mov dword ptr [ebp-4], 0
jmp .L_01EB
.L_01F7:
.L_01F6:
.L_01F5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDVARBYSUFFIX
SYMBFINDVARBYSUFFIX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01F9:
cmp dword ptr [ebp+12], 17
jne .L_01FC
.L_01FD:
cmp dword ptr [ebp+8], 0
je .L_01FE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_01FF:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .L_0203
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 17
je .L_0207
.L_0208:
cmp dword ptr [ebp-12], 18
je .L_0207
.L_0209:
cmp dword ptr [ebp-12], 4
jne .L_0206
.L_0207:
jmp .L_020A
.L_0206:
.L_0204:
.L_0203:
.L_0202:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_0201:
cmp dword ptr [ebp-8], 0
jne .L_01FF
.L_0200:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .L_01FD
.L_01FE:
jmp .L_01FB
.L_01FC:
.L_020B:
cmp dword ptr [ebp+8], 0
je .L_020C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_020D:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .L_0211
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .L_0213
jmp .L_020A
.L_0213:
.L_0212:
.L_0211:
.L_0210:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_020F:
cmp dword ptr [ebp-8], 0
jne .L_020D
.L_020E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_020B
.L_020C:
.L_01FB:
mov dword ptr [ebp-4], 0
jmp .L_01FA
.L_020A:
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_0215
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0214
.L_0215:
mov dword ptr [ebp-4], 0
.L_0214:
.L_01FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDVARBYDEFTYPE
SYMBFINDVARBYDEFTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0216:
cmp dword ptr [ebp+12], 17
jne .L_0219
.L_021A:
cmp dword ptr [ebp+8], 0
je .L_021B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_021C:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .L_0220
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_0222
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .L_0226
.L_0227:
cmp dword ptr [ebp-12], 18
je .L_0226
.L_0228:
cmp dword ptr [ebp-12], 4
jne .L_0225
.L_0226:
jmp .L_0229
.L_0225:
.L_0223:
jmp .L_0221
.L_0222:
jmp .L_0229
.L_0221:
.L_0220:
.L_021F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_021E:
cmp dword ptr [ebp-8], 0
jne .L_021C
.L_021D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_021A
.L_021B:
jmp .L_0218
.L_0219:
.L_022A:
cmp dword ptr [ebp+8], 0
je .L_022B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_022C:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_0230
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_0232
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .L_0234
jmp .L_0229
.L_0234:
.L_0233:
jmp .L_0231
.L_0232:
jmp .L_0229
.L_0231:
.L_0230:
.L_022F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_022E:
cmp dword ptr [ebp-8], 0
jne .L_022C
.L_022D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_022A
.L_022B:
.L_0218:
mov dword ptr [ebp-4], 0
jmp .L_0217
.L_0229:
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_0236
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0235
.L_0236:
mov dword ptr [ebp-4], 0
.L_0235:
.L_0217:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDBYCLASSANDTYPE
SYMBFINDBYCLASSANDTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0237:
mov dword ptr [ebp-4], 0
.L_0239:
cmp dword ptr [ebp+8], 0
je .L_023A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_023B:
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
je .L_023F
cmp dword ptr [ebp+12], 1
jne .L_0241
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 4
test eax, eax
jne .L_0243
jmp .L_0238
.L_0243:
.L_0242:
.L_0241:
.L_0240:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0238
.L_023F:
.L_023E:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-8], ecx
.L_023D:
cmp dword ptr [ebp-8], 0
jne .L_023B
.L_023C:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp+8], eax
jmp .L_0239
.L_023A:
.L_0238:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELFROMCHAINLIST
SYMBDELFROMCHAINLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0246:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+152]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-4], 0
je .L_0249
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+156], ebx
cmp dword ptr [ebp-8], 0
je .L_024B
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+152], eax
.L_024B:
.L_024A:
jmp .L_0248
.L_0249:
cmp dword ptr [ebp-8], 0
je .L_024D
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
jmp .L_024C
.L_024D:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+140]
lea ebx, [ecx+4]
push ebx
call HASHDEL
add esp, 12
.L_024C:
.L_0248:
.L_0247:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELFROMHASH
SYMBDELFROMHASH:
push ebp
mov ebp, esp
.L_024E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+144], 0
jne .L_0251
jmp .L_024F
.L_0251:
.L_0250:
push dword ptr [ebp+8]
call SYMBDELFROMCHAINLIST
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+144], 0
.L_024F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFREESYMBOL
SYMBFREESYMBOL:
push ebp
mov ebp, esp
push ebx
.L_0252:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
cmp ebx, 23
jne .L_0255
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBREMOVEFROMFWDREF
add esp, 8
.L_0255:
.L_0254:
push dword ptr [ebp+8]
call SYMBDELFROMHASH
add esp, 4
push dword ptr [ebp+8]
call SYMBFREESYMBOL_UNLINKONLY
add esp, 4
push dword ptr [ebp+8]
call SYMBFREESYMBOL_REMONLY
add esp, 4
.L_0253:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFREESYMBOL_REMONLY
SYMBFREESYMBOL_REMONLY:
push ebp
mov ebp, esp
.L_0256:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [SYMB+98608]
push eax
call POOLDELITEM
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_0259
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 4
.L_0259:
.L_0258:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_025B
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call free
add esp, 4
.L_025B:
.L_025A:
push dword ptr [ebp+8]
lea eax, [SYMB+4]
push eax
call LISTDELNODE
add esp, 8
.L_0257:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFREESYMBOL_UNLINKONLY
SYMBFREESYMBOL_UNLINKONLY:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_025C:
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
je .L_025F
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+172], eax
jmp .L_025E
.L_025F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
.L_025E:
cmp dword ptr [ebp-12], 0
je .L_0261
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+168], eax
jmp .L_0260
.L_0261:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_0260:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+168], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+172], 0
.L_025D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELSYMBOL
SYMBDELSYMBOL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0262:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0265
.L_0267:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBDELVAR
add esp, 8
jmp .L_0264
.L_0268:
push dword ptr [ebp+8]
call SYMBDELCONST
add esp, 4
jmp .L_0264
.L_0269:
push dword ptr [ebp+8]
call SYMBDELPROTOTYPE
add esp, 4
jmp .L_0264
.L_026A:
push dword ptr [ebp+8]
call SYMBDELDEFINE
add esp, 4
jmp .L_0264
.L_026B:
push dword ptr [ebp+8]
call SYMBDELLABEL
add esp, 4
jmp .L_0264
.L_026C:
push dword ptr [ebp+8]
call SYMBDELENUM
add esp, 4
jmp .L_0264
.L_026D:
push dword ptr [ebp+8]
call SYMBDELSTRUCT
add esp, 4
jmp .L_0264
.L_026E:
push dword ptr [ebp+8]
call SYMBDELSCOPE
add esp, 4
jmp .L_0264
.L_026F:
push dword ptr [ebp+8]
call SYMBDELNAMESPACE
add esp, 4
jmp .L_0264
.L_0270:
push 0
push dword ptr [ebp+8]
call SYMBNAMESPACEREMOVE
add esp, 8
jmp .L_0264
.L_0271:
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
jmp .L_0264
.L_0265:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 16
ja .L_0271
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_0272+ebx*4-4]
.L_0272:
.int .L_0267
.int .L_0268
.int .L_0269
.int .L_0271
.int .L_026A
.int .L_0271
.int .L_026B
.int .L_026F
.int .L_026C
.int .L_026D
.int .L_0271
.int .L_0267
.int .L_0271
.int .L_0271
.int .L_026E
.int .L_0271
.int .L_0270
.L_0264:
.L_0263:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCLONESYMBOL
SYMBCLONESYMBOL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0273:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_0276
.L_0278:
push dword ptr [ebp+8]
call SYMBADDPROCPTRFROMFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0275
.L_0279:
push dword ptr [ebp+8]
call SYMBCLONEVAR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0275
.L_027A:
push dword ptr [ebp+8]
call SYMBCLONECONST
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0275
.L_027B:
push dword ptr [ebp+8]
call SYMBCLONELABEL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0275
.L_027C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .L_027E
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp+8]
call SYMBGETDESCTYPEARRAYDTYPE
add esp, 12
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBGETDESCTYPEDIMENSIONS
add esp, 4
push eax
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_027D
.L_027E:
push dword ptr [ebp+8]
call SYMBCLONESIMPLESTRUCT
add esp, 4
mov dword ptr [ebp-4], eax
.L_027D:
jmp .L_0275
.L_027F:
mov dword ptr [ebp-4], 0
jmp .L_0275
.L_0276:
mov eax, dword ptr [ebp-16]
add eax, 4294967295
cmp eax, 9
ja .L_027F
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0280+eax*4-4]
.L_0280:
.int .L_0279
.int .L_027A
.int .L_0278
.int .L_027F
.int .L_027F
.int .L_027F
.int .L_027B
.int .L_027F
.int .L_027F
.int .L_027C
.L_0275:
.L_0274:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELGLOBALTB
SYMBDELGLOBALTB:
push ebp
mov ebp, esp
sub esp, 4
.L_0281:
.L_0283:
mov eax, dword ptr [SYMB+98416]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0287
jmp .L_0284
.L_0287:
.L_0286:
push -1
push dword ptr [ebp-4]
call SYMBDELSYMBOL
add esp, 8
.L_0285:
jmp .L_0283
.L_0284:
.L_0282:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELSYMBOLTB
SYMBDELSYMBOLTB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0288:
cmp dword ptr [ebp+12], 0
je .L_028B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_028C:
cmp dword ptr [ebp-4], 0
je .L_028D
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 4
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
jne .L_028F
push -1
push dword ptr [ebp-4]
call SYMBNAMESPACEREMOVE
add esp, 8
.L_028F:
.L_028E:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .L_028C
.L_028D:
jmp .L_028A
.L_028B:
.L_0290:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0294
jmp .L_0291
.L_0294:
.L_0293:
push -1
push dword ptr [ebp-4]
call SYMBDELSYMBOL
add esp, 8
.L_0292:
jmp .L_0290
.L_0291:
.L_028A:
.L_0289:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASCTOR
SYMBHASCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0295:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_0296:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASDEFCTOR
SYMBHASDEFCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0297:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASDEFCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_0298:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBHASDTOR
SYMBHASDTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0299:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASDTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_029A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBISDATADESC
SYMBISDATADESC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_029B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_029E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
cmp eax, dword ptr [AST+116]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_029E:
.L_029D:
.L_029C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBISARRAY
SYMBISARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_02A5
.L_02A6:
cmp dword ptr [ebp-8], 12
jne .L_02A4
.L_02A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_02A2
.L_02A4:
mov dword ptr [ebp-4], 0
.L_02A7:
.L_02A2:
.L_02A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBISSTRING
SYMBISSTRING:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02A9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_02AC
.L_02AE:
mov dword ptr [ebp-4], -1
jmp .L_02AB
.L_02AF:
mov dword ptr [ebp-4], 0
jmp .L_02AB
.L_02AC:
mov eax, dword ptr [ebp-8]
add eax, 4294967292
cmp eax, 14
ja .L_02AF
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_02B0+eax*4-16]
.L_02B0:
.int .L_02AE
.int .L_02AF
.int .L_02AF
.int .L_02AE
.int .L_02AF
.int .L_02AF
.int .L_02AF
.int .L_02AF
.int .L_02AF
.int .L_02AF
.int .L_02AF
.int .L_02AF
.int .L_02AF
.int .L_02AE
.int .L_02AE
.L_02AB:
.L_02AA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETVALISTTYPE
SYMBGETVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_02B1:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_02B4
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02B7
.L_02B8:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_02BA
mov dword ptr [ebp-4], 2
.L_02BA:
.L_02B9:
jmp .L_02B5
.L_02B7:
cmp dword ptr [ebp-8], 20
jne .L_02BB
.L_02BC:
cmp dword ptr [ebp+12], 0
je .L_02BE
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 15728640
sar ebx, 20
mov dword ptr [ebp-4], ebx
.L_02BE:
.L_02BD:
jmp .L_02B5
.L_02BB:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_02C0
mov dword ptr [ebp-12], 24
jmp .L_02C6
.L_02C0:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_02C6:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_02C3
mov ebx, dword ptr [ebp+8]
and ebx, 480
test ebx, ebx
je .L_02C5
mov dword ptr [ebp-4], 1
.L_02C5:
.L_02C4:
.L_02C3:
.L_02C2:
.L_02BF:
.L_02B5:
.L_02B4:
.L_02B3:
.L_02B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBTYPETOSTR
SYMBTYPETOSTR:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02C7:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], -2147483648
jne .L_02CA
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_02C8
.L_02CA:
.L_02C9:
cmp dword ptr [ebp+20], 0
jg .L_02CC
jl .L_02F3
cmp dword ptr [ebp+16], 0
ja .L_02CC
.L_02F3:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.L_02CC:
.L_02CB:
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
je .L_02CE
push 0
push 7
push offset Lt_02CF
push -1
lea edx, [ebp-24]
push edx
call fb_StrAssign
add esp, 20
jmp .L_02CD
.L_02CE:
push 0
push 1
push offset Lt_0000
push -1
lea edx, [ebp-24]
push edx
call fb_StrAssign
add esp, 20
.L_02CD:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-36], edx
jmp .L_02D1
.L_02D3:
push 0
push -1
push dword ptr [ebp+12]
call HGETNAMESPACEPREFIX
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
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
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_02D0
.L_02D5:
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp+20], edx
mov eax, -1
jne .L_02F4
cmp dword ptr [ebp+16], ebx
jne .L_02F4
.L_02F5:
xor eax, eax
.L_02F4:
or eax, dword ptr [ebp+24]
je .L_02D8
cmp dword ptr [ebp-32], 18
jne .L_02DA
.L_02DB:
add dword ptr [ebp+16], 4294967295
adc dword ptr [ebp+20], 4294967295
jmp .L_02D9
.L_02DA:
cmp dword ptr [ebp-32], 7
jne .L_02DC
.L_02DD:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call __divdi3
add esp, 16
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.L_02DC:
.L_02D9:
push 0
push 4
push offset Lt_02DE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_02D8:
.L_02D7:
jmp .L_02D0
.L_02DF:
cmp dword ptr [ebp-28], 0
jle .L_02E1
dec dword ptr [ebp-28]
.L_02E1:
.L_02E0:
cmp dword ptr [ebp-28], 0
jle .L_02E3
push 0
push 8
push offset Lt_02E4
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_02E3:
.L_02E2:
push 0
push -1
push dword ptr [ebp+12]
call SYMBPROCPTRTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-28], 0
jle .L_02E6
push 0
push 2
push offset Lt_02E7
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_02E6:
.L_02E5:
jmp .L_02D0
.L_02E8:
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_02D0
.L_02D1:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 19
ja .L_02E8
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_02EA+eax*4-16]
.L_02EA:
.int .L_02D5
.int .L_02E8
.int .L_02E8
.int .L_02D5
.int .L_02E8
.int .L_02E8
.int .L_02D3
.int .L_02E8
.int .L_02E8
.int .L_02E8
.int .L_02E8
.int .L_02E8
.int .L_02E8
.int .L_02E8
.int .L_02D5
.int .L_02E8
.int .L_02D3
.int .L_02E8
.int .L_02DF
.int .L_02D3
.L_02D0:
mov eax, dword ptr [ebp-28]
dec eax
mov dword ptr [ebp-36], eax
jmp .L_02EB
.L_02EE:
mov eax, dword ptr [ebp-36]
add eax, 9
mov edx, 1
mov ecx, eax
sal edx, cl
and edx, dword ptr [ebp+8]
test edx, edx
je .L_02F0
push 0
push 7
push offset Lt_02F1
push -1
lea edx, [ebp-24]
push edx
call fb_StrConcatAssign
add esp, 20
.L_02F0:
.L_02EF:
push 0
push 5
push offset Lt_02F2
push -1
lea edx, [ebp-24]
push edx
call fb_StrConcatAssign
add esp, 20
.L_02EC:
dec dword ptr [ebp-36]
.L_02EB:
cmp dword ptr [ebp-36], 0
jge .L_02EE
.L_02ED:
push 0
push -1
lea edx, [ebp-24]
push edx
push -1
lea edx, [ebp-12]
push edx
call fb_StrAssign
add esp, 20
lea edx, [ebp-24]
push edx
call fb_StrDelete
add esp, 4
.L_02C8:
lea edx, [ebp-12]
push edx
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETDEFTYPE
SYMBGETDEFTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_02F6:
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
je .L_02FB
add dword ptr [ebp-8], 4294967264
.L_02FB:
.L_02FA:
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
je .L_02FD
cmp dword ptr [ENV+136], 3
jne .L_02FF
mov dword ptr [ebp-4], 15
jmp .L_02FE
.L_02FF:
mov dword ptr [ebp-4], 8
.L_02FE:
jmp .L_02FC
.L_02FD:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [DEFTYPETB+eax*4]
mov dword ptr [ebp-4], ebx
.L_02FC:
.L_02F7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETDEFTYPE
SYMBSETDEFTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0304:
cmp dword ptr [ebp+8], 65
jae .L_0307
mov dword ptr [ebp+8], 65
jmp .L_0306
.L_0307:
cmp dword ptr [ebp+8], 95
jbe .L_0308
mov dword ptr [ebp+8], 95
.L_0308:
.L_0306:
cmp dword ptr [ebp+12], 65
jae .L_030A
mov dword ptr [ebp+12], 65
jmp .L_0309
.L_030A:
cmp dword ptr [ebp+12], 95
jbe .L_030B
mov dword ptr [ebp+12], 95
.L_030B:
.L_0309:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jle .L_030D
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
pop dword ptr [ebp+12]
.L_030D:
.L_030C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
jmp .L_030F
.L_0312:
mov eax, dword ptr [ebp-4]
add eax, 4294967231
mov ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [DEFTYPETB+ebx*4], eax
.L_0310:
inc dword ptr [ebp-4]
.L_030F:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_0312
.L_0311:
.L_0305:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBRECALCLEN
SYMBRECALCLEN:
push ebp
mov ebp, esp
push ebx
.L_0313:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0316
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call SYMBCALCPARAMLEN
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
jmp .L_0315
.L_0316:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call SYMBCALCLEN
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
.L_0315:
.L_0314:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETTYPE
SYMBSETTYPE:
push ebp
mov ebp, esp
push ebx
.L_0317:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+32], eax
push dword ptr [ebp+8]
call SYMBRECALCLEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_031A
push dword ptr [ebp+8]
call SYMBPROCRECALCREALTYPE
add esp, 4
.L_031A:
.L_0319:
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 23
jne .L_031C
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call SYMBADDTOFWDREF
add esp, 8
.L_031C:
.L_031B:
.L_0318:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCLEN
SYMBCALCLEN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_031D:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_031F
mov dword ptr [ebp-12], 24
jmp .L_032A
.L_031F:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_032A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_0322
.L_0324:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_0321
.L_0325:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_0321
.L_0326:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0327
mov dword ptr [ebp-20], 24
jmp .L_032B
.L_0327:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_032B:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .L_0321
.L_0322:
mov eax, dword ptr [ebp-16]
add eax, 4294967278
cmp eax, 2
ja .L_0326
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0329+eax*4-72]
.L_0329:
.int .L_0324
.int .L_0326
.int .L_0325
.L_0321:
.L_031E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCDEREFLEN
SYMBCALCDEREFLEN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_032C:
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
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .L_032F
cmp dword ptr [ebp-16], 0
jne .L_032F
.L_0332:
cmp dword ptr [ebp+8], 32
jne .L_0331
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.L_0331:
.L_0330:
.L_032F:
.L_032E:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.L_032D:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBISPARENTNAMESPACE
SYMBISPARENTNAMESPACE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0333:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
je .L_0336
mov dword ptr [ebp-4], 0
jmp .L_0334
.L_0336:
.L_0335:
cmp dword ptr [ebp+12], 0
jne .L_0338
mov dword ptr [ebp-4], 0
jmp .L_0334
.L_0338:
.L_0337:
cmp dword ptr [ebp+16], 0
je .L_033A
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .L_0339
.L_033A:
mov eax, dword ptr [SYMB+98528]
mov dword ptr [ebp-8], eax
.L_0339:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 262144
test ebx, ebx
jne .L_033C
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0334
.L_033C:
.L_033B:
.L_033D:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_033E
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 10
jne .L_0340
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .L_0342
mov dword ptr [ebp-4], -1
jmp .L_0334
.L_0342:
.L_0341:
.L_0340:
.L_033F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_033D
.L_033E:
mov dword ptr [ebp-4], 0
.L_0334:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKACCESS
SYMBCHECKACCESS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0350:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 6291456
test ebx, ebx
jne .L_0353
mov dword ptr [ebp-4], -1
jmp .L_0351
.L_0353:
.L_0352:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
.L_0354:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0356:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 10
jne .L_0354
.L_0355:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HSYMBCHECKACCESSPARENT
add esp, 8
mov dword ptr [ebp-4], eax
.L_0351:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKACCESSSTRUCT
SYMBCHECKACCESSSTRUCT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0357:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_0359:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 6291456
test ebx, ebx
je .L_035D
jmp .L_035A
.L_035D:
.L_035C:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
lea ebx, [SYMB+98352]
cmp dword ptr [ebp-8], ebx
jne .L_035F
mov dword ptr [ebp-4], -1
jmp .L_0358
.L_035F:
.L_035E:
.L_035B:
jmp .L_0359
.L_035A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
.L_0360:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0362:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 10
jne .L_0360
.L_0361:
.L_0363:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HSYMBCHECKACCESSPARENT
add esp, 8
test eax, eax
je .L_0367
mov dword ptr [ebp-4], -1
jmp .L_0358
.L_0367:
.L_0366:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_0365:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-8], eax
jne .L_0363
.L_0364:
mov dword ptr [ebp-4], 0
.L_0358:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKCONSTASSIGNTOPLEVEL
SYMBCHECKCONSTASSIGNTOPLEVEL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0368:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
and eax, 261632
mov ebx, dword ptr [ebp+12]
and ebx, 261632
or eax, ebx
test eax, eax
jne .L_036B
mov dword ptr [ebp-4], -1
jmp .L_0369
.L_036B:
.L_036A:
cmp dword ptr [ebp+24], 4
jne .L_036D
mov dword ptr [ebp-4], -1
jmp .L_0369
.L_036D:
.L_036C:
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
jne .L_036F
.L_0370:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp-16]
inc eax
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
and eax, 512
test eax, eax
je .L_0372
mov eax, dword ptr [ebp+28]
inc dword ptr [eax]
.L_0372:
.L_0371:
jmp .L_036E
.L_036F:
cmp dword ptr [ebp+24], 0
jne .L_0373
.L_0374:
mov dword ptr [ebp-8], 1
jmp .L_036E
.L_0373:
inc dword ptr [ebp-20]
.L_0375:
.L_036E:
.L_0376:
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
je .L_0377
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
jne .L_0379
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebx], eax
jge .L_037B
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
.L_037B:
.L_037A:
.L_0379:
.L_0378:
mov ebx, dword ptr [ebp-24]
not ebx
and ebx, dword ptr [ebp-28]
je .L_037D
jmp .L_0369
.L_037D:
.L_037C:
dec dword ptr [ebp-20]
inc dword ptr [ebp-8]
jmp .L_0376
.L_0377:
mov dword ptr [ebp-4], -1
.L_0369:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKCONSTASSIGN
SYMBCHECKCONSTASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0393:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0396
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
je .L_0398
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSYMBCHECKCONSTASSIGNFUNCPTR
add esp, 28
and dword ptr [ebp-8], eax
.L_0398:
.L_0397:
.L_0396:
.L_0395:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0394:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFOREACHGLOBAL
SYMBFOREACHGLOBAL:
push ebp
mov ebp, esp
.L_03A9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [SYMB+98412]
call HFOREACHGLOBAL
add esp, 12
.L_03AA:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDUMPPRETTYTOSTR
SYMBDUMPPRETTYTOSTR:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03C8:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push 2
push offset Lt_03CA
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [CLASSNAMESPRETTY+ebx*4-4]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_03C9:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__symb:
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
HINITDEFTYPETB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006E:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ENV+136], 3
jne .L_0071
mov dword ptr [ebp-4], 15
jmp .L_0070
.L_0071:
mov dword ptr [ebp-4], 8
.L_0070:
mov dword ptr [ebp-8], 0
.L_0075:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [DEFTYPETB+eax*4], ebx
.L_0073:
inc dword ptr [ebp-8]
.L_0072:
cmp dword ptr [ebp-8], 30
jle .L_0075
.L_0074:
.L_006F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
CHAINPOOLNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0158:
inc dword ptr [SYMB+98348]
cmp dword ptr [SYMB+98348], 4096
jl .L_015B
mov dword ptr [SYMB+98348], 0
.L_015B:
.L_015A:
mov eax, dword ptr [SYMB+98348]
imul eax, 24
mov ebx, offset SYMB
add ebx, eax
lea eax, [ebx+44]
mov dword ptr [ebp-4], eax
.L_0159:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOOKUPIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_015E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
.L_0160:
cmp dword ptr [ebp-28], 0
je .L_0161
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+56]
lea eax, [ebx+72]
push eax
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0163
call CHAINPOOLNEXT
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_0165
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 20
jne .L_0168
.L_0169:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_016B
mov dword ptr [ebp-24], -1
.L_016B:
.L_016A:
jmp .L_0166
.L_0168:
cmp dword ptr [ebp-36], 10
jne .L_016C
.L_016D:
mov dword ptr [ebp-24], -1
.L_016C:
.L_0166:
jmp .L_0164
.L_0165:
mov dword ptr [ebp-24], -1
.L_0164:
cmp dword ptr [ebp-24], -1
jne .L_016F
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-32]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+8], -1
cmp dword ptr [ebp-12], 0
jne .L_0171
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-12], ebx
jmp .L_0170
.L_0171:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebx+4], eax
.L_0170:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_016F:
.L_016E:
.L_0163:
.L_0162:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-28], ebx
jmp .L_0160
.L_0161:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_015F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYMBLOOKUPNS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0172:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [SYMB+40]
mov dword ptr [ebp+20], eax
.L_0174:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
.L_0177:
cmp dword ptr [ebp-8], 0
je .L_0178
mov eax, dword ptr [ebp+20]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .L_017A
push dword ptr [ebp-8]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0173
jmp .L_0179
.L_017A:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .L_017C
push dword ptr [ebp-8]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0173
jmp .L_017B
.L_017C:
cmp dword ptr [ebp-12], 0
jne .L_017E
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
.L_017E:
.L_017D:
.L_017B:
.L_0179:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
jmp .L_0177
.L_0178:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp+20], eax
.L_0176:
cmp dword ptr [ebp+20], 0
jne .L_0174
.L_0175:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
lea eax, [SYMB+98564]
push eax
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0180
cmp dword ptr [ebp-12], 0
je .L_0182
push dword ptr [ebp-12]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
jmp .L_0173
.L_0182:
.L_0181:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_0173
.L_0180:
.L_017F:
cmp dword ptr [ebp-12], 0
je .L_0184
push dword ptr [ebp-12]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0173
.L_0184:
.L_0183:
mov dword ptr [ebp-4], 0
.L_0173:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYMBLOOKUPTYPENS:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0185:
mov eax, dword ptr [SYMB+40]
mov dword ptr [ebp+20], eax
.L_0187:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
.L_018A:
cmp dword ptr [ebp-8], 0
je .L_018B
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_018D
push dword ptr [ebp-8]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0186
.L_018D:
.L_018C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
jmp .L_018A
.L_018B:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp+20], eax
.L_0189:
cmp dword ptr [ebp+20], 0
jne .L_0187
.L_0188:
mov eax, dword ptr [SYMB+98528]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
lea ebx, [eax+72]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
.L_018E:
cmp dword ptr [ebp-8], 0
je .L_018F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0191
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
jmp .L_0190
.L_0191:
jmp .L_018F
.L_0190:
jmp .L_018E
.L_018F:
cmp dword ptr [ebp-8], 0
je .L_0193
push dword ptr [ebp-8]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .L_0186
.L_0193:
.L_0192:
mov eax, dword ptr [SYMB+98528]
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
je .L_0195
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call HLOOKUPIMPORTLIST
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-8], 0
.L_0196:
cmp dword ptr [ebp-20], 0
je .L_0197
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0198:
cmp dword ptr [ebp-8], 0
je .L_0199
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 20
jne .L_019C
.L_019D:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_019F
mov eax, dword ptr [ebp-20]
push dword ptr [eax]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0186
.L_019F:
.L_019E:
jmp .L_019A
.L_019C:
cmp dword ptr [ebp-28], 10
jne .L_01A0
.L_01A1:
.L_01A0:
.L_019A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
jmp .L_0198
.L_0199:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-20], eax
jmp .L_0196
.L_0197:
.L_0195:
.L_0194:
mov eax, dword ptr [SYMB+40]
mov dword ptr [ebp+20], eax
.L_01A2:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01A6
push dword ptr [ebp-8]
call SYMBNEWCHAINPOOL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0186
.L_01A6:
.L_01A5:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp+20], ebx
.L_01A4:
cmp dword ptr [ebp+20], 0
jne .L_01A2
.L_01A3:
push dword ptr [ebp+24]
push dword ptr [ebp+8]
lea ebx, [SYMB+98564]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.L_0186:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOOKUPIMPORTHASH:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_01BA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [SYMB+98564]
push eax
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01BD
mov dword ptr [ebp-4], 0
jmp .L_01BB
.L_01BD:
.L_01BC:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
.L_01BE:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-24], ebx
.L_01C1:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+68], eax
jne .L_01C5
call CHAINPOOLNEXT
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
jne .L_01C7
mov ecx, dword ptr [ebp-28]
mov dword ptr [ebp-12], ecx
jmp .L_01C6
.L_01C7:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-28]
mov dword ptr [ecx+4], ebx
.L_01C6:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-16], ebx
.L_01C5:
.L_01C4:
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-24], ecx
.L_01C3:
cmp dword ptr [ebp-24], 0
jne .L_01C1
.L_01C2:
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], ebx
.L_01C0:
cmp dword ptr [ebp-20], 0
jne .L_01BE
.L_01BF:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_01BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYMBCHECKACCESSPARENT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0344:
mov eax, dword ptr [SYMB+98528]
mov dword ptr [ebp-8], eax
.L_0346:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_0347
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 10
jne .L_0349
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .L_034B
mov dword ptr [ebp-4], -1
jmp .L_0345
.L_034B:
.L_034A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4194304
je .L_034D
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_034F
mov dword ptr [ebp-4], -1
jmp .L_0345
.L_034F:
.L_034E:
.L_034D:
.L_034C:
.L_0349:
.L_0348:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_0346
.L_0347:
.L_0345:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYMBCHECKCONSTASSIGNFUNCPTR:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0382:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_0384
mov dword ptr [ebp-8], 2
jmp .L_03CF
.L_0384:
mov dword ptr [ebp-8], 1
.L_03CF:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+28]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0387
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 41
jmp .L_0383
.L_0387:
.L_0386:
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
je .L_0389
mov ecx, dword ptr [ebp+32]
mov dword ptr [ecx], 28
jmp .L_0383
.L_0389:
.L_0388:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBAREPROCMODESEQUAL
add esp, 8
test eax, eax
jne .L_038B
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 42
jmp .L_0383
.L_038B:
.L_038A:
mov eax, dword ptr [ebp+16]
movsx ecx, word ptr [eax+68]
mov eax, dword ptr [ebp+20]
movsx ebx, word ptr [eax+68]
cmp ecx, ebx
je .L_038D
mov ebx, dword ptr [ebp+32]
mov dword ptr [ebx], 43
jmp .L_0383
.L_038D:
.L_038C:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-20], ebx
.L_038E:
cmp dword ptr [ebp-16], 0
je .L_038F
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
call SYMBCHECKCONSTASSIGN
add esp, 28
test eax, eax
jne .L_0392
jmp .L_0383
.L_0392:
.L_0391:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .L_038E
.L_038F:
mov dword ptr [ebp-4], -1
.L_0383:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFOREACHGLOBAL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_039B:
.L_039D:
cmp dword ptr [ebp+8], 0
je .L_039E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 8
jne .L_03A1
.L_03A2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call HFOREACHGLOBAL
add esp, 12
jmp .L_039F
.L_03A1:
cmp dword ptr [ebp-4], 10
jne .L_03A3
.L_03A4:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call HFOREACHGLOBAL
add esp, 12
jmp .L_039F
.L_03A3:
cmp dword ptr [ebp-4], 15
jne .L_03A5
.L_03A6:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call HFOREACHGLOBAL
add esp, 12
jmp .L_039F
.L_03A5:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-4], ebx
jne .L_03A7
.L_03A8:
push dword ptr [ebp+8]
call dword ptr [ebp+16]
add esp, 4
.L_03A7:
.L_039F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .L_039D
.L_039E:
.L_039C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETNAMESPACEPREFIX:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03AB:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
jne .L_03AE
push 0
push 13
push offset Lt_03AF
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .L_03AC
.L_03AE:
.L_03AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
.L_03B0:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-16], eax
je .L_03B1
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push 2
push offset Lt_0007
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+140], 0
jne .L_03B5
jmp .L_03B1
.L_03B5:
.L_03B4:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .L_03B0
.L_03B1:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_03AC:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36

.globl SYMB
.balign 4
	.lcomm	SYMB,99640
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	DEFTYPETB,124

.section .data
.balign 4
Lt_02CF:	.ascii	"const \0"
.balign 4
Lt_02DE:	.ascii	" * \0"
.balign 4
Lt_02E4:	.ascii	"typeof(\0"
.balign 4
Lt_02E7:	.ascii	")\0"
.balign 4
Lt_02F1:	.ascii	" const\0"
.balign 4
Lt_02F2:	.ascii	" ptr\0"
.balign 4
Lt_03AF:	.ascii	"<no hash tb>\0"
.balign 4
CLASSNAMESPRETTY:
.int Lt_03B7
.int Lt_03B8
.int Lt_03B9
.int Lt_03BA
.int Lt_03BB
.int Lt_03BC
.int Lt_03BD
.int Lt_03BE
.int Lt_03BF
.int Lt_03C0
.int Lt_03C1
.int Lt_03C2
.int Lt_03C3
.int Lt_03C4
.int Lt_03C5
.int Lt_03C6
.int Lt_03C7
.balign 4
Lt_03B7:	.ascii	"variable\0"
.balign 4
Lt_03B8:	.ascii	"constant\0"
.balign 4
Lt_03B9:	.ascii	"procedure\0"
.balign 4
Lt_03BA:	.ascii	"parameter\0"
.balign 4
Lt_03BB:	.ascii	"#define\0"
.balign 4
Lt_03BC:	.ascii	"keyword\0"
.balign 4
Lt_03BD:	.ascii	"label\0"
.balign 4
Lt_03BE:	.ascii	"namespace\0"
.balign 4
Lt_03BF:	.ascii	"enum\0"
.balign 4
Lt_03C0:	.ascii	"type\0"
.balign 4
Lt_03C1:	.ascii	"class\0"
.balign 4
Lt_03C2:	.ascii	"field\0"
.balign 4
Lt_03C3:	.ascii	"type alias\0"
.balign 4
Lt_03C4:	.ascii	"forward reference\0"
.balign 4
Lt_03C5:	.ascii	"scope\0"
.balign 4
Lt_03C6:	.ascii	"reserved\0"
.balign 4
Lt_03C7:	.ascii	"namespace import\0"
.balign 4
Lt_03CA:	.ascii	" \0"

.section .ctors
.int fb_ctor__symb
