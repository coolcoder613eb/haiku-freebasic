	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTINIT
_ASTINIT:
.L_00CD:
push 6
push 72
push 8192
lea eax, [_AST]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_AST+136], -1
mov dword ptr [_AST+140], 0
mov dword ptr [_AST+144], 0
mov dword ptr [_AST+132], 0
mov dword ptr [_AST+232], 0
call _ASTCALLINIT
call _ASTPROCLISTINIT
call _ASTDATASTMTINIT
call _ASTMISCINIT
push 6
push 12
push 16
lea eax, [_AST+200]
push eax
call _LISTINIT
add esp, 16
.L_00CE:
ret
.balign 16

.globl _ASTEND
_ASTEND:
.L_00CF:
lea eax, [_AST+200]
push eax
call _LISTEND
add esp, 4
call _ASTMISCEND
call _ASTPROCLISTEND
call _ASTCALLEND
lea eax, [_AST]
push eax
call _LISTEND
add esp, 4
.L_00D0:
ret
.balign 16

.globl _ASTCLONETREE
_ASTCLONETREE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00D1:
cmp dword ptr [ebp+8], 0
jne .L_00D4
mov dword ptr [ebp-4], 0
jmp .L_00D2
.L_00D4:
.L_00D3:
push 0
push -2147483648
push -1
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
push edi
push esi
mov edi, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov ecx, 18
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_00D6
push dword ptr [ebp-12]
call _ASTCLONETREE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
.L_00D6:
.L_00D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_00D8
push dword ptr [ebp-12]
call _ASTCLONETREE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_00D8:
.L_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .L_00DB
.L_00DC:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+12], 0
je .L_00DE
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00E0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ASTDTORLISTADDREF
add esp, 4
.L_00E0:
.L_00DF:
.L_00DE:
.L_00DD:
jmp .L_00D9
.L_00DB:
cmp dword ptr [ebp-16], 9
jne .L_00E1
.L_00E2:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTCLONECALL
add esp, 8
jmp .L_00D9
.L_00E1:
cmp dword ptr [ebp-16], 26
jne .L_00E3
.L_00E4:
push 4
push 0
call _SYMBADDLABEL
add esp, 8
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push dword ptr [ebp-8]
call _ASTREPLACESYMBOLONTREE
add esp, 12
jmp .L_00D9
.L_00E3:
cmp dword ptr [ebp-16], 13
jne .L_00E5
.L_00E6:
push 4
push 0
call _SYMBADDLABEL
add esp, 8
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call _ASTREPLACESYMBOLONTREE
add esp, 12
jmp .L_00D9
.L_00E5:
cmp dword ptr [ebp-16], 36
jne .L_00E7
.L_00E8:
inc dword ptr [_AST+140]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+36], 0
jmp .L_00D9
.L_00E7:
cmp dword ptr [ebp-16], 19
jne .L_00E9
.L_00EA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+112], 0
jle .L_00EC
inc dword ptr [_AST+144]
.L_00EC:
.L_00EB:
.L_00E9:
.L_00D9:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTGETEFFECTIVENODE
_ASTGETEFFECTIVENODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00EF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .L_00F2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
jne .L_00F5
.L_00F6:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTGETEFFECTIVENODE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00F3
.L_00F5:
cmp dword ptr [ebp-8], 2
jne .L_00F7
.L_00F8:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTGETEFFECTIVENODE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00F3
.L_00F7:
mov dword ptr [ebp-4], 0
.L_00F9:
.L_00F3:
jmp .L_00F1
.L_00F2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00F1:
.L_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTGETEFFECTIVECLASS
_ASTGETEFFECTIVECLASS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00FA:
push dword ptr [ebp+8]
call _ASTGETEFFECTIVENODE
add esp, 4
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREBUILDWITHOUTEFFECTIVEPART
_ASTREBUILDWITHOUTEFFECTIVEPART:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00FC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .L_00FF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jne .L_0102
.L_0103:
push dword ptr [ebp-8]
call _ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0100
.L_0102:
cmp dword ptr [ebp-16], 2
jne .L_0104
.L_0105:
push dword ptr [ebp-12]
call _ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 4
mov dword ptr [ebp-12], eax
.L_0104:
.L_0106:
.L_0100:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
jmp .L_00FE
.L_00FF:
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.L_00FE:
.L_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTCANTAKEADDROF
_ASTCANTAKEADDROF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0107:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_010A
.L_010C:
mov dword ptr [ebp-4], -1
jmp .L_0109
.L_010D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0109
.L_010E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .L_0111
.L_0112:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTCANTAKEADDROF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_010F
.L_0111:
cmp dword ptr [ebp-12], 2
jne .L_0113
.L_0114:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTCANTAKEADDROF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_010F
.L_0113:
mov dword ptr [ebp-4], 0
.L_0115:
.L_010F:
jmp .L_0109
.L_0116:
mov dword ptr [ebp-4], 0
jmp .L_0109
.L_010A:
mov eax, dword ptr [ebp-8]
add eax, 4294967286
cmp eax, 26
ja .L_0116
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0117+eax*4-40]
_.L_0117:
.int .L_010C
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_010E
.int .L_0116
.int .L_010C
.int .L_010C
.int .L_010D
.int .L_010C
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_010C
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_010C
.L_0109:
.L_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTMAKEREF
_ASTMAKEREF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0119:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 19
jne .L_011B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0126
.L_011B:
mov dword ptr [ebp-16], 0
.L_0126:
cmp dword ptr [ebp-16], 0
je .L_011E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTDELNODE
add esp, 4
lea eax, [ebp-12]
push eax
call _ASTMAKEREF
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWFIELD
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_011A
.L_011E:
.L_011D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 9
jne .L_0120
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 17
je .L_0124
.L_0125:
cmp dword ptr [ebp-20], 7
jne .L_0123
.L_0124:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
or eax, ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTSETTYPE
add esp, 12
push dword ptr [ebp+8]
call _ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTNEWDEREF
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_011A
.L_0123:
.L_0121:
.L_0120:
.L_011F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, 32505856
or ebx, eax
push ebx
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 64
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTNEWADDROF
add esp, 4
push eax
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
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_011A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREMSIDEFX
_ASTREMSIDEFX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0128:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-12], ebx
jmp .L_012B
.L_012D:
push dword ptr [ebp+8]
call _ASTMAKEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_012A
.L_012E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 64
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
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
mov dword ptr [ebp-4], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_012A
.L_012B:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 16
ja .L_012E
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_012F+eax*4-16]
_.L_012F:
.int .L_012D
.int .L_012E
.int .L_012E
.int .L_012D
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012D
.int .L_012D
.int .L_012E
.int .L_012D
.L_012A:
.L_0129:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDELTREE
_ASTDELTREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0130:
cmp dword ptr [ebp+8], 0
jne .L_0133
jmp .L_0131
.L_0133:
.L_0132:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_0135
push dword ptr [ebp+8]
call _ASTDELCALL
add esp, 4
.L_0135:
.L_0134:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0137
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
.L_0137:
.L_0136:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0139
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
.L_0139:
.L_0138:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
.L_0131:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWNODE
_ASTNEWNODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_013A:
lea eax, [_AST]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_013B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDELNODE
_ASTDELNODE:
push ebp
mov ebp, esp
push ebx
.L_013C:
cmp dword ptr [ebp+8], 0
jne .L_013F
jmp .L_013D
.L_013F:
.L_013E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_0141
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0143
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0145
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ASTDTORLISTREMOVEREF
add esp, 4
.L_0145:
.L_0144:
.L_0143:
.L_0142:
.L_0141:
.L_0140:
push dword ptr [ebp+8]
lea ebx, [_AST]
push ebx
call _LISTDELNODE
add esp, 8
.L_013D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTGETINVERSELOGOP
_ASTGETINVERSELOGOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_014B
.L_014D:
mov dword ptr [ebp+8], 48
jmp .L_014A
.L_014E:
mov dword ptr [ebp+8], 45
jmp .L_014A
.L_014F:
mov dword ptr [ebp+8], 50
jmp .L_014A
.L_0150:
mov dword ptr [ebp+8], 49
jmp .L_014A
.L_0151:
mov dword ptr [ebp+8], 47
jmp .L_014A
.L_0152:
mov dword ptr [ebp+8], 46
jmp .L_014A
.L_014B:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 5
ja .L_014A
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0153+eax*4-180]
_.L_0153:
.int .L_014D
.int .L_014F
.int .L_0150
.int .L_014E
.int .L_0151
.int .L_0152
.L_014A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0149:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOAD
_ASTLOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0154:
cmp dword ptr [ebp+8], 0
je .L_0157
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
call dword ptr [_AST_LOADCALLBACKS+ebx*4]
add esp, 4
mov dword ptr [ebp-4], eax
.L_0157:
.L_0156:
.L_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__ast:
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

.section .bss

.globl _AST
.balign 4
	.lcomm	_AST,236

.section .data
.balign 4

.globl _AST_OPTB
_AST_OPTB:
.int 2
.int 5
.int _Lt_005F
.skip 4,0
.int 3
.int 5
.int _Lt_0060
.int 28
.int 3
.int 5
.int _Lt_0061
.int 29
.int 3
.int 5
.int _Lt_0062
.int 30
.int 3
.int 5
.int _Lt_0063
.int 31
.int 3
.int 5
.int _Lt_0063
.int 32
.int 3
.int 5
.int _Lt_0064
.int 33
.int 3
.int 5
.int _Lt_0065
.int 34
.int 3
.int 5
.int _Lt_0066
.int 35
.int 3
.int 5
.int _Lt_0067
.int 36
.int 3
.int 5
.int _Lt_0068
.int 37
.int 3
.int 5
.int _Lt_0069
.int 38
.int 3
.int 5
.int _Lt_006A
.int 39
.int 3
.int 5
.int _Lt_006B
.int 40
.int 3
.int 5
.int _Lt_006C
.int 41
.int 3
.int 5
.int _Lt_006D
.int 42
.int 3
.int 5
.int _Lt_006E
.int 43
.int 3
.int 5
.int _Lt_006F
.int 44
.int 12
.int 1
.int _Lt_0070
.skip 4,0
.int 12
.int 1
.int _Lt_0071
.skip 4,0
.int 12
.int 5
.int _Lt_0072
.skip 4,0
.int 12
.int 5
.int _Lt_0073
.skip 4,0
.int 6
.int 1
.int _Lt_0074
.skip 4,0
.int 3
.int 1
.int _Lt_0075
.skip 4,0
.int 14
.int 5
.int _Lt_0076
.skip 4,0
.int 14
.int 5
.int _Lt_0077
.skip 4,0
.int 14
.int 1
.int _Lt_0078
.skip 4,0
.int 5
.int 1
.int _Lt_0079
.skip 4,0
.int 3
.int 2
.int _Lt_007A
.int 1
.int 3
.int 0
.int _Lt_007B
.int 2
.int 3
.int 2
.int _Lt_007C
.int 3
.int 3
.int 0
.int _Lt_007D
.int 4
.int 3
.int 0
.int _Lt_007D
.int 5
.int 3
.int 0
.int _Lt_007E
.int 6
.int 3
.int 2
.int _Lt_007F
.int 7
.int 3
.int 2
.int _Lt_0080
.int 8
.int 3
.int 2
.int _Lt_0081
.int 9
.int 3
.int 2
.int _Lt_0082
.int 10
.int 3
.int 2
.int _Lt_0083
.int 11
.int 3
.int 0
.int _Lt_0084
.int 12
.int 3
.int 0
.int _Lt_0085
.int 13
.int 3
.int 0
.int _Lt_0086
.int 14
.int 3
.int 0
.int _Lt_0087
.int 15
.int 3
.int 0
.int _Lt_0088
.int 16
.int 3
.int 0
.int _Lt_0089
.int 17
.int 14
.int 10
.int _Lt_008A
.skip 4,0
.int 14
.int 8
.int _Lt_008B
.skip 4,0
.int 14
.int 8
.int _Lt_008C
.skip 4,0
.int 14
.int 10
.int _Lt_008D
.skip 4,0
.int 14
.int 8
.int _Lt_008E
.skip 4,0
.int 14
.int 8
.int _Lt_008F
.skip 4,0
.int 14
.int 0
.int _Lt_0090
.skip 4,0
.int 4
.int 0
.int _Lt_0091
.skip 4,0
.int 4
.int 0
.int _Lt_007A
.skip 4,0
.int 4
.int 0
.int _Lt_007B
.skip 4,0
.int 4
.int 0
.int _Lt_0092
.skip 4,0
.int 4
.int 0
.int _Lt_0093
.skip 4,0
.int 4
.int 0
.int _Lt_0094
.skip 4,0
.int 4
.int 0
.int _Lt_0095
.skip 4,0
.int 4
.int 0
.int _Lt_0096
.skip 4,0
.int 4
.int 0
.int _Lt_0097
.skip 4,0
.int 4
.int 0
.int _Lt_0098
.skip 4,0
.int 4
.int 0
.int _Lt_0099
.skip 4,0
.int 4
.int 0
.int _Lt_009A
.skip 4,0
.int 3
.int 0
.int _Lt_009B
.skip 4,0
.int 4
.int 0
.int _Lt_009C
.skip 4,0
.int 4
.int 0
.int _Lt_009D
.skip 4,0
.int 4
.int 0
.int _Lt_009E
.skip 4,0
.int 4
.int 0
.int _Lt_009F
.skip 4,0
.int 4
.int 0
.int _Lt_00A0
.skip 4,0
.int 4
.int 0
.int _Lt_00A1
.skip 4,0
.int 4
.int 0
.int _Lt_00A2
.skip 4,0
.int 4
.int 0
.int _Lt_00A3
.skip 4,0
.int 4
.int 0
.int _Lt_00A4
.skip 4,0
.int 4
.int 0
.int _Lt_00A5
.skip 4,0
.int 4
.int 0
.int _Lt_00A6
.skip 4,0
.int 6
.int 0
.int _Lt_007C
.skip 4,0
.int 6
.int 0
.int _Lt_00A7
.skip 4,0
.int 12
.int 0
.int _Lt_0070
.int 18
.int 12
.int 0
.int _Lt_0071
.int 19
.int 12
.int 0
.int _Lt_0072
.int 20
.int 12
.int 0
.int _Lt_0073
.int 21
.int 5
.int 0
.int _Lt_00A8
.skip 4,0
.int 5
.int 0
.int _Lt_00A9
.skip 4,0
.int 5
.int 0
.int _Lt_00AA
.skip 4,0
.int 1
.int 0
.int _Lt_00AB
.skip 4,0
.int 1
.int 0
.int _Lt_00AC
.skip 4,0
.int 2
.int 0
.int _Lt_00AD
.skip 4,0
.int 11
.int 0
.int _Lt_00AE
.skip 4,0
.int 11
.int 0
.int _Lt_00AF
.skip 4,0
.int 11
.int 0
.int _Lt_00B0
.skip 4,0
.int 11
.int 0
.int _Lt_00B1
.skip 4,0
.int 7
.int 0
.int _Lt_00B2
.skip 4,0
.int 7
.int 0
.int _Lt_00B3
.skip 4,0
.int 7
.int 0
.int _Lt_00B4
.skip 4,0
.int 7
.int 0
.int _Lt_00B5
.skip 4,0
.int 7
.int 0
.int _Lt_00B6
.skip 4,0
.int 7
.int 0
.int _Lt_00B7
.skip 4,0
.int 7
.int 0
.int _Lt_00B8
.skip 4,0
.int 7
.int 0
.int _Lt_00B9
.skip 4,0
.int 7
.int 0
.int _Lt_00BA
.skip 4,0
.int 7
.int 0
.int _Lt_00BB
.skip 4,0
.int 9
.int 0
.int _Lt_00BC
.skip 4,0
.int 9
.int 0
.int _Lt_00BD
.skip 4,0
.int 9
.int 0
.int _Lt_00BE
.skip 4,0
.int 12
.int 0
.int _Lt_00BF
.skip 4,0
.int 12
.int 0
.int _Lt_00C0
.skip 4,0
.int 12
.int 0
.int _Lt_00C1
.skip 4,0
.int 12
.int 0
.int _Lt_00C2
.skip 4,0
.int 44
.int 0
.int _Lt_00C3
.skip 4,0
.int 44
.int 0
.int _Lt_00C4
.skip 4,0
.int 44
.int 0
.int _Lt_00C5
.skip 4,0
.int 44
.int 0
.int _Lt_00C6
.skip 4,0
.int 30
.int 0
.int _Lt_00C7
.skip 4,0
.int 30
.int 0
.int _Lt_00C8
.skip 4,0
.int 30
.int 0
.int _Lt_00C9
.skip 4,0
.int 30
.int 0
.int _Lt_00CA
.skip 4,0
.int 27
.int 0
.int _Lt_00CB
.skip 4,0
.int 27
.int 0
.int _Lt_00CC
.skip 4,0
.skip 32,0

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_AST_LOADCALLBACKS:
.int _ASTLOADNOP
.int _ASTLOADLOAD
.int _ASTLOADASSIGN
.int _ASTLOADBOP
.int _ASTLOADUOP
.int _ASTLOADCONV
.int _ASTLOADADDROF
.int _ASTLOADBRANCH
.int _ASTLOADJMPTB
.int _ASTLOADCALL
.int _ASTLOADCALLCTOR
.int _ASTLOADSTACK
.int _ASTLOADMEM
.int _ASTLOADLOOP
.long 0
.int _ASTLOADLINK
.int _ASTLOADCONST
.int _ASTLOADVAR
.int _ASTLOADIDX
.int _ASTLOADFIELD
.int _ASTLOADDEREF
.int _ASTLOADLABEL
.long 0
.int _ASTLOADOFFSET
.int _ASTLOADDECL
.int _ASTLOADNIDXARRAY
.int _ASTLOADIIF
.int _ASTLOADLIT
.int _ASTLOADASM
.long 0
.int _ASTLOADDBG
.int _ASTLOADBOUNDCHK
.int _ASTLOADPTRCHK
.int _ASTLOADSCOPEBEGIN
.int _ASTLOADSCOPEEND
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.int _ASTLOADMACRO
.balign 4
_Lt_005F:	.ascii	"let\0"
.balign 4
_Lt_0060:	.ascii	"+=\0"
.balign 4
_Lt_0061:	.ascii	"-=\0"
.balign 4
_Lt_0062:	.ascii	"*=\0"
.balign 4
_Lt_0063:	.ascii	"/=\0"
.balign 4
_Lt_0064:	.ascii	"mod=\0"
.balign 4
_Lt_0065:	.ascii	"and=\0"
.balign 4
_Lt_0066:	.ascii	"or=\0"
.balign 4
_Lt_0067:	.ascii	"andalso=\0"
.balign 4
_Lt_0068:	.ascii	"orelse=\0"
.balign 4
_Lt_0069:	.ascii	"xor=\0"
.balign 4
_Lt_006A:	.ascii	"eqv=\0"
.balign 4
_Lt_006B:	.ascii	"imp=\0"
.balign 4
_Lt_006C:	.ascii	"shl=\0"
.balign 4
_Lt_006D:	.ascii	"shr=\0"
.balign 4
_Lt_006E:	.ascii	"pow=\0"
.balign 4
_Lt_006F:	.ascii	"&=\0"
.balign 4
_Lt_0070:	.ascii	"new\0"
.balign 4
_Lt_0071:	.ascii	"new[]\0"
.balign 4
_Lt_0072:	.ascii	"delete\0"
.balign 4
_Lt_0073:	.ascii	"delete[]\0"
.balign 4
_Lt_0074:	.ascii	"@\0"
.balign 4
_Lt_0075:	.ascii	"[]\0"
.balign 4
_Lt_0076:	.ascii	"for\0"
.balign 4
_Lt_0077:	.ascii	"step\0"
.balign 4
_Lt_0078:	.ascii	"next\0"
.balign 4
_Lt_0079:	.ascii	"cast\0"
.balign 4
_Lt_007A:	.ascii	"+\0"
.balign 4
_Lt_007B:	.ascii	"-\0"
.balign 4
_Lt_007C:	.ascii	"*\0"
.balign 4
_Lt_007D:	.ascii	"/\0"
.balign 4
_Lt_007E:	.ascii	"mod\0"
.balign 4
_Lt_007F:	.ascii	"and\0"
.balign 4
_Lt_0080:	.ascii	"or\0"
.balign 4
_Lt_0081:	.ascii	"andalso\0"
.balign 4
_Lt_0082:	.ascii	"orelse\0"
.balign 4
_Lt_0083:	.ascii	"xor\0"
.balign 4
_Lt_0084:	.ascii	"eqv\0"
.balign 4
_Lt_0085:	.ascii	"imp\0"
.balign 4
_Lt_0086:	.ascii	"shl\0"
.balign 4
_Lt_0087:	.ascii	"shr\0"
.balign 4
_Lt_0088:	.ascii	"pow\0"
.balign 4
_Lt_0089:	.ascii	"&\0"
.balign 4
_Lt_008A:	.ascii	"=\0"
.balign 4
_Lt_008B:	.ascii	">\0"
.balign 4
_Lt_008C:	.ascii	"<\0"
.balign 4
_Lt_008D:	.ascii	"<>\0"
.balign 4
_Lt_008E:	.ascii	">=\0"
.balign 4
_Lt_008F:	.ascii	"<=\0"
.balign 4
_Lt_0090:	.ascii	"is\0"
.balign 4
_Lt_0091:	.ascii	"not\0"
.balign 4
_Lt_0092:	.ascii	"HADD\0"
.balign 4
_Lt_0093:	.ascii	"abs\0"
.balign 4
_Lt_0094:	.ascii	"sgn\0"
.balign 4
_Lt_0095:	.ascii	"sin\0"
.balign 4
_Lt_0096:	.ascii	"asin\0"
.balign 4
_Lt_0097:	.ascii	"cos\0"
.balign 4
_Lt_0098:	.ascii	"acos\0"
.balign 4
_Lt_0099:	.ascii	"tan\0"
.balign 4
_Lt_009A:	.ascii	"atan\0"
.balign 4
_Lt_009B:	.ascii	"atn2\0"
.balign 4
_Lt_009C:	.ascii	"sqr\0"
.balign 4
_Lt_009D:	.ascii	"rsqrt\0"
.balign 4
_Lt_009E:	.ascii	"rcp\0"
.balign 4
_Lt_009F:	.ascii	"log\0"
.balign 4
_Lt_00A0:	.ascii	"exp\0"
.balign 4
_Lt_00A1:	.ascii	"int\0"
.balign 4
_Lt_00A2:	.ascii	"fix\0"
.balign 4
_Lt_00A3:	.ascii	"frac\0"
.balign 4
_Lt_00A4:	.ascii	"len\0"
.balign 4
_Lt_00A5:	.ascii	"convd2s\0"
.balign 4
_Lt_00A6:	.ascii	"swzrep\0"
.balign 4
_Lt_00A7:	.ascii	"->\0"
.balign 4
_Lt_00A8:	.ascii	"cint\0"
.balign 4
_Lt_00A9:	.ascii	"cflt\0"
.balign 4
_Lt_00AA:	.ascii	"cbool\0"
.balign 4
_Lt_00AB:	.ascii	"load\0"
.balign 4
_Lt_00AC:	.ascii	"lres\0"
.balign 4
_Lt_00AD:	.ascii	"spill\0"
.balign 4
_Lt_00AE:	.ascii	"push\0"
.balign 4
_Lt_00AF:	.ascii	"pop\0"
.balign 4
_Lt_00B0:	.ascii	"pudt\0"
.balign 4
_Lt_00B1:	.ascii	"stka\0"
.balign 4
_Lt_00B2:	.ascii	"jeq\0"
.balign 4
_Lt_00B3:	.ascii	"jgt\0"
.balign 4
_Lt_00B4:	.ascii	"jlt\0"
.balign 4
_Lt_00B5:	.ascii	"jne\0"
.balign 4
_Lt_00B6:	.ascii	"jge\0"
.balign 4
_Lt_00B7:	.ascii	"jle\0"
.balign 4
_Lt_00B8:	.ascii	"jmp\0"
.balign 4
_Lt_00B9:	.ascii	"call\0"
.balign 4
_Lt_00BA:	.ascii	"lbl\0"
.balign 4
_Lt_00BB:	.ascii	"ret\0"
.balign 4
_Lt_00BC:	.ascii	"calf\0"
.balign 4
_Lt_00BD:	.ascii	"calp\0"
.balign 4
_Lt_00BE:	.ascii	"jmpp\0"
.balign 4
_Lt_00BF:	.ascii	"mmov\0"
.balign 4
_Lt_00C0:	.ascii	"mswp\0"
.balign 4
_Lt_00C1:	.ascii	"mclr\0"
.balign 4
_Lt_00C2:	.ascii	"stkc\0"
.balign 4
_Lt_00C3:	.ascii	"va_start\0"
.balign 4
_Lt_00C4:	.ascii	"va_end\0"
.balign 4
_Lt_00C5:	.ascii	"va_copy\0"
.balign 4
_Lt_00C6:	.ascii	"va_arg\0"
.balign 4
_Lt_00C7:	.ascii	"lini\0"
.balign 4
_Lt_00C8:	.ascii	"lend\0"
.balign 4
_Lt_00C9:	.ascii	"sini\0"
.balign 4
_Lt_00CA:	.ascii	"send\0"
.balign 4
_Lt_00CB:	.ascii	"rem\0"
.balign 4
_Lt_00CC:	.ascii	"asm\0"

.section .ctors
.int _fb_ctor__ast
