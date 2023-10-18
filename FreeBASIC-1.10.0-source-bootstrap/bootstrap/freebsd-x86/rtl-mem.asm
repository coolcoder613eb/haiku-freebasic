	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLMEMMODINIT
RTLMEMMODINIT:
.L_0071:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.L_0072:
ret
.balign 16

.globl RTLMEMMODEND
RTLMEMMODEND:
.L_0073:
.L_0074:
ret
.balign 16

.globl RTLNULLPTRCHECK
RTLNULLPTRCHECK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0075:
mov dword ptr [ebp-4], 0
push 0
push 137
push offset Lt_005D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push 32
push 0
push 16
push dword ptr [ebp+8]
push 0
push 32
call ASTNEWCONV
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0078
jmp .L_0076
.L_0078:
.L_0077:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_007A
jmp .L_0076
.L_007A:
.L_0079:
push -1
push -2147483648
push dword ptr [ebp+16]
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_007C
jmp .L_0076
.L_007C:
.L_007B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMSWAP
RTLMEMSWAP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_007D:
mov dword ptr [ebp-4], 0
push 0
push 219
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call RTLCALCEXPRLEN
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0080
jmp .L_007E
.L_0080:
.L_007F:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0082
jmp .L_007E
.L_0082:
.L_0081:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0084
jmp .L_007E
.L_0084:
.L_0083:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_007E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMCOPYCLEAR
RTLMEMCOPYCLEAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0085:
mov dword ptr [ebp-4], 0
push 0
push 220
push offset Lt_005F
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
jne .L_0088
jmp .L_0086
.L_0088:
.L_0087:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_008A
jmp .L_0086
.L_008A:
.L_0089:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_008C
jmp .L_0086
.L_008C:
.L_008B:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_008E
jmp .L_0086
.L_008E:
.L_008D:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMNEWOP
RTLMEMNEWOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0091
mov dword ptr [ebp-16], 24
jmp .L_009F
.L_0091:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_009F:
cmp dword ptr [ebp-16], 20
jne .L_0094
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+12]
push dword ptr [ebp+20]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0096
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0098
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.L_0098:
.L_0097:
.L_0096:
.L_0095:
jmp .L_0093
.L_0094:
mov dword ptr [ebp-12], 0
.L_0093:
cmp dword ptr [ebp-12], 0
jne .L_009A
push 222
push offset Lt_0062
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_009C
mov dword ptr [ebp-4], 0
jmp .L_0090
.L_009C:
.L_009B:
.L_009A:
.L_0099:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009E
jmp .L_0090
.L_009E:
.L_009D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0090:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMDELETEOP
RTLMEMDELETEOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_00A0:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00A2
mov dword ptr [ebp-16], 24
jmp .L_00B0
.L_00A2:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00B0:
cmp dword ptr [ebp-16], 20
jne .L_00A5
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+12]
push dword ptr [ebp+20]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_00A7
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00A9
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
jmp .L_00A4
.L_00A5:
mov dword ptr [ebp-12], 0
.L_00A4:
cmp dword ptr [ebp-12], 0
jne .L_00AB
push 223
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AD
mov dword ptr [ebp-4], 0
jmp .L_00A1
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AF
jmp .L_00A1
.L_00AF:
.L_00AE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzmem:
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
.int Lt_005D
.long 0
.int 32
.int -1
.long 0
.int 2048
.int 3
.int 1056
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
.skip 4,0
.skip 208,0
.int Lt_005E
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int 0
.int 2
.int 0
.int 0
.int 520
.int 1
.int 0
.skip 4,0
.skip 208,0
.int Lt_005F
.long 0
.int 0
.int -1
.long 0
.int 0
.int 4
.int 0
.int 2
.int 0
.int 0
.int 521
.int 1
.int 0
.skip 4,0
.int 512
.int 2
.int 0
.int 0
.int 521
.int 1
.int 0
.skip 4,0
.skip 192,0
.int Lt_0060
.int Lt_0061
.int 9
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 240,0
.int Lt_0062
.int Lt_0063
.int 32
.int 3
.long 0
.int 128
.int 1
.int 521
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0064
.int Lt_0065
.int 32
.int 3
.long 0
.int 128
.int 2
.int 521
.int 1
.int 0
.skip 4,0
.int 521
.int 1
.int -1
.int 1
.skip 224,0
.int Lt_0066
.int Lt_0067
.int 32
.int 3
.long 0
.int 128
.int 2
.int 1056
.int 1
.int 0
.int 0
.int 521
.int 1
.int 0
.skip 4,0
.skip 224,0
.int Lt_0068
.int Lt_0069
.int 0
.int 3
.long 0
.int 128
.int 1
.int 1056
.int 1
.int 0
.int 0
.skip 240,0
.int Lt_006A
.int Lt_006B
.int 32
.int 3
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int 523
.int 1
.int -1
.int 0
.int 521
.int 1
.int 0
.skip 4,0
.skip 208,0
.int Lt_006C
.int Lt_006D
.int 32
.int 3
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int 512
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.skip 208,0
.int Lt_006E
.int Lt_006F
.int 32
.int 3
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int 512
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.skip 208,0
.long 0
.skip 280,0
.balign 4
Lt_005D:	.ascii	"fb_NullPtrChk\0"
.balign 4
Lt_005E:	.ascii	"fb_MemSwap\0"
.balign 4
Lt_005F:	.ascii	"fb_MemCopyClear\0"
.balign 4
Lt_0060:	.ascii	"fre\0"
.balign 4
Lt_0061:	.ascii	"fb_GetMemAvail\0"
.balign 4
Lt_0062:	.ascii	"allocate\0"
.balign 4
Lt_0063:	.ascii	"malloc\0"
.balign 4
Lt_0064:	.ascii	"callocate\0"
.balign 4
Lt_0065:	.ascii	"calloc\0"
.balign 4
Lt_0066:	.ascii	"reallocate\0"
.balign 4
Lt_0067:	.ascii	"realloc\0"
.balign 4
Lt_0068:	.ascii	"deallocate\0"
.balign 4
Lt_0069:	.ascii	"free\0"
.balign 4
Lt_006A:	.ascii	"clear\0"
.balign 4
Lt_006B:	.ascii	"memset\0"
.balign 4
Lt_006C:	.ascii	"fb_MemMove\0"
.balign 4
Lt_006D:	.ascii	"memmove\0"
.balign 4
Lt_006E:	.ascii	"fb_MemCopy\0"
.balign 4
Lt_006F:	.ascii	"memcpy\0"

.section .ctors
.int fb_ctor__rtlzmem
