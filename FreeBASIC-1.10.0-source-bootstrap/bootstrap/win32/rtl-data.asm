	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLDATAMODINIT@0
_RTLDATAMODINIT@0:
.L_006D:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.L_006E:
ret
.balign 16

.globl _RTLDATAMODEND@0
_RTLDATAMODEND@0:
.L_006F:
.L_0070:
ret
.balign 16

.globl _RTLDATAREAD@4
_RTLDATAREAD@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0071:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_0073
mov dword ptr [ebp-32], 24
jmp .L_009D
.L_0073:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_009D:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .L_0076
.L_0078:
push 146
push offset _Lt_005F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .L_0075
.L_0079:
push 147
push offset _Lt_0060
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .L_0075
.L_007A:
push 148
push offset _Lt_0061
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0075
.L_007B:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_007C
mov dword ptr [ebp-40], 24
jmp .L_009E
.L_007C:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.L_009E:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .L_007F
.L_0081:
push 149
push offset _Lt_0062
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_0082:
push 153
push offset _Lt_0066
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_0083:
push 150
push offset _Lt_0063
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_0084:
push 154
push offset _Lt_0067
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_0085:
push 151
push offset _Lt_0064
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_0086:
push 155
push offset _Lt_0068
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_0087:
push 152
push offset _Lt_0065
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_0088:
push 156
push offset _Lt_0069
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_007E
.L_007F:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .L_007E
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.L_0089+eax*4-4]
_.L_0089:
.int .L_0081
.int .L_0082
.int .L_0083
.int .L_0084
.int .L_0085
.int .L_0086
.int .L_0087
.int .L_0088
.L_007E:
jmp .L_0075
.L_008A:
push 157
push offset _Lt_006A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0075
.L_008B:
push 158
push offset _Lt_006B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0075
.L_008C:
jmp .L_0072
jmp .L_0075
.L_008D:
jmp .L_0072
jmp .L_0075
.L_0076:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .L_008D
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_008E+eax*4-4]
_.L_008E:
.int .L_007A
.int .L_007B
.int .L_007B
.int .L_0078
.int .L_007B
.int .L_007B
.int .L_0079
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_008A
.int .L_008B
.int .L_0078
.int .L_0078
.int .L_008D
.int .L_008C
.int .L_008D
.int .L_008D
.int .L_008D
.int .L_007B
.L_0075:
cmp dword ptr [ebp-12], 0
jne .L_0090
jmp .L_0072
.L_0090:
.L_008F:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .L_0092
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
jmp .L_0091
.L_0092:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.L_0091:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0094
jmp .L_0072
.L_0094:
.L_0093:
cmp dword ptr [ebp-16], 1
jle .L_0096
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0098
jmp .L_0072
.L_0098:
.L_0097:
cmp dword ptr [ebp-16], 2
jle .L_009A
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-20]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_009C
jmp .L_0072
.L_009C:
.L_009B:
.L_009A:
.L_0099:
.L_0096:
.L_0095:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLDATARESTORE@8
_RTLDATARESTORE@8:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_00A0:
mov dword ptr [ebp-4], 0
push 0
push 145
push offset _Lt_005E
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_00A3
mov eax, dword ptr [_AST+124]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00A5
call _ASTDATASTMTBEGIN@0
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _ASTDATASTMTEND@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov eax, dword ptr [_AST+124]
mov dword ptr [ebp-16], eax
.L_00A5:
.L_00A4:
jmp .L_00A2
.L_00A3:
push 0
push dword ptr [ebp+8]
call _ASTDATASTMTADD@8
mov dword ptr [ebp-16], eax
.L_00A2:
push -1
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00A7
jmp .L_00A1
.L_00A7:
.L_00A6:
cmp dword ptr [ebp+12], 0
jne .L_00A9
push dword ptr [ebp-8]
call _ASTADD@4
jmp .L_00A8
.L_00A9:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTADDAFTER@8
.L_00A8:
mov dword ptr [ebp-4], -1
.L_00A1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__rtlzdata:
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
.int _Lt_005E
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
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
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 1
.skip 208,0
.int _Lt_0060
.long 0
.int 0
.int -1
.long 0
.int 0
.int 2
.int 39
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_0061
.long 0
.int 0
.int -1
.long 0
.int 128
.int 1
.int 1
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0062
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 2
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0063
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 5
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0064
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 11
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0065
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 13
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0066
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 3
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0067
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 6
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0068
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 12
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0069
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 14
.int 2
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
.int 15
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_006B
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 16
.int 2
.int 0
.skip 4,0
.skip 240,0
.long 0
.skip 280,0
.balign 4
_Lt_005E:	.ascii	"fb_DataRestore\0"
.balign 4
_Lt_005F:	.ascii	"fb_DataReadStr\0"
.balign 4
_Lt_0060:	.ascii	"fb_DataReadWstr\0"
.balign 4
_Lt_0061:	.ascii	"fb_DataReadBool\0"
.balign 4
_Lt_0062:	.ascii	"fb_DataReadByte\0"
.balign 4
_Lt_0063:	.ascii	"fb_DataReadShort\0"
.balign 4
_Lt_0064:	.ascii	"fb_DataReadInt\0"
.balign 4
_Lt_0065:	.ascii	"fb_DataReadLongint\0"
.balign 4
_Lt_0066:	.ascii	"fb_DataReadUByte\0"
.balign 4
_Lt_0067:	.ascii	"fb_DataReadUShort\0"
.balign 4
_Lt_0068:	.ascii	"fb_DataReadUInt\0"
.balign 4
_Lt_0069:	.ascii	"fb_DataReadULongint\0"
.balign 4
_Lt_006A:	.ascii	"fb_DataReadSingle\0"
.balign 4
_Lt_006B:	.ascii	"fb_DataReadDouble\0"

.section .ctors
.int _fb_ctor__rtlzdata
