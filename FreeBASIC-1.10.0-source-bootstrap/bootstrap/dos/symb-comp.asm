	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBCOMPINIT
_SYMBCOMPINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_005E:
mov dword ptr [ebp-4], 0
.L_0063:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset _SYMB
add ebx, eax
mov dword ptr [ebx+99120], 0
.L_0061:
inc dword ptr [ebp-4]
.L_0060:
cmp dword ptr [ebp-4], 120
jle .L_0063
.L_0062:
push 0
push 16
push 16
lea ebx, [_SYMB+98540]
push ebx
call _STACKNEW
add esp, 16
.L_005F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPEND
_SYMBCOMPEND:
.L_0064:
lea eax, [_SYMB+98540]
push eax
call _STACKFREE
add esp, 4
.L_0065:
ret
.balign 16

.globl _SYMBUDTALLOCEXT
_SYMBUDTALLOCEXT:
push ebp
mov ebp, esp
push ebx
.L_0066:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
jne .L_0069
push 160
call _XCALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+136], eax
.L_0069:
.L_0068:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBUDTDECLAREDEFAULTMEMBERS
_SYMBUDTDECLAREDEFAULTMEMBERS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00B0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .L_00B3
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+96]
push dword ptr [ebx+32]
call _SYMBGETCOMPDEFCTOR
add esp, 4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov dword ptr [ebp-4], ebx
jmp .L_00B2
.L_00B3:
mov dword ptr [ebp-4], 0
.L_00B2:
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
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00B5
cmp dword ptr [ebp-4], 0
je .L_00B7
push 0
push 0
push 186
call _ERRREPORT
add esp, 12
jmp .L_00B6
.L_00B7:
push dword ptr [ebp+16]
push 5
push 8388608
push -2147483648
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
.L_00B6:
.L_00B5:
.L_00B4:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+116]
and ecx, 8
test ecx, ecx
je .L_00B9
push dword ptr [ebp+12]
call _SYMBUDTALLOCEXT
add esp, 4
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
cmp dword ptr [eax+28], 0
jne .L_00BB
push dword ptr [ebp+16]
push 17
push 8388608
push 532
push 0
push dword ptr [ebp+12]
call _HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _SYMBPROCCHECKOVERRIDDEN
add esp, 8
.L_00BB:
.L_00BA:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
cmp dword ptr [ecx+12], 0
jne .L_00BD
cmp dword ptr [ebp-4], 0
je .L_00BF
push 0
push 0
push 188
call _ERRREPORT
add esp, 12
jmp .L_00BE
.L_00BF:
push dword ptr [ebp+16]
push 5
push 8388608
push 532
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], eax
.L_00BE:
.L_00BD:
.L_00BC:
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
je .L_00C1
cmp dword ptr [ebp-4], 0
je .L_00C3
push 0
push 0
push 187
call _ERRREPORT
add esp, 12
jmp .L_00C2
.L_00C3:
push dword ptr [ebp+16]
push 5
push 8388608
push 20
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], eax
.L_00C2:
.L_00C1:
.L_00C0:
.L_00B9:
.L_00B8:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+116]
and ecx, 16
test ecx, ecx
je .L_00C5
push dword ptr [ebp+12]
call _SYMBUDTALLOCEXT
add esp, 4
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
cmp dword ptr [eax+16], 0
jne .L_00C7
push dword ptr [ebp+16]
push 8
push 8388608
push -2147483648
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+12]
movsx ecx, word ptr [eax+38]
cmp ecx, 4
jne .L_00C9
push dword ptr [ebp+16]
push 4096
push 8388608
push -2147483648
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC
add esp, 24
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
.L_00C9:
.L_00C8:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBPROCCHECKOVERRIDDEN
add esp, 8
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C4:
.L_00B1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBUDTIMPLEMENTDEFAULTMEMBERS
_SYMBUDTIMPLEMENTDEFAULTMEMBERS:
push ebp
mov ebp, esp
push ebx
.L_00D1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .L_00D4
push dword ptr [ebp+12]
call _SYMBUDTALLOCEXT
add esp, 4
push dword ptr [ebp+12]
call _HSETMINIMUMVTABLESIZE
add esp, 4
mov ebx, dword ptr [_SYMB+99636]
cmp dword ptr [ebp+12], ebx
je .L_00D6
push dword ptr [ebp+12]
call _HBUILDRTTI
add esp, 4
push dword ptr [ebp+12]
call _HBUILDVTABLE
add esp, 4
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00D8
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push dword ptr [ebp+12]
call _HADDCTORBODY
add esp, 12
.L_00D8:
.L_00D7:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 0
je .L_00DA
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push dword ptr [ebp+12]
call _HADDLETOPBODY
add esp, 8
.L_00DA:
.L_00D9:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .L_00DC
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push dword ptr [ebp+12]
call _HADDCTORBODY
add esp, 12
.L_00DC:
.L_00DB:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .L_00DE
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [ebp+12]
call _HADDCTORBODY
add esp, 12
.L_00DE:
.L_00DD:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_00E0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp+12]
call _HADDCTORBODY
add esp, 12
.L_00E0:
.L_00DF:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+8], 0
je .L_00E2
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call _HADDCTORBODY
add esp, 12
.L_00E2:
.L_00E1:
.L_00D2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPISTRIVIAL
_SYMBCOMPISTRIVIAL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00ED:
push dword ptr [ebp+8]
call _SYMBGETCOMPCOPYCTOR
add esp, 4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBGETCOMPDTOR1
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
.L_00EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETCOMPCTORHEAD
_SYMBSETCOMPCTORHEAD:
push ebp
mov ebp, esp
push ebx
.L_00F2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_00F5
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx], 0
jne .L_00F7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_00F7:
.L_00F6:
.L_00F5:
.L_00F4:
.L_00F3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKCOMPCTOR
_SYMBCHECKCOMPCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00F8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_00FB
mov eax, dword ptr [ebp+12]
mov bx, word ptr [eax+68]
mov word ptr [ebp-4], bx
movsx ebx, word ptr [ebp-4]
cmp ebx, 1
jne .L_00FE
.L_00FF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
jmp .L_00FC
.L_00FE:
movsx ebx, word ptr [ebp-4]
cmp ebx, 2
jne .L_0100
.L_0101:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
cmp dword ptr [eax+8], 0
jne .L_0103
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0105
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
.L_0105:
.L_0104:
.L_0103:
.L_0102:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+12], 0
jne .L_0107
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0109
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
.L_0109:
.L_0108:
.L_0107:
.L_0106:
.L_0100:
.L_00FC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+4], 0
jne .L_010B
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+70]
mov ebx, dword ptr [ebp+12]
movsx ecx, word ptr [ebx+68]
dec ecx
cmp eax, ecx
jne .L_010D
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+136]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+4], ecx
.L_010D:
.L_010C:
.L_010B:
.L_010A:
.L_00FB:
.L_00FA:
.L_00F9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETCOMPDTOR1
_SYMBSETCOMPDTOR1:
push ebp
mov ebp, esp
push ebx
.L_010E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0111
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+16], 0
jne .L_0113
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+16], ebx
.L_0113:
.L_0112:
.L_0111:
.L_0110:
.L_010F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETCOMPDTOR0
_SYMBSETCOMPDTOR0:
push ebp
mov ebp, esp
push ebx
.L_0114:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0117
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+20], 0
jne .L_0119
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
.L_0119:
.L_0118:
.L_0117:
.L_0116:
.L_0115:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETCOMPCTORHEAD
_SYMBGETCOMPCTORHEAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_011A:
cmp dword ptr [ebp+8], 0
je .L_011D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_011F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0121
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_0121:
.L_0120:
.L_011F:
.L_011E:
.L_011D:
.L_011C:
.L_011B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETCOMPDEFCTOR
_SYMBGETCOMPDEFCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0122:
cmp dword ptr [ebp+8], 0
je .L_0125
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0127
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0129
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
.L_0129:
.L_0128:
.L_0127:
.L_0126:
.L_0125:
.L_0124:
.L_0123:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETCOMPDTOR1
_SYMBGETCOMPDTOR1:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012E:
cmp dword ptr [ebp+8], 0
je .L_0131
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0133
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0135
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
.L_0135:
.L_0134:
.L_0133:
.L_0132:
.L_0131:
.L_0130:
.L_012F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETCOMPDTOR0
_SYMBGETCOMPDTOR0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0136:
cmp dword ptr [ebp+8], 0
je .L_0139
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_013B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_013D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
.L_013D:
.L_013C:
.L_013B:
.L_013A:
.L_0139:
.L_0138:
.L_0137:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKCOMPLETOP
_SYMBCHECKCOMPLETOP:
push ebp
mov ebp, esp
push ebx
.L_013E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0141
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0143
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
.L_0143:
.L_0142:
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM
add esp, 12
test eax, eax
je .L_0145
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+28], eax
.L_0145:
.L_0144:
.L_0141:
.L_0140:
.L_013F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPHASCOPYLETOPS
_SYMBCOMPHASCOPYLETOPS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0146:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0149
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
.L_0149:
.L_0148:
.L_0147:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETCOMPOPOVLHEAD
_SYMBGETCOMPOPOVLHEAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_014C:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_014F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
jne .L_0152
.L_0153:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
jne .L_0155
mov dword ptr [ebp-4], 0
jmp .L_014D
.L_0155:
.L_0154:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-4], ebx
jmp .L_0150
.L_0152:
cmp dword ptr [ebp-8], 9
jne .L_0156
.L_0157:
mov dword ptr [ebp-4], 0
jmp .L_0150
.L_0156:
cmp dword ptr [ebp-8], 11
jne .L_0158
.L_0159:
.L_0158:
.L_0150:
jmp .L_014E
.L_014F:
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, offset _SYMB
add ecx, ebx
mov ebx, dword ptr [ecx+99120]
mov dword ptr [ebp-4], ebx
.L_014E:
.L_014D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETCOMPOPOVLHEAD
_SYMBSETCOMPOPOVLHEAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_015A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_015D
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 10
jne .L_015F
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, dword ptr [ebx+136]
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+32], eax
.L_015F:
.L_015E:
cmp dword ptr [ebp-4], 0
jne .L_0161
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCHECKCOMPLETOP
add esp, 8
.L_0161:
.L_0160:
jmp .L_015C
.L_015D:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, offset _SYMB
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+99120], eax
.L_015C:
.L_015B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPADDVIRTUAL
_SYMBCOMPADDVIRTUAL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0162:
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
push dword ptr [ebp+8]
call _HSETMINIMUMVTABLESIZE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+144]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
inc dword ptr [ebx+144]
.L_0163:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPGETABSTRACTCOUNT
_SYMBCOMPGETABSTRACTCOUNT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0164:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_0167
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-4], eax
.L_0167:
.L_0166:
.L_0165:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNESTBEGIN
_SYMBNESTBEGIN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_018A:
lea eax, [_SYMB+98540]
push eax
call _STACKPUSH
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [_SYMB+98536]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+98532]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .L_018D
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+56]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
jmp .L_018C
.L_018D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.L_018C:
mov eax, dword ptr [ebp-12]
mov dword ptr [_SYMB+98536], eax
cmp dword ptr [ebp-8], 0
je .L_018F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+98528]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_SYMB+98528], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [_SYMB+98532], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+92], 0
jne .L_0191
lea ebx, [_SYMB+98652]
push ebx
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.L_0191:
.L_0190:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .L_0193
push dword ptr [ebp+8]
call _SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.L_0193:
.L_0192:
push dword ptr [ebp-8]
call _SYMBHASHLISTADD
add esp, 4
cmp dword ptr [ebp+12], 0
je .L_0195
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HINSERTNESTED
add esp, 12
.L_0195:
.L_0194:
push dword ptr [ebp+8]
call _HINSERTIMPORTED
add esp, 4
.L_018F:
.L_018E:
.L_018B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNESTEND
_SYMBNESTEND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0196:
lea eax, [_SYMB+98540]
push eax
call _STACKGETTOS
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .L_0199
mov dword ptr [ebp-8], 0
jmp .L_0198
.L_0199:
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.L_0198:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [_SYMB+98536], ebx
cmp dword ptr [ebp-8], 0
je .L_019B
push dword ptr [ebp-12]
call _HREMOVEIMPORTED
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_019D
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
push dword ptr [ebp-12]
call _HREMOVENESTED
add esp, 8
.L_019D:
.L_019C:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
push dword ptr [ebp-8]
call _SYMBHASHLISTDEL
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .L_019F
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
push dword ptr [ebp-12]
call _SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.L_019F:
.L_019E:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [_SYMB+98532], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [_SYMB+98528], ebx
.L_019B:
.L_019A:
lea ebx, [_SYMB+98540]
push ebx
call _STACKPOP
add esp, 4
.L_0197:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPADDTOIMPORTLIST
_SYMBCOMPADDTOIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .L_01A3
lea ebx, [_SYMB+98652]
push ebx
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.L_01A3:
.L_01A2:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+4], 0
je .L_01A5
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
jmp .L_01A4
.L_01A5:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_01A4:
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
.L_01A1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPDELFROMIMPORTLIST
_SYMBCOMPDELFROMIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .L_01A9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx], eax
jmp .L_01A8
.L_01A9:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+64], ecx
.L_01A8:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+64], 0
jne .L_01AB
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+60]
mov dword ptr [eax+4], ebx
jmp .L_01AA
.L_01AB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ebx+60]
mov dword ptr [ecx+60], eax
.L_01AA:
.L_01A7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPADDTOEXPORTLIST
_SYMBCOMPADDTOEXPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01AC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .L_01AF
lea ebx, [_SYMB+98652]
push ebx
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.L_01AF:
.L_01AE:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+12], 0
je .L_01B1
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
jmp .L_01B0
.L_01B1:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.L_01B0:
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
.L_01AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPDELFROMEXPORTLIST
_SYMBCOMPDELFROMEXPORTLIST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+72], 0
jne .L_01B5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+76]
mov dword ptr [ecx+8], eax
jmp .L_01B4
.L_01B5:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebx+76], ecx
.L_01B4:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+76], 0
jne .L_01B7
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+72]
mov dword ptr [eax+12], ebx
jmp .L_01B6
.L_01B7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov eax, dword ptr [ebx+72]
mov dword ptr [ecx+72], eax
.L_01B6:
.L_01B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPDELIMPORTLIST
_SYMBCOMPDELIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_01B8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_01BB
jmp .L_01B9
.L_01BB:
.L_01BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_01BC:
cmp dword ptr [ebp-4], 0
je .L_01BD
push dword ptr [ebp-4]
call _SYMBCOMPDELFROMIMPORTLIST
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
call _SYMBCOMPDELFROMEXPORTLIST
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01BC
.L_01BD:
.L_01B9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPRTTIINIT
_SYMBCOMPRTTIINIT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_01BE:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_01C1
push offset _Lt_01C1
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [_SYMB+99632], eax
push 0
push 0
push 0
push 0
push 0
push 32
push offset _Lt_01CC
push 0
push offset _Lt_01C2
push dword ptr [ebp-4]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 36
push offset _Lt_01CC
push 0
push offset _Lt_01C3
push dword ptr [ebp-4]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push dword ptr [ebp-4]
push 52
push offset _Lt_01CC
push 0
push offset _Lt_01C4
push dword ptr [ebp-4]
call _SYMBADDFIELD
add esp, 40
push 0
push dword ptr [ebp-4]
call _SYMBSTRUCTEND
add esp, 8
cmp dword ptr [_ENV+136], 3
jne .L_01C6
mov eax, offset _Lt_01C7
mov dword ptr [ebp-20], eax
jmp .L_01C5
.L_01C6:
mov eax, offset _Lt_01C8
mov dword ptr [ebp-20], eax
.L_01C5:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_01C9
push dword ptr [ebp-20]
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [_SYMB+99636], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 4194304
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 262144
push 0
push dword ptr [ebp-8]
call _SYMBNESTBEGIN
add esp, 8
push 0
push 0
push 0
push 0
push 0
push 32
push offset _Lt_01CC
push 0
push offset _Lt_01CA
push dword ptr [ebp-8]
call _SYMBADDFIELD
add esp, 40
mov dword ptr [ebp-24], 3
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _SYMBADDPROCINSTANCEPARAM
add esp, 8
push 0
push dword ptr [ebp-24]
push 7
push 0
push 0
push dword ptr [ebp-16]
call _SYMBADDCTOR
add esp, 24
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _SYMBADDPROCINSTANCEPARAM
add esp, 8
push 0
push 0
push 2
push 0
push dword ptr [ebp-8]
push 532
push offset _Lt_006E
push dword ptr [ebp-16]
call _SYMBADDPROCPARAM
add esp, 32
push 0
push dword ptr [ebp-24]
push 7
push 0
push 0
push dword ptr [ebp-16]
call _SYMBADDCTOR
add esp, 24
push -1
push dword ptr [ebp-8]
call _SYMBSTRUCTEND
add esp, 8
push 1
push 17
push offset _Lt_01CC
push 0
push 0
push 0
push dword ptr [_SYMB+99632]
push 20
push offset _Lt_01CB
push 0
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call _SYMBUDTALLOCEXT
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+152], eax
.L_01BF:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01CD,16

.section .data
.balign 4
_Lt_01CC:
.int _Lt_01CD
.int _Lt_01CD
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBCOMPRTTIEND
_SYMBCOMPRTTIEND:
.L_01CE:
.L_01CF:
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
_HDECLAREPROC:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006A:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN
add esp, 8
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBADDPROCINSTANCEPARAM
add esp, 8
cmp dword ptr [ebp+16], -2147483648
je .L_006D
push 0
push 0
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push offset _Lt_006E
push dword ptr [ebp-8]
call _SYMBADDPROCPARAM
add esp, 32
.L_006D:
.L_006C:
or dword ptr [ebp+20], 64
or dword ptr [ebp+24], 2
cmp dword ptr [ebp+12], -1
jne .L_0070
push 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push dword ptr [ebp-8]
call _SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-8], eax
jmp .L_006F
.L_0070:
push 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-8], eax
.L_006F:
push -1
call _SYMBNESTEND
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HSETMINIMUMVTABLESIZE:
push ebp
mov ebp, esp
push ebx
.L_0071:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+144], 0
jne .L_0074
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov dword ptr [eax+144], 2
.L_0074:
.L_0073:
.L_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDRTTI:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0075:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN
add esp, 8
push 1
push 8390659
push offset _Lt_01D0
push 0
push 0
push 0
push dword ptr [_SYMB+99632]
push 20
push 0
push 0
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 256
push -1
call _SYMBNESTEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+152], eax
push 0
push 0
push 0
push dword ptr [_SYMB+99632]
push 20
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEBEGIN
add esp, 12
push dword ptr [_SYMB+99632]
call _SYMBUDTGETFIRSTFIELD
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-16]
call _SYMBUDTGETNEXTINITABLEFIELD
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
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _SYMBALLOCSTRCONST
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-16]
call _SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
je .L_0079
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+136]
push dword ptr [ebx+152]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0079:
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0078:
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-4]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+56], ebx
.L_0076:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01D1,16

.section .data
.balign 4
_Lt_01D0:
.int _Lt_01D1
.int _Lt_01D1
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
_HBUILDVTABLE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.L_007A:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN
add esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+144]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [_Lt_01D2+8], ecx
mov dword ptr [_Lt_01D2+12], ebx
push 1
push 8390659
push offset _Lt_01D3
push 1
push 0
push 0
push 0
push 32
push 0
push 0
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 1024
push -1
call _SYMBNESTEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+144]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 2
jle .L_007E
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+148]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-8], ecx
jmp .L_007D
.L_007E:
mov dword ptr [ebp-8], 0
.L_007D:
push 0
push 0
push 0
push 0
push 32
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-4], eax
push -1
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEBEGIN
add esp, 12
push 0
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN
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
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN
add esp, 24
mov dword ptr [ebp-24], 2
cmp dword ptr [ebp-8], 0
je .L_0080
push 2
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTTYPEINICOPYELEMENTS
add esp, 12
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-24]
add eax, -2
mov dword ptr [ebp-24], eax
.L_0080:
.L_007F:
.L_0081:
mov ecx, dword ptr [ebp-24]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [_Lt_01D2+8]
mov ebx, dword ptr [_Lt_01D2+12]
cmp eax, ebx
jg .L_0082
jl .L_01D4
cmp ecx, esi
ja .L_0082
.L_01D4:
push 0
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN
add esp, 24
inc dword ptr [ebp-24]
jmp .L_0081
.L_0082:
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-4]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-20]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax+56], esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
mov dword ptr [ebp-12], eax
.L_0083:
cmp dword ptr [ebp-12], 0
je .L_0084
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .L_0086
push dword ptr [ebp-12]
call _SYMBPROCGETVTABLEINDEX
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
je .L_0088
push dword ptr [ebp-12]
call _ASTBUILDPROCADDROF
add esp, 4
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-4]
call _ASTTYPEINIREPLACEELEMENT
add esp, 12
.L_0088:
.L_0087:
.L_0086:
.L_0085:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .L_0083
.L_0084:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+148], ebx
.L_007B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01D2,16

.section .data
.balign 4
_Lt_01D3:
.int _Lt_01D2
.int _Lt_01D2
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
_HPROCBEGIN:
push ebp
mov ebp, esp
.L_0089:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN
add esp, 8
push 0
push dword ptr [ebp+12]
call _ASTPROCBEGIN
add esp, 8
.L_008A:
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCEND:
.L_008B:
push 0
call _ASTPROCEND
add esp, 4
push -1
call _SYMBNESTEND
add esp, 4
.L_008C:
ret
.balign 16
_HADDCTORBODY:
push ebp
mov ebp, esp
push ebx
.L_008D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPROCBEGIN
add esp, 8
cmp dword ptr [ebp+16], 0
je .L_0090
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+80]
push dword ptr [ebx+60]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
.L_0090:
.L_008F:
call _HPROCEND
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 8388608
.L_008E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASSIGNDYNAMICARRAY:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0093:
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
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _RTLARRAYREDIMTO
add esp, 16
push eax
call _ASTADD
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
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-16], eax
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+99608]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-8]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call _ASTADD
add esp, 4
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+99608]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call _ASTADD
add esp, 4
push 64
push 1
push 0
push 0
push 0
push 9
mov ebx, dword ptr [_SYMB+99612]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
push eax
push 28
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-16]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
push dword ptr [ebp-20]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
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
call _ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
push eax
push 49
call _ASTNEWBOP
add esp, 20
push eax
call _ASTBUILDBRANCH
add esp, 16
push eax
call _ASTADD
add esp, 4
push 0
push dword ptr [ebp-12]
call _ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTBUILDVARDEREF
add esp, 4
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
push 1
push dword ptr [ebp-8]
call _ASTBUILDVARINC
add esp, 8
push eax
call _ASTADD
add esp, 4
push 1
push dword ptr [ebp-12]
call _ASTBUILDVARINC
add esp, 8
push eax
call _ASTADD
add esp, 4
push 0
push dword ptr [ebp-20]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
push dword ptr [ebp-24]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
.L_0094:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASSIGNLIST:
push ebp
mov ebp, esp
push ebx
.L_0095:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [_Lt_01D7], ebx
push 0
push 8
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [_Lt_01D8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [_Lt_01D9], eax
push dword ptr [_Lt_01D7]
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
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [_Lt_01DA], eax
push dword ptr [_Lt_01D7]
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
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [_Lt_01DB], eax
push 64
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [_Lt_01DA]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call _ASTADD
add esp, 4
push 64
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [_Lt_01DB]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
push 0
push dword ptr [_Lt_01D9]
push dword ptr [_Lt_01D8]
push 0
call _ASTBUILDFORBEGIN
add esp, 20
push eax
call _ASTADD
add esp, 4
push 0
push dword ptr [_Lt_01DB]
call _ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [_Lt_01DA]
call _ASTBUILDVARDEREF
add esp, 4
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
push 1
push dword ptr [_Lt_01DA]
call _ASTBUILDVARINC
add esp, 8
push eax
call _ASTADD
add esp, 4
push 1
push dword ptr [_Lt_01DB]
call _ASTBUILDVARINC
add esp, 8
push eax
call _ASTADD
add esp, 4
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [_Lt_01D9]
push dword ptr [_Lt_01D8]
push 0
call _ASTBUILDFOREND
add esp, 16
push eax
call _ASTADD
add esp, 4
.L_0096:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01D8,4
.balign 4
	.lcomm	_Lt_01D9,4
.balign 4
	.lcomm	_Lt_01DA,4
.balign 4
	.lcomm	_Lt_01DB,4
.balign 4
	.lcomm	_Lt_01D7,4

.section .text
.balign 16
_HCOPYUNIONFIELDS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0097:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.L_0099:
push dword ptr [ebp-8]
call _SYMBGETREALSIZE
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
jl .L_009D
jg .L_01DE
cmp dword ptr [ebp-24], edx
jbe .L_009D
.L_01DE:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.L_009D:
.L_009C:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-8], edx
.L_009B:
cmp dword ptr [ebp-8], 0
je .L_009E
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
jmp .L_01DC
.L_009E:
mov dword ptr [ebp-36], 0
.L_01DC:
cmp dword ptr [ebp-36], 0
je .L_00A0
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_01DD
.L_00A0:
mov dword ptr [ebp-40], 0
.L_01DD:
cmp dword ptr [ebp-40], 0
jne .L_0099
.L_009A:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 105
call _ASTNEWMEM
add esp, 20
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDLETOPBODY:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_00A2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPROCBEGIN
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
.L_00A4:
cmp dword ptr [ebp-4], 0
je .L_00A5
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
je .L_00A7
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
cmp ecx, dword ptr [eax+96]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
cmp eax, dword ptr [_SYMB+99636]
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
and dword ptr [ebp-16], ebx
.L_00A7:
.L_00A6:
cmp dword ptr [ebp-16], 0
je .L_00A9
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+12]
and ecx, 16777216
test ecx, ecx
je .L_00AB
push dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HCOPYUNIONFIELDS
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00A4
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
je .L_00AD
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _HASSIGNDYNAMICARRAY
add esp, 12
jmp .L_00AC
.L_00AD:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+60], 0
jne .L_00AF
push 0
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .L_00AE
.L_00AF:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _HASSIGNLIST
add esp, 12
.L_00AE:
.L_00AC:
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-4], ecx
jmp .L_00A4
.L_00A5:
call _HPROCEND
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+12], 8388608
.L_00A3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HHASBYREFSELFPARAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 2
je .L_00E6
jmp .L_00E4
.L_00E6:
.L_00E5:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 23
cmp dword ptr [ebx+28], eax
jne .L_00E8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+148]
cmp dword ptr [ebx+148], ecx
jne .L_00EA
push 0
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+144]
push dword ptr [ebx]
push 0
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+144]
push dword ptr [ebx]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_00EC
mov dword ptr [ebp-4], -1
jmp .L_00E4
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
.L_00E8:
.L_00E7:
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
.L_00E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SYMBGETCOMPCOPYCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .L_012D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_012D:
.L_012C:
.L_012B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HINSERTNESTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0168:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_016A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-8], eax
je .L_016B
mov eax, dword ptr [ebp-8]
lea ebx, [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+92], 0
jne .L_016D
lea ebx, [_SYMB+98652]
push ebx
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], eax
.L_016D:
.L_016C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .L_016F
push dword ptr [ebp-8]
call _SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.L_016F:
.L_016E:
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _SYMBHASHLISTADDBEFORE
add esp, 8
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_016A
.L_016B:
.L_0169:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREMOVENESTED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0170:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_0172:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
je .L_0173
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+68]
push eax
call _SYMBHASHLISTDEL
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .L_0175
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+60]
push dword ptr [ebp-4]
call _SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.L_0175:
.L_0174:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_0172
.L_0173:
.L_0171:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HINSERTIMPORTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0176:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_0179
jmp .L_0177
.L_0179:
.L_0178:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_017A:
cmp dword ptr [ebp-4], 0
je .L_017B
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_017D
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
inc dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 1
jne .L_017F
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+60]
push dword ptr [ebp-8]
call _SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.L_017F:
.L_017E:
.L_017D:
.L_017C:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .L_017A
.L_017B:
.L_0177:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREMOVEIMPORTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0180:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_0183
jmp .L_0181
.L_0183:
.L_0182:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_0184:
cmp dword ptr [ebp-4], 0
je .L_0185
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0187
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
jne .L_0189
push dword ptr [ebp-8]
call _SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.L_0189:
.L_0188:
.L_0187:
.L_0186:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .L_0184
.L_0185:
.L_0181:
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
.balign 4
_Lt_006E:	.ascii	"__FB_RHS__\0"
.balign 4
_Lt_01C1:	.ascii	"fb_RTTI$\0"
.balign 4
_Lt_01C2:	.ascii	"stdlibvtable\0"
.balign 4
_Lt_01C3:	.ascii	"id\0"
.balign 4
_Lt_01C4:	.ascii	"rttibase\0"
.balign 4
_Lt_01C7:	.ascii	"__OBJECT\0"
.balign 4
_Lt_01C8:	.ascii	"OBJECT\0"
.balign 4
_Lt_01C9:	.ascii	"fb_Object$\0"
.balign 4
_Lt_01CA:	.ascii	"vptr$\0"
.balign 4
_Lt_01CB:	.ascii	"__fb_ZTS6Object\0"
