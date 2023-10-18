	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLSYSTEMMODINIT
_RTLSYSTEMMODINIT:
.L_00B4:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.L_00B5:
ret
.balign 16

.globl _RTLSYSTEMMODEND
_RTLSYSTEMMODEND:
.L_00B6:
.L_00B7:
ret
.balign 16

.globl _RTLINITAPP
_RTLINITAPP:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00D4:
mov eax, dword ptr [_ENV+96]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+104], 0
jne .L_00D7
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_00DB
.L_00DC:
cmp dword ptr [ebp-16], 1
jne .L_00DA
.L_00DB:
cmp dword ptr [_ENV+184], 0
je .L_00DE
call _RTLPROFILECALL_MONSTARTUP
.L_00DE:
.L_00DD:
.L_00DA:
.L_00D8:
cmp dword ptr [_ENV+108], 0
jne .L_00E0
push 0
push 142
push offset _Lt_0061
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
push eax
call _ASTADD
add esp, 4
.L_00E0:
.L_00DF:
.L_00D7:
.L_00D6:
push 0
push 140
push offset _Lt_005F
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
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [_ENV+136]
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
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-12]
and eax, dword ptr [_ENV+156]
je .L_00E2
push 0
push 141
push offset _Lt_0060
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
push eax
call _ASTADD
add esp, 4
call _FBGETCPUFAMILY
test eax, eax
jne .L_00E4
call _RTLX86CPUCHECK
.L_00E4:
.L_00E3:
.L_00E2:
.L_00E1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLEXITAPP
_RTLEXITAPP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00E6:
mov dword ptr [ebp-4], 0
push 0
push 143
push offset _Lt_0063
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_00E9
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_00E9:
.L_00E8:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EB
jmp .L_00E7
.L_00EB:
.L_00EA:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_00E7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLATEXIT
_RTLATEXIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00F9:
mov dword ptr [ebp-4], 0
push 0
push 144
push offset _Lt_0064
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [_Lt_00FD], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [_Lt_00FD]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FC
jmp .L_00FA
.L_00FC:
.L_00FB:
mov eax, dword ptr [_Lt_00FD]
mov dword ptr [ebp-4], eax
.L_00FA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00FD,4

.section .text
.balign 16
_fb_ctor__rtlzsystem:
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
_RTLX86CPUCHECK:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.L_00B8:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_ENV+112]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 3
jle .L_00BB
mov dword ptr [ebp-24], 3
.L_00BB:
.L_00BA:
cmp dword ptr [ebp-24], 0
jne .L_00BD
.L_00BE:
push 0
push 4
push offset _Lt_00BF
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 3
jmp .L_00BC
.L_00BD:
cmp dword ptr [ebp-24], 1
jne .L_00C0
.L_00C1:
push 0
push 4
push offset _Lt_00C2
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 4
jmp .L_00BC
.L_00C0:
cmp dword ptr [ebp-24], 2
jne .L_00C3
.L_00C4:
push 0
push 4
push offset _Lt_00C5
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 5
jmp .L_00BC
.L_00C3:
push 0
push 4
push offset _Lt_00C7
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 6
.L_00C6:
.L_00BC:
push 0
push 139
push offset _Lt_005E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 9
push 0
push 28
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 42
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push 0
push 9
mov ebx, dword ptr [ebp-24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 49
call _ASTNEWBOP
add esp, 20
push eax
call _ASTADD
add esp, 4
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 9
push offset _Lt_00C9
push -1
push -1
lea eax, [ebp-36]
push eax
push 34
push offset _Lt_00C8
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-16], eax
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
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
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
call _RTLPRINT
add esp, 20
push 0
push 143
push offset _Lt_0063
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CE
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00B9
.L_00CE:
.L_00CD:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
push -1
push dword ptr [ebp-20]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
cmp dword ptr [_ENV+116], 1
jne .L_00D0
push 0
push 139
push offset _Lt_005E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 9
push 0
push 100663296
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 34
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push 0
push 9
push 0
push 100663296
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 45
call _ASTNEWBOP
add esp, 20
push eax
call _ASTADD
add esp, 4
push -1
push offset _Lt_00D1
call _SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-16], eax
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
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
call _RTLPRINT
add esp, 20
push 0
push 143
push offset _Lt_0063
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00D3
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00B9
.L_00D3:
.L_00D2:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
push -1
push dword ptr [ebp-20]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
.L_00D0:
.L_00CF:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_00B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMULTITHREAD_CB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00EC:
cmp dword ptr [_ENV+232], 0
jne .L_00EF
mov eax, dword ptr [_ENV+1120]
and eax, 4
test eax, eax
jne .L_00F1
push 4
call _FBRESTARTBEGINREQUEST
add esp, 4
.L_00F1:
.L_00F0:
.L_00EF:
.L_00EE:
mov dword ptr [_ENV+232], -1
mov dword ptr [ebp-4], -1
.L_00ED:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HTHREADCALL_CB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00F2:
call _FBRESTARTGETCOUNT
cmp dword ptr [_Lt_00FE], eax
je .L_00F5
call _FBRESTARTGETCOUNT
mov dword ptr [_Lt_00FE], eax
mov dword ptr [_Lt_00FF], 0
.L_00F5:
.L_00F4:
cmp dword ptr [_Lt_00FF], 0
jne .L_00F7
mov dword ptr [_Lt_00FF], -1
push offset _Lt_00F8
call _FBADDLIB
add esp, 4
.L_00F7:
.L_00F6:
push dword ptr [ebp+8]
call _HMULTITHREAD_CB
add esp, 4
mov dword ptr [ebp-4], eax
.L_00F3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00FE,4

.section .data
.balign 4
_Lt_00FF:
.int 0

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
.int _Lt_005E
.long 0
.int 12
.int 3
.long 0
.int 16384
.int 0
.skip 256,0
.int _Lt_005F
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 11
.int 1
.int 0
.skip 4,0
.int 68
.int 1
.int 0
.skip 4,0
.int 11
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0060
.long 0
.int 0
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_0061
.int _Lt_0062
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_0063
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0064
.int _Lt_0065
.int 11
.int 3
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0066
.int _Lt_0067
.int 17
.int -1
.long 0
.int 64
.int 1
.int 523
.int 1
.int -1
.int -1
.skip 240,0
.int _Lt_0068
.int _Lt_0069
.int 17
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int _Lt_006A
.int _Lt_006B
.int 17
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int _Lt_006C
.int _Lt_006D
.int 16
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_006E
.int _Lt_006F
.int 17
.int -1
.long 0
.int 64
.int 0
.skip 256,0
.int _Lt_0070
.int _Lt_0071
.int 17
.int -1
.long 0
.int 64
.int 0
.skip 256,0
.int _Lt_0072
.int _Lt_0073
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int -1
.int 0
.skip 240,0
.int _Lt_0074
.int _Lt_0063
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 240,0
.int _Lt_0075
.int _Lt_0063
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 240,0
.int _Lt_0076
.int _Lt_0077
.int 11
.int -1
.long 0
.int 0
.int 2
.int 529
.int 2
.int 0
.skip 4,0
.int 529
.int 2
.int -1
.int 0
.skip 224,0
.int _Lt_0078
.int _Lt_0079
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_007A
.int _Lt_007B
.int 11
.int -1
.long 0
.int 128
.int 2
.int 529
.int 2
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 4,0
.skip 224,0
.int _Lt_007C
.int _Lt_007D
.int 17
.int -1
.long 0
.int 64
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_007E
.int _Lt_007F
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0080
.int _Lt_0081
.int 0
.int -1
.long 0
.int 129
.int 1
.int 523
.int 1
.int -1
.int -1
.skip 240,0
.int _Lt_0080
.int _Lt_0082
.int 0
.int -1
.long 0
.int 257
.int 1
.int 523
.int 1
.int -1
.int -1
.skip 240,0
.int _Lt_0080
.int _Lt_0083
.int 11
.int -1
.long 0
.int 3
.int 2
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0084
.int _Lt_0085
.int 17
.int -1
.long 0
.int 129
.int 1
.int 43
.int 1
.int -1
.int 0
.skip 240,0
.int _Lt_0084
.int _Lt_0086
.int 17
.int -1
.long 0
.int 129
.int 1
.int 45
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0084
.int _Lt_0085
.int 17
.int -1
.long 0
.int 129
.int 1
.int 11
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0084
.int _Lt_0086
.int 17
.int -1
.long 0
.int 129
.int 1
.int 13
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0084
.int _Lt_0087
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 33
.int 43
.int 1
.int -1
.int 0
.skip 208,0
.int _Lt_0084
.int _Lt_0088
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 33
.int 45
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0084
.int _Lt_0087
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 33
.int 11
.int 2
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0084
.int _Lt_0088
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 33
.int 13
.int 2
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0089
.int _Lt_008A
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_008B
.int _Lt_008C
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_008D
.int _Lt_008E
.int 32
.int -1
.int _HMULTITHREAD_CB
.int 132
.int 5
.int 54
.int 1
.int -1
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.int 0
.int 0
.int 0
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.int 520
.int 1
.int -1
.int 0
.skip 176,0
.int _Lt_008F
.int _Lt_0090
.int 0
.int -1
.int _HMULTITHREAD_CB
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0091
.long 0
.int 32
.int 3
.int _HTHREADCALL_CB
.int 132
.int 5
.int 32
.int 1
.int 0
.skip 4,0
.int 523
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
.int -2147483648
.int 4
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0092
.int _Lt_0093
.int 32
.int -1
.long 0
.int 132
.int 0
.skip 256,0
.int _Lt_0094
.int _Lt_0095
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0096
.int _Lt_0097
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0098
.int _Lt_0099
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009A
.int _Lt_009B
.int 32
.int -1
.long 0
.int 132
.int 0
.skip 256,0
.int _Lt_009C
.int _Lt_009D
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009E
.int _Lt_009F
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00A0
.int _Lt_00A1
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00A2
.int _Lt_00A3
.int 0
.int -1
.long 0
.int 132
.int 2
.int 32
.int 1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_00A4
.int _Lt_00A5
.int 32
.int -1
.long 0
.int 128
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00A6
.int _Lt_00A7
.int 32
.int -1
.long 0
.int 129
.int 2
.int 32
.int 1
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 4,0
.skip 224,0
.int _Lt_00A6
.int _Lt_00A8
.int 32
.int -1
.long 0
.int 129
.int 2
.int 32
.int 1
.int 0
.skip 4,0
.int 517
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_00A9
.int _Lt_00AA
.int 0
.int -1
.long 0
.int 128
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00AB
.int _Lt_00AC
.int 0
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_00AD
.int _Lt_00AE
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00AF
.int _Lt_00B0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00B1
.int _Lt_00B2
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.long 0
.skip 280,0
.balign 4
_Lt_005E:	.ascii	"fb_CpuDetect\0"
.balign 4
_Lt_005F:	.ascii	"fb_Init\0"
.balign 4
_Lt_0060:	.ascii	"fb_InitSignals\0"
.balign 4
_Lt_0061:	.ascii	"fb___main\0"
.balign 4
_Lt_0062:	.ascii	"__main\0"
.balign 4
_Lt_0063:	.ascii	"fb_End\0"
.balign 4
_Lt_0064:	.ascii	"fb_atexit\0"
.balign 4
_Lt_0065:	.ascii	"atexit\0"
.balign 4
_Lt_0066:	.ascii	"command\0"
.balign 4
_Lt_0067:	.ascii	"fb_Command\0"
.balign 4
_Lt_0068:	.ascii	"curdir\0"
.balign 4
_Lt_0069:	.ascii	"fb_CurDir\0"
.balign 4
_Lt_006A:	.ascii	"exepath\0"
.balign 4
_Lt_006B:	.ascii	"fb_ExePath\0"
.balign 4
_Lt_006C:	.ascii	"timer\0"
.balign 4
_Lt_006D:	.ascii	"fb_Timer\0"
.balign 4
_Lt_006E:	.ascii	"time\0"
.balign 4
_Lt_006F:	.ascii	"fb_Time\0"
.balign 4
_Lt_0070:	.ascii	"date\0"
.balign 4
_Lt_0071:	.ascii	"fb_Date\0"
.balign 4
_Lt_0072:	.ascii	"shell\0"
.balign 4
_Lt_0073:	.ascii	"fb_Shell\0"
.balign 4
_Lt_0074:	.ascii	"system\0"
.balign 4
_Lt_0075:	.ascii	"stop\0"
.balign 4
_Lt_0076:	.ascii	"run\0"
.balign 4
_Lt_0077:	.ascii	"fb_Run\0"
.balign 4
_Lt_0078:	.ascii	"chain\0"
.balign 4
_Lt_0079:	.ascii	"fb_Chain\0"
.balign 4
_Lt_007A:	.ascii	"exec\0"
.balign 4
_Lt_007B:	.ascii	"fb_Exec\0"
.balign 4
_Lt_007C:	.ascii	"environ\0"
.balign 4
_Lt_007D:	.ascii	"fb_GetEnviron\0"
.balign 4
_Lt_007E:	.ascii	"setenviron\0"
.balign 4
_Lt_007F:	.ascii	"fb_SetEnviron\0"
.balign 4
_Lt_0080:	.ascii	"sleep\0"
.balign 4
_Lt_0081:	.ascii	"fb_Sleep\0"
.balign 4
_Lt_0082:	.ascii	"fb_SleepQB\0"
.balign 4
_Lt_0083:	.ascii	"fb_SleepEx\0"
.balign 4
_Lt_0084:	.ascii	"dir\0"
.balign 4
_Lt_0085:	.ascii	"fb_DirNext\0"
.balign 4
_Lt_0086:	.ascii	"fb_DirNext64\0"
.balign 4
_Lt_0087:	.ascii	"fb_Dir\0"
.balign 4
_Lt_0088:	.ascii	"fb_Dir64\0"
.balign 4
_Lt_0089:	.ascii	"settime\0"
.balign 4
_Lt_008A:	.ascii	"fb_SetTime\0"
.balign 4
_Lt_008B:	.ascii	"setdate\0"
.balign 4
_Lt_008C:	.ascii	"fb_SetDate\0"
.balign 4
_Lt_008D:	.ascii	"threadcreate\0"
.balign 4
_Lt_008E:	.ascii	"fb_ThreadCreate\0"
.balign 4
_Lt_008F:	.ascii	"threadwait\0"
.balign 4
_Lt_0090:	.ascii	"fb_ThreadWait\0"
.balign 4
_Lt_0091:	.ascii	"fb_ThreadCall\0"
.balign 4
_Lt_0092:	.ascii	"mutexcreate\0"
.balign 4
_Lt_0093:	.ascii	"fb_MutexCreate\0"
.balign 4
_Lt_0094:	.ascii	"mutexdestroy\0"
.balign 4
_Lt_0095:	.ascii	"fb_MutexDestroy\0"
.balign 4
_Lt_0096:	.ascii	"mutexlock\0"
.balign 4
_Lt_0097:	.ascii	"fb_MutexLock\0"
.balign 4
_Lt_0098:	.ascii	"mutexunlock\0"
.balign 4
_Lt_0099:	.ascii	"fb_MutexUnlock\0"
.balign 4
_Lt_009A:	.ascii	"condcreate\0"
.balign 4
_Lt_009B:	.ascii	"fb_CondCreate\0"
.balign 4
_Lt_009C:	.ascii	"conddestroy\0"
.balign 4
_Lt_009D:	.ascii	"fb_CondDestroy\0"
.balign 4
_Lt_009E:	.ascii	"condsignal\0"
.balign 4
_Lt_009F:	.ascii	"fb_CondSignal\0"
.balign 4
_Lt_00A0:	.ascii	"condbroadcast\0"
.balign 4
_Lt_00A1:	.ascii	"fb_CondBroadcast\0"
.balign 4
_Lt_00A2:	.ascii	"condwait\0"
.balign 4
_Lt_00A3:	.ascii	"fb_CondWait\0"
.balign 4
_Lt_00A4:	.ascii	"dylibload\0"
.balign 4
_Lt_00A5:	.ascii	"fb_DylibLoad\0"
.balign 4
_Lt_00A6:	.ascii	"dylibsymbol\0"
.balign 4
_Lt_00A7:	.ascii	"fb_DylibSymbol\0"
.balign 4
_Lt_00A8:	.ascii	"fb_DylibSymbolByOrd\0"
.balign 4
_Lt_00A9:	.ascii	"dylibfree\0"
.balign 4
_Lt_00AA:	.ascii	"fb_DylibFree\0"
.balign 4
_Lt_00AB:	.ascii	"beep\0"
.balign 4
_Lt_00AC:	.ascii	"fb_Beep\0"
.balign 4
_Lt_00AD:	.ascii	"mkdir\0"
.balign 4
_Lt_00AE:	.ascii	"fb_MkDir\0"
.balign 4
_Lt_00AF:	.ascii	"rmdir\0"
.balign 4
_Lt_00B0:	.ascii	"fb_RmDir\0"
.balign 4
_Lt_00B1:	.ascii	"chdir\0"
.balign 4
_Lt_00B2:	.ascii	"fb_ChDir\0"
.balign 4
_Lt_00BF:	.ascii	"386\0"
.balign 4
_Lt_00C2:	.ascii	"486\0"
.balign 4
_Lt_00C5:	.ascii	"586\0"
.balign 4
_Lt_00C7:	.ascii	"686\0"
.balign 4
_Lt_00C8:	.ascii	"This program requires at least a \0"
.balign 4
_Lt_00C9:	.ascii	" to run.\0"
.balign 4
_Lt_00D1:	.ascii	"This program requires SSE and SSE2 instructions to run.\0"
.balign 4
_Lt_00F8:	.ascii	"ffi\0"

.section .ctors
.int _fb_ctor__rtlzsystem
