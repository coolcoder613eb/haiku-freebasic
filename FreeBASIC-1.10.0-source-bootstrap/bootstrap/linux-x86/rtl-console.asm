	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLCONSOLEMODINIT
RTLCONSOLEMODINIT:
.type RTLCONSOLEMODINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007E:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.L_007F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLCONSOLEMODINIT, .-RTLCONSOLEMODINIT
.cfi_endproc
.balign 16

.globl RTLCONSOLEMODEND
RTLCONSOLEMODEND:
.type RTLCONSOLEMODEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0080:
.L_0081:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLCONSOLEMODEND, .-RTLCONSOLEMODEND
.cfi_endproc
.balign 16

.globl RTLCONSOLEVIEW
RTLCONSOLEVIEW:
.type RTLCONSOLEVIEW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0082:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 214
push offset Lt_0066
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
jne .L_0085
jmp .L_0083
.L_0085:
.L_0084:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0087
jmp .L_0083
.L_0087:
.L_0086:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0083:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLCONSOLEVIEW, .-RTLCONSOLEVIEW
.cfi_endproc
.balign 16

.globl RTLWIDTHSCREEN
RTLWIDTHSCREEN:
.type RTLWIDTHSCREEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0088:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 289
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_008B
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_008B:
.L_008A:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_008D
jmp .L_0089
.L_008D:
.L_008C:
cmp dword ptr [ebp+12], 0
jne .L_008F
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_008F:
.L_008E:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0091
jmp .L_0089
.L_0091:
.L_0090:
cmp dword ptr [ebp+16], 0
jne .L_0093
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.L_0093:
.L_0092:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0089:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLWIDTHSCREEN, .-RTLWIDTHSCREEN
.cfi_endproc
.balign 16

.globl RTLCOLOR
RTLCOLOR:
.type RTLCOLOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0094:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
sub esp, 12
push 216
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_0097
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
or dword ptr [ebp-12], 1
.L_0097:
.L_0096:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0099
jmp .L_0095
.L_0099:
.L_0098:
cmp dword ptr [ebp+12], 0
jne .L_009B
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
or dword ptr [ebp-12], 2
.L_009B:
.L_009A:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009D
jmp .L_0095
.L_009D:
.L_009C:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009F
jmp .L_0095
.L_009F:
.L_009E:
cmp dword ptr [ebp+16], 0
jne .L_00A1
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
.L_00A1:
.L_00A0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLCOLOR, .-RTLCOLOR
.cfi_endproc
.balign 16

.globl RTLPAGESET
RTLPAGESET:
.type RTLPAGESET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A2:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 217
push offset Lt_007C
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .L_00A5
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_00A5:
.L_00A4:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A7
jmp .L_00A3
.L_00A7:
.L_00A6:
cmp dword ptr [ebp+12], 0
jne .L_00A9
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_00A9:
.L_00A8:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AB
jmp .L_00A3
.L_00AB:
.L_00AA:
cmp dword ptr [ebp+16], 0
jne .L_00AD
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
.L_00AD:
.L_00AC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLPAGESET, .-RTLPAGESET
.cfi_endproc
.balign 16

.globl RTLCONSOLEREADXY
RTLCONSOLEREADXY:
.type RTLCONSOLEREADXY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AE:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 215
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00B1
jmp .L_00AF
.L_00B1:
.L_00B0:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00B3
jmp .L_00AF
.L_00B3:
.L_00B2:
cmp dword ptr [ebp+16], 0
jne .L_00B5
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
.L_00B5:
.L_00B4:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00B7
jmp .L_00AF
.L_00B7:
.L_00B6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLCONSOLEREADXY, .-RTLCONSOLEREADXY
.cfi_endproc
.balign 16
fb_ctor__rtlzconsole:
.type fb_ctor__rtlzconsole, @function
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
.size fb_ctor__rtlzconsole, .-fb_ctor__rtlzconsole
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
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
.int Lt_006C
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
.int Lt_006D
.int Lt_006E
.int 11
.int -1
.long 0
.int 1
.int 0
.skip 256,0
.int Lt_006D
.int Lt_006F
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
.int Lt_0070
.int Lt_0071
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int Lt_0072
.int Lt_0073
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
.int Lt_0074
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
.int Lt_0075
.int Lt_0076
.int 17
.int -1
.long 0
.int 192
.int 0
.skip 256,0
.int Lt_0075
.int Lt_0077
.int 17
.int -1
.long 0
.int 320
.int 0
.skip 256,0
.int Lt_0078
.int Lt_0079
.int 11
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int Lt_007A
.int Lt_007B
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
.int Lt_007C
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

.section .rodata
.balign 4
Lt_0066:	.ascii	"fb_ConsoleView\0"
.balign 4
Lt_0067:	.ascii	"fb_ReadXY\0"
.balign 4
Lt_0068:	.ascii	"fb_Width\0"
.balign 4
Lt_0069:	.ascii	"fb_WidthDev\0"
.balign 4
Lt_006A:	.ascii	"fb_WidthFile\0"
.balign 4
Lt_006B:	.ascii	"locate\0"
.balign 4
Lt_006C:	.ascii	"fb_Locate\0"
.balign 4
Lt_006D:	.ascii	"pos\0"
.balign 4
Lt_006E:	.ascii	"fb_GetX\0"
.balign 4
Lt_006F:	.ascii	"fb_Pos\0"
.balign 4
Lt_0070:	.ascii	"csrlin\0"
.balign 4
Lt_0071:	.ascii	"fb_GetY\0"
.balign 4
Lt_0072:	.ascii	"cls\0"
.balign 4
Lt_0073:	.ascii	"fb_Cls\0"
.balign 4
Lt_0074:	.ascii	"fb_Color\0"
.balign 4
Lt_0075:	.ascii	"inkey\0"
.balign 4
Lt_0076:	.ascii	"fb_Inkey\0"
.balign 4
Lt_0077:	.ascii	"fb_InkeyQB\0"
.balign 4
Lt_0078:	.ascii	"getkey\0"
.balign 4
Lt_0079:	.ascii	"fb_Getkey\0"
.balign 4
Lt_007A:	.ascii	"pcopy\0"
.balign 4
Lt_007B:	.ascii	"fb_PageCopy\0"
.balign 4
Lt_007C:	.ascii	"fb_PageSet\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzconsole
