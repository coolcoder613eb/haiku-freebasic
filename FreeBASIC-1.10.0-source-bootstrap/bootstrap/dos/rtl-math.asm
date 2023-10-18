	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLMATHMODINIT
_RTLMATHMODINIT:
.L_008E:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.L_008F:
ret
.balign 16

.globl _RTLMATHMODEND
_RTLMATHMODEND:
.L_0090:
.L_0091:
ret
.balign 16

.globl _RTLMATHPOW
_RTLMATHPOW:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0092:
mov dword ptr [ebp-4], 0
push 0
push 159
push offset _Lt_0068
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
jne .L_0095
jmp .L_0093
.L_0095:
.L_0094:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0097
jmp .L_0093
.L_0097:
.L_0096:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0093:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHLONGINTDIV
_RTLMATHLONGINTDIV:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0098:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_009A
mov dword ptr [ebp-16], 24
jmp .L_00A2
.L_009A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00A2:
cmp dword ptr [ebp-16], 13
jne .L_009D
push 116
push offset _Lt_005E
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_009C
.L_009D:
push 117
push offset _Lt_0060
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_009C:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_009F
jmp .L_0099
.L_009F:
.L_009E:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A1
jmp .L_0099
.L_00A1:
.L_00A0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0099:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHLONGINTMOD
_RTLMATHLONGINTMOD:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_00A3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00A5
mov dword ptr [ebp-16], 24
jmp .L_00AD
.L_00A5:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00AD:
cmp dword ptr [ebp-16], 13
jne .L_00A8
push 118
push offset _Lt_0062
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00A7
.L_00A8:
push 119
push offset _Lt_0064
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00A7:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AA
jmp .L_00A4
.L_00AA:
.L_00A9:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AC
jmp .L_00A4
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHFP2ULONGINT
_RTLMATHFP2ULONGINT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AE:
mov dword ptr [ebp-4], 0
push 0
push 120
push offset _Lt_0066
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00B1
jmp .L_00AF
.L_00B1:
.L_00B0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHUOP
_RTLMATHUOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00B2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_00B5
.L_00B7:
push 341
push offset _Lt_007F
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00B8:
push 346
push offset _Lt_007A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00B9:
push 347
push offset _Lt_0084
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00BA:
push 348
push offset _Lt_0087
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00BB:
push 342
push offset _Lt_006E
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00BC:
push 343
push offset _Lt_0071
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00BD:
push 344
push offset _Lt_0074
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00BE:
push 345
push offset _Lt_0077
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00B4
.L_00BF:
jmp .L_00B3
jmp .L_00B4
.L_00B5:
mov eax, dword ptr [ebp-12]
add eax, 4294967240
cmp eax, 16
ja .L_00BF
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00C0+eax*4-224]
_.L_00C0:
.int .L_00B8
.int .L_00B7
.int .L_00BF
.int .L_00BB
.int .L_00BF
.int .L_00BC
.int .L_00BD
.int .L_00BE
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00B9
.int .L_00BA
.L_00B4:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _RTLOVLPROCCALL
add esp, 12
mov dword ptr [ebp-4], eax
.L_00B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHBOP
_RTLMATHBOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00C1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_00C4
.L_00C6:
push 349
push offset _Lt_008A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00C3
.L_00C7:
jmp .L_00C2
jmp .L_00C3
.L_00C4:
mov eax, dword ptr [ebp-12]
add eax, 4294967232
test eax, eax
ja .L_00C7
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00C8+eax*4-256]
_.L_00C8:
.int .L_00C6
.L_00C3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _RTLOVLPROCCALL
add esp, 12
mov dword ptr [ebp-4], eax
.L_00C2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzmath:
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
_HRNDCALLBACK:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00C9:
call _FBRESTARTGETCOUNT
cmp dword ptr [_Lt_00D5], eax
je .L_00CC
call _FBRESTARTGETCOUNT
mov dword ptr [_Lt_00D5], eax
mov dword ptr [_Lt_00D6], 0
.L_00CC:
.L_00CB:
cmp dword ptr [_Lt_00D6], 0
jne .L_00CE
mov dword ptr [_Lt_00D6], -1
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00D2
.L_00D3:
cmp dword ptr [ebp-8], 1
jne .L_00D1
.L_00D2:
push offset _Lt_00D4
call _FBADDLIB
add esp, 4
.L_00D1:
.L_00CF:
.L_00CE:
.L_00CD:
mov dword ptr [ebp-4], -1
.L_00CA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00D5,4

.section .data
.balign 4
_Lt_00D6:
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
.int _Lt_005F
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
.int _Lt_0060
.int _Lt_0061
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
.int _Lt_0062
.int _Lt_0063
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
.int _Lt_0064
.int _Lt_0065
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
.int _Lt_0066
.int _Lt_0067
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
.int _Lt_0068
.int _Lt_0069
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
.int _Lt_006A
.int _Lt_006B
.int 0
.int -1
.int _HRNDCALLBACK
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
.int _Lt_006C
.int _Lt_006D
.int 16
.int -1
.int _HRNDCALLBACK
.int 0
.int 1
.int 15
.int 1
.int -1
.int 1
.skip 240,0
.int _Lt_006E
.int _Lt_006F
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
.int _Lt_006E
.int _Lt_0070
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
.int _Lt_0071
.int _Lt_0072
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
.int _Lt_0071
.int _Lt_0073
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
.int _Lt_0074
.int _Lt_0075
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
.int _Lt_0074
.int _Lt_0076
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
.int _Lt_0077
.int _Lt_0078
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
.int _Lt_0077
.int _Lt_0079
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
.int _Lt_007A
.int _Lt_007B
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
.int _Lt_007A
.int _Lt_007C
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
.int _Lt_007A
.int _Lt_007D
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
.int _Lt_007A
.int _Lt_007E
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
.int _Lt_007F
.int _Lt_0080
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
.int _Lt_007F
.int _Lt_0081
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
.int _Lt_007F
.int _Lt_0082
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
.int _Lt_007F
.int _Lt_0083
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
.int _Lt_0084
.int _Lt_0085
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
.int _Lt_0084
.int _Lt_0086
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
.int _Lt_0087
.int _Lt_0088
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
.int _Lt_0087
.int _Lt_0089
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
.int _Lt_008A
.int _Lt_008B
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
.int _Lt_008A
.int _Lt_008C
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
.balign 4
_Lt_005E:	.ascii	"fb___divdi3\0"
.balign 4
_Lt_005F:	.ascii	"__divdi3\0"
.balign 4
_Lt_0060:	.ascii	"fb___udivdi3\0"
.balign 4
_Lt_0061:	.ascii	"__udivdi3\0"
.balign 4
_Lt_0062:	.ascii	"fb___moddi3\0"
.balign 4
_Lt_0063:	.ascii	"__moddi3\0"
.balign 4
_Lt_0064:	.ascii	"fb___umoddi3\0"
.balign 4
_Lt_0065:	.ascii	"__umoddi3\0"
.balign 4
_Lt_0066:	.ascii	"fb___fixunsdfdi\0"
.balign 4
_Lt_0067:	.ascii	"__fixunsdfdi\0"
.balign 4
_Lt_0068:	.ascii	"fb_Pow\0"
.balign 4
_Lt_0069:	.ascii	"pow\0"
.balign 4
_Lt_006A:	.ascii	"randomize\0"
.balign 4
_Lt_006B:	.ascii	"fb_Randomize\0"
.balign 4
_Lt_006C:	.ascii	"rnd\0"
.balign 4
_Lt_006D:	.ascii	"fb_Rnd\0"
.balign 4
_Lt_006E:	.ascii	"{asin}\0"
.balign 4
_Lt_006F:	.ascii	"asinf\0"
.balign 4
_Lt_0070:	.ascii	"asin\0"
.balign 4
_Lt_0071:	.ascii	"{acos}\0"
.balign 4
_Lt_0072:	.ascii	"acosf\0"
.balign 4
_Lt_0073:	.ascii	"acos\0"
.balign 4
_Lt_0074:	.ascii	"{tan}\0"
.balign 4
_Lt_0075:	.ascii	"tanf\0"
.balign 4
_Lt_0076:	.ascii	"tan\0"
.balign 4
_Lt_0077:	.ascii	"{atan}\0"
.balign 4
_Lt_0078:	.ascii	"atanf\0"
.balign 4
_Lt_0079:	.ascii	"atan\0"
.balign 4
_Lt_007A:	.ascii	"{abs}\0"
.balign 4
_Lt_007B:	.ascii	"abs\0"
.balign 4
_Lt_007C:	.ascii	"llabs\0"
.balign 4
_Lt_007D:	.ascii	"fabsf\0"
.balign 4
_Lt_007E:	.ascii	"fabs\0"
.balign 4
_Lt_007F:	.ascii	"{sgn}\0"
.balign 4
_Lt_0080:	.ascii	"fb_SGNi\0"
.balign 4
_Lt_0081:	.ascii	"fb_SGNl\0"
.balign 4
_Lt_0082:	.ascii	"fb_SGNSingle\0"
.balign 4
_Lt_0083:	.ascii	"fb_SGNDouble\0"
.balign 4
_Lt_0084:	.ascii	"{fix}\0"
.balign 4
_Lt_0085:	.ascii	"fb_FIXSingle\0"
.balign 4
_Lt_0086:	.ascii	"fb_FIXDouble\0"
.balign 4
_Lt_0087:	.ascii	"{frac}\0"
.balign 4
_Lt_0088:	.ascii	"fb_FRACf\0"
.balign 4
_Lt_0089:	.ascii	"fb_FRACd\0"
.balign 4
_Lt_008A:	.ascii	"{atan2}\0"
.balign 4
_Lt_008B:	.ascii	"atan2f\0"
.balign 4
_Lt_008C:	.ascii	"atan2\0"
.balign 4
_Lt_00D4:	.ascii	"advapi32\0"

.section .ctors
.int _fb_ctor__rtlzmath
