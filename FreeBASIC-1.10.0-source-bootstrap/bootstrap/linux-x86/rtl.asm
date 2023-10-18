	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLINIT
RTLINIT:
.type RTLINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005E:
push 6
push 12
push 32
lea eax, [CTX]
push eax
call LISTINIT
add esp, 16
call RTLARRAYMODINIT
call RTLCONSOLEMODINIT
call RTLDATAMODINIT
call RTLERRORMODINIT
call RTLFILEMODINIT
call RTLGFXMODINIT
call RTLMACROMODINIT
call RTLMATHMODINIT
call RTLMEMMODINIT
call RTLPRINTMODINIT
call RTLPROFILEMODINIT
call RTLSTRINGMODINIT
call RTLSYSTEMMODINIT
call RTLGOSUBMODINIT
call RTLOOPMODINIT
.L_005F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLINIT, .-RTLINIT
.cfi_endproc
.balign 16

.globl RTLEND
RTLEND:
.type RTLEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0060:
call RTLOOPMODEND
call RTLGOSUBMODEND
call RTLSYSTEMMODEND
call RTLSTRINGMODEND
call RTLPROFILEMODEND
call RTLPRINTMODEND
call RTLMEMMODEND
call RTLMATHMODEND
call RTLMACROMODEND
call RTLGFXMODEND
call RTLFILEMODEND
call RTLERRORMODEND
call RTLDATAMODEND
call RTLCONSOLEMODEND
call RTLARRAYMODEND
sub esp, 12
lea eax, [CTX]
push eax
call LISTEND
add esp, 16
sub esp, 12
push offset Lt_005D
call fb_ArrayClear
add esp, 16
.L_0061:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLEND, .-RTLEND
.cfi_endproc
.balign 16

.globl RTLADDINTRINSICPROCS
RTLADDINTRINSICPROCS:
.type RTLADDINTRINSICPROCS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
.L_0062:
.L_0064:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0068
jmp .L_0065
.L_0068:
.L_0067:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .L_006A
mov ebx, dword ptr [ENV+276]
mov dword ptr [ebp-8], ebx
.L_006A:
.L_0069:
mov dword ptr [ebp-12], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 4
je .L_006C
mov eax, dword ptr [ENV+1040]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_006C:
.L_006B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 16384
je .L_006E
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-12], eax
.L_006E:
.L_006D:
cmp dword ptr [ebp-12], 0
je .L_0070
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 256
test ebx, ebx
je .L_0072
mov ebx, dword ptr [ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.L_0072:
.L_0071:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 1024
test eax, eax
je .L_0074
mov eax, dword ptr [ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_0074:
.L_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 512
test ebx, ebx
je .L_0076
mov ebx, dword ptr [ENV+136]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.L_0076:
.L_0075:
.L_0070:
.L_006F:
cmp dword ptr [ebp-12], 0
je .L_0078
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
dec ebx
mov dword ptr [ebp-40], ebx
jmp .L_007A
.L_007D:
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-48], 0
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+8], 0
je .L_0080
mov ebx, dword ptr [ebp-44]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-64], ebx
jmp .L_0082
.L_0084:
sub esp, 12
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-56], eax
jmp .L_0081
.L_0085:
sub esp, 4
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-56], eax
jmp .L_0081
.L_0086:
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
dec ebx
mov dword ptr [ebp-80], ebx
jmp .L_0088
.L_008B:
inc dword ptr [ebp-36]
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-84]
cmp dword ptr [ebx+8], 0
je .L_008E
mov ebx, dword ptr [ebp-84]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-92], ebx
jmp .L_0090
.L_0092:
sub esp, 12
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-68], eax
jmp .L_008F
.L_0093:
sub esp, 4
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-68], eax
jmp .L_008F
.L_0094:
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
mov ecx, dword ptr [eax+12]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-68], eax
jmp .L_008F
.L_0090:
mov eax, dword ptr [ebp-92]
add eax, 4294967281
cmp eax, 2
ja .L_0094
mov eax, dword ptr [ebp-92]
jmp dword ptr [.L_0095+eax*4-60]
.L_0095:
.int .L_0093
.int .L_0093
.int .L_0092
.L_008F:
jmp .L_008D
.L_008E:
mov dword ptr [ebp-68], 0
.L_008D:
push 0
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-84]
cmp dword ptr [eax+4], 3
jne .L_0096
mov dword ptr [ebp-88], -1
jmp .L_00B3
.L_0096:
mov dword ptr [ebp-88], 0
.L_00B3:
push dword ptr [ebp-88]
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
push 0
push dword ptr [ebp-72]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp-68]
push dword ptr [ebp-4]
push dword ptr [ebp-72]
call SYMBMAKEPARAMOPTIONAL
add esp, 16
.L_0089:
inc dword ptr [ebp-76]
.L_0088:
mov eax, dword ptr [ebp-80]
cmp dword ptr [ebp-76], eax
jle .L_008B
.L_008A:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-36]
sal eax, 4
mov ecx, dword ptr [ebp+8]
add ecx, eax
lea eax, [ecx+28]
mov dword ptr [ebp-76], eax
sub esp, 8
push dword ptr [ENV+276]
push 0
push 0
push 0
mov eax, dword ptr [ebp-76]
push dword ptr [eax]
push dword ptr [ebp-72]
call SYMBADDPROCPTR
add esp, 32
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-56], 0
jmp .L_0081
.L_0099:
push 0
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-56], eax
jmp .L_0081
.L_0082:
mov eax, dword ptr [ebp-64]
add eax, 4294967281
cmp eax, 39
ja .L_0099
mov eax, dword ptr [ebp-64]
jmp dword ptr [.L_009A+eax*4-60]
.L_009A:
.int .L_0085
.int .L_0085
.int .L_0084
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0086
.L_0081:
jmp .L_007F
.L_0080:
mov dword ptr [ebp-56], 0
.L_007F:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], -2147483648
jne .L_009C
mov dword ptr [ebp-52], 32
.L_009C:
.L_009B:
push 0
push 0
mov ebx, dword ptr [ebp-44]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+4], 3
jne .L_009D
mov dword ptr [ebp-60], -1
jmp .L_00B4
.L_009D:
mov dword ptr [ebp-60], 0
.L_00B4:
push dword ptr [ebp-60]
push dword ptr [ebp-48]
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-16]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp-56]
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call SYMBMAKEPARAMOPTIONAL
add esp, 16
.L_007B:
inc dword ptr [ebp-36]
.L_007A:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .L_007D
.L_007C:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 1
test ebx, ebx
je .L_00A0
mov dword ptr [ebp-24], 1
.L_00A0:
.L_009F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 64
test eax, eax
je .L_00A2
or dword ptr [ebp-20], 1048576
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 128
test ebx, ebx
je .L_00A4
cmp dword ptr [ENV+136], 3
jne .L_00A6
cmp dword ptr [ebp-32], 0
jne .L_00A8
sub esp, 12
push 0
push 0
push dword ptr [ebp-28]
push -1
push offset Lt_00BA
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [Lt_00BA]
mov dword ptr [ebp-32], ebx
.L_00A8:
.L_00A7:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-28]
push 3
push offset Lt_00A9
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_00BB
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_00BB]
mov dword ptr [ebp-28], eax
.L_00A6:
.L_00A5:
.L_00A4:
.L_00A3:
cmp dword ptr [ebp-32], 0
jne .L_00AC
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
.L_00AC:
.L_00AB:
sub esp, 12
push 20
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_00AE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+100], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
and ebx, 2
test ebx, ebx
je .L_00B0
mov ebx, dword ptr [ebp-16]
or dword ptr [ebx+12], 64
.L_00B0:
.L_00AF:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
and ecx, 2048
je .L_00B2
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 524288
.L_00B2:
.L_00B1:
jmp .L_00AD
.L_00AE:
sub esp, 12
push 0
push 1
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx]
push 4
call ERRREPORTEX
add esp, 32
.L_00AD:
.L_0078:
.L_0077:
add dword ptr [ebp+8], 284
.L_0066:
jmp .L_0064
.L_0065:
.L_0063:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLADDINTRINSICPROCS, .-RTLADDINTRINSICPROCS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00BA,12
.balign 4
	.lcomm	Lt_00BB,12

.section .text
.balign 16

.globl RTLPROCLOOKUP
RTLPROCLOOKUP:
.type RTLPROCLOOKUP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [RTLLOOKUPTB+eax*4], 0
jne .L_00BF
push 0
push 0
push dword ptr [ebp+8]
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C1
cmp dword ptr [ENV+136], 3
jne .L_00C3
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push 3
push offset Lt_00A9
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_00C7
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_00C7]
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+8]
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C6
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call ERRREPORTEX
add esp, 32
mov eax, dword ptr [ebp+12]
mov dword ptr [RTLLOOKUPTB+eax*4], 0
jmp .L_00C5
.L_00C6:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [RTLLOOKUPTB+ebx*4], ecx
.L_00C5:
jmp .L_00C2
.L_00C3:
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call ERRREPORTEX
add esp, 32
mov ecx, dword ptr [ebp+12]
mov dword ptr [RTLLOOKUPTB+ecx*4], 0
.L_00C2:
jmp .L_00C0
.L_00C1:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov dword ptr [RTLLOOKUPTB+ebx*4], eax
.L_00C0:
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [RTLLOOKUPTB+eax*4]
mov dword ptr [ebp-4], ebx
.L_00BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLPROCLOOKUP, .-RTLPROCLOOKUP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00C7,12

.section .text
.balign 16

.globl RTLOVLPROCCALL
RTLOVLPROCCALL:
.type RTLOVLPROCCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00C8:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
lea eax, [ebp-24]
push eax
lea eax, [CTX]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .L_00CB
sub esp, 4
push 0
lea ebx, [ebp-24]
push ebx
lea ebx, [CTX]
push ebx
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
.L_00CB:
.L_00CA:
sub esp, 12
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call SYMBFINDCLOSESTOVLPROC
add esp, 32
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00CD
sub esp, 8
lea eax, [ebp-24]
push eax
lea eax, [CTX]
push eax
call SYMBFREEOVLCALLARGS
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_00C9
.L_00CD:
.L_00CC:
sub esp, 8
push 0
push dword ptr [ebp-32]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.L_00CE:
cmp dword ptr [ebp-28], 0
je .L_00CF
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx]
push dword ptr [ebp-36]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00D1
mov dword ptr [ebp-4], 0
jmp .L_00C9
.L_00D1:
.L_00D0:
sub esp, 8
push dword ptr [ebp-28]
lea eax, [CTX]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-28], eax
jmp .L_00CE
.L_00CF:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.L_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLOVLPROCCALL, .-RTLOVLPROCCALL
.cfi_endproc
.balign 16

.globl RTLCALCEXPRLEN
RTLCALCEXPRLEN:
.type RTLCALCEXPRLEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00D2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_00D5
.L_00D7:
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call RTLCALCSTRLEN
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .L_00D4
.L_00D8:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .L_00D4
.L_00D5:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 14
ja .L_00D8
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00D9+eax*4-16]
.L_00D9:
.int .L_00D7
.int .L_00D8
.int .L_00D8
.int .L_00D7
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D7
.L_00D4:
.L_00D3:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLCALCEXPRLEN, .-RTLCALCEXPRLEN
.cfi_endproc
.balign 16

.globl RTLCALCSTRLEN
RTLCALCSTRLEN:
.type RTLCALCSTRLEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DA:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00DC
mov dword ptr [ebp-16], 24
jmp .L_00EE
.L_00DC:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00EE:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_00DF
.L_00E1:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00DE
.L_00E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_00E4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00E3
.L_00E4:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp eax, ebx
je .L_00E6
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00E5
.L_00E6:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+40]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.L_00E5:
.L_00E3:
jmp .L_00DE
.L_00E7:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00E9
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00E8
.L_00E9:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+28]
and ecx, 511
mov eax, dword ptr [ebp+12]
and eax, 511
cmp ecx, eax
je .L_00EB
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00EA
.L_00EB:
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call __divdi3
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_00EA:
.L_00E8:
jmp .L_00DE
.L_00EC:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
jmp .L_00DE
.L_00DF:
mov eax, dword ptr [ebp-20]
add eax, 4294967294
cmp eax, 16
ja .L_00EC
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00ED+eax*4-8]
.L_00ED:
.int .L_00E1
.int .L_00E1
.int .L_00E2
.int .L_00EC
.int .L_00EC
.int .L_00E7
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00EC
.int .L_00E2
.L_00DE:
.L_00DB:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLCALCSTRLEN, .-RTLCALCSTRLEN
.cfi_endproc
.balign 16
fb_ctor__rtl:
.type fb_ctor__rtl, @function
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
.size fb_ctor__rtl, .-fb_ctor__rtl
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

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	CTX,32
.balign 4
	.lcomm	RTLLOOKUPTB,1468

.section .data
.balign 4
Lt_005D:
.int RTLLOOKUPTB
.int RTLLOOKUPTB
.int 1468
.int 4
.int 1
.int 49
.int 367
.int 0
.int 366

.section .rodata
.balign 4
Lt_00A9:	.ascii	"__\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtl
