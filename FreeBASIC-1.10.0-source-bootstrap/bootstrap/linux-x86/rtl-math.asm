	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLMATHMODINIT
RTLMATHMODINIT:
.type RTLMATHMODINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_008D:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.L_008E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHMODINIT, .-RTLMATHMODINIT
.cfi_endproc
.balign 16

.globl RTLMATHMODEND
RTLMATHMODEND:
.type RTLMATHMODEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_008F:
.L_0090:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHMODEND, .-RTLMATHMODEND
.cfi_endproc
.balign 16

.globl RTLMATHPOW
RTLMATHPOW:
.type RTLMATHPOW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0091:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 159
push offset Lt_0067
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
jne .L_0094
jmp .L_0092
.L_0094:
.L_0093:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0096
jmp .L_0092
.L_0096:
.L_0095:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0092:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHPOW, .-RTLMATHPOW
.cfi_endproc
.balign 16

.globl RTLMATHLONGINTDIV
RTLMATHLONGINTDIV:
.type RTLMATHLONGINTDIV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0097:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0099
mov dword ptr [ebp-16], 24
jmp .L_00A1
.L_0099:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00A1:
cmp dword ptr [ebp-16], 13
jne .L_009C
sub esp, 8
push 116
push offset Lt_005D
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_009B
.L_009C:
sub esp, 8
push 117
push offset Lt_005F
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.L_009B:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009E
jmp .L_0098
.L_009E:
.L_009D:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A0
jmp .L_0098
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0098:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHLONGINTDIV, .-RTLMATHLONGINTDIV
.cfi_endproc
.balign 16

.globl RTLMATHLONGINTMOD
RTLMATHLONGINTMOD:
.type RTLMATHLONGINTMOD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00A2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00A4
mov dword ptr [ebp-16], 24
jmp .L_00AC
.L_00A4:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00AC:
cmp dword ptr [ebp-16], 13
jne .L_00A7
sub esp, 8
push 118
push offset Lt_0061
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_00A6
.L_00A7:
sub esp, 8
push 119
push offset Lt_0063
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.L_00A6:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A9
jmp .L_00A3
.L_00A9:
.L_00A8:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AB
jmp .L_00A3
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHLONGINTMOD, .-RTLMATHLONGINTMOD
.cfi_endproc
.balign 16

.globl RTLMATHFP2ULONGINT
RTLMATHFP2ULONGINT:
.type RTLMATHFP2ULONGINT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AD:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 120
push offset Lt_0065
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00B0
jmp .L_00AE
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHFP2ULONGINT, .-RTLMATHFP2ULONGINT
.cfi_endproc
.balign 16

.globl RTLMATHUOP
RTLMATHUOP:
.type RTLMATHUOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00B1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_00B4
.L_00B6:
sub esp, 8
push 341
push offset Lt_007E
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00B7:
sub esp, 8
push 346
push offset Lt_0079
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00B8:
sub esp, 8
push 347
push offset Lt_0083
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00B9:
sub esp, 8
push 348
push offset Lt_0086
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00BA:
sub esp, 8
push 342
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00BB:
sub esp, 8
push 343
push offset Lt_0070
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00BC:
sub esp, 8
push 344
push offset Lt_0073
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00BD:
sub esp, 8
push 345
push offset Lt_0076
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B3
.L_00BE:
jmp .L_00B2
jmp .L_00B3
.L_00B4:
mov eax, dword ptr [ebp-12]
add eax, 4294967240
cmp eax, 16
ja .L_00BE
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00BF+eax*4-224]
.L_00BF:
.int .L_00B7
.int .L_00B6
.int .L_00BE
.int .L_00BA
.int .L_00BE
.int .L_00BB
.int .L_00BC
.int .L_00BD
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00B8
.int .L_00B9
.L_00B3:
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call RTLOVLPROCCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_00B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHUOP, .-RTLMATHUOP
.cfi_endproc
.balign 16

.globl RTLMATHBOP
RTLMATHBOP:
.type RTLMATHBOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00C0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_00C3
.L_00C5:
sub esp, 8
push 349
push offset Lt_0089
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C2
.L_00C6:
jmp .L_00C1
jmp .L_00C2
.L_00C3:
mov eax, dword ptr [ebp-12]
add eax, 4294967232
test eax, eax
ja .L_00C6
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00C7+eax*4-256]
.L_00C7:
.int .L_00C5
.L_00C2:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call RTLOVLPROCCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_00C1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLMATHBOP, .-RTLMATHBOP
.cfi_endproc
.balign 16
fb_ctor__rtlzmath:
.type fb_ctor__rtlzmath, @function
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
.size fb_ctor__rtlzmath, .-fb_ctor__rtlzmath
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
HRNDCALLBACK:
.type HRNDCALLBACK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00C8:
call FBRESTARTGETCOUNT
cmp dword ptr [Lt_00D4], eax
je .L_00CB
call FBRESTARTGETCOUNT
mov dword ptr [Lt_00D4], eax
mov dword ptr [Lt_00D5], 0
.L_00CB:
.L_00CA:
cmp dword ptr [Lt_00D5], 0
jne .L_00CD
mov dword ptr [Lt_00D5], -1
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00D1
.L_00D2:
cmp dword ptr [ebp-8], 1
jne .L_00D0
.L_00D1:
sub esp, 12
push offset Lt_00D3
call FBADDLIB
add esp, 16
.L_00D0:
.L_00CE:
.L_00CD:
.L_00CC:
mov dword ptr [ebp-4], -1
.L_00C9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HRNDCALLBACK, .-HRNDCALLBACK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00D4,4

.section .data
.balign 4
Lt_00D5:
.int 0

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
.int Lt_005D
.int Lt_005E
.int 13
.int 3
.long 0
.int 0
.int 2
.int 13
.int 1
.int 0
.skip 4,0
.int 13
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_005F
.int Lt_0060
.int 14
.int 3
.long 0
.int 0
.int 2
.int 14
.int 1
.int 0
.skip 4,0
.int 14
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_0061
.int Lt_0062
.int 13
.int 3
.long 0
.int 0
.int 2
.int 13
.int 1
.int 0
.skip 4,0
.int 13
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_0063
.int Lt_0064
.int 14
.int 3
.long 0
.int 0
.int 2
.int 14
.int 1
.int 0
.skip 4,0
.int 14
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_0065
.int Lt_0066
.int 14
.int 3
.long 0
.int 0
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0067
.int Lt_0068
.int 16
.int 3
.long 0
.int 0
.int 2
.int 16
.int 1
.int 0
.skip 4,0
.int 16
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_0069
.int Lt_006A
.int 0
.int -1
.int HRNDCALLBACK
.int 0
.int 2
.int 16
.int 1
.int -1
.int -1
.int 11
.int 1
.int -1
.int 0
.skip 224,0
.int Lt_006B
.int Lt_006C
.int 16
.int -1
.int HRNDCALLBACK
.int 0
.int 1
.int 15
.int 1
.int -1
.int 1
.skip 240,0
.int Lt_006D
.int Lt_006E
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_006D
.int Lt_006F
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0070
.int Lt_0071
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0070
.int Lt_0072
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0073
.int Lt_0074
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0073
.int Lt_0075
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0076
.int Lt_0077
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0076
.int Lt_0078
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0079
.int Lt_007A
.int 11
.int 3
.long 0
.int 1
.int 1
.int 11
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0079
.int Lt_007B
.int 13
.int 3
.long 0
.int 1
.int 1
.int 13
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0079
.int Lt_007C
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0079
.int Lt_007D
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_007E
.int Lt_007F
.int 11
.int -1
.long 0
.int 1
.int 1
.int 11
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_007E
.int Lt_0080
.int 11
.int -1
.long 0
.int 1
.int 1
.int 13
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_007E
.int Lt_0081
.int 11
.int -1
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_007E
.int Lt_0082
.int 11
.int -1
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0083
.int Lt_0084
.int 15
.int -1
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0083
.int Lt_0085
.int 16
.int -1
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0086
.int Lt_0087
.int 15
.int -1
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0086
.int Lt_0088
.int 16
.int -1
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0089
.int Lt_008A
.int 15
.int 3
.long 0
.int 1
.int 2
.int 15
.int 1
.int 0
.skip 4,0
.int 15
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_0089
.int Lt_008B
.int 16
.int 3
.long 0
.int 1
.int 2
.int 16
.int 1
.int 0
.skip 4,0
.int 16
.int 1
.int 0
.skip 4,0
.skip 224,0
.long 0
.skip 280,0

.section .rodata
.balign 4
Lt_005D:	.ascii	"fb___divdi3\0"
.balign 4
Lt_005E:	.ascii	"__divdi3\0"
.balign 4
Lt_005F:	.ascii	"fb___udivdi3\0"
.balign 4
Lt_0060:	.ascii	"__udivdi3\0"
.balign 4
Lt_0061:	.ascii	"fb___moddi3\0"
.balign 4
Lt_0062:	.ascii	"__moddi3\0"
.balign 4
Lt_0063:	.ascii	"fb___umoddi3\0"
.balign 4
Lt_0064:	.ascii	"__umoddi3\0"
.balign 4
Lt_0065:	.ascii	"fb___fixunsdfdi\0"
.balign 4
Lt_0066:	.ascii	"__fixunsdfdi\0"
.balign 4
Lt_0067:	.ascii	"fb_Pow\0"
.balign 4
Lt_0068:	.ascii	"pow\0"
.balign 4
Lt_0069:	.ascii	"randomize\0"
.balign 4
Lt_006A:	.ascii	"fb_Randomize\0"
.balign 4
Lt_006B:	.ascii	"rnd\0"
.balign 4
Lt_006C:	.ascii	"fb_Rnd\0"
.balign 4
Lt_006D:	.ascii	"{asin}\0"
.balign 4
Lt_006E:	.ascii	"asinf\0"
.balign 4
Lt_006F:	.ascii	"asin\0"
.balign 4
Lt_0070:	.ascii	"{acos}\0"
.balign 4
Lt_0071:	.ascii	"acosf\0"
.balign 4
Lt_0072:	.ascii	"acos\0"
.balign 4
Lt_0073:	.ascii	"{tan}\0"
.balign 4
Lt_0074:	.ascii	"tanf\0"
.balign 4
Lt_0075:	.ascii	"tan\0"
.balign 4
Lt_0076:	.ascii	"{atan}\0"
.balign 4
Lt_0077:	.ascii	"atanf\0"
.balign 4
Lt_0078:	.ascii	"atan\0"
.balign 4
Lt_0079:	.ascii	"{abs}\0"
.balign 4
Lt_007A:	.ascii	"abs\0"
.balign 4
Lt_007B:	.ascii	"llabs\0"
.balign 4
Lt_007C:	.ascii	"fabsf\0"
.balign 4
Lt_007D:	.ascii	"fabs\0"
.balign 4
Lt_007E:	.ascii	"{sgn}\0"
.balign 4
Lt_007F:	.ascii	"fb_SGNi\0"
.balign 4
Lt_0080:	.ascii	"fb_SGNl\0"
.balign 4
Lt_0081:	.ascii	"fb_SGNSingle\0"
.balign 4
Lt_0082:	.ascii	"fb_SGNDouble\0"
.balign 4
Lt_0083:	.ascii	"{fix}\0"
.balign 4
Lt_0084:	.ascii	"fb_FIXSingle\0"
.balign 4
Lt_0085:	.ascii	"fb_FIXDouble\0"
.balign 4
Lt_0086:	.ascii	"{frac}\0"
.balign 4
Lt_0087:	.ascii	"fb_FRACf\0"
.balign 4
Lt_0088:	.ascii	"fb_FRACd\0"
.balign 4
Lt_0089:	.ascii	"{atan2}\0"
.balign 4
Lt_008A:	.ascii	"atan2f\0"
.balign 4
Lt_008B:	.ascii	"atan2\0"
.balign 4
Lt_00D3:	.ascii	"advapi32\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzmath
