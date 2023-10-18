	.intel_syntax noprefix

.section .text
.balign 16

.globl _HHEXUINT@4
_HHEXUINT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [_Lt_007E], 4
cmp dword ptr [ebp+8], 65535
jbe .L_0078
mov dword ptr [_Lt_007E], 8
.L_0078:
.L_0077:
mov eax, offset _Lt_007F + 7
mov dword ptr [_Lt_0080], eax
mov dword ptr [_Lt_0081], 0
.L_0079:
mov eax, dword ptr [ebp+8]
and eax, 15
mov ebx, eax
mov al, byte ptr [_Lt_0082+ebx*4]
mov ebx, dword ptr [_Lt_0080]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0081]
mov eax, dword ptr [_Lt_007E]
cmp dword ptr [_Lt_0081], eax
jne .L_007D
jmp .L_007A
.L_007D:
.L_007C:
dec dword ptr [_Lt_0080]
shr dword ptr [ebp+8], 4
.L_007B:
jmp .L_0079
.L_007A:
mov eax, dword ptr [_Lt_0080]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_007F,9
.balign 4
	.lcomm	_Lt_0080,4
.balign 4
	.lcomm	_Lt_0081,4
.balign 4
	.lcomm	_Lt_007E,4

.section .data
.balign 4
_Lt_0082:
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

.globl _HFLOATTOHEX@12
_HFLOATTOHEX@12:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0083:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0085
mov dword ptr [ebp-16], 24
jmp .L_008A
.L_0085:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_008A:
cmp dword ptr [ebp-16], 16
jne .L_0088
push 0
push 3
push offset _Lt_0089
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0087
.L_0088:
fld qword ptr [ebp+8]
fstp dword ptr [ebp-20]
push 0
push 3
push offset _Lt_0089
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_i@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0087:
.L_0084:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _HFLOATTOHEX_C99@8
_HFLOATTOHEX_C99@8:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008B:
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
je .L_008E
push 0
push 4
push offset _Lt_008F
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
jmp .L_008D
.L_008E:
push 0
push 3
push offset _Lt_0089
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.L_008D:
add dword ptr [ebp-28], -1023
cmp dword ptr [ebp-28], -1023
jle .L_0091
push 0
push 3
push offset _Lt_0008
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 2
push offset _Lt_0006
push -1
push 1
lea eax, [ebp-48]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0093
push 0
push -1
push 1
push offset _Lt_0006
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-48]
push eax
call _fb_RTrimEx@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.L_0093:
jmp .L_0090
.L_0091:
cmp dword ptr [ebp-32], 0
jne .L_0095
cmp dword ptr [ebp-36], 0
jne .L_0095
.L_00A2:
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], 0
jmp .L_0094
.L_0095:
inc dword ptr [ebp-28]
push 0
push 3
push offset _Lt_0096
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 2
push offset _Lt_0006
push -1
push 1
lea eax, [ebp-48]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0098
push 0
push -1
push 1
push offset _Lt_0006
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-48]
push eax
call _fb_RTrimEx@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.L_0098:
.L_0094:
.L_0090:
push 0
push -1
push -1
push -1
push -1
mov eax, dword ptr [ebp-28]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
push eax
call _fb_IntToStr@4
push eax
push 0
cmp dword ptr [ebp-28], 0
jl .L_009C
mov eax, offset _Lt_009A
mov dword ptr [ebp-52], eax
jmp .L_00A1
.L_009C:
mov eax, offset _Lt_009B
mov dword ptr [ebp-52], eax
.L_00A1:
push dword ptr [ebp-52]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push 2
push offset _Lt_0099
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
jmp .L_008C
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
.L_008C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HFBRELOP2IRRELOP@4
_HFBRELOP2IRRELOP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_00A6
.L_00A8:
mov dword ptr [_Lt_00B0], 45
jmp .L_00A5
.L_00A9:
mov dword ptr [_Lt_00B0], 46
jmp .L_00A5
.L_00AA:
mov dword ptr [_Lt_00B0], 47
jmp .L_00A5
.L_00AB:
mov dword ptr [_Lt_00B0], 48
jmp .L_00A5
.L_00AC:
mov dword ptr [_Lt_00B0], 50
jmp .L_00A5
.L_00AD:
mov dword ptr [_Lt_00B0], 49
jmp .L_00A5
.L_00AE:
push 0
push 0
push 285
call _ERRREPORT@12
mov dword ptr [_Lt_00B0], 45
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp-8]
add eax, 4294966997
cmp eax, 5
ja .L_00AE
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00AF+eax*4-1196]
_.L_00AF:
.int .L_00A8
.int .L_00A9
.int .L_00AA
.int .L_00AB
.int .L_00AC
.int .L_00AD
.L_00A5:
mov eax, dword ptr [_Lt_00B0]
mov dword ptr [ebp-4], eax
.L_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00B0,4

.section .text
.balign 16

.globl _HFILEEXISTS@4
_HFILEEXISTS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B1:
call _fb_FileFree@0
mov dword ptr [_Lt_00B7], eax
push 0
push dword ptr [_Lt_00B7]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
jne .L_00B4
mov dword ptr [ebp-4], -1
push dword ptr [_Lt_00B7]
call _fb_FileClose@4
test eax, eax
je .L_00B5
push 0
push 0
push offset _Lt_00B6
push 161
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B5:
jmp .L_00B3
.L_00B4:
mov dword ptr [ebp-4], 0
.L_00B3:
.L_00B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00B7,4

.section .text
.balign 16

.globl _HUCASE@8
_HUCASE@8:
push ebp
mov ebp, esp
push ebx
.L_00B8:
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_00C2], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_Lt_00C3], eax
.L_00BA:
mov eax, dword ptr [_Lt_00C2]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_00C4], ebx
cmp dword ptr [_Lt_00C4], 97
jl .L_00BE
cmp dword ptr [_Lt_00C4], 122
jg .L_00C0
add dword ptr [_Lt_00C4], -32
.L_00C0:
.L_00BF:
jmp .L_00BD
.L_00BE:
cmp dword ptr [_Lt_00C4], 0
jne .L_00C1
jmp .L_00BB
.L_00C1:
.L_00BD:
mov bl, byte ptr [_Lt_00C4]
mov eax, dword ptr [_Lt_00C3]
mov byte ptr [eax], bl
inc dword ptr [_Lt_00C2]
inc dword ptr [_Lt_00C3]
.L_00BC:
jmp .L_00BA
.L_00BB:
mov ebx, dword ptr [_Lt_00C3]
mov byte ptr [ebx], 0
.L_00B9:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_00C4,4
.balign 4
	.lcomm	_Lt_00C2,4
.balign 4
	.lcomm	_Lt_00C3,4

.section .text
.balign 16

.globl _HCLEARNAME@4
_HCLEARNAME@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_00D1], eax
.L_00C7:
mov eax, dword ptr [_Lt_00D1]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00CB
.L_00CD:
jmp .L_00C8
jmp .L_00CA
.L_00CE:
jmp .L_00CA
.L_00CF:
mov ebx, dword ptr [_Lt_00D1]
mov byte ptr [ebx], 122
jmp .L_00CA
.L_00CB:
cmp dword ptr [ebp-4], 122
ja .L_00CF
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_00D0+ebx*4]
_.L_00D0:
.int .L_00CD
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
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
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
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
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CE
.int .L_00CF
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
.L_00CA:
inc dword ptr [_Lt_00D1]
.L_00C9:
jmp .L_00C7
.L_00C8:
.L_00C6:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00D1,4

.section .text
.balign 16

.globl _HSTRIPEXT@4
_HSTRIPEXT@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E1:
push 0
push -1
push dword ptr [ebp+8]
call _HFINDEXTBEGIN@4
push eax
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00E2:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HSTRIPPATH@4
_HSTRIPPATH@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E3:
mov dword ptr [_Lt_00EF], 0
.L_00E6:
push 1
push offset _Lt_001A
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_00EF]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_00F0], eax
push 1
push offset _Lt_00DE
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_00EF]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_00F0+4], eax
mov eax, dword ptr [_Lt_00F0]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_00F0+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_00F0+4]
cmp ecx, dword ptr [_Lt_00F0]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00EA
mov ebx, dword ptr [_Lt_00F0+4]
mov dword ptr [_Lt_00F4], ebx
jmp .L_00E9
.L_00EA:
mov ebx, dword ptr [_Lt_00F0]
mov dword ptr [_Lt_00F4], ebx
.L_00E9:
cmp dword ptr [_Lt_00F4], 0
jne .L_00EC
jmp .L_00E7
.L_00EC:
.L_00EB:
mov ebx, dword ptr [_Lt_00F4]
mov dword ptr [_Lt_00EF], ebx
.L_00E8:
jmp .L_00E6
.L_00E7:
cmp dword ptr [_Lt_00EF], 0
jle .L_00EE
push 0
push -1
push -1
mov ebx, dword ptr [_Lt_00EF]
inc ebx
push ebx
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00ED
.L_00EE:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00ED:
.L_00E4:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00EF,4
.balign 4
	.lcomm	_Lt_00F4,4
.balign 4
	.lcomm	_Lt_00F0,8

.section .text
.balign 16

.globl _HSTRIPFILENAME@4
_HSTRIPFILENAME@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00F5:
mov dword ptr [_Lt_0101], 0
.L_00F8:
push 1
push offset _Lt_001A
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_0101]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_0102], eax
push 1
push offset _Lt_00DE
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_0101]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_0102+4], eax
mov eax, dword ptr [_Lt_0102]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0102+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0102+4]
cmp ecx, dword ptr [_Lt_0102]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00FC
mov ebx, dword ptr [_Lt_0102+4]
mov dword ptr [_Lt_0106], ebx
jmp .L_00FB
.L_00FC:
mov ebx, dword ptr [_Lt_0102]
mov dword ptr [_Lt_0106], ebx
.L_00FB:
cmp dword ptr [_Lt_0106], 0
jne .L_00FE
jmp .L_00F9
.L_00FE:
.L_00FD:
mov ebx, dword ptr [_Lt_0106]
mov dword ptr [_Lt_0101], ebx
.L_00FA:
jmp .L_00F8
.L_00F9:
cmp dword ptr [_Lt_0101], 0
jle .L_0100
push 0
push -1
push dword ptr [_Lt_0101]
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00FF
.L_0100:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00FF:
.L_00F6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0101,4
.balign 4
	.lcomm	_Lt_0106,4
.balign 4
	.lcomm	_Lt_0102,8

.section .text
.balign 16

.globl _HGETFILEEXT@4
_HGETFILEEXT@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0107:
mov dword ptr [_Lt_0115], 0
.L_0109:
push 1
push offset _Lt_0007
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_0115]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_0116], eax
cmp dword ptr [_Lt_0116], 0
jne .L_010D
jmp .L_010A
.L_010D:
.L_010C:
mov eax, dword ptr [_Lt_0116]
mov dword ptr [_Lt_0115], eax
.L_010B:
jmp .L_0109
.L_010A:
cmp dword ptr [_Lt_0115], 0
jne .L_010F
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_010E
.L_010F:
push 0
push -1
push 0
push -1
mov eax, dword ptr [_Lt_0115]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrMid@12
push eax
call _fb_StrLcase2@8
push eax
push -1
push offset _Lt_0117
call _fb_StrAssign@20
push 1
push offset _Lt_001A
call _fb_StrAllocTempDescZEx@8
push eax
push offset _Lt_0117
push 1
call _fb_StrInstr@12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_00DE
mov ebx, eax
call _fb_StrAllocTempDescZEx@8
push eax
push offset _Lt_0117
push 1
call _fb_StrInstr@12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0111
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_0110
.L_0111:
push -1
push offset _Lt_0117
call _fb_StrLen@8
test eax, eax
jle .L_0112
mov eax, dword ptr [_Lt_0117]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0117]
movzx ecx, byte ptr [ebx]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0114
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_0113
.L_0114:
push 0
push -1
push offset _Lt_0117
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
.L_0113:
.L_0112:
.L_0110:
.L_010E:
.L_0108:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0116,4
.balign 4
	.lcomm	_Lt_0115,4
.balign 4
	.lcomm	_Lt_0117,12

.section .text
.balign 16

.globl _HREPLACESLASH@8
_HREPLACESLASH@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_011C:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-8], eax
jmp .L_011F
.L_0122:
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
je .L_0124
mov cl, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-4]
mov byte ptr [ebx], cl
.L_0124:
.L_0123:
.L_0120:
inc dword ptr [ebp-4]
.L_011F:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_0122
.L_0121:
.L_011D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _PATHSTRIPDIV@4
_PATHSTRIPDIV@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0127:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_012A
dec dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx]
mov byte ptr [ebp-20], al
movzx eax, byte ptr [ebp-20]
cmp eax, 47
je .L_012E
.L_012F:
movzx eax, byte ptr [ebp-20]
cmp eax, 92
jne .L_012D
.L_012E:
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0128
.L_012D:
.L_012B:
.L_012A:
.L_0129:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0128:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _PATHISABSOLUTE@4
_PATHISABSOLUTE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0130:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .L_0133
mov ebx, dword ptr [ebp+8]
mov al, byte ptr [ebx+1]
mov byte ptr [ebp-8], al
movzx eax, byte ptr [ebp-8]
cmp eax, 58
jne .L_0136
.L_0138:
mov dword ptr [ebp-4], -1
jmp .L_0134
.L_0136:
movzx eax, byte ptr [ebp-8]
cmp eax, 92
jne .L_0139
.L_013A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0139:
.L_0134:
.L_0133:
.L_0132:
.L_0131:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HCHECKFILEFORMAT@4
_HCHECKFILEFORMAT@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_013C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-12], 0
push 4
lea eax, [ebp-8]
push eax
push 0
push dword ptr [ebp+8]
call _fb_FileGet@16
test eax, eax
jne .L_013F
cmp dword ptr [ebp-8], -131072
jne .L_0141
mov dword ptr [ebp-12], 5
jmp .L_0140
.L_0141:
cmp dword ptr [ebp-8], 65279
jne .L_0142
mov dword ptr [ebp-12], 4
jmp .L_0140
.L_0142:
and dword ptr [ebp-8], 16777215
cmp dword ptr [ebp-8], 12565487
jne .L_0144
mov dword ptr [ebp-12], 1
jmp .L_0143
.L_0144:
and dword ptr [ebp-8], 65535
cmp dword ptr [ebp-8], 65279
jne .L_0146
mov dword ptr [ebp-12], 2
jmp .L_0145
.L_0146:
cmp dword ptr [ebp-8], 65534
jne .L_0147
mov dword ptr [ebp-12], 3
.L_0147:
.L_0145:
.L_0143:
.L_0140:
cmp dword ptr [ebp-12], 0
jne .L_0149
.L_014A:
push 1
push dword ptr [ebp+8]
call _fb_FileSeek@8
test eax, eax
je .L_014B
push 0
push 0
push offset _Lt_00B6
push 425
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_014B:
jmp .L_0148
.L_0149:
cmp dword ptr [ebp-12], 1
jne .L_014C
.L_014D:
push 4
push dword ptr [ebp+8]
call _fb_FileSeek@8
test eax, eax
je .L_014E
push 0
push 0
push offset _Lt_00B6
push 428
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_014E:
jmp .L_0148
.L_014C:
cmp dword ptr [ebp-12], 2
je .L_0150
.L_0151:
cmp dword ptr [ebp-12], 3
jne .L_014F
.L_0150:
push 3
push dword ptr [ebp+8]
call _fb_FileSeek@8
test eax, eax
je .L_0152
push 0
push 0
push offset _Lt_00B6
push 432
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0152:
.L_014F:
.L_0148:
.L_013F:
.L_013E:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_013D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HCURDIR@0
_HCURDIR@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0153:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _fb_CurDir@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0154:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PATHSTRIPCURDIR@4
_PATHSTRIPCURDIR@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0156:
push 0
push -1
push 2
push offset _Lt_001A
push -1
call _HCURDIR@0
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
push eax
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_015A
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
push -1
lea ebx, [ebp-24]
push ebx
mov ebx, eax
call _fb_StrLen@8
sub ebx, eax
push ebx
push dword ptr [ebp+8]
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_0159
.L_015A:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0159:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0157:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HISVALIDSYMBOLNAME@4
_HISVALIDSYMBOLNAME@4:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_015B:
cmp dword ptr [ebp+8], 0
jne .L_015E
jmp .L_015C
.L_015E:
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0160
jmp .L_015C
.L_0160:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0163
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .L_0182
.L_0163:
mov dword ptr [ebp-12], 0
.L_0182:
cmp dword ptr [ebp-12], 0
jne .L_0168
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_0166
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0184
.L_0166:
mov dword ptr [ebp-16], 0
.L_0184:
mov eax, dword ptr [ebp-16]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0183
.L_0168:
mov dword ptr [ebp-20], -1
.L_0183:
cmp dword ptr [ebp-20], 0
jne .L_016B
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_0185
.L_016B:
mov dword ptr [ebp-24], -1
.L_0185:
cmp dword ptr [ebp-24], 0
jne .L_016E
jmp .L_015C
.L_016E:
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_0170
.L_0173:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0174
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .L_0186
.L_0174:
mov dword ptr [ebp-36], 0
.L_0186:
cmp dword ptr [ebp-36], 0
jne .L_0178
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_0176
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0188
.L_0176:
mov dword ptr [ebp-40], 0
.L_0188:
mov eax, dword ptr [ebp-40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_0187
.L_0178:
mov dword ptr [ebp-44], -1
.L_0187:
cmp dword ptr [ebp-44], 0
jne .L_017A
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_0189
.L_017A:
mov dword ptr [ebp-48], -1
.L_0189:
cmp dword ptr [ebp-48], 0
jne .L_017E
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .L_017C
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .L_018B
.L_017C:
mov dword ptr [ebp-52], 0
.L_018B:
mov ebx, dword ptr [ebp-52]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .L_018A
.L_017E:
mov dword ptr [ebp-56], -1
.L_018A:
cmp dword ptr [ebp-56], 0
jne .L_0181
jmp .L_015C
.L_0181:
.L_0171:
inc dword ptr [ebp-28]
.L_0170:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .L_0173
.L_0172:
mov dword ptr [ebp-4], -1
.L_015C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _STRUNQUOTE@4
_STRUNQUOTE@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_019C:
push dword ptr [ebp+8]
call _STRISQUOTED@4
test eax, eax
je .L_019F
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
add eax, -2
push eax
push 2
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_019D
.L_019F:
.L_019E:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_019D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
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
.balign 16
_HFINDEXTBEGIN@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00D2:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D4
.L_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx]
mov byte ptr [ebp-12], al
movzx eax, byte ptr [ebp-12]
cmp eax, 46
jne .L_00DA
.L_00DB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00D3
jmp .L_00D8
.L_00DA:
movzx eax, byte ptr [ebp-12]
cmp eax, 92
je .L_00DF
.L_00E0:
movzx eax, byte ptr [ebp-12]
cmp eax, 47
jne .L_00DC
.L_00DF:
jmp .L_00D6
.L_00DC:
.L_00D8:
.L_00D5:
dec dword ptr [ebp-8]
.L_00D4:
cmp dword ptr [ebp-8], 0
jge .L_00D7
.L_00D6:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
.L_00D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_STRISQUOTED@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0196:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .L_0199
mov dword ptr [ebp-4], 0
jmp .L_0197
.L_0199:
.L_0198:
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
.L_0197:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0006:	.ascii	"0\0"
.balign 4
_Lt_0007:	.ascii	".\0"
.balign 4
_Lt_0008:	.ascii	"1.\0"
.balign 4
_Lt_001A:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0089:	.ascii	"0x\0"
.balign 4
_Lt_008F:	.ascii	"-0x\0"
.balign 4
_Lt_0096:	.ascii	"0.\0"
.balign 4
_Lt_0099:	.ascii	"p\0"
.balign 4
_Lt_009A:	.ascii	"+\0"
.balign 4
_Lt_009B:	.ascii	"-\0"
.balign 4
_Lt_00B6:	.ascii	"src/compiler/hlp.bas\0"
.balign 4
_Lt_00DE:	.ascii	"/\0"
