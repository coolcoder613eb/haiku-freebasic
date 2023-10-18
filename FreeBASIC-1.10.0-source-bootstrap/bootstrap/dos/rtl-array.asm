	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLARRAYMODINIT
_RTLARRAYMODINIT:
.L_0078:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.L_0079:
ret
.balign 16

.globl _RTLARRAYMODEND
_RTLARRAYMODEND:
.L_007A:
.L_007B:
ret
.balign 16

.globl _RTLARRAYCLEAR
_RTLARRAYCLEAR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_009C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .L_009F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
push dword ptr [ebp-24]
mov ebx, eax
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00A1
push 0
push 0
push 183
call _ERRREPORT
add esp, 12
.L_00A1:
.L_00A0:
jmp .L_009E
.L_009F:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_009E:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_00A3
push -1
push -1
push dword ptr [ebp-16]
call _HCHECKDEFCTOR
add esp, 12
push -1
push -1
push dword ptr [ebp-20]
call _HCHECKDTOR
add esp, 12
push 0
push 124
push offset _Lt_006F
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A5
jmp .L_009D
.L_00A5:
.L_00A4:
push -1
push -2147483648
push dword ptr [ebp-16]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A7
jmp .L_009D
.L_00A7:
.L_00A6:
push -1
push -2147483648
push dword ptr [ebp-20]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A9
jmp .L_009D
.L_00A9:
.L_00A8:
jmp .L_00A2
.L_00A3:
cmp dword ptr [ebp-12], 17
jne .L_00AA
push 0
push 122
push offset _Lt_006D
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AC
jmp .L_009D
.L_00AC:
.L_00AB:
jmp .L_00A2
.L_00AA:
push 0
push 123
push offset _Lt_006E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AE
jmp .L_009D
.L_00AE:
.L_00AD:
.L_00A2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLARRAYERASE
_RTLARRAYERASE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00B3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .L_00B6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
push dword ptr [ebp-24]
mov ebx, eax
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00B8
push 0
push 0
push 183
call _ERRREPORT
add esp, 12
.L_00B8:
.L_00B7:
jmp .L_00B5
.L_00B6:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_00B5:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_00BA
push -1
push dword ptr [ebp+16]
push dword ptr [ebp-20]
call _HCHECKDTOR
add esp, 12
cmp dword ptr [ebp+12], 0
je .L_00BC
push 0
push 126
push offset _Lt_0071
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00BB
.L_00BC:
push 0
push 121
push offset _Lt_006C
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
.L_00BB:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00BE
jmp .L_00B4
.L_00BE:
.L_00BD:
cmp dword ptr [ebp+12], 0
je .L_00C0
push -1
push -2147483648
push dword ptr [ebp-16]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C2
jmp .L_00B4
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
push -1
push -2147483648
push dword ptr [ebp-20]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C4
jmp .L_00B4
.L_00C4:
.L_00C3:
jmp .L_00B9
.L_00BA:
cmp dword ptr [ebp-12], 17
jne .L_00C5
cmp dword ptr [ebp+12], 0
je .L_00C7
push 0
push 127
push offset _Lt_0072
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00C6
.L_00C7:
push 0
push 122
push offset _Lt_006D
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
.L_00C6:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C9
jmp .L_00B4
.L_00C9:
.L_00C8:
jmp .L_00B9
.L_00C5:
cmp dword ptr [ebp+12], 0
jne .L_00CB
jmp .L_00B4
.L_00CB:
.L_00CA:
push 0
push 125
push offset _Lt_0070
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CD
jmp .L_00B4
.L_00CD:
.L_00CC:
.L_00B9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLARRAYREDIM
_RTLARRAYREDIM:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-44], ecx
mov dword ptr [ebp-40], ebx
lea ecx, [ebp-32]
push ecx
lea ecx, [ebp-28]
push ecx
mov ecx, dword ptr [ebp-20]
push dword ptr [ecx+32]
push dword ptr [ebp-36]
call _HGETCTORDTORFORREDIM
add esp, 16
cmp dword ptr [ebp-28], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-32], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_00D9
cmp dword ptr [ebp+20], 0
jne .L_00DB
push 128
push offset _Lt_0067
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_00DA
.L_00DB:
push 130
push offset _Lt_0068
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-16], eax
.L_00DA:
jmp .L_00D8
.L_00D9:
cmp dword ptr [ebp+20], 0
jne .L_00DD
push 129
push offset _Lt_0069
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_00DC
.L_00DD:
push 131
push offset _Lt_006A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-16], eax
.L_00DC:
.L_00D8:
push 0
push dword ptr [ebp-16]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00DF
jmp .L_00D7
.L_00DF:
.L_00DE:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E1
jmp .L_00D7
.L_00E1:
.L_00E0:
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00E3
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp+24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E5
jmp .L_00D7
.L_00E5:
.L_00E4:
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-36]
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E7
jmp .L_00D7
.L_00E7:
.L_00E6:
jmp .L_00E2
.L_00E3:
push 0
push -1
push dword ptr [ebp-28]
call _HCHECKDEFCTOR
add esp, 12
push 0
push -1
push dword ptr [ebp-32]
call _HCHECKDTOR
add esp, 12
push -1
push -2147483648
push dword ptr [ebp-28]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E9
jmp .L_00D7
.L_00E9:
.L_00E8:
push -1
push -2147483648
push dword ptr [ebp-32]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EB
jmp .L_00D7
.L_00EB:
.L_00EA:
.L_00E2:
push -1
push -2147483648
push 0
push 8
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00ED
jmp .L_00D7
.L_00ED:
.L_00EC:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-52], eax
jmp .L_00EF
.L_00F2:
mov eax, dword ptr [ebp+16]
add eax, 36
mov ecx, dword ptr [eax]
imul ecx, dword ptr [ebp-48]
sal ecx, 2
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 8
je .L_00F4
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F6
jmp .L_00D7
.L_00F6:
.L_00F5:
.L_00F4:
.L_00F3:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F8
jmp .L_00D7
.L_00F8:
.L_00F7:
mov eax, dword ptr [ebp+16]
add eax, 36
mov ecx, dword ptr [eax]
imul ecx, dword ptr [ebp-48]
sal ecx, 2
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 8
je .L_00FA
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00FC
jmp .L_00D7
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F9:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FE
jmp .L_00D7
.L_00FE:
.L_00FD:
.L_00F0:
inc dword ptr [ebp-48]
.L_00EF:
mov eax, dword ptr [ebp-52]
cmp dword ptr [ebp-48], eax
jle .L_00F2
.L_00F1:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
mov dword ptr [ebp-4], eax
.L_00D7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLARRAYREDIMTO
_RTLARRAYREDIMTO:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0104:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HGETCTORDTORFORREDIM
add esp, 16
push 0
push 132
push offset _Lt_006B
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0107
jmp .L_0105
.L_0107:
.L_0106:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0109
jmp .L_0105
.L_0109:
.L_0108:
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp+16]
and eax, 511
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_010B
jmp .L_0105
.L_010B:
.L_010A:
push 0
push 0
push dword ptr [ebp-12]
call _HCHECKDEFCTOR
add esp, 12
push 0
push 0
push dword ptr [ebp-16]
call _HCHECKDTOR
add esp, 12
push -1
push -2147483648
push dword ptr [ebp-12]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_010D
jmp .L_0105
.L_010D:
.L_010C:
push -1
push -2147483648
push dword ptr [ebp-16]
call _HBUILDPROCPTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_010F
jmp .L_0105
.L_010F:
.L_010E:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
mov dword ptr [ebp-4], eax
.L_0105:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLARRAYBOUND
_RTLARRAYBOUND:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0111:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [ebp+16], 0
je .L_0113
push 133
push offset _Lt_0073
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0119
.L_0113:
push 134
push offset _Lt_0074
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0119:
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0116
jmp .L_0112
.L_0116:
.L_0115:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0118
jmp .L_0112
.L_0118:
.L_0117:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0112:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLARRAYBOUNDSCHECK
_RTLARRAYBOUNDSCHECK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_011A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_011D
push 135
push offset _Lt_0075
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_011C
.L_011D:
push 136
push offset _Lt_0076
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_011C:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 16
push dword ptr [ebp+8]
push 0
push 8
call _ASTNEWCONV
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_011F
jmp .L_011B
.L_011F:
.L_011E:
cmp dword ptr [ebp+12], 0
je .L_0121
push -1
push 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0123
jmp .L_011B
.L_0123:
.L_0122:
.L_0121:
.L_0120:
push -1
push 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0125
jmp .L_011B
.L_0125:
.L_0124:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0127
jmp .L_011B
.L_0127:
.L_0126:
push -1
push -2147483648
push dword ptr [ebp+24]
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0129
jmp .L_011B
.L_0129:
.L_0128:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzarray:
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
_HBUILDPROCPTR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_007C:
cmp dword ptr [ebp+8], 0
jne .L_007F
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_007D
.L_007F:
.L_007E:
push dword ptr [ebp+8]
call _ASTBUILDPROCADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_007D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKDEFCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0080:
cmp dword ptr [ebp+8], 0
jne .L_0083
jmp .L_0081
.L_0083:
cmp dword ptr [ebp+12], 0
je .L_0085
push dword ptr [ebp+8]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0087
push 0
push 0
push 204
call _ERRREPORT
add esp, 12
.L_0087:
.L_0086:
.L_0085:
.L_0084:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .L_0089
push 0
push 0
cmp dword ptr [ebp+16], 0
je .L_008A
mov dword ptr [ebp-4], 174
jmp .L_012A
.L_008A:
mov dword ptr [ebp-4], 171
.L_012A:
push dword ptr [ebp-4]
call _ERRREPORT
add esp, 12
.L_0089:
.L_0088:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
je .L_008D
push 0
push 0
cmp dword ptr [ebp+16], 0
je .L_008E
mov dword ptr [ebp-4], 176
jmp .L_012B
.L_008E:
mov dword ptr [ebp-4], 173
.L_012B:
push dword ptr [ebp-4]
call _ERRREPORT
add esp, 12
.L_008D:
.L_008C:
.L_0081:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKDTOR:
push ebp
mov ebp, esp
sub esp, 4
.L_0090:
cmp dword ptr [ebp+8], 0
jne .L_0093
jmp .L_0091
.L_0093:
cmp dword ptr [ebp+12], 0
je .L_0095
push dword ptr [ebp+8]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0097
push 0
push 0
push 206
call _ERRREPORT
add esp, 12
.L_0097:
.L_0096:
.L_0095:
.L_0094:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .L_0099
push 0
push 0
cmp dword ptr [ebp+16], 0
je .L_009A
mov dword ptr [ebp-4], 175
jmp .L_012C
.L_009A:
mov dword ptr [ebp-4], 172
.L_012C:
push dword ptr [ebp-4]
call _ERRREPORT
add esp, 12
.L_0099:
.L_0098:
.L_0091:
mov esp, ebp
pop ebp
ret
.balign 16
_HGETCTORDTORFORREDIM:
push ebp
mov ebp, esp
push ebx
.L_00D2:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .L_00D5
push dword ptr [ebp+12]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
push dword ptr [ebp+12]
call _SYMBGETCOMPDTOR1
add esp, 4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
jmp .L_00D4
.L_00D5:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
.L_00D4:
.L_00D3:
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
_FUNCDATA:
.int _Lt_0067
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int -2147483136
.int 4
.int 0
.skip 4,0
.skip 160,0
.int _Lt_0068
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int -2147483136
.int 4
.int 0
.skip 4,0
.skip 160,0
.int _Lt_0069
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int -2147483648
.int 4
.int 0
.skip 4,0
.skip 160,0
.int _Lt_006A
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int -2147483648
.int 4
.int 0
.skip 4,0
.skip 160,0
.int _Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 0
.int 3
.int 0
.skip 4,0
.int 0
.int 3
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 176,0
.int _Lt_006C
.long 0
.int 0
.int -1
.long 0
.int 0
.int 2
.int 0
.int 3
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_006D
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 4,0
.skip 240,0
.int _Lt_006E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 4,0
.skip 240,0
.int _Lt_006F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 0
.int 3
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0070
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0071
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 0
.int 3
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0072
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0073
.long 0
.int 8
.int -1
.long 0
.int 0
.int 2
.int 512
.int 3
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0074
.long 0
.int 8
.int -1
.long 0
.int 0
.int 2
.int 512
.int 3
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0075
.long 0
.int 32
.int -1
.long 0
.int 2048
.int 4
.int 521
.int 1
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.int 0
.skip 192,0
.int _Lt_0076
.long 0
.int 32
.int -1
.long 0
.int 2048
.int 5
.int 520
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.int 0
.skip 176,0
.long 0
.skip 280,0
.balign 4
_Lt_0067:	.ascii	"fb_ArrayRedimEx\0"
.balign 4
_Lt_0068:	.ascii	"fb_ArrayRedimPresvEx\0"
.balign 4
_Lt_0069:	.ascii	"fb_ArrayRedimObj\0"
.balign 4
_Lt_006A:	.ascii	"fb_ArrayRedimPresvObj\0"
.balign 4
_Lt_006B:	.ascii	"fb_ArrayRedimTo\0"
.balign 4
_Lt_006C:	.ascii	"fb_ArrayDestructObj\0"
.balign 4
_Lt_006D:	.ascii	"fb_ArrayDestructStr\0"
.balign 4
_Lt_006E:	.ascii	"fb_ArrayClear\0"
.balign 4
_Lt_006F:	.ascii	"fb_ArrayClearObj\0"
.balign 4
_Lt_0070:	.ascii	"fb_ArrayErase\0"
.balign 4
_Lt_0071:	.ascii	"fb_ArrayEraseObj\0"
.balign 4
_Lt_0072:	.ascii	"fb_ArrayStrErase\0"
.balign 4
_Lt_0073:	.ascii	"fb_ArrayLBound\0"
.balign 4
_Lt_0074:	.ascii	"fb_ArrayUBound\0"
.balign 4
_Lt_0075:	.ascii	"fb_ArraySngBoundChk\0"
.balign 4
_Lt_0076:	.ascii	"fb_ArrayBoundChk\0"

.section .ctors
.int _fb_ctor__rtlzarray
