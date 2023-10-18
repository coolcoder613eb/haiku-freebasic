	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLGOSUBMODINIT@0
_RTLGOSUBMODINIT@0:
.L_0072:
mov eax, dword ptr [_ENV+1040]
and eax, 65536
test eax, eax
je .L_0075
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
cmp dword ptr [_ENV+108], 0
jne .L_0077
call _FBIS64BIT@0
test eax, eax
je .L_0079
push offset _FUNCDATA1_WIN64
call _RTLADDINTRINSICPROCS@4
jmp .L_0078
.L_0079:
push offset _FUNCDATA1_WIN32
call _RTLADDINTRINSICPROCS@4
.L_0078:
jmp .L_0076
.L_0077:
push offset _FUNCDATA2
call _RTLADDINTRINSICPROCS@4
.L_0076:
.L_0075:
.L_0074:
.L_0073:
ret
.balign 16

.globl _RTLGOSUBMODEND@0
_RTLGOSUBMODEND@0:
.L_007A:
.L_007B:
ret
.balign 16

.globl _RTLGOSUBPUSH@4
_RTLGOSUBPUSH@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007C:
mov dword ptr [ebp-4], 0
push 0
push 336
push offset _Lt_0067
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_007F
jmp .L_007D
.L_007F:
.L_007E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLGOSUBPOP@4
_RTLGOSUBPOP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0080:
mov dword ptr [ebp-4], 0
push 0
push 337
push offset _Lt_0068
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0083
jmp .L_0081
.L_0083:
.L_0082:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLGOSUBRETURN@4
_RTLGOSUBRETURN@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0084:
push 0
push 338
push offset _Lt_0069
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0087
jmp .L_0085
.L_0087:
.L_0086:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLGOSUBEXIT@4
_RTLGOSUBEXIT@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0088:
mov dword ptr [ebp-4], 0
push 0
push 339
push offset _Lt_006A
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_008B
jmp .L_0089
.L_008B:
.L_008A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0089:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLSETJMP@4
_RTLSETJMP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008C:
mov dword ptr [ebp-4], 0
push 0
push 340
push offset _Lt_006C
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_008F
jmp .L_008D
.L_008F:
.L_008E:
cmp dword ptr [_ENV+108], 0
jne .L_0091
call _FBIS64BIT@0
test eax, eax
je .L_0093
push -1
push -2147483648
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0095
jmp .L_008D
.L_0095:
.L_0094:
.L_0093:
.L_0092:
.L_0091:
.L_0090:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__rtlzgosub:
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
call _fb_StrAssign@20
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
.int 32
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0068
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0069
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_006A
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 4,0
.skip 240,0
.long 0
.skip 280,0
.balign 4
_Lt_0067:	.ascii	"fb_GosubPush\0"
.balign 4
_Lt_0068:	.ascii	"fb_GosubPop\0"
.balign 4
_Lt_0069:	.ascii	"fb_GosubReturn\0"
.balign 4
_Lt_006A:	.ascii	"fb_GosubExit\0"
.balign 4
_FUNCDATA1_WIN32:
.int _Lt_006C
.int _Lt_006D
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
.long 0
.skip 280,0
.balign 4
_Lt_006C:	.ascii	"fb_SetJmp\0"
.balign 4
_Lt_006D:	.ascii	"_setjmp\0"
.balign 4
_FUNCDATA1_WIN64:
.int _Lt_006C
.int _Lt_006D
.int 11
.int 3
.long 0
.int 0
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
.long 0
.skip 280,0
.balign 4
_FUNCDATA2:
.int _Lt_006C
.int _Lt_0070
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
.long 0
.skip 280,0
.balign 4
_Lt_0070:	.ascii	"setjmp\0"

.section .ctors
.int _fb_ctor__rtlzgosub
