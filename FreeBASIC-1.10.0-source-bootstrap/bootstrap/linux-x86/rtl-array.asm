	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLARRAYMODINIT
RTLARRAYMODINIT:
.type RTLARRAYMODINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0077:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.L_0078:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYMODINIT, .-RTLARRAYMODINIT
.cfi_endproc
.balign 16

.globl RTLARRAYMODEND
RTLARRAYMODEND:
.type RTLARRAYMODEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0079:
.L_007A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYMODEND, .-RTLARRAYMODEND
.cfi_endproc
.balign 16

.globl RTLARRAYCLEAR
RTLARRAYCLEAR:
.type RTLARRAYCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_009B:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .L_009E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDTOR1
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push dword ptr [ebp-24]
mov ebx, eax
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00A0
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.L_00A0:
.L_009F:
jmp .L_009D
.L_009E:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_009D:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_00A2
sub esp, 4
push -1
push -1
push dword ptr [ebp-16]
call HCHECKDEFCTOR
add esp, 16
sub esp, 4
push -1
push -1
push dword ptr [ebp-20]
call HCHECKDTOR
add esp, 16
sub esp, 8
push 0
sub esp, 12
push 124
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A4
jmp .L_009C
.L_00A4:
.L_00A3:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-16]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A6
jmp .L_009C
.L_00A6:
.L_00A5:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-20]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A8
jmp .L_009C
.L_00A8:
.L_00A7:
jmp .L_00A1
.L_00A2:
cmp dword ptr [ebp-12], 17
jne .L_00A9
sub esp, 8
push 0
sub esp, 12
push 122
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AB
jmp .L_009C
.L_00AB:
.L_00AA:
jmp .L_00A1
.L_00A9:
sub esp, 8
push 0
sub esp, 12
push 123
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AD
jmp .L_009C
.L_00AD:
.L_00AC:
.L_00A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYCLEAR, .-RTLARRAYCLEAR
.cfi_endproc
.balign 16

.globl RTLARRAYERASE
RTLARRAYERASE:
.type RTLARRAYERASE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .L_00B5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDTOR1
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push dword ptr [ebp-24]
mov ebx, eax
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00B7
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.L_00B7:
.L_00B6:
jmp .L_00B4
.L_00B5:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_00B4:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_00B9
sub esp, 4
push -1
push dword ptr [ebp+16]
push dword ptr [ebp-20]
call HCHECKDTOR
add esp, 16
cmp dword ptr [ebp+12], 0
je .L_00BB
sub esp, 8
push 0
sub esp, 12
push 126
push offset Lt_0070
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00BA
.L_00BB:
sub esp, 8
push 0
sub esp, 12
push 121
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
.L_00BA:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00BD
jmp .L_00B3
.L_00BD:
.L_00BC:
cmp dword ptr [ebp+12], 0
je .L_00BF
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-16]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C1
jmp .L_00B3
.L_00C1:
.L_00C0:
.L_00BF:
.L_00BE:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-20]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C3
jmp .L_00B3
.L_00C3:
.L_00C2:
jmp .L_00B8
.L_00B9:
cmp dword ptr [ebp-12], 17
jne .L_00C4
cmp dword ptr [ebp+12], 0
je .L_00C6
sub esp, 8
push 0
sub esp, 12
push 127
push offset Lt_0071
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00C6:
sub esp, 8
push 0
sub esp, 12
push 122
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
.L_00C5:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C8
jmp .L_00B3
.L_00C8:
.L_00C7:
jmp .L_00B8
.L_00C4:
cmp dword ptr [ebp+12], 0
jne .L_00CA
jmp .L_00B3
.L_00CA:
.L_00C9:
sub esp, 8
push 0
sub esp, 12
push 125
push offset Lt_006F
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CC
jmp .L_00B3
.L_00CC:
.L_00CB:
.L_00B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYERASE, .-RTLARRAYERASE
.cfi_endproc
.balign 16

.globl RTLARRAYREDIM
RTLARRAYREDIM:
.type RTLARRAYREDIM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00D5:
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
call HGETCTORDTORFORREDIM
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
je .L_00D8
cmp dword ptr [ebp+20], 0
jne .L_00DA
sub esp, 8
push 128
push offset Lt_0066
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_00D9
.L_00DA:
sub esp, 8
push 130
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
.L_00D9:
jmp .L_00D7
.L_00D8:
cmp dword ptr [ebp+20], 0
jne .L_00DC
sub esp, 8
push 129
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_00DB
.L_00DC:
sub esp, 8
push 131
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
.L_00DB:
.L_00D7:
sub esp, 8
push 0
push dword ptr [ebp-16]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00DE
jmp .L_00D6
.L_00DE:
.L_00DD:
push -1
push -2147483648
sub esp, 8
push 0
push 8
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E0
jmp .L_00D6
.L_00E0:
.L_00DF:
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00E2
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov eax, dword ptr [ebp+24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E4
jmp .L_00D6
.L_00E4:
.L_00E3:
push -1
push -2147483648
sub esp, 8
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
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E6
jmp .L_00D6
.L_00E6:
.L_00E5:
jmp .L_00E1
.L_00E2:
sub esp, 4
push 0
push -1
push dword ptr [ebp-28]
call HCHECKDEFCTOR
add esp, 16
sub esp, 4
push 0
push -1
push dword ptr [ebp-32]
call HCHECKDTOR
add esp, 16
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-28]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E8
jmp .L_00D6
.L_00E8:
.L_00E7:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-32]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EA
jmp .L_00D6
.L_00EA:
.L_00E9:
.L_00E1:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
push eax
push ecx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EC
jmp .L_00D6
.L_00EC:
.L_00EB:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-52], eax
jmp .L_00EE
.L_00F1:
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
je .L_00F3
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F5
jmp .L_00D6
.L_00F5:
.L_00F4:
.L_00F3:
.L_00F2:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F7
jmp .L_00D6
.L_00F7:
.L_00F6:
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
je .L_00F9
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00FB
jmp .L_00D6
.L_00FB:
.L_00FA:
.L_00F9:
.L_00F8:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FD
jmp .L_00D6
.L_00FD:
.L_00FC:
.L_00EF:
inc dword ptr [ebp-48]
.L_00EE:
mov eax, dword ptr [ebp-52]
cmp dword ptr [ebp-48], eax
jle .L_00F1
.L_00F0:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 16
mov dword ptr [ebp-4], eax
.L_00D6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYREDIM, .-RTLARRAYREDIM
.cfi_endproc
.balign 16

.globl RTLARRAYREDIMTO
RTLARRAYREDIMTO:
.type RTLARRAYREDIMTO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0103:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HGETCTORDTORFORREDIM
add esp, 16
sub esp, 8
push 0
sub esp, 12
push 132
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0106
jmp .L_0104
.L_0106:
.L_0105:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0108
jmp .L_0104
.L_0108:
.L_0107:
push -1
push -2147483648
sub esp, 8
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
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010A
jmp .L_0104
.L_010A:
.L_0109:
sub esp, 4
push 0
push 0
push dword ptr [ebp-12]
call HCHECKDEFCTOR
add esp, 16
sub esp, 4
push 0
push 0
push dword ptr [ebp-16]
call HCHECKDTOR
add esp, 16
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-12]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010C
jmp .L_0104
.L_010C:
.L_010B:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-16]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010E
jmp .L_0104
.L_010E:
.L_010D:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 16
mov dword ptr [ebp-4], eax
.L_0104:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYREDIMTO, .-RTLARRAYREDIMTO
.cfi_endproc
.balign 16

.globl RTLARRAYBOUND
RTLARRAYBOUND:
.type RTLARRAYBOUND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0110:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
cmp dword ptr [ebp+16], 0
je .L_0112
sub esp, 12
push 133
push offset Lt_0072
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .L_0118
.L_0112:
sub esp, 12
push 134
push offset Lt_0073
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
.L_0118:
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0115
jmp .L_0111
.L_0115:
.L_0114:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0117
jmp .L_0111
.L_0117:
.L_0116:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0111:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYBOUND, .-RTLARRAYBOUND
.cfi_endproc
.balign 16

.globl RTLARRAYBOUNDSCHECK
RTLARRAYBOUNDSCHECK:
.type RTLARRAYBOUNDSCHECK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0119:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_011C
sub esp, 8
push 135
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_011B
.L_011C:
sub esp, 8
push 136
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.L_011B:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
sub esp, 4
push 0
push 16
push dword ptr [ebp+8]
push 0
push 8
call ASTNEWCONV
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_011E
jmp .L_011A
.L_011E:
.L_011D:
cmp dword ptr [ebp+12], 0
je .L_0120
push -1
push 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0122
jmp .L_011A
.L_0122:
.L_0121:
.L_0120:
.L_011F:
push -1
push 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0124
jmp .L_011A
.L_0124:
.L_0123:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0126
jmp .L_011A
.L_0126:
.L_0125:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp+24]
call ASTNEWCONSTSTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0128
jmp .L_011A
.L_0128:
.L_0127:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLARRAYBOUNDSCHECK, .-RTLARRAYBOUNDSCHECK
.cfi_endproc
.balign 16
fb_ctor__rtlzarray:
.type fb_ctor__rtlzarray, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0002:
.L_0003:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size fb_ctor__rtlzarray, .-fb_ctor__rtlzarray
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
HBUILDPROCPTR:
.type HBUILDPROCPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007B:
cmp dword ptr [ebp+8], 0
jne .L_007E
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_007C
.L_007E:
.L_007D:
sub esp, 12
push dword ptr [ebp+8]
call ASTBUILDPROCADDROF
add esp, 16
mov dword ptr [ebp-4], eax
.L_007C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBUILDPROCPTR, .-HBUILDPROCPTR
.cfi_endproc
.balign 16
HCHECKDEFCTOR:
.type HCHECKDEFCTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_007F:
cmp dword ptr [ebp+8], 0
jne .L_0082
jmp .L_0080
.L_0082:
cmp dword ptr [ebp+12], 0
je .L_0084
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_0086
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.L_0086:
.L_0085:
.L_0084:
.L_0083:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .L_0088
sub esp, 4
push 0
push 0
cmp dword ptr [ebp+16], 0
je .L_0089
mov dword ptr [ebp-4], 174
jmp .L_0129
.L_0089:
mov dword ptr [ebp-4], 171
.L_0129:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 16
.L_0088:
.L_0087:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
je .L_008C
sub esp, 4
push 0
push 0
cmp dword ptr [ebp+16], 0
je .L_008D
mov dword ptr [ebp-4], 176
jmp .L_012A
.L_008D:
mov dword ptr [ebp-4], 173
.L_012A:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 16
.L_008C:
.L_008B:
.L_0080:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKDEFCTOR, .-HCHECKDEFCTOR
.cfi_endproc
.balign 16
HCHECKDTOR:
.type HCHECKDTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_008F:
cmp dword ptr [ebp+8], 0
jne .L_0092
jmp .L_0090
.L_0092:
cmp dword ptr [ebp+12], 0
je .L_0094
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_0096
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.L_0096:
.L_0095:
.L_0094:
.L_0093:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .L_0098
sub esp, 4
push 0
push 0
cmp dword ptr [ebp+16], 0
je .L_0099
mov dword ptr [ebp-4], 175
jmp .L_012B
.L_0099:
mov dword ptr [ebp-4], 172
.L_012B:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 16
.L_0098:
.L_0097:
.L_0090:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKDTOR, .-HCHECKDTOR
.cfi_endproc
.balign 16
HGETCTORDTORFORREDIM:
.type HGETCTORDTORFORREDIM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00D1:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .L_00D4
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETCOMPDTOR1
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
jmp .L_00D3
.L_00D4:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
.L_00D3:
.L_00D2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETCTORDTORFORREDIM, .-HGETCTORDTORFORREDIM
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
FUNCDATA:
.int Lt_0066
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
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
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
.int Lt_006C
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
.int Lt_006D
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
.int Lt_006E
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
.int Lt_006F
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
.int Lt_0070
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
.int Lt_0071
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
.int Lt_0072
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
.int Lt_0073
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
.int Lt_0074
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
.int Lt_0075
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

.section .rodata
.balign 4
Lt_0066:	.ascii	"fb_ArrayRedimEx\0"
.balign 4
Lt_0067:	.ascii	"fb_ArrayRedimPresvEx\0"
.balign 4
Lt_0068:	.ascii	"fb_ArrayRedimObj\0"
.balign 4
Lt_0069:	.ascii	"fb_ArrayRedimPresvObj\0"
.balign 4
Lt_006A:	.ascii	"fb_ArrayRedimTo\0"
.balign 4
Lt_006B:	.ascii	"fb_ArrayDestructObj\0"
.balign 4
Lt_006C:	.ascii	"fb_ArrayDestructStr\0"
.balign 4
Lt_006D:	.ascii	"fb_ArrayClear\0"
.balign 4
Lt_006E:	.ascii	"fb_ArrayClearObj\0"
.balign 4
Lt_006F:	.ascii	"fb_ArrayErase\0"
.balign 4
Lt_0070:	.ascii	"fb_ArrayEraseObj\0"
.balign 4
Lt_0071:	.ascii	"fb_ArrayStrErase\0"
.balign 4
Lt_0072:	.ascii	"fb_ArrayLBound\0"
.balign 4
Lt_0073:	.ascii	"fb_ArrayUBound\0"
.balign 4
Lt_0074:	.ascii	"fb_ArraySngBoundChk\0"
.balign 4
Lt_0075:	.ascii	"fb_ArrayBoundChk\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzarray
