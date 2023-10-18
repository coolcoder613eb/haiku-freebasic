	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTINIT
ASTINIT:
.L_00CB:
push 6
push 72
push 8192
lea eax, [AST]
push eax
call LISTINIT
add esp, 16
mov dword ptr [AST+136], -1
mov dword ptr [AST+140], 0
mov dword ptr [AST+144], 0
mov dword ptr [AST+132], 0
mov dword ptr [AST+232], 0
call ASTCALLINIT
call ASTPROCLISTINIT
call ASTDATASTMTINIT
call ASTMISCINIT
push 6
push 12
push 16
lea eax, [AST+200]
push eax
call LISTINIT
add esp, 16
.L_00CC:
ret
.balign 16

.globl ASTEND
ASTEND:
.L_00CD:
lea eax, [AST+200]
push eax
call LISTEND
add esp, 4
call ASTMISCEND
call ASTPROCLISTEND
call ASTCALLEND
lea eax, [AST]
push eax
call LISTEND
add esp, 4
.L_00CE:
ret
.balign 16

.globl ASTCLONETREE
ASTCLONETREE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00CF:
cmp dword ptr [ebp+8], 0
jne .L_00D2
mov dword ptr [ebp-4], 0
jmp .L_00D0
.L_00D2:
.L_00D1:
push 0
push -2147483648
push -1
call ASTNEWNODE
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
je .L_00D4
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
.L_00D4:
.L_00D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_00D6
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_00D6:
.L_00D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .L_00D9
.L_00DA:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+12], 0
je .L_00DC
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
je .L_00DE
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ASTDTORLISTADDREF
add esp, 4
.L_00DE:
.L_00DD:
.L_00DC:
.L_00DB:
jmp .L_00D7
.L_00D9:
cmp dword ptr [ebp-16], 9
jne .L_00DF
.L_00E0:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTCLONECALL
add esp, 8
jmp .L_00D7
.L_00DF:
cmp dword ptr [ebp-16], 26
jne .L_00E1
.L_00E2:
push 4
push 0
call SYMBADDLABEL
add esp, 8
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push dword ptr [ebp-8]
call ASTREPLACESYMBOLONTREE
add esp, 12
jmp .L_00D7
.L_00E1:
cmp dword ptr [ebp-16], 13
jne .L_00E3
.L_00E4:
push 4
push 0
call SYMBADDLABEL
add esp, 8
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call ASTREPLACESYMBOLONTREE
add esp, 12
jmp .L_00D7
.L_00E3:
cmp dword ptr [ebp-16], 36
jne .L_00E5
.L_00E6:
inc dword ptr [AST+140]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+36], 0
jmp .L_00D7
.L_00E5:
cmp dword ptr [ebp-16], 19
jne .L_00E7
.L_00E8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+112], 0
jle .L_00EA
inc dword ptr [AST+144]
.L_00EA:
.L_00E9:
.L_00E7:
.L_00D7:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTGETEFFECTIVENODE
ASTGETEFFECTIVENODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00ED:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .L_00F0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
jne .L_00F3
.L_00F4:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTGETEFFECTIVENODE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00F1
.L_00F3:
cmp dword ptr [ebp-8], 2
jne .L_00F5
.L_00F6:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTGETEFFECTIVENODE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00F1
.L_00F5:
mov dword ptr [ebp-4], 0
.L_00F7:
.L_00F1:
jmp .L_00EF
.L_00F0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00EF:
.L_00EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTGETEFFECTIVECLASS
ASTGETEFFECTIVECLASS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00F8:
push dword ptr [ebp+8]
call ASTGETEFFECTIVENODE
add esp, 4
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREBUILDWITHOUTEFFECTIVEPART
ASTREBUILDWITHOUTEFFECTIVEPART:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00FA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .L_00FD
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
jne .L_0100
.L_0101:
push dword ptr [ebp-8]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00FE
.L_0100:
cmp dword ptr [ebp-16], 2
jne .L_0102
.L_0103:
push dword ptr [ebp-12]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 4
mov dword ptr [ebp-12], eax
.L_0102:
.L_0104:
.L_00FE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
jmp .L_00FC
.L_00FD:
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.L_00FC:
.L_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCANTAKEADDROF
ASTCANTAKEADDROF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0105:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0108
.L_010A:
mov dword ptr [ebp-4], -1
jmp .L_0107
.L_010B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0107
.L_010C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .L_010F
.L_0110:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTCANTAKEADDROF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_010D
.L_010F:
cmp dword ptr [ebp-12], 2
jne .L_0111
.L_0112:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTCANTAKEADDROF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_010D
.L_0111:
mov dword ptr [ebp-4], 0
.L_0113:
.L_010D:
jmp .L_0107
.L_0114:
mov dword ptr [ebp-4], 0
jmp .L_0107
.L_0108:
mov eax, dword ptr [ebp-8]
add eax, 4294967286
cmp eax, 26
ja .L_0114
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0115+eax*4-40]
.L_0115:
.int .L_010A
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_010C
.int .L_0114
.int .L_010A
.int .L_010A
.int .L_010B
.int .L_010A
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_010A
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_010A
.L_0107:
.L_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTMAKEREF
ASTMAKEREF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0117:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 19
jne .L_0119
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0124
.L_0119:
mov dword ptr [ebp-16], 0
.L_0124:
cmp dword ptr [ebp-16], 0
je .L_011C
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
call ASTDELNODE
add esp, 4
lea eax, [ebp-12]
push eax
call ASTMAKEREF
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWFIELD
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_0118
.L_011C:
.L_011B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 9
jne .L_011E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 17
je .L_0122
.L_0123:
cmp dword ptr [ebp-20], 7
jne .L_0121
.L_0122:
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
call ASTSETTYPE
add esp, 12
push dword ptr [ebp+8]
call ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTNEWDEREF
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_0118
.L_0121:
.L_011F:
.L_011E:
.L_011D:
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
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 64
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTNEWADDROF
add esp, 4
push eax
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0118:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREMSIDEFX
ASTREMSIDEFX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0126:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-12], ebx
jmp .L_0129
.L_012B:
push dword ptr [ebp+8]
call ASTMAKEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0128
.L_012C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_0128
.L_0129:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 16
ja .L_012C
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_012D+eax*4-16]
.L_012D:
.int .L_012B
.int .L_012C
.int .L_012C
.int .L_012B
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012B
.int .L_012B
.int .L_012C
.int .L_012B
.L_0128:
.L_0127:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDELTREE
ASTDELTREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_012E:
cmp dword ptr [ebp+8], 0
jne .L_0131
jmp .L_012F
.L_0131:
.L_0130:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_0133
push dword ptr [ebp+8]
call ASTDELCALL
add esp, 4
.L_0133:
.L_0132:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0135
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
.L_0135:
.L_0134:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0137
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
.L_0137:
.L_0136:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_012F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWNODE
ASTNEWNODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0138:
lea eax, [AST]
push eax
call LISTNEWNODE
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
.L_0139:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDELNODE
ASTDELNODE:
push ebp
mov ebp, esp
push ebx
.L_013A:
cmp dword ptr [ebp+8], 0
jne .L_013D
jmp .L_013B
.L_013D:
.L_013C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_013F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0141
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
je .L_0143
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTDTORLISTREMOVEREF
add esp, 4
.L_0143:
.L_0142:
.L_0141:
.L_0140:
.L_013F:
.L_013E:
push dword ptr [ebp+8]
lea ebx, [AST]
push ebx
call LISTDELNODE
add esp, 8
.L_013B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTGETINVERSELOGOP
ASTGETINVERSELOGOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0146:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0149
.L_014B:
mov dword ptr [ebp+8], 48
jmp .L_0148
.L_014C:
mov dword ptr [ebp+8], 45
jmp .L_0148
.L_014D:
mov dword ptr [ebp+8], 50
jmp .L_0148
.L_014E:
mov dword ptr [ebp+8], 49
jmp .L_0148
.L_014F:
mov dword ptr [ebp+8], 47
jmp .L_0148
.L_0150:
mov dword ptr [ebp+8], 46
jmp .L_0148
.L_0149:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 5
ja .L_0148
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0151+eax*4-180]
.L_0151:
.int .L_014B
.int .L_014D
.int .L_014E
.int .L_014C
.int .L_014F
.int .L_0150
.L_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0147:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOAD
ASTLOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0152:
cmp dword ptr [ebp+8], 0
je .L_0155
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
call dword ptr [AST_LOADCALLBACKS+ebx*4]
add esp, 4
mov dword ptr [ebp-4], eax
.L_0155:
.L_0154:
.L_0153:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__ast:
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

.section .data
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss

.globl AST
.balign 4
	.lcomm	AST,236

.section .data
.balign 4

.globl AST_OPTB
AST_OPTB:
.int 2
.int 5
.int Lt_005E
.skip 4,0
.int 3
.int 5
.int Lt_005F
.int 28
.int 3
.int 5
.int Lt_0060
.int 29
.int 3
.int 5
.int Lt_0061
.int 30
.int 3
.int 5
.int Lt_0062
.int 31
.int 3
.int 5
.int Lt_0062
.int 32
.int 3
.int 5
.int Lt_0063
.int 33
.int 3
.int 5
.int Lt_0064
.int 34
.int 3
.int 5
.int Lt_0065
.int 35
.int 3
.int 5
.int Lt_0066
.int 36
.int 3
.int 5
.int Lt_0067
.int 37
.int 3
.int 5
.int Lt_0068
.int 38
.int 3
.int 5
.int Lt_0069
.int 39
.int 3
.int 5
.int Lt_006A
.int 40
.int 3
.int 5
.int Lt_006B
.int 41
.int 3
.int 5
.int Lt_006C
.int 42
.int 3
.int 5
.int Lt_006D
.int 43
.int 3
.int 5
.int Lt_006E
.int 44
.int 12
.int 1
.int Lt_006F
.skip 4,0
.int 12
.int 1
.int Lt_0070
.skip 4,0
.int 12
.int 5
.int Lt_0071
.skip 4,0
.int 12
.int 5
.int Lt_0072
.skip 4,0
.int 6
.int 1
.int Lt_0073
.skip 4,0
.int 3
.int 1
.int Lt_0074
.skip 4,0
.int 14
.int 5
.int Lt_0075
.skip 4,0
.int 14
.int 5
.int Lt_0076
.skip 4,0
.int 14
.int 1
.int Lt_0077
.skip 4,0
.int 5
.int 1
.int Lt_0078
.skip 4,0
.int 3
.int 2
.int Lt_0079
.int 1
.int 3
.int 0
.int Lt_007A
.int 2
.int 3
.int 2
.int Lt_007B
.int 3
.int 3
.int 0
.int Lt_0019
.int 4
.int 3
.int 0
.int Lt_0019
.int 5
.int 3
.int 0
.int Lt_007C
.int 6
.int 3
.int 2
.int Lt_007D
.int 7
.int 3
.int 2
.int Lt_007E
.int 8
.int 3
.int 2
.int Lt_007F
.int 9
.int 3
.int 2
.int Lt_0080
.int 10
.int 3
.int 2
.int Lt_0081
.int 11
.int 3
.int 0
.int Lt_0082
.int 12
.int 3
.int 0
.int Lt_0083
.int 13
.int 3
.int 0
.int Lt_0084
.int 14
.int 3
.int 0
.int Lt_0085
.int 15
.int 3
.int 0
.int Lt_0086
.int 16
.int 3
.int 0
.int Lt_0087
.int 17
.int 14
.int 10
.int Lt_0088
.skip 4,0
.int 14
.int 8
.int Lt_0089
.skip 4,0
.int 14
.int 8
.int Lt_008A
.skip 4,0
.int 14
.int 10
.int Lt_008B
.skip 4,0
.int 14
.int 8
.int Lt_008C
.skip 4,0
.int 14
.int 8
.int Lt_008D
.skip 4,0
.int 14
.int 0
.int Lt_008E
.skip 4,0
.int 4
.int 0
.int Lt_008F
.skip 4,0
.int 4
.int 0
.int Lt_0079
.skip 4,0
.int 4
.int 0
.int Lt_007A
.skip 4,0
.int 4
.int 0
.int Lt_0090
.skip 4,0
.int 4
.int 0
.int Lt_0091
.skip 4,0
.int 4
.int 0
.int Lt_0092
.skip 4,0
.int 4
.int 0
.int Lt_0093
.skip 4,0
.int 4
.int 0
.int Lt_0094
.skip 4,0
.int 4
.int 0
.int Lt_0095
.skip 4,0
.int 4
.int 0
.int Lt_0096
.skip 4,0
.int 4
.int 0
.int Lt_0097
.skip 4,0
.int 4
.int 0
.int Lt_0098
.skip 4,0
.int 3
.int 0
.int Lt_0099
.skip 4,0
.int 4
.int 0
.int Lt_009A
.skip 4,0
.int 4
.int 0
.int Lt_009B
.skip 4,0
.int 4
.int 0
.int Lt_009C
.skip 4,0
.int 4
.int 0
.int Lt_009D
.skip 4,0
.int 4
.int 0
.int Lt_009E
.skip 4,0
.int 4
.int 0
.int Lt_009F
.skip 4,0
.int 4
.int 0
.int Lt_00A0
.skip 4,0
.int 4
.int 0
.int Lt_00A1
.skip 4,0
.int 4
.int 0
.int Lt_00A2
.skip 4,0
.int 4
.int 0
.int Lt_00A3
.skip 4,0
.int 4
.int 0
.int Lt_00A4
.skip 4,0
.int 6
.int 0
.int Lt_007B
.skip 4,0
.int 6
.int 0
.int Lt_00A5
.skip 4,0
.int 12
.int 0
.int Lt_006F
.int 18
.int 12
.int 0
.int Lt_0070
.int 19
.int 12
.int 0
.int Lt_0071
.int 20
.int 12
.int 0
.int Lt_0072
.int 21
.int 5
.int 0
.int Lt_00A6
.skip 4,0
.int 5
.int 0
.int Lt_00A7
.skip 4,0
.int 5
.int 0
.int Lt_00A8
.skip 4,0
.int 1
.int 0
.int Lt_00A9
.skip 4,0
.int 1
.int 0
.int Lt_00AA
.skip 4,0
.int 2
.int 0
.int Lt_00AB
.skip 4,0
.int 11
.int 0
.int Lt_00AC
.skip 4,0
.int 11
.int 0
.int Lt_00AD
.skip 4,0
.int 11
.int 0
.int Lt_00AE
.skip 4,0
.int 11
.int 0
.int Lt_00AF
.skip 4,0
.int 7
.int 0
.int Lt_00B0
.skip 4,0
.int 7
.int 0
.int Lt_00B1
.skip 4,0
.int 7
.int 0
.int Lt_00B2
.skip 4,0
.int 7
.int 0
.int Lt_00B3
.skip 4,0
.int 7
.int 0
.int Lt_00B4
.skip 4,0
.int 7
.int 0
.int Lt_00B5
.skip 4,0
.int 7
.int 0
.int Lt_00B6
.skip 4,0
.int 7
.int 0
.int Lt_00B7
.skip 4,0
.int 7
.int 0
.int Lt_00B8
.skip 4,0
.int 7
.int 0
.int Lt_00B9
.skip 4,0
.int 9
.int 0
.int Lt_00BA
.skip 4,0
.int 9
.int 0
.int Lt_00BB
.skip 4,0
.int 9
.int 0
.int Lt_00BC
.skip 4,0
.int 12
.int 0
.int Lt_00BD
.skip 4,0
.int 12
.int 0
.int Lt_00BE
.skip 4,0
.int 12
.int 0
.int Lt_00BF
.skip 4,0
.int 12
.int 0
.int Lt_00C0
.skip 4,0
.int 44
.int 0
.int Lt_00C1
.skip 4,0
.int 44
.int 0
.int Lt_00C2
.skip 4,0
.int 44
.int 0
.int Lt_00C3
.skip 4,0
.int 44
.int 0
.int Lt_00C4
.skip 4,0
.int 30
.int 0
.int Lt_00C5
.skip 4,0
.int 30
.int 0
.int Lt_00C6
.skip 4,0
.int 30
.int 0
.int Lt_00C7
.skip 4,0
.int 30
.int 0
.int Lt_00C8
.skip 4,0
.int 27
.int 0
.int Lt_00C9
.skip 4,0
.int 27
.int 0
.int Lt_00CA
.skip 4,0
.skip 32,0

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
AST_LOADCALLBACKS:
.int ASTLOADNOP
.int ASTLOADLOAD
.int ASTLOADASSIGN
.int ASTLOADBOP
.int ASTLOADUOP
.int ASTLOADCONV
.int ASTLOADADDROF
.int ASTLOADBRANCH
.int ASTLOADJMPTB
.int ASTLOADCALL
.int ASTLOADCALLCTOR
.int ASTLOADSTACK
.int ASTLOADMEM
.int ASTLOADLOOP
.long 0
.int ASTLOADLINK
.int ASTLOADCONST
.int ASTLOADVAR
.int ASTLOADIDX
.int ASTLOADFIELD
.int ASTLOADDEREF
.int ASTLOADLABEL
.long 0
.int ASTLOADOFFSET
.int ASTLOADDECL
.int ASTLOADNIDXARRAY
.int ASTLOADIIF
.int ASTLOADLIT
.int ASTLOADASM
.long 0
.int ASTLOADDBG
.int ASTLOADBOUNDCHK
.int ASTLOADPTRCHK
.int ASTLOADSCOPEBEGIN
.int ASTLOADSCOPEEND
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.int ASTLOADMACRO
.balign 4
Lt_005E:	.ascii	"let\0"
.balign 4
Lt_005F:	.ascii	"+=\0"
.balign 4
Lt_0060:	.ascii	"-=\0"
.balign 4
Lt_0061:	.ascii	"*=\0"
.balign 4
Lt_0062:	.ascii	"/=\0"
.balign 4
Lt_0063:	.ascii	"mod=\0"
.balign 4
Lt_0064:	.ascii	"and=\0"
.balign 4
Lt_0065:	.ascii	"or=\0"
.balign 4
Lt_0066:	.ascii	"andalso=\0"
.balign 4
Lt_0067:	.ascii	"orelse=\0"
.balign 4
Lt_0068:	.ascii	"xor=\0"
.balign 4
Lt_0069:	.ascii	"eqv=\0"
.balign 4
Lt_006A:	.ascii	"imp=\0"
.balign 4
Lt_006B:	.ascii	"shl=\0"
.balign 4
Lt_006C:	.ascii	"shr=\0"
.balign 4
Lt_006D:	.ascii	"pow=\0"
.balign 4
Lt_006E:	.ascii	"&=\0"
.balign 4
Lt_006F:	.ascii	"new\0"
.balign 4
Lt_0070:	.ascii	"new[]\0"
.balign 4
Lt_0071:	.ascii	"delete\0"
.balign 4
Lt_0072:	.ascii	"delete[]\0"
.balign 4
Lt_0073:	.ascii	"@\0"
.balign 4
Lt_0074:	.ascii	"[]\0"
.balign 4
Lt_0075:	.ascii	"for\0"
.balign 4
Lt_0076:	.ascii	"step\0"
.balign 4
Lt_0077:	.ascii	"next\0"
.balign 4
Lt_0078:	.ascii	"cast\0"
.balign 4
Lt_0079:	.ascii	"+\0"
.balign 4
Lt_007A:	.ascii	"-\0"
.balign 4
Lt_007B:	.ascii	"*\0"
.balign 4
Lt_007C:	.ascii	"mod\0"
.balign 4
Lt_007D:	.ascii	"and\0"
.balign 4
Lt_007E:	.ascii	"or\0"
.balign 4
Lt_007F:	.ascii	"andalso\0"
.balign 4
Lt_0080:	.ascii	"orelse\0"
.balign 4
Lt_0081:	.ascii	"xor\0"
.balign 4
Lt_0082:	.ascii	"eqv\0"
.balign 4
Lt_0083:	.ascii	"imp\0"
.balign 4
Lt_0084:	.ascii	"shl\0"
.balign 4
Lt_0085:	.ascii	"shr\0"
.balign 4
Lt_0086:	.ascii	"pow\0"
.balign 4
Lt_0087:	.ascii	"&\0"
.balign 4
Lt_0088:	.ascii	"=\0"
.balign 4
Lt_0089:	.ascii	">\0"
.balign 4
Lt_008A:	.ascii	"<\0"
.balign 4
Lt_008B:	.ascii	"<>\0"
.balign 4
Lt_008C:	.ascii	">=\0"
.balign 4
Lt_008D:	.ascii	"<=\0"
.balign 4
Lt_008E:	.ascii	"is\0"
.balign 4
Lt_008F:	.ascii	"not\0"
.balign 4
Lt_0090:	.ascii	"HADD\0"
.balign 4
Lt_0091:	.ascii	"abs\0"
.balign 4
Lt_0092:	.ascii	"sgn\0"
.balign 4
Lt_0093:	.ascii	"sin\0"
.balign 4
Lt_0094:	.ascii	"asin\0"
.balign 4
Lt_0095:	.ascii	"cos\0"
.balign 4
Lt_0096:	.ascii	"acos\0"
.balign 4
Lt_0097:	.ascii	"tan\0"
.balign 4
Lt_0098:	.ascii	"atan\0"
.balign 4
Lt_0099:	.ascii	"atn2\0"
.balign 4
Lt_009A:	.ascii	"sqr\0"
.balign 4
Lt_009B:	.ascii	"rsqrt\0"
.balign 4
Lt_009C:	.ascii	"rcp\0"
.balign 4
Lt_009D:	.ascii	"log\0"
.balign 4
Lt_009E:	.ascii	"exp\0"
.balign 4
Lt_009F:	.ascii	"int\0"
.balign 4
Lt_00A0:	.ascii	"fix\0"
.balign 4
Lt_00A1:	.ascii	"frac\0"
.balign 4
Lt_00A2:	.ascii	"len\0"
.balign 4
Lt_00A3:	.ascii	"convd2s\0"
.balign 4
Lt_00A4:	.ascii	"swzrep\0"
.balign 4
Lt_00A5:	.ascii	"->\0"
.balign 4
Lt_00A6:	.ascii	"cint\0"
.balign 4
Lt_00A7:	.ascii	"cflt\0"
.balign 4
Lt_00A8:	.ascii	"cbool\0"
.balign 4
Lt_00A9:	.ascii	"load\0"
.balign 4
Lt_00AA:	.ascii	"lres\0"
.balign 4
Lt_00AB:	.ascii	"spill\0"
.balign 4
Lt_00AC:	.ascii	"push\0"
.balign 4
Lt_00AD:	.ascii	"pop\0"
.balign 4
Lt_00AE:	.ascii	"pudt\0"
.balign 4
Lt_00AF:	.ascii	"stka\0"
.balign 4
Lt_00B0:	.ascii	"jeq\0"
.balign 4
Lt_00B1:	.ascii	"jgt\0"
.balign 4
Lt_00B2:	.ascii	"jlt\0"
.balign 4
Lt_00B3:	.ascii	"jne\0"
.balign 4
Lt_00B4:	.ascii	"jge\0"
.balign 4
Lt_00B5:	.ascii	"jle\0"
.balign 4
Lt_00B6:	.ascii	"jmp\0"
.balign 4
Lt_00B7:	.ascii	"call\0"
.balign 4
Lt_00B8:	.ascii	"lbl\0"
.balign 4
Lt_00B9:	.ascii	"ret\0"
.balign 4
Lt_00BA:	.ascii	"calf\0"
.balign 4
Lt_00BB:	.ascii	"calp\0"
.balign 4
Lt_00BC:	.ascii	"jmpp\0"
.balign 4
Lt_00BD:	.ascii	"mmov\0"
.balign 4
Lt_00BE:	.ascii	"mswp\0"
.balign 4
Lt_00BF:	.ascii	"mclr\0"
.balign 4
Lt_00C0:	.ascii	"stkc\0"
.balign 4
Lt_00C1:	.ascii	"va_start\0"
.balign 4
Lt_00C2:	.ascii	"va_end\0"
.balign 4
Lt_00C3:	.ascii	"va_copy\0"
.balign 4
Lt_00C4:	.ascii	"va_arg\0"
.balign 4
Lt_00C5:	.ascii	"lini\0"
.balign 4
Lt_00C6:	.ascii	"lend\0"
.balign 4
Lt_00C7:	.ascii	"sini\0"
.balign 4
Lt_00C8:	.ascii	"send\0"
.balign 4
Lt_00C9:	.ascii	"rem\0"
.balign 4
Lt_00CA:	.ascii	"asm\0"

.section .ctors
.int fb_ctor__ast
