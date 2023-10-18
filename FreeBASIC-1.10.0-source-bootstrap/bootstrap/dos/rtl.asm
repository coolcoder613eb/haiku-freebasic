	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLINIT
_RTLINIT:
.L_005F:
push 6
push 12
push 32
lea eax, [_CTX]
push eax
call _LISTINIT
add esp, 16
call _RTLARRAYMODINIT
call _RTLCONSOLEMODINIT
call _RTLDATAMODINIT
call _RTLERRORMODINIT
call _RTLFILEMODINIT
call _RTLGFXMODINIT
call _RTLMACROMODINIT
call _RTLMATHMODINIT
call _RTLMEMMODINIT
call _RTLPRINTMODINIT
call _RTLPROFILEMODINIT
call _RTLSTRINGMODINIT
call _RTLSYSTEMMODINIT
call _RTLGOSUBMODINIT
call _RTLOOPMODINIT
.L_0060:
ret
.balign 16

.globl _RTLEND
_RTLEND:
.L_0061:
call _RTLOOPMODEND
call _RTLGOSUBMODEND
call _RTLSYSTEMMODEND
call _RTLSTRINGMODEND
call _RTLPROFILEMODEND
call _RTLPRINTMODEND
call _RTLMEMMODEND
call _RTLMATHMODEND
call _RTLMACROMODEND
call _RTLGFXMODEND
call _RTLFILEMODEND
call _RTLERRORMODEND
call _RTLDATAMODEND
call _RTLCONSOLEMODEND
call _RTLARRAYMODEND
lea eax, [_CTX]
push eax
call _LISTEND
add esp, 4
push offset _Lt_005E
call _fb_ArrayClear
add esp, 4
.L_0062:
ret
.balign 16

.globl _RTLADDINTRINSICPROCS
_RTLADDINTRINSICPROCS:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.L_0063:
.L_0065:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0069
jmp .L_0066
.L_0069:
.L_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .L_006B
mov ebx, dword ptr [_ENV+276]
mov dword ptr [ebp-8], ebx
.L_006B:
.L_006A:
mov dword ptr [ebp-12], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 4
je .L_006D
mov eax, dword ptr [_ENV+1040]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_006D:
.L_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 16384
je .L_006F
call _FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-12], eax
.L_006F:
.L_006E:
cmp dword ptr [ebp-12], 0
je .L_0071
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 256
test ebx, ebx
je .L_0073
mov ebx, dword ptr [_ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.L_0073:
.L_0072:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 1024
test eax, eax
je .L_0075
mov eax, dword ptr [_ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_0075:
.L_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 512
test ebx, ebx
je .L_0077
mov ebx, dword ptr [_ENV+136]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.L_0077:
.L_0076:
.L_0071:
.L_0070:
cmp dword ptr [ebp-12], 0
je .L_0079
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
dec ebx
mov dword ptr [ebp-40], ebx
jmp .L_007B
.L_007E:
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-48], 0
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+8], 0
je .L_0081
mov ebx, dword ptr [ebp-44]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-64], ebx
jmp .L_0083
.L_0085:
push offset _Lt_0000
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-56], eax
jmp .L_0082
.L_0086:
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-56], eax
jmp .L_0082
.L_0087:
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
dec ebx
mov dword ptr [ebp-80], ebx
jmp .L_0089
.L_008C:
inc dword ptr [ebp-36]
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-84]
cmp dword ptr [ebx+8], 0
je .L_008F
mov ebx, dword ptr [ebp-84]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-92], ebx
jmp .L_0091
.L_0093:
push offset _Lt_0000
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-68], eax
jmp .L_0090
.L_0094:
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-68], eax
jmp .L_0090
.L_0095:
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
mov ecx, dword ptr [eax+12]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-68], eax
jmp .L_0090
.L_0091:
mov eax, dword ptr [ebp-92]
add eax, 4294967281
cmp eax, 2
ja .L_0095
mov eax, dword ptr [ebp-92]
jmp dword ptr [_.L_0096+eax*4-60]
_.L_0096:
.int .L_0094
.int .L_0094
.int .L_0093
.L_0090:
jmp .L_008E
.L_008F:
mov dword ptr [ebp-68], 0
.L_008E:
push 0
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-84]
cmp dword ptr [eax+4], 3
jne .L_0097
mov dword ptr [ebp-88], -1
jmp .L_00B4
.L_0097:
mov dword ptr [ebp-88], 0
.L_00B4:
push dword ptr [ebp-88]
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
push 0
push dword ptr [ebp-72]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
push dword ptr [ebp-68]
push dword ptr [ebp-4]
push dword ptr [ebp-72]
call _SYMBMAKEPARAMOPTIONAL
add esp, 12
.L_008A:
inc dword ptr [ebp-76]
.L_0089:
mov eax, dword ptr [ebp-80]
cmp dword ptr [ebp-76], eax
jle .L_008C
.L_008B:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-36]
sal eax, 4
mov ecx, dword ptr [ebp+8]
add ecx, eax
lea eax, [ecx+28]
mov dword ptr [ebp-76], eax
push dword ptr [_ENV+276]
push 0
push 0
push 0
mov eax, dword ptr [ebp-76]
push dword ptr [eax]
push dword ptr [ebp-72]
call _SYMBADDPROCPTR
add esp, 24
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-56], 0
jmp .L_0082
.L_009A:
push 0
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-56], eax
jmp .L_0082
.L_0083:
mov eax, dword ptr [ebp-64]
add eax, 4294967281
cmp eax, 39
ja .L_009A
mov eax, dword ptr [ebp-64]
jmp dword ptr [_.L_009B+eax*4-60]
_.L_009B:
.int .L_0086
.int .L_0086
.int .L_0085
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_009A
.int .L_0087
.L_0082:
jmp .L_0080
.L_0081:
mov dword ptr [ebp-56], 0
.L_0080:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], -2147483648
jne .L_009D
mov dword ptr [ebp-52], 32
.L_009D:
.L_009C:
push 0
push 0
mov ebx, dword ptr [ebp-44]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+4], 3
jne .L_009E
mov dword ptr [ebp-60], -1
jmp .L_00B5
.L_009E:
mov dword ptr [ebp-60], 0
.L_00B5:
push dword ptr [ebp-60]
push dword ptr [ebp-48]
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-16]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
push dword ptr [ebp-56]
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call _SYMBMAKEPARAMOPTIONAL
add esp, 12
.L_007C:
inc dword ptr [ebp-36]
.L_007B:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .L_007E
.L_007D:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 1
test ebx, ebx
je .L_00A1
mov dword ptr [ebp-24], 1
.L_00A1:
.L_00A0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 64
test eax, eax
je .L_00A3
or dword ptr [ebp-20], 1048576
.L_00A3:
.L_00A2:
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
je .L_00A5
cmp dword ptr [_ENV+136], 3
jne .L_00A7
cmp dword ptr [ebp-32], 0
jne .L_00A9
push 0
push 0
push dword ptr [ebp-28]
push -1
push offset _Lt_00BB
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [_Lt_00BB]
mov dword ptr [ebp-32], ebx
.L_00A9:
.L_00A8:
push 0
push -1
push 0
push dword ptr [ebp-28]
push 3
push offset _Lt_00AA
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_00BC
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_Lt_00BC]
mov dword ptr [ebp-28], eax
.L_00A7:
.L_00A6:
.L_00A5:
.L_00A4:
cmp dword ptr [ebp-32], 0
jne .L_00AD
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
.L_00AD:
.L_00AC:
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
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_00AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+100], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
and ebx, 2
test ebx, ebx
je .L_00B1
mov ebx, dword ptr [ebp-16]
or dword ptr [ebx+12], 64
.L_00B1:
.L_00B0:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
and ecx, 2048
je .L_00B3
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 524288
.L_00B3:
.L_00B2:
jmp .L_00AE
.L_00AF:
push 0
push 1
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx]
push 4
call _ERRREPORTEX
add esp, 20
.L_00AE:
.L_0079:
.L_0078:
add dword ptr [ebp+8], 284
.L_0067:
jmp .L_0065
.L_0066:
.L_0064:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00BB,12
.balign 4
	.lcomm	_Lt_00BC,12

.section .text
.balign 16

.globl _RTLPROCLOOKUP
_RTLPROCLOOKUP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BD:
mov eax, dword ptr [ebp+12]
cmp dword ptr [_RTLLOOKUPTB+eax*4], 0
jne .L_00C0
push 0
push 0
push dword ptr [ebp+8]
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C2
cmp dword ptr [_ENV+136], 3
jne .L_00C4
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_00AA
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_00C8
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_Lt_00C8]
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+8]
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C7
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call _ERRREPORTEX
add esp, 20
mov eax, dword ptr [ebp+12]
mov dword ptr [_RTLLOOKUPTB+eax*4], 0
jmp .L_00C6
.L_00C7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [_RTLLOOKUPTB+ebx*4], ecx
.L_00C6:
jmp .L_00C3
.L_00C4:
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call _ERRREPORTEX
add esp, 20
mov ecx, dword ptr [ebp+12]
mov dword ptr [_RTLLOOKUPTB+ecx*4], 0
.L_00C3:
jmp .L_00C1
.L_00C2:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov dword ptr [_RTLLOOKUPTB+ebx*4], eax
.L_00C1:
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [_RTLLOOKUPTB+eax*4]
mov dword ptr [ebp-4], ebx
.L_00BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00C8,12

.section .text
.balign 16

.globl _RTLOVLPROCCALL
_RTLOVLPROCCALL:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00C9:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
lea eax, [ebp-24]
push eax
lea eax, [_CTX]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .L_00CC
push 0
lea ebx, [ebp-24]
push ebx
lea ebx, [_CTX]
push ebx
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
.L_00CC:
.L_00CB:
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00CE
lea eax, [ebp-24]
push eax
lea eax, [_CTX]
push eax
call _SYMBFREEOVLCALLARGS
add esp, 8
mov dword ptr [ebp-4], 0
jmp .L_00CA
.L_00CE:
.L_00CD:
push 0
push dword ptr [ebp-32]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.L_00CF:
cmp dword ptr [ebp-28], 0
je .L_00D0
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx]
push dword ptr [ebp-36]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00D2
mov dword ptr [ebp-4], 0
jmp .L_00CA
.L_00D2:
.L_00D1:
push dword ptr [ebp-28]
lea eax, [_CTX]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-28], eax
jmp .L_00CF
.L_00D0:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.L_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLCALCEXPRLEN
_RTLCALCEXPRLEN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_00D6
.L_00D8:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .L_00D5
.L_00D9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .L_00D5
.L_00D6:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 14
ja .L_00D9
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00DA+eax*4-16]
_.L_00DA:
.int .L_00D8
.int .L_00D9
.int .L_00D9
.int .L_00D8
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D8
.L_00D5:
.L_00D4:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLCALCSTRLEN
_RTLCALCSTRLEN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DB:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_00DD
mov dword ptr [ebp-16], 24
jmp .L_00EF
.L_00DD:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00EF:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_00E0
.L_00E2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00DF
.L_00E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_00E5
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00E4
.L_00E5:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp eax, ebx
je .L_00E7
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00E6
.L_00E7:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+40]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.L_00E6:
.L_00E4:
jmp .L_00DF
.L_00E8:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00EA
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00E9
.L_00EA:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+28]
and ecx, 511
mov eax, dword ptr [ebp+12]
and eax, 511
cmp ecx, eax
je .L_00EC
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_00EB
.L_00EC:
mov ecx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call ___divdi3
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_00EB:
.L_00E9:
jmp .L_00DF
.L_00ED:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
jmp .L_00DF
.L_00E0:
mov eax, dword ptr [ebp-20]
add eax, 4294967294
cmp eax, 16
ja .L_00ED
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00EE+eax*4-8]
_.L_00EE:
.int .L_00E2
.int .L_00E2
.int .L_00E3
.int .L_00ED
.int .L_00ED
.int .L_00E8
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00ED
.int .L_00E3
.L_00DF:
.L_00DC:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtl:
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

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_CTX,32
.balign 4
	.lcomm	_RTLLOOKUPTB,1468

.section .data
.balign 4
_Lt_005E:
.int _RTLLOOKUPTB
.int _RTLLOOKUPTB
.int 1468
.int 4
.int 1
.int 49
.int 367
.int 0
.int 366
.balign 4
_Lt_00AA:	.ascii	"__\0"

.section .ctors
.int _fb_ctor__rtl
