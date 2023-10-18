	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLGOSUBMODINIT
RTLGOSUBMODINIT:
.L_0071:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
je .L_0074
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
cmp dword ptr [ENV+108], 0
jne .L_0076
call FBIS64BIT
test eax, eax
je .L_0078
push offset FUNCDATA1_WIN64
call RTLADDINTRINSICPROCS
add esp, 4
jmp .L_0077
.L_0078:
push offset FUNCDATA1_WIN32
call RTLADDINTRINSICPROCS
add esp, 4
.L_0077:
jmp .L_0075
.L_0076:
push offset FUNCDATA2
call RTLADDINTRINSICPROCS
add esp, 4
.L_0075:
.L_0074:
.L_0073:
.L_0072:
ret
.balign 16

.globl RTLGOSUBMODEND
RTLGOSUBMODEND:
.L_0079:
.L_007A:
ret
.balign 16

.globl RTLGOSUBPUSH
RTLGOSUBPUSH:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007B:
mov dword ptr [ebp-4], 0
push 0
push 336
push offset Lt_0066
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_007E
jmp .L_007C
.L_007E:
.L_007D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGOSUBPOP
RTLGOSUBPOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007F:
mov dword ptr [ebp-4], 0
push 0
push 337
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0082
jmp .L_0080
.L_0082:
.L_0081:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0080:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGOSUBRETURN
RTLGOSUBRETURN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0083:
push 0
push 338
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0086
jmp .L_0084
.L_0086:
.L_0085:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGOSUBEXIT
RTLGOSUBEXIT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0087:
mov dword ptr [ebp-4], 0
push 0
push 339
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_008A
jmp .L_0088
.L_008A:
.L_0089:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0088:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLSETJMP
RTLSETJMP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008B:
mov dword ptr [ebp-4], 0
push 0
push 340
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_008E
jmp .L_008C
.L_008E:
.L_008D:
cmp dword ptr [ENV+108], 0
jne .L_0090
call FBIS64BIT
test eax, eax
je .L_0092
push -1
push -2147483648
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0094
jmp .L_008C
.L_0094:
.L_0093:
.L_0092:
.L_0091:
.L_0090:
.L_008F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzgosub:
.L_0002:
.L_0003:
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
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
Lt_0066:	.ascii	"fb_GosubPush\0"
.balign 4
Lt_0067:	.ascii	"fb_GosubPop\0"
.balign 4
Lt_0068:	.ascii	"fb_GosubReturn\0"
.balign 4
Lt_0069:	.ascii	"fb_GosubExit\0"
.balign 4
FUNCDATA1_WIN32:
.int Lt_006B
.int Lt_006C
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
Lt_006B:	.ascii	"fb_SetJmp\0"
.balign 4
Lt_006C:	.ascii	"_setjmp\0"
.balign 4
FUNCDATA1_WIN64:
.int Lt_006B
.int Lt_006C
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
FUNCDATA2:
.int Lt_006B
.int Lt_006F
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
Lt_006F:	.ascii	"setjmp\0"

.section .ctors
.int fb_ctor__rtlzgosub
