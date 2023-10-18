	.intel_syntax noprefix

.section .text
.balign 16

.globl HHEXUINT
HHEXUINT:
.type HHEXUINT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0065:
mov dword ptr [Lt_007D], 4
cmp dword ptr [ebp+8], 65535
jbe .L_0077
mov dword ptr [Lt_007D], 8
.L_0077:
.L_0076:
mov eax, offset Lt_007E + 7
mov dword ptr [Lt_007F], eax
mov dword ptr [Lt_0080], 0
.L_0078:
mov eax, dword ptr [ebp+8]
and eax, 15
mov ebx, eax
mov al, byte ptr [Lt_0081+ebx*4]
mov ebx, dword ptr [Lt_007F]
mov byte ptr [ebx], al
inc dword ptr [Lt_0080]
mov eax, dword ptr [Lt_007D]
cmp dword ptr [Lt_0080], eax
jne .L_007C
jmp .L_0079
.L_007C:
.L_007B:
dec dword ptr [Lt_007F]
shr dword ptr [ebp+8], 4
.L_007A:
jmp .L_0078
.L_0079:
mov eax, dword ptr [Lt_007F]
mov dword ptr [ebp-4], eax
.L_0066:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HHEXUINT, .-HHEXUINT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_007E,9
.balign 4
	.lcomm	Lt_007F,4
.balign 4
	.lcomm	Lt_0080,4
.balign 4
	.lcomm	Lt_007D,4

.section .data
.balign 4
Lt_0081:
.int 48
.int 49
.int 50
.int 51
.int 52
.int 53
.int 54
.int 55
.int 56
.int 57
.int 65
.int 66
.int 67
.int 68
.int 69
.int 70

.section .text
.balign 16

.globl HFLOATTOHEX
HFLOATTOHEX:
.type HFLOATTOHEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0082:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0084
mov dword ptr [ebp-16], 24
jmp .L_0089
.L_0084:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0089:
cmp dword ptr [ebp-16], 16
jne .L_0087
sub esp, 12
push 0
push 3
push offset Lt_0088
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0086
.L_0087:
fld qword ptr [ebp+8]
fstp dword ptr [ebp-20]
sub esp, 12
push 0
push 3
push offset Lt_0088
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 8
push dword ptr [ebp-20]
call fb_HEXEx_i
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0086:
.L_0083:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLOATTOHEX, .-HFLOATTOHEX
.cfi_endproc
.balign 16

.globl HFLOATTOHEX_C99
HFLOATTOHEX_C99:
.type HFLOATTOHEX_C99, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov eax, ebx
xor ebx, ebx
shr eax, 31
mov ecx, eax
mov dword ptr [ebp-24], ecx
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-16]
mov eax, ecx
xor ecx, ecx
shr eax, 20
and eax, 2047
and ecx, 0
mov ebx, eax
mov dword ptr [ebp-28], ebx
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
and eax, 4294967295
and ebx, 1048575
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-24], 0
je .L_008D
sub esp, 12
push 0
push 4
push offset Lt_008E
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
jmp .L_008C
.L_008D:
sub esp, 12
push 0
push 3
push offset Lt_0088
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_008C:
add dword ptr [ebp-28], -1023
cmp dword ptr [ebp-28], -1023
jle .L_0090
sub esp, 12
push 0
push 3
push offset Lt_0008
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
push 2
push offset Lt_0006
push -1
sub esp, 12
push 1
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0092
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push offset Lt_0006
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call fb_RTrimEx
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_0092:
jmp .L_008F
.L_0090:
cmp dword ptr [ebp-32], 0
jne .L_0094
cmp dword ptr [ebp-36], 0
jne .L_0094
.L_00A1:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], 0
jmp .L_0093
.L_0094:
inc dword ptr [ebp-28]
sub esp, 12
push 0
push 3
push offset Lt_0095
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
push 2
push offset Lt_0006
push -1
sub esp, 12
push 1
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0097
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push offset Lt_0006
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call fb_RTrimEx
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_0097:
.L_0093:
.L_008F:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 12
push -1
sub esp, 12
mov eax, dword ptr [ebp-28]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
push eax
call fb_IntToStr
add esp, 16
push eax
push 0
cmp dword ptr [ebp-28], 0
jl .L_009B
mov eax, offset Lt_0099
mov dword ptr [ebp-52], eax
jmp .L_00A0
.L_009B:
mov eax, offset Lt_009A
mov dword ptr [ebp-52], eax
.L_00A0:
push dword ptr [ebp-52]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 32
push eax
push 2
push offset Lt_0098
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
jmp .L_008B
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
.L_008B:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLOATTOHEX_C99, .-HFLOATTOHEX_C99
.cfi_endproc
.balign 16

.globl HFBRELOP2IRRELOP
HFBRELOP2IRRELOP:
.type HFBRELOP2IRRELOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_00A5
.L_00A7:
mov dword ptr [Lt_00AF], 45
jmp .L_00A4
.L_00A8:
mov dword ptr [Lt_00AF], 46
jmp .L_00A4
.L_00A9:
mov dword ptr [Lt_00AF], 47
jmp .L_00A4
.L_00AA:
mov dword ptr [Lt_00AF], 48
jmp .L_00A4
.L_00AB:
mov dword ptr [Lt_00AF], 50
jmp .L_00A4
.L_00AC:
mov dword ptr [Lt_00AF], 49
jmp .L_00A4
.L_00AD:
sub esp, 4
push 0
push 0
push 285
call ERRREPORT
add esp, 16
mov dword ptr [Lt_00AF], 45
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp-8]
add eax, 4294966997
cmp eax, 5
ja .L_00AD
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00AE+eax*4-1196]
.L_00AE:
.int .L_00A7
.int .L_00A8
.int .L_00A9
.int .L_00AA
.int .L_00AB
.int .L_00AC
.L_00A4:
mov eax, dword ptr [Lt_00AF]
mov dword ptr [ebp-4], eax
.L_00A3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFBRELOP2IRRELOP, .-HFBRELOP2IRRELOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00AF,4

.section .text
.balign 16

.globl HFILEEXISTS
HFILEEXISTS:
.type HFILEEXISTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00B0:
call fb_FileFree
mov dword ptr [Lt_00B6], eax
sub esp, 8
push 0
push dword ptr [Lt_00B6]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 32
test eax, eax
jne .L_00B3
mov dword ptr [ebp-4], -1
sub esp, 12
push dword ptr [Lt_00B6]
call fb_FileClose
add esp, 16
test eax, eax
je .L_00B4
push 0
push 0
push offset Lt_00B5
push 161
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B4:
jmp .L_00B2
.L_00B3:
mov dword ptr [ebp-4], 0
.L_00B2:
.L_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFILEEXISTS, .-HFILEEXISTS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00B6,4

.section .text
.balign 16

.globl HUCASE
HUCASE:
.type HUCASE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00B7:
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_00C1], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [Lt_00C2], eax
.L_00B9:
mov eax, dword ptr [Lt_00C1]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_00C3], ebx
cmp dword ptr [Lt_00C3], 97
jl .L_00BD
cmp dword ptr [Lt_00C3], 122
jg .L_00BF
add dword ptr [Lt_00C3], -32
.L_00BF:
.L_00BE:
jmp .L_00BC
.L_00BD:
cmp dword ptr [Lt_00C3], 0
jne .L_00C0
jmp .L_00BA
.L_00C0:
.L_00BC:
mov bl, byte ptr [Lt_00C3]
mov eax, dword ptr [Lt_00C2]
mov byte ptr [eax], bl
inc dword ptr [Lt_00C1]
inc dword ptr [Lt_00C2]
.L_00BB:
jmp .L_00B9
.L_00BA:
mov ebx, dword ptr [Lt_00C2]
mov byte ptr [ebx], 0
.L_00B8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HUCASE, .-HUCASE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00C3,4
.balign 4
	.lcomm	Lt_00C1,4
.balign 4
	.lcomm	Lt_00C2,4

.section .text
.balign 16

.globl HCLEARNAME
HCLEARNAME:
.type HCLEARNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C4:
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_00D0], eax
.L_00C6:
mov eax, dword ptr [Lt_00D0]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00CA
.L_00CC:
jmp .L_00C7
jmp .L_00C9
.L_00CD:
jmp .L_00C9
.L_00CE:
mov ebx, dword ptr [Lt_00D0]
mov byte ptr [ebx], 122
jmp .L_00C9
.L_00CA:
cmp dword ptr [ebp-4], 122
ja .L_00CE
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_00CF+ebx*4]
.L_00CF:
.int .L_00CC
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CD
.int .L_00CE
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.L_00C9:
inc dword ptr [Lt_00D0]
.L_00C8:
jmp .L_00C6
.L_00C7:
.L_00C5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCLEARNAME, .-HCLEARNAME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00D0,4

.section .text
.balign 16

.globl HSTRIPEXT
HSTRIPEXT:
.type HSTRIPEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DD:
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 4
push dword ptr [ebp+8]
call HFINDEXTBEGIN
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00DE:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTRIPEXT, .-HSTRIPEXT
.cfi_endproc
.balign 16

.globl HSTRIPPATH
HSTRIPPATH:
.type HSTRIPPATH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DF:
mov dword ptr [Lt_00EC], 0
.L_00E2:
sub esp, 4
sub esp, 4
push 1
push offset Lt_00E5
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00EC]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_00ED], eax
sub esp, 4
sub esp, 4
push 1
push offset Lt_0019
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00EC]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_00ED+4], eax
mov eax, dword ptr [Lt_00ED]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_00ED+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_00ED+4]
cmp ecx, dword ptr [Lt_00ED]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00E7
mov ebx, dword ptr [Lt_00ED+4]
mov dword ptr [Lt_00F1], ebx
jmp .L_00E6
.L_00E7:
mov ebx, dword ptr [Lt_00ED]
mov dword ptr [Lt_00F1], ebx
.L_00E6:
cmp dword ptr [Lt_00F1], 0
jne .L_00E9
jmp .L_00E3
.L_00E9:
.L_00E8:
mov ebx, dword ptr [Lt_00F1]
mov dword ptr [Lt_00EC], ebx
.L_00E4:
jmp .L_00E2
.L_00E3:
cmp dword ptr [Lt_00EC], 0
jle .L_00EB
sub esp, 12
push 0
push -1
push -1
mov ebx, dword ptr [Lt_00EC]
inc ebx
push ebx
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00EA
.L_00EB:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00EA:
.L_00E0:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTRIPPATH, .-HSTRIPPATH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00EC,4
.balign 4
	.lcomm	Lt_00F1,4
.balign 4
	.lcomm	Lt_00ED,8

.section .text
.balign 16

.globl HSTRIPFILENAME
HSTRIPFILENAME:
.type HSTRIPFILENAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00F2:
mov dword ptr [Lt_00FE], 0
.L_00F5:
sub esp, 4
sub esp, 4
push 1
push offset Lt_00E5
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00FE]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_00FF], eax
sub esp, 4
sub esp, 4
push 1
push offset Lt_0019
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00FE]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_00FF+4], eax
mov eax, dword ptr [Lt_00FF]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_00FF+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_00FF+4]
cmp ecx, dword ptr [Lt_00FF]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00F9
mov ebx, dword ptr [Lt_00FF+4]
mov dword ptr [Lt_0103], ebx
jmp .L_00F8
.L_00F9:
mov ebx, dword ptr [Lt_00FF]
mov dword ptr [Lt_0103], ebx
.L_00F8:
cmp dword ptr [Lt_0103], 0
jne .L_00FB
jmp .L_00F6
.L_00FB:
.L_00FA:
mov ebx, dword ptr [Lt_0103]
mov dword ptr [Lt_00FE], ebx
.L_00F7:
jmp .L_00F5
.L_00F6:
cmp dword ptr [Lt_00FE], 0
jle .L_00FD
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [Lt_00FE]
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00FC
.L_00FD:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00FC:
.L_00F3:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTRIPFILENAME, .-HSTRIPFILENAME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00FE,4
.balign 4
	.lcomm	Lt_0103,4
.balign 4
	.lcomm	Lt_00FF,8

.section .text
.balign 16

.globl HGETFILEEXT
HGETFILEEXT:
.type HGETFILEEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0104:
mov dword ptr [Lt_0112], 0
.L_0106:
sub esp, 4
sub esp, 4
push 1
push offset Lt_0007
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_0112]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_0113], eax
cmp dword ptr [Lt_0113], 0
jne .L_010A
jmp .L_0107
.L_010A:
.L_0109:
mov eax, dword ptr [Lt_0113]
mov dword ptr [Lt_0112], eax
.L_0108:
jmp .L_0106
.L_0107:
cmp dword ptr [Lt_0112], 0
jne .L_010C
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_010B
.L_010C:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 8
push -1
mov eax, dword ptr [Lt_0112]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 20
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
push offset Lt_0114
call fb_StrAssign
add esp, 32
sub esp, 4
sub esp, 4
push 1
push offset Lt_00E5
call fb_StrAllocTempDescZEx
add esp, 12
push eax
push offset Lt_0114
push 1
call fb_StrInstr
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 4
sub esp, 4
push 1
push offset Lt_0019
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 12
push eax
push offset Lt_0114
push 1
call fb_StrInstr
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_010E
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_010D
.L_010E:
sub esp, 8
push -1
push offset Lt_0114
call fb_StrLen
add esp, 16
test eax, eax
jle .L_010F
mov eax, dword ptr [Lt_0114]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0114]
movzx ecx, byte ptr [ebx]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0111
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_0110
.L_0111:
sub esp, 12
push 0
push -1
push offset Lt_0114
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.L_0110:
.L_010F:
.L_010D:
.L_010B:
.L_0105:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETFILEEXT, .-HGETFILEEXT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0113,4
.balign 4
	.lcomm	Lt_0112,4
.balign 4
	.lcomm	Lt_0114,12

.section .text
.balign 16

.globl HREPLACESLASH
HREPLACESLASH:
.type HREPLACESLASH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0119:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-8], eax
jmp .L_011C
.L_011F:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-4]
movzx ecx, byte ptr [eax]
cmp ecx, 47
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0121
mov cl, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-4]
mov byte ptr [ebx], cl
.L_0121:
.L_0120:
.L_011D:
inc dword ptr [ebp-4]
.L_011C:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_011F
.L_011E:
.L_011A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREPLACESLASH, .-HREPLACESLASH
.cfi_endproc
.balign 16

.globl PATHSTRIPDIV
PATHSTRIPDIV:
.type PATHSTRIPDIV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0124:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_0127
dec dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx]
mov byte ptr [ebp-20], al
movzx eax, byte ptr [ebp-20]
cmp eax, 47
jne .L_012A
.L_012B:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0125
.L_012A:
.L_0128:
.L_0127:
.L_0126:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0125:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PATHSTRIPDIV, .-PATHSTRIPDIV
.cfi_endproc
.balign 16

.globl PATHISABSOLUTE
PATHISABSOLUTE:
.type PATHISABSOLUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 47
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_012D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PATHISABSOLUTE, .-PATHISABSOLUTE
.cfi_endproc
.balign 16

.globl HCHECKFILEFORMAT
HCHECKFILEFORMAT:
.type HCHECKFILEFORMAT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_012F:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-12], 0
push 4
lea eax, [ebp-8]
push eax
push 0
push dword ptr [ebp+8]
call fb_FileGet
add esp, 16
test eax, eax
jne .L_0132
cmp dword ptr [ebp-8], -131072
jne .L_0134
mov dword ptr [ebp-12], 5
jmp .L_0133
.L_0134:
cmp dword ptr [ebp-8], 65279
jne .L_0135
mov dword ptr [ebp-12], 4
jmp .L_0133
.L_0135:
and dword ptr [ebp-8], 16777215
cmp dword ptr [ebp-8], 12565487
jne .L_0137
mov dword ptr [ebp-12], 1
jmp .L_0136
.L_0137:
and dword ptr [ebp-8], 65535
cmp dword ptr [ebp-8], 65279
jne .L_0139
mov dword ptr [ebp-12], 2
jmp .L_0138
.L_0139:
cmp dword ptr [ebp-8], 65534
jne .L_013A
mov dword ptr [ebp-12], 3
.L_013A:
.L_0138:
.L_0136:
.L_0133:
cmp dword ptr [ebp-12], 0
jne .L_013C
.L_013D:
sub esp, 8
push 1
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_013E
push 0
push 0
push offset Lt_00B5
push 425
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_013E:
jmp .L_013B
.L_013C:
cmp dword ptr [ebp-12], 1
jne .L_013F
.L_0140:
sub esp, 8
push 4
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_0141
push 0
push 0
push offset Lt_00B5
push 428
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0141:
jmp .L_013B
.L_013F:
cmp dword ptr [ebp-12], 2
je .L_0143
.L_0144:
cmp dword ptr [ebp-12], 3
jne .L_0142
.L_0143:
sub esp, 8
push 3
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_0145
push 0
push 0
push offset Lt_00B5
push 432
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0145:
.L_0142:
.L_013B:
.L_0132:
.L_0131:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0130:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKFILEFORMAT, .-HCHECKFILEFORMAT
.cfi_endproc
.balign 16

.globl HCURDIR
HCURDIR:
.type HCURDIR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0146:
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 12
call fb_CurDir
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0147:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCURDIR, .-HCURDIR
.cfi_endproc
.balign 16

.globl PATHSTRIPCURDIR
PATHSTRIPCURDIR:
.type PATHSTRIPCURDIR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0149:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0019
push -1
sub esp, 8
call HCURDIR
add esp, 8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 12
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_014D
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
push -1
lea ebx, [ebp-24]
push ebx
mov ebx, eax
call fb_StrLen
add esp, 8
sub ebx, eax
push ebx
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_014C
.L_014D:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_014C:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_014A:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PATHSTRIPCURDIR, .-PATHSTRIPCURDIR
.cfi_endproc
.balign 16

.globl HISVALIDSYMBOLNAME
HISVALIDSYMBOLNAME:
.type HISVALIDSYMBOLNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_014E:
cmp dword ptr [ebp+8], 0
jne .L_0151
jmp .L_014F
.L_0151:
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0153
jmp .L_014F
.L_0153:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0156
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .L_0175
.L_0156:
mov dword ptr [ebp-12], 0
.L_0175:
cmp dword ptr [ebp-12], 0
jne .L_015B
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_0159
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0177
.L_0159:
mov dword ptr [ebp-16], 0
.L_0177:
mov eax, dword ptr [ebp-16]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0176
.L_015B:
mov dword ptr [ebp-20], -1
.L_0176:
cmp dword ptr [ebp-20], 0
jne .L_015E
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_0178
.L_015E:
mov dword ptr [ebp-24], -1
.L_0178:
cmp dword ptr [ebp-24], 0
jne .L_0161
jmp .L_014F
.L_0161:
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_0163
.L_0166:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0167
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .L_0179
.L_0167:
mov dword ptr [ebp-36], 0
.L_0179:
cmp dword ptr [ebp-36], 0
jne .L_016B
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_0169
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_017B
.L_0169:
mov dword ptr [ebp-40], 0
.L_017B:
mov eax, dword ptr [ebp-40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_017A
.L_016B:
mov dword ptr [ebp-44], -1
.L_017A:
cmp dword ptr [ebp-44], 0
jne .L_016D
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_017C
.L_016D:
mov dword ptr [ebp-48], -1
.L_017C:
cmp dword ptr [ebp-48], 0
jne .L_0171
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .L_016F
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .L_017E
.L_016F:
mov dword ptr [ebp-52], 0
.L_017E:
mov ebx, dword ptr [ebp-52]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .L_017D
.L_0171:
mov dword ptr [ebp-56], -1
.L_017D:
cmp dword ptr [ebp-56], 0
jne .L_0174
jmp .L_014F
.L_0174:
.L_0164:
inc dword ptr [ebp-28]
.L_0163:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .L_0166
.L_0165:
mov dword ptr [ebp-4], -1
.L_014F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISVALIDSYMBOLNAME, .-HISVALIDSYMBOLNAME
.cfi_endproc
.balign 16

.globl STRUNQUOTE
STRUNQUOTE:
.type STRUNQUOTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_018F:
sub esp, 12
push dword ptr [ebp+8]
call STRISQUOTED
add esp, 16
test eax, eax
je .L_0192
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 12
add eax, -2
push eax
push 2
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0190
.L_0192:
.L_0191:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_0190:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size STRUNQUOTE, .-STRUNQUOTE
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
HFINDEXTBEGIN:
.type HFINDEXTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00D1:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D3
.L_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx]
mov byte ptr [ebp-12], al
movzx eax, byte ptr [ebp-12]
cmp eax, 46
jne .L_00D9
.L_00DA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00D2
jmp .L_00D7
.L_00D9:
movzx eax, byte ptr [ebp-12]
cmp eax, 47
jne .L_00DB
.L_00DC:
jmp .L_00D5
.L_00DB:
.L_00D7:
.L_00D4:
dec dword ptr [ebp-8]
.L_00D3:
cmp dword ptr [ebp-8], 0
jge .L_00D6
.L_00D5:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
.L_00D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFINDEXTBEGIN, .-HFINDEXTBEGIN
.cfi_endproc
.balign 16
STRISQUOTED:
.type STRISQUOTED, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0189:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .L_018C
mov dword ptr [ebp-4], 0
jmp .L_018A
.L_018C:
.L_018B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 34
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
movzx eax, byte ptr [ecx]
cmp eax, 34
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
movzx ecx, byte ptr [eax]
cmp ecx, 39
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx]
add esi, dword ptr [ebp-8]
movzx ecx, byte ptr [esi]
cmp ecx, 39
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_018A:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size STRISQUOTED, .-STRISQUOTED
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0006:	.ascii	"0\0"
.balign 4
Lt_0007:	.ascii	".\0"
.balign 4
Lt_0008:	.ascii	"1.\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0088:	.ascii	"0x\0"
.balign 4
Lt_008E:	.ascii	"-0x\0"
.balign 4
Lt_0095:	.ascii	"0.\0"
.balign 4
Lt_0098:	.ascii	"p\0"
.balign 4
Lt_0099:	.ascii	"+\0"
.balign 4
Lt_009A:	.ascii	"-\0"
.balign 4
Lt_00B5:	.ascii	"src/compiler/hlp.bas\0"
.balign 4
Lt_00E5:	.ascii	"\\\0"
