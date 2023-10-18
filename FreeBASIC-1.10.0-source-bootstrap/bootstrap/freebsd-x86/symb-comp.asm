	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBCOMPINIT
SYMBCOMPINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_005D:
mov dword ptr [ebp-4], 0
.L_0062:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset SYMB
add ebx, eax
mov dword ptr [ebx+99120], 0
.L_0060:
inc dword ptr [ebp-4]
.L_005F:
cmp dword ptr [ebp-4], 120
jle .L_0062
.L_0061:
push 0
push 16
push 16
lea ebx, [SYMB+98540]
push ebx
call STACKNEW
add esp, 16
.L_005E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPEND
SYMBCOMPEND:
.L_0063:
lea eax, [SYMB+98540]
push eax
call STACKFREE
add esp, 4
.L_0064:
ret
.balign 16

.globl SYMBUDTALLOCEXT
SYMBUDTALLOCEXT:
push ebp
mov ebp, esp
push ebx
.L_0065:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
jne .L_0068
push 160
call XCALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+136], eax
.L_0068:
.L_0067:
.L_0066:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBUDTDECLAREDEFAULTMEMBERS
SYMBUDTDECLAREDEFAULTMEMBERS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00AF:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .L_00B2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+96]
push dword ptr [ebx+32]
call SYMBGETCOMPDEFCTOR
add esp, 4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov dword ptr [ebp-4], ebx
jmp .L_00B1
.L_00B2:
mov dword ptr [ebp-4], 0
.L_00B1:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+116]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+116]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
push dword ptr [ebp+12]
mov ebx, ecx
call SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00B4
cmp dword ptr [ebp-4], 0
je .L_00B6
push 0
push 0
push 186
call ERRREPORT
add esp, 12
jmp .L_00B5
.L_00B6:
push dword ptr [ebp+16]
push 5
push 8388608
push -2147483648
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
.L_00B5:
.L_00B4:
.L_00B3:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+116]
and ecx, 8
test ecx, ecx
je .L_00B8
push dword ptr [ebp+12]
call SYMBUDTALLOCEXT
add esp, 4
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
cmp dword ptr [eax+28], 0
jne .L_00BA
push dword ptr [ebp+16]
push 17
push 8388608
push 532
push 0
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call SYMBPROCCHECKOVERRIDDEN
add esp, 8
.L_00BA:
.L_00B9:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
cmp dword ptr [ecx+12], 0
jne .L_00BC
cmp dword ptr [ebp-4], 0
je .L_00BE
push 0
push 0
push 188
call ERRREPORT
add esp, 12
jmp .L_00BD
.L_00BE:
push dword ptr [ebp+16]
push 5
push 8388608
push 532
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], eax
.L_00BD:
.L_00BC:
.L_00BB:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
cmp dword ptr [ecx+24], 0
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+136]
cmp dword ptr [ebx+8], 0
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_00C0
cmp dword ptr [ebp-4], 0
je .L_00C2
push 0
push 0
push 187
call ERRREPORT
add esp, 12
jmp .L_00C1
.L_00C2:
push dword ptr [ebp+16]
push 5
push 8388608
push 20
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], eax
.L_00C1:
.L_00C0:
.L_00BF:
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+116]
and ecx, 16
test ecx, ecx
je .L_00C4
push dword ptr [ebp+12]
call SYMBUDTALLOCEXT
add esp, 4
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
cmp dword ptr [eax+16], 0
jne .L_00C6
push dword ptr [ebp+16]
push 8
push 8388608
push -2147483648
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+12]
movsx ecx, word ptr [eax+38]
cmp ecx, 4
jne .L_00C8
push dword ptr [ebp+16]
push 4096
push 8388608
push -2147483648
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
.L_00C8:
.L_00C7:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBPROCCHECKOVERRIDDEN
add esp, 8
.L_00C6:
.L_00C5:
.L_00C4:
.L_00C3:
.L_00B0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBUDTIMPLEMENTDEFAULTMEMBERS
SYMBUDTIMPLEMENTDEFAULTMEMBERS:
push ebp
mov ebp, esp
push ebx
.L_00D0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .L_00D3
push dword ptr [ebp+12]
call SYMBUDTALLOCEXT
add esp, 4
push dword ptr [ebp+12]
call HSETMINIMUMVTABLESIZE
add esp, 4
mov ebx, dword ptr [SYMB+99636]
cmp dword ptr [ebp+12], ebx
je .L_00D5
push dword ptr [ebp+12]
call HBUILDRTTI
add esp, 4
push dword ptr [ebp+12]
call HBUILDVTABLE
add esp, 4
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00D7
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 12
.L_00D7:
.L_00D6:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 0
je .L_00D9
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push dword ptr [ebp+12]
call HADDLETOPBODY
add esp, 8
.L_00D9:
.L_00D8:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .L_00DB
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 12
.L_00DB:
.L_00DA:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .L_00DD
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 12
.L_00DD:
.L_00DC:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_00DF
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 12
.L_00DF:
.L_00DE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+8], 0
je .L_00E1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 12
.L_00E1:
.L_00E0:
.L_00D1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPISTRIVIAL
SYMBCOMPISTRIVIAL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00EC:
push dword ptr [ebp+8]
call SYMBGETCOMPCOPYCTOR
add esp, 4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call SYMBGETCOMPDTOR1
add esp, 4
test eax, eax
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
and eax, 4194304
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_00ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETCOMPCTORHEAD
SYMBSETCOMPCTORHEAD:
push ebp
mov ebp, esp
push ebx
.L_00F1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_00F4
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx], 0
jne .L_00F6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_00F6:
.L_00F5:
.L_00F4:
.L_00F3:
.L_00F2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKCOMPCTOR
SYMBCHECKCOMPCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00F7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_00FA
mov eax, dword ptr [ebp+12]
mov bx, word ptr [eax+68]
mov word ptr [ebp-4], bx
movsx ebx, word ptr [ebp-4]
cmp ebx, 1
jne .L_00FD
.L_00FE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
jmp .L_00FB
.L_00FD:
movsx ebx, word ptr [ebp-4]
cmp ebx, 2
jne .L_00FF
.L_0100:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
cmp dword ptr [eax+8], 0
jne .L_0102
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0104
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
.L_0104:
.L_0103:
.L_0102:
.L_0101:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+12], 0
jne .L_0106
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0108
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
.L_0108:
.L_0107:
.L_0106:
.L_0105:
.L_00FF:
.L_00FB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+4], 0
jne .L_010A
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+70]
mov ebx, dword ptr [ebp+12]
movsx ecx, word ptr [ebx+68]
dec ecx
cmp eax, ecx
jne .L_010C
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+136]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+4], ecx
.L_010C:
.L_010B:
.L_010A:
.L_0109:
.L_00FA:
.L_00F9:
.L_00F8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETCOMPDTOR1
SYMBSETCOMPDTOR1:
push ebp
mov ebp, esp
push ebx
.L_010D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0110
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+16], 0
jne .L_0112
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+16], ebx
.L_0112:
.L_0111:
.L_0110:
.L_010F:
.L_010E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETCOMPDTOR0
SYMBSETCOMPDTOR0:
push ebp
mov ebp, esp
push ebx
.L_0113:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0116
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+20], 0
jne .L_0118
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
.L_0118:
.L_0117:
.L_0116:
.L_0115:
.L_0114:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETCOMPCTORHEAD
SYMBGETCOMPCTORHEAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0119:
cmp dword ptr [ebp+8], 0
je .L_011C
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_011E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0120
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_0120:
.L_011F:
.L_011E:
.L_011D:
.L_011C:
.L_011B:
.L_011A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETCOMPDEFCTOR
SYMBGETCOMPDEFCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0121:
cmp dword ptr [ebp+8], 0
je .L_0124
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0126
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0128
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
.L_0128:
.L_0127:
.L_0126:
.L_0125:
.L_0124:
.L_0123:
.L_0122:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETCOMPDTOR1
SYMBGETCOMPDTOR1:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012D:
cmp dword ptr [ebp+8], 0
je .L_0130
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0132
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0134
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
.L_0134:
.L_0133:
.L_0132:
.L_0131:
.L_0130:
.L_012F:
.L_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETCOMPDTOR0
SYMBGETCOMPDTOR0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0135:
cmp dword ptr [ebp+8], 0
je .L_0138
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_013A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_013C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
.L_013C:
.L_013B:
.L_013A:
.L_0139:
.L_0138:
.L_0137:
.L_0136:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKCOMPLETOP
SYMBCHECKCOMPLETOP:
push ebp
mov ebp, esp
push ebx
.L_013D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0140
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0142
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
.L_0142:
.L_0141:
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0144
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+28], eax
.L_0144:
.L_0143:
.L_0140:
.L_013F:
.L_013E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPHASCOPYLETOPS
SYMBCOMPHASCOPYLETOPS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0145:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0148
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+24], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+136]
cmp dword ptr [ecx+28], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.L_0148:
.L_0147:
.L_0146:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETCOMPOPOVLHEAD
SYMBGETCOMPOPOVLHEAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_014B:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_014E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
jne .L_0151
.L_0152:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
jne .L_0154
mov dword ptr [ebp-4], 0
jmp .L_014C
.L_0154:
.L_0153:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-4], ebx
jmp .L_014F
.L_0151:
cmp dword ptr [ebp-8], 9
jne .L_0155
.L_0156:
mov dword ptr [ebp-4], 0
jmp .L_014F
.L_0155:
cmp dword ptr [ebp-8], 11
jne .L_0157
.L_0158:
.L_0157:
.L_014F:
jmp .L_014D
.L_014E:
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, offset SYMB
add ecx, ebx
mov ebx, dword ptr [ecx+99120]
mov dword ptr [ebp-4], ebx
.L_014D:
.L_014C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETCOMPOPOVLHEAD
SYMBSETCOMPOPOVLHEAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0159:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_015C
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 10
jne .L_015E
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, dword ptr [ebx+136]
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+32], eax
.L_015E:
.L_015D:
cmp dword ptr [ebp-4], 0
jne .L_0160
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCHECKCOMPLETOP
add esp, 8
.L_0160:
.L_015F:
jmp .L_015B
.L_015C:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, offset SYMB
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+99120], eax
.L_015B:
.L_015A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPADDVIRTUAL
SYMBCOMPADDVIRTUAL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0161:
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 4
push dword ptr [ebp+8]
call HSETMINIMUMVTABLESIZE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+144]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
inc dword ptr [ebx+144]
.L_0162:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPGETABSTRACTCOUNT
SYMBCOMPGETABSTRACTCOUNT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0163:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0166
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-4], eax
.L_0166:
.L_0165:
.L_0164:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNESTBEGIN
SYMBNESTBEGIN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0189:
lea eax, [SYMB+98540]
push eax
call STACKPUSH
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+98532]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .L_018C
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+56]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
jmp .L_018B
.L_018C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.L_018B:
mov eax, dword ptr [ebp-12]
mov dword ptr [SYMB+98536], eax
cmp dword ptr [ebp-8], 0
je .L_018E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+98528]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [SYMB+98528], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [SYMB+98532], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+92], 0
jne .L_0190
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.L_0190:
.L_018F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .L_0192
push dword ptr [ebp+8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.L_0192:
.L_0191:
push dword ptr [ebp-8]
call SYMBHASHLISTADD
add esp, 4
cmp dword ptr [ebp+12], 0
je .L_0194
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HINSERTNESTED
add esp, 12
.L_0194:
.L_0193:
push dword ptr [ebp+8]
call HINSERTIMPORTED
add esp, 4
.L_018E:
.L_018D:
.L_018A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNESTEND
SYMBNESTEND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0195:
lea eax, [SYMB+98540]
push eax
call STACKGETTOS
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .L_0198
mov dword ptr [ebp-8], 0
jmp .L_0197
.L_0198:
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.L_0197:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [SYMB+98536], ebx
cmp dword ptr [ebp-8], 0
je .L_019A
push dword ptr [ebp-12]
call HREMOVEIMPORTED
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_019C
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
push dword ptr [ebp-12]
call HREMOVENESTED
add esp, 8
.L_019C:
.L_019B:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
push dword ptr [ebp-8]
call SYMBHASHLISTDEL
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .L_019E
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
push dword ptr [ebp-12]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.L_019E:
.L_019D:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [SYMB+98532], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [SYMB+98528], ebx
.L_019A:
.L_0199:
lea ebx, [SYMB+98540]
push ebx
call STACKPOP
add esp, 4
.L_0196:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPADDTOIMPORTLIST
SYMBCOMPADDTOIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_019F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .L_01A2
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.L_01A2:
.L_01A1:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+4], 0
je .L_01A4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
jmp .L_01A3
.L_01A4:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_01A3:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+60], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+64], 0
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
.L_01A0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPDELFROMIMPORTLIST
SYMBCOMPDELFROMIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .L_01A8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx], eax
jmp .L_01A7
.L_01A8:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+64], ecx
.L_01A7:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+64], 0
jne .L_01AA
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+60]
mov dword ptr [eax+4], ebx
jmp .L_01A9
.L_01AA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ebx+60]
mov dword ptr [ecx+60], eax
.L_01A9:
.L_01A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPADDTOEXPORTLIST
SYMBCOMPADDTOEXPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .L_01AE
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.L_01AE:
.L_01AD:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+12], 0
je .L_01B0
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
jmp .L_01AF
.L_01B0:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.L_01AF:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+72], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+76], 0
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+12], ecx
.L_01AC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPDELFROMEXPORTLIST
SYMBCOMPDELFROMEXPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+72], 0
jne .L_01B4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+76]
mov dword ptr [ecx+8], eax
jmp .L_01B3
.L_01B4:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebx+76], ecx
.L_01B3:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+76], 0
jne .L_01B6
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+72]
mov dword ptr [eax+12], ebx
jmp .L_01B5
.L_01B6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov eax, dword ptr [ebx+72]
mov dword ptr [ecx+72], eax
.L_01B5:
.L_01B2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPDELIMPORTLIST
SYMBCOMPDELIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_01B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_01BA
jmp .L_01B8
.L_01BA:
.L_01B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_01BB:
cmp dword ptr [ebp-4], 0
je .L_01BC
push dword ptr [ebp-4]
call SYMBCOMPDELFROMIMPORTLIST
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
call SYMBCOMPDELFROMEXPORTLIST
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01BB
.L_01BC:
.L_01B8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCOMPRTTIINIT
SYMBCOMPRTTIINIT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_01BD:
push 0
push 0
push 0
push 0
push 0
push offset Lt_01C0
push offset Lt_01C0
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [SYMB+99632], eax
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_01CB
push 0
push offset Lt_01C1
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 36
push offset Lt_01CB
push 0
push offset Lt_01C2
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push dword ptr [ebp-4]
push 52
push offset Lt_01CB
push 0
push offset Lt_01C3
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push dword ptr [ebp-4]
call SYMBSTRUCTEND
add esp, 8
cmp dword ptr [ENV+136], 3
jne .L_01C5
mov eax, offset Lt_01C6
mov dword ptr [ebp-20], eax
jmp .L_01C4
.L_01C5:
mov eax, offset Lt_01C7
mov dword ptr [ebp-20], eax
.L_01C4:
push 0
push 0
push 0
push 0
push 0
push offset Lt_01C8
push dword ptr [ebp-20]
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [SYMB+99636], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 4194304
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 262144
push 0
push dword ptr [ebp-8]
call SYMBNESTBEGIN
add esp, 8
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_01CB
push 0
push offset Lt_01C9
push dword ptr [ebp-8]
call SYMBADDFIELD
add esp, 40
mov dword ptr [ebp-24], 3
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call SYMBADDPROCINSTANCEPARAM
add esp, 8
push 0
push dword ptr [ebp-24]
push 7
push 0
push 0
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 24
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call SYMBADDPROCINSTANCEPARAM
add esp, 8
push 0
push 0
push 2
push 0
push dword ptr [ebp-8]
push 532
push offset Lt_006D
push dword ptr [ebp-16]
call SYMBADDPROCPARAM
add esp, 32
push 0
push dword ptr [ebp-24]
push 7
push 0
push 0
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 24
push -1
push dword ptr [ebp-8]
call SYMBSTRUCTEND
add esp, 8
push 1
push 17
push offset Lt_01CB
push 0
push 0
push 0
push dword ptr [SYMB+99632]
push 20
push offset Lt_01CA
push 0
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+152], eax
.L_01BE:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01CC,16

.section .data
.balign 4
Lt_01CB:
.int Lt_01CC
.int Lt_01CC
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBCOMPRTTIEND
SYMBCOMPRTTIEND:
.L_01CD:
.L_01CE:
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
HDECLAREPROC:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0069:
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 8
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBADDPROCINSTANCEPARAM
add esp, 8
cmp dword ptr [ebp+16], -2147483648
je .L_006C
push 0
push 0
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push offset Lt_006D
push dword ptr [ebp-8]
call SYMBADDPROCPARAM
add esp, 32
.L_006C:
.L_006B:
or dword ptr [ebp+20], 64
or dword ptr [ebp+24], 2
cmp dword ptr [ebp+12], -1
jne .L_006F
push 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push dword ptr [ebp-8]
call SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-8], eax
jmp .L_006E
.L_006F:
push 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-8], eax
.L_006E:
push -1
call SYMBNESTEND
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HSETMINIMUMVTABLESIZE:
push ebp
mov ebp, esp
push ebx
.L_0070:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+144], 0
jne .L_0073
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov dword ptr [eax+144], 2
.L_0073:
.L_0072:
.L_0071:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDRTTI:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0074:
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 8
push 1
push 8390659
push offset Lt_01CF
push 0
push 0
push 0
push dword ptr [SYMB+99632]
push 20
push 0
push 0
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 256
push -1
call SYMBNESTEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+152], eax
push 0
push 0
push 0
push dword ptr [SYMB+99632]
push 20
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEBEGIN
add esp, 12
push dword ptr [SYMB+99632]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-16], eax
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-16]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-16], eax
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
push 0
push -2147483648
push 0
push 0
push -1
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call SYMBALLOCSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-16]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
je .L_0078
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+136]
push dword ptr [ebx+152]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0077
.L_0078:
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0077:
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-4]
call ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+56], ebx
.L_0075:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01D0,16

.section .data
.balign 4
Lt_01CF:
.int Lt_01D0
.int Lt_01D0
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
HBUILDVTABLE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.L_0079:
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+144]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [Lt_01D1+8], ecx
mov dword ptr [Lt_01D1+12], ebx
push 1
push 8390659
push offset Lt_01D2
push 1
push 0
push 0
push 0
push 32
push 0
push 0
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 1024
push -1
call SYMBNESTEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+144]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 2
jle .L_007D
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+148]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-8], ecx
jmp .L_007C
.L_007D:
mov dword ptr [ebp-8], 0
.L_007C:
push 0
push 0
push 0
push 0
push 32
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-4], eax
push -1
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEBEGIN
add esp, 12
push 0
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+152]
mov dword ptr [ebp-16], eax
push 0
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 24
mov dword ptr [ebp-24], 2
cmp dword ptr [ebp-8], 0
je .L_007F
push 2
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTTYPEINICOPYELEMENTS
add esp, 12
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-24]
add eax, -2
mov dword ptr [ebp-24], eax
.L_007F:
.L_007E:
.L_0080:
mov ecx, dword ptr [ebp-24]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [Lt_01D1+8]
mov ebx, dword ptr [Lt_01D1+12]
cmp eax, ebx
jg .L_0081
jl .L_01D3
cmp ecx, esi
ja .L_0081
.L_01D3:
push 0
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 24
inc dword ptr [ebp-24]
jmp .L_0080
.L_0081:
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-4]
call ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-20]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax+56], esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
mov dword ptr [ebp-12], eax
.L_0082:
cmp dword ptr [ebp-12], 0
je .L_0083
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .L_0085
push dword ptr [ebp-12]
call SYMBPROCGETVTABLEINDEX
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-12]
mov ebx, dword ptr [esi+8]
and ebx, 512
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0087
push dword ptr [ebp-12]
call ASTBUILDPROCADDROF
add esp, 4
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-4]
call ASTTYPEINIREPLACEELEMENT
add esp, 12
.L_0087:
.L_0086:
.L_0085:
.L_0084:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .L_0082
.L_0083:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+148], ebx
.L_007A:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01D1,16

.section .data
.balign 4
Lt_01D2:
.int Lt_01D1
.int Lt_01D1
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
HPROCBEGIN:
push ebp
mov ebp, esp
.L_0088:
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 8
push 0
push dword ptr [ebp+12]
call ASTPROCBEGIN
add esp, 8
.L_0089:
mov esp, ebp
pop ebp
ret
.balign 16
HPROCEND:
.L_008A:
push 0
call ASTPROCEND
add esp, 4
push -1
call SYMBNESTEND
add esp, 4
.L_008B:
ret
.balign 16
HADDCTORBODY:
push ebp
mov ebp, esp
push ebx
.L_008C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPROCBEGIN
add esp, 8
cmp dword ptr [ebp+16], 0
je .L_008F
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+80]
push dword ptr [ebx+60]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
.L_008F:
.L_008E:
call HPROCEND
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 8388608
.L_008D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HASSIGNDYNAMICARRAY:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0092:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYREDIMTO
add esp, 16
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-4]
and eax, 31
mov ebx, dword ptr [ebp-4]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-4], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-16], eax
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+99608]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-8]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call ASTADD
add esp, 4
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+99608]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 16
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call ASTADD
add esp, 4
push 64
push 1
push 0
push 0
push 0
push 9
mov ebx, dword ptr [SYMB+99612]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 16
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
push 28
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-16]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call ASTADD
add esp, 4
push -1
push dword ptr [ebp-20]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push 0
push -1
push dword ptr [ebp-24]
push 1
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
push 49
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 16
push eax
call ASTADD
add esp, 4
push 0
push dword ptr [ebp-12]
call ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTBUILDVARDEREF
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
push 1
push dword ptr [ebp-8]
call ASTBUILDVARINC
add esp, 8
push eax
call ASTADD
add esp, 4
push 1
push dword ptr [ebp-12]
call ASTBUILDVARINC
add esp, 8
push eax
call ASTADD
add esp, 4
push 0
push dword ptr [ebp-20]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
push -1
push dword ptr [ebp-24]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.L_0093:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HASSIGNLIST:
push ebp
mov ebp, esp
push ebx
.L_0094:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [Lt_01D6], ebx
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [Lt_01D7], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [Lt_01D8], eax
push dword ptr [Lt_01D6]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [Lt_01D9], eax
push dword ptr [Lt_01D6]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [Lt_01DA], eax
push 64
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [Lt_01D9]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call ASTADD
add esp, 4
push 64
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [Lt_01DA]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call ASTADD
add esp, 4
push -1
push 0
push dword ptr [Lt_01D8]
push dword ptr [Lt_01D7]
push 0
call ASTBUILDFORBEGIN
add esp, 20
push eax
call ASTADD
add esp, 4
push 0
push dword ptr [Lt_01DA]
call ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [Lt_01D9]
call ASTBUILDVARDEREF
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
push 1
push dword ptr [Lt_01D9]
call ASTBUILDVARINC
add esp, 8
push eax
call ASTADD
add esp, 4
push 1
push dword ptr [Lt_01DA]
call ASTBUILDVARINC
add esp, 8
push eax
call ASTADD
add esp, 4
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [Lt_01D8]
push dword ptr [Lt_01D7]
push 0
call ASTBUILDFOREND
add esp, 16
push eax
call ASTADD
add esp, 4
.L_0095:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01D7,4
.balign 4
	.lcomm	Lt_01D8,4
.balign 4
	.lcomm	Lt_01D9,4
.balign 4
	.lcomm	Lt_01DA,4
.balign 4
	.lcomm	Lt_01D6,4

.section .text
.balign 16
HCOPYUNIONFIELDS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0096:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.L_0098:
push dword ptr [ebp-8]
call SYMBGETREALSIZE
add esp, 4
mov ecx, dword ptr [ebp-8]
add eax, dword ptr [ecx+48]
adc edx, dword ptr [ecx+52]
sub eax, dword ptr [ebp-32]
sbb edx, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-20], eax
jl .L_009C
jg .L_01DD
cmp dword ptr [ebp-24], edx
jbe .L_009C
.L_01DD:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.L_009C:
.L_009B:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-8], edx
.L_009A:
cmp dword ptr [ebp-8], 0
je .L_009D
mov edx, dword ptr [ebp-8]
cmp dword ptr [edx], 12
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-36], edx
jmp .L_01DB
.L_009D:
mov dword ptr [ebp-36], 0
.L_01DB:
cmp dword ptr [ebp-36], 0
je .L_009F
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_01DC
.L_009F:
mov dword ptr [ebp-40], 0
.L_01DC:
cmp dword ptr [ebp-40], 0
jne .L_0098
.L_0099:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 105
call ASTNEWMEM
add esp, 20
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDLETOPBODY:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_00A1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPROCBEGIN
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+80]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_00A3:
cmp dword ptr [ebp-4], 0
je .L_00A4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
cmp eax, 12
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 8192
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
je .L_00A6
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
cmp ecx, dword ptr [eax+96]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
cmp eax, dword ptr [SYMB+99636]
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
and dword ptr [ebp-16], ebx
.L_00A6:
.L_00A5:
cmp dword ptr [ebp-16], 0
je .L_00A8
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+12]
and ecx, 16777216
test ecx, ecx
je .L_00AA
push dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HCOPYUNIONFIELDS
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00A3
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
je .L_00AC
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call HASSIGNDYNAMICARRAY
add esp, 12
jmp .L_00AB
.L_00AC:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+60], 0
jne .L_00AE
push 0
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .L_00AD
.L_00AE:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call HASSIGNLIST
add esp, 12
.L_00AD:
.L_00AB:
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-4], ecx
jmp .L_00A3
.L_00A4:
call HPROCEND
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+12], 8388608
.L_00A2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HHASBYREFSELFPARAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 2
je .L_00E5
jmp .L_00E3
.L_00E5:
.L_00E4:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 23
cmp dword ptr [ebx+28], eax
jne .L_00E7
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+148]
cmp dword ptr [ebx+148], ecx
jne .L_00E9
push 0
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+144]
push dword ptr [ebx]
push 0
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+144]
push dword ptr [ebx]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00EB
mov dword ptr [ebp-4], -1
jmp .L_00E3
.L_00EB:
.L_00EA:
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [eax+28]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
cmp ecx, dword ptr [ebp+16]
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SYMBGETCOMPCOPYCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0129:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_012C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_012C:
.L_012B:
.L_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HINSERTNESTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0167:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_0169:
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-8], eax
je .L_016A
mov eax, dword ptr [ebp-8]
lea ebx, [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+92], 0
jne .L_016C
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], eax
.L_016C:
.L_016B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .L_016E
push dword ptr [ebp-8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.L_016E:
.L_016D:
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call SYMBHASHLISTADDBEFORE
add esp, 8
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_0169
.L_016A:
.L_0168:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREMOVENESTED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_016F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_0171:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
je .L_0172
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+68]
push eax
call SYMBHASHLISTDEL
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .L_0174
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+60]
push dword ptr [ebp-4]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.L_0174:
.L_0173:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0171
.L_0172:
.L_0170:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HINSERTIMPORTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0175:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_0178
jmp .L_0176
.L_0178:
.L_0177:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_0179:
cmp dword ptr [ebp-4], 0
je .L_017A
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_017C
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
inc dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 1
jne .L_017E
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+60]
push dword ptr [ebp-8]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.L_017E:
.L_017D:
.L_017C:
.L_017B:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .L_0179
.L_017A:
.L_0176:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREMOVEIMPORTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_017F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_0182
jmp .L_0180
.L_0182:
.L_0181:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_0183:
cmp dword ptr [ebp-4], 0
je .L_0184
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0186
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
jne .L_0188
push dword ptr [ebp-8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.L_0188:
.L_0187:
.L_0186:
.L_0185:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .L_0183
.L_0184:
.L_0180:
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
Lt_006D:	.ascii	"__FB_RHS__\0"
.balign 4
Lt_01C0:	.ascii	"fb_RTTI$\0"
.balign 4
Lt_01C1:	.ascii	"stdlibvtable\0"
.balign 4
Lt_01C2:	.ascii	"id\0"
.balign 4
Lt_01C3:	.ascii	"rttibase\0"
.balign 4
Lt_01C6:	.ascii	"__OBJECT\0"
.balign 4
Lt_01C7:	.ascii	"OBJECT\0"
.balign 4
Lt_01C8:	.ascii	"fb_Object$\0"
.balign 4
Lt_01C9:	.ascii	"vptr$\0"
.balign 4
Lt_01CA:	.ascii	"__fb_ZTS6Object\0"
