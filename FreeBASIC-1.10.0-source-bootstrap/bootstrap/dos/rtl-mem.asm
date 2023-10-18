	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLMEMMODINIT
_RTLMEMMODINIT:
.L_0072:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.L_0073:
ret
.balign 16

.globl _RTLMEMMODEND
_RTLMEMMODEND:
.L_0074:
.L_0075:
ret
.balign 16

.globl _RTLNULLPTRCHECK
_RTLNULLPTRCHECK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-4], 0
push 0
push 137
push offset _Lt_005E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push 32
push 0
push 16
push dword ptr [ebp+8]
push 0
push 32
call _ASTNEWCONV
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0079
jmp .L_0077
.L_0079:
.L_0078:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+12]
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
jne .L_007B
jmp .L_0077
.L_007B:
.L_007A:
push -1
push -2147483648
push dword ptr [ebp+16]
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_007D
jmp .L_0077
.L_007D:
.L_007C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMSWAP
_RTLMEMSWAP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_007E:
mov dword ptr [ebp-4], 0
push 0
push 219
push offset _Lt_005F
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call _RTLCALCEXPRLEN
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0081
jmp .L_007F
.L_0081:
.L_0080:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0083
jmp .L_007F
.L_0083:
.L_0082:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0085
jmp .L_007F
.L_0085:
.L_0084:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_007F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMCOPYCLEAR
_RTLMEMCOPYCLEAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0086:
mov dword ptr [ebp-4], 0
push 0
push 220
push offset _Lt_0060
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
jne .L_0089
jmp .L_0087
.L_0089:
.L_0088:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_008B
jmp .L_0087
.L_008B:
.L_008A:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_008D
jmp .L_0087
.L_008D:
.L_008C:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_008F
jmp .L_0087
.L_008F:
.L_008E:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0087:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMNEWOP
_RTLMEMNEWOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0090:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0092
mov dword ptr [ebp-16], 24
jmp .L_00A0
.L_0092:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00A0:
cmp dword ptr [ebp-16], 20
jne .L_0095
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+12]
push dword ptr [ebp+20]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0097
push dword ptr [ebp-12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0099
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.L_0099:
.L_0098:
.L_0097:
.L_0096:
jmp .L_0094
.L_0095:
mov dword ptr [ebp-12], 0
.L_0094:
cmp dword ptr [ebp-12], 0
jne .L_009B
push 222
push offset _Lt_0063
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_009D
mov dword ptr [ebp-4], 0
jmp .L_0091
.L_009D:
.L_009C:
.L_009B:
.L_009A:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_009F
jmp .L_0091
.L_009F:
.L_009E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0091:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMDELETEOP
_RTLMEMDELETEOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_00A1:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00A3
mov dword ptr [ebp-16], 24
jmp .L_00B1
.L_00A3:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00B1:
cmp dword ptr [ebp-16], 20
jne .L_00A6
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+12]
push dword ptr [ebp+20]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_00A8
push dword ptr [ebp-12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00AA
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
jmp .L_00A5
.L_00A6:
mov dword ptr [ebp-12], 0
.L_00A5:
cmp dword ptr [ebp-12], 0
jne .L_00AC
push 223
push offset _Lt_0069
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AE
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00B0
jmp .L_00A2
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzmem:
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
.int _Lt_005F
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
.int _Lt_0060
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
.int _Lt_0061
.int _Lt_0062
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
.int _Lt_0063
.int _Lt_0064
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
.int _Lt_0065
.int _Lt_0066
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
.int _Lt_0067
.int _Lt_0068
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
.int _Lt_0069
.int _Lt_006A
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
.int _Lt_006B
.int _Lt_006C
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
.int _Lt_006D
.int _Lt_006E
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
.int _Lt_006F
.int _Lt_0070
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
_Lt_005E:	.ascii	"fb_NullPtrChk\0"
.balign 4
_Lt_005F:	.ascii	"fb_MemSwap\0"
.balign 4
_Lt_0060:	.ascii	"fb_MemCopyClear\0"
.balign 4
_Lt_0061:	.ascii	"fre\0"
.balign 4
_Lt_0062:	.ascii	"fb_GetMemAvail\0"
.balign 4
_Lt_0063:	.ascii	"allocate\0"
.balign 4
_Lt_0064:	.ascii	"malloc\0"
.balign 4
_Lt_0065:	.ascii	"callocate\0"
.balign 4
_Lt_0066:	.ascii	"calloc\0"
.balign 4
_Lt_0067:	.ascii	"reallocate\0"
.balign 4
_Lt_0068:	.ascii	"realloc\0"
.balign 4
_Lt_0069:	.ascii	"deallocate\0"
.balign 4
_Lt_006A:	.ascii	"free\0"
.balign 4
_Lt_006B:	.ascii	"clear\0"
.balign 4
_Lt_006C:	.ascii	"memset\0"
.balign 4
_Lt_006D:	.ascii	"fb_MemMove\0"
.balign 4
_Lt_006E:	.ascii	"memmove\0"
.balign 4
_Lt_006F:	.ascii	"fb_MemCopy\0"
.balign 4
_Lt_0070:	.ascii	"memcpy\0"

.section .ctors
.int _fb_ctor__rtlzmem
