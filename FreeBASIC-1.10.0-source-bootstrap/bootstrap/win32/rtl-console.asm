	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLCONSOLEMODINIT@0
_RTLCONSOLEMODINIT@0:
.L_007F:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.L_0080:
ret
.balign 16

.globl _RTLCONSOLEMODEND@0
_RTLCONSOLEMODEND@0:
.L_0081:
.L_0082:
ret
.balign 16

.globl _RTLCONSOLEVIEW@8
_RTLCONSOLEVIEW@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0083:
mov dword ptr [ebp-4], 0
push 0
push 214
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
jne .L_0086
jmp .L_0084
.L_0086:
.L_0085:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0088
jmp .L_0084
.L_0088:
.L_0087:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLWIDTHSCREEN@12
_RTLWIDTHSCREEN@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0089:
mov dword ptr [ebp-4], 0
push 0
push 289
push offset _Lt_0069
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_008C
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.L_008C:
.L_008B:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_008E
jmp .L_008A
.L_008E:
.L_008D:
cmp dword ptr [ebp+12], 0
jne .L_0090
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.L_0090:
.L_008F:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0092
jmp .L_008A
.L_0092:
.L_0091:
cmp dword ptr [ebp+16], 0
jne .L_0094
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_0094:
.L_0093:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLCOLOR@12
_RTLCOLOR@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0095:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
push 0
push 216
push offset _Lt_0075
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_0098
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
or dword ptr [ebp-12], 1
.L_0098:
.L_0097:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_009A
jmp .L_0096
.L_009A:
.L_0099:
cmp dword ptr [ebp+12], 0
jne .L_009C
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
or dword ptr [ebp-12], 2
.L_009C:
.L_009B:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_009E
jmp .L_0096
.L_009E:
.L_009D:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00A0
jmp .L_0096
.L_00A0:
.L_009F:
cmp dword ptr [ebp+16], 0
jne .L_00A2
push dword ptr [ebp-8]
call _ASTADD@4
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLPAGESET@12
_RTLPAGESET@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A3:
mov dword ptr [ebp-4], 0
push 0
push 217
push offset _Lt_007D
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_00A6
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.L_00A6:
.L_00A5:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00A8
jmp .L_00A4
.L_00A8:
.L_00A7:
cmp dword ptr [ebp+12], 0
jne .L_00AA
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.L_00AA:
.L_00A9:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00AC
jmp .L_00A4
.L_00AC:
.L_00AB:
cmp dword ptr [ebp+16], 0
jne .L_00AE
push dword ptr [ebp-8]
call _ASTADD@4
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLCONSOLEREADXY@12
_RTLCONSOLEREADXY@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AF:
mov dword ptr [ebp-4], 0
push 0
push 215
push offset _Lt_0068
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00B2
jmp .L_00B0
.L_00B2:
.L_00B1:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00B4
jmp .L_00B0
.L_00B4:
.L_00B3:
cmp dword ptr [ebp+16], 0
jne .L_00B6
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+16], eax
.L_00B6:
.L_00B5:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00B8
jmp .L_00B0
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_fb_ctor__rtlzconsole:
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
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.skip 224,0
.int _Lt_0068
.long 0
.int 12
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 208,0
.int _Lt_0069
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int _Lt_006A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int _Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int _Lt_006C
.int _Lt_006D
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int 0
.int 523
.int 1
.int -1
.int 0
.skip 176,0
.int _Lt_006E
.int _Lt_006F
.int 11
.int -1
.long 0
.int 1
.int 0
.skip 256,0
.int _Lt_006E
.int _Lt_0070
.int 11
.int -1
.long 0
.int 1
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0071
.int _Lt_0072
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_0073
.int _Lt_0074
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int -65536
.skip 240,0
.int _Lt_0075
.long 0
.int 12
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0076
.int _Lt_0077
.int 17
.int -1
.long 0
.int 192
.int 0
.skip 256,0
.int _Lt_0076
.int _Lt_0078
.int 17
.int -1
.long 0
.int 320
.int 0
.skip 256,0
.int _Lt_0079
.int _Lt_007A
.int 11
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int _Lt_007B
.int _Lt_007C
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.int _Lt_007D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int -1
.int 523
.int 1
.int -1
.int -1
.skip 224,0
.long 0
.skip 280,0
.balign 4
_Lt_0067:	.ascii	"fb_ConsoleView\0"
.balign 4
_Lt_0068:	.ascii	"fb_ReadXY\0"
.balign 4
_Lt_0069:	.ascii	"fb_Width\0"
.balign 4
_Lt_006A:	.ascii	"fb_WidthDev\0"
.balign 4
_Lt_006B:	.ascii	"fb_WidthFile\0"
.balign 4
_Lt_006C:	.ascii	"locate\0"
.balign 4
_Lt_006D:	.ascii	"fb_Locate\0"
.balign 4
_Lt_006E:	.ascii	"pos\0"
.balign 4
_Lt_006F:	.ascii	"fb_GetX\0"
.balign 4
_Lt_0070:	.ascii	"fb_Pos\0"
.balign 4
_Lt_0071:	.ascii	"csrlin\0"
.balign 4
_Lt_0072:	.ascii	"fb_GetY\0"
.balign 4
_Lt_0073:	.ascii	"cls\0"
.balign 4
_Lt_0074:	.ascii	"fb_Cls\0"
.balign 4
_Lt_0075:	.ascii	"fb_Color\0"
.balign 4
_Lt_0076:	.ascii	"inkey\0"
.balign 4
_Lt_0077:	.ascii	"fb_Inkey\0"
.balign 4
_Lt_0078:	.ascii	"fb_InkeyQB\0"
.balign 4
_Lt_0079:	.ascii	"getkey\0"
.balign 4
_Lt_007A:	.ascii	"fb_Getkey\0"
.balign 4
_Lt_007B:	.ascii	"pcopy\0"
.balign 4
_Lt_007C:	.ascii	"fb_PageCopy\0"
.balign 4
_Lt_007D:	.ascii	"fb_PageSet\0"

.section .ctors
.int _fb_ctor__rtlzconsole
