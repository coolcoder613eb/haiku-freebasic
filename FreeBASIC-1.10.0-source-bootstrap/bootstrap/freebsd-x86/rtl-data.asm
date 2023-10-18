	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLDATAMODINIT
RTLDATAMODINIT:
.L_006C:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.L_006D:
ret
.balign 16

.globl RTLDATAMODEND
RTLDATAMODEND:
.L_006E:
.L_006F:
ret
.balign 16

.globl RTLDATAREAD
RTLDATAREAD:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0070:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_0072
mov dword ptr [ebp-32], 24
jmp .L_009C
.L_0072:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_009C:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .L_0075
.L_0077:
push 146
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .L_0074
.L_0078:
push 147
push offset Lt_005F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .L_0074
.L_0079:
push 148
push offset Lt_0060
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0074
.L_007A:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_007B
mov dword ptr [ebp-40], 24
jmp .L_009D
.L_007B:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.L_009D:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .L_007E
.L_0080:
push 149
push offset Lt_0061
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_0081:
push 153
push offset Lt_0065
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_0082:
push 150
push offset Lt_0062
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_0083:
push 154
push offset Lt_0066
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_0084:
push 151
push offset Lt_0063
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_0085:
push 155
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_0086:
push 152
push offset Lt_0064
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_0087:
push 156
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_007E:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .L_007D
mov eax, dword ptr [ebp-44]
jmp dword ptr [.L_0088+eax*4-4]
.L_0088:
.int .L_0080
.int .L_0081
.int .L_0082
.int .L_0083
.int .L_0084
.int .L_0085
.int .L_0086
.int .L_0087
.L_007D:
jmp .L_0074
.L_0089:
push 157
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0074
.L_008A:
push 158
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0074
.L_008B:
jmp .L_0071
jmp .L_0074
.L_008C:
jmp .L_0071
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .L_008C
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_008D+eax*4-4]
.L_008D:
.int .L_0079
.int .L_007A
.int .L_007A
.int .L_0077
.int .L_007A
.int .L_007A
.int .L_0078
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_0089
.int .L_008A
.int .L_0077
.int .L_0077
.int .L_008C
.int .L_008B
.int .L_008C
.int .L_008C
.int .L_008C
.int .L_007A
.L_0074:
cmp dword ptr [ebp-12], 0
jne .L_008F
jmp .L_0071
.L_008F:
.L_008E:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .L_0091
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
jmp .L_0090
.L_0091:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.L_0090:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0093
jmp .L_0071
.L_0093:
.L_0092:
cmp dword ptr [ebp-16], 1
jle .L_0095
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0097
jmp .L_0071
.L_0097:
.L_0096:
cmp dword ptr [ebp-16], 2
jle .L_0099
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
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009B
jmp .L_0071
.L_009B:
.L_009A:
.L_0099:
.L_0098:
.L_0095:
.L_0094:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0071:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLDATARESTORE
RTLDATARESTORE:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_009F:
mov dword ptr [ebp-4], 0
push 0
push 145
push offset Lt_005D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_00A2
mov eax, dword ptr [AST+124]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00A4
call ASTDATASTMTBEGIN
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call ASTDATASTMTEND
add esp, 4
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [AST+124]
mov dword ptr [ebp-16], eax
.L_00A4:
.L_00A3:
jmp .L_00A1
.L_00A2:
push 0
push dword ptr [ebp+8]
call ASTDATASTMTADD
add esp, 8
mov dword ptr [ebp-16], eax
.L_00A1:
push -1
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A6
jmp .L_00A0
.L_00A6:
.L_00A5:
cmp dword ptr [ebp+12], 0
jne .L_00A8
push dword ptr [ebp-8]
call ASTADD
add esp, 4
jmp .L_00A7
.L_00A8:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTADDAFTER
add esp, 8
.L_00A7:
mov dword ptr [ebp-4], -1
.L_00A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzdata:
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
.int Lt_005F
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
.int Lt_0060
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
.int Lt_0061
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
.int Lt_0062
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
.int Lt_0063
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
.int Lt_0064
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
.int Lt_0065
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
.int Lt_0066
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
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
Lt_005D:	.ascii	"fb_DataRestore\0"
.balign 4
Lt_005E:	.ascii	"fb_DataReadStr\0"
.balign 4
Lt_005F:	.ascii	"fb_DataReadWstr\0"
.balign 4
Lt_0060:	.ascii	"fb_DataReadBool\0"
.balign 4
Lt_0061:	.ascii	"fb_DataReadByte\0"
.balign 4
Lt_0062:	.ascii	"fb_DataReadShort\0"
.balign 4
Lt_0063:	.ascii	"fb_DataReadInt\0"
.balign 4
Lt_0064:	.ascii	"fb_DataReadLongint\0"
.balign 4
Lt_0065:	.ascii	"fb_DataReadUByte\0"
.balign 4
Lt_0066:	.ascii	"fb_DataReadUShort\0"
.balign 4
Lt_0067:	.ascii	"fb_DataReadUInt\0"
.balign 4
Lt_0068:	.ascii	"fb_DataReadULongint\0"
.balign 4
Lt_0069:	.ascii	"fb_DataReadSingle\0"
.balign 4
Lt_006A:	.ascii	"fb_DataReadDouble\0"

.section .ctors
.int fb_ctor__rtlzdata
