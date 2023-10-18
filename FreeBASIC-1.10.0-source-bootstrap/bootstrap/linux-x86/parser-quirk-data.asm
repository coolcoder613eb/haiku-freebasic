	.intel_syntax noprefix

.section .text
.balign 16

.globl CDATASTMT
CDATASTMT:
.type CDATASTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 445
jne .L_006A
.L_006B:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_006F
.L_0070:
cmp dword ptr [ebp-12], 2
je .L_006F
.L_0071:
cmp dword ptr [ebp-12], 3
jne .L_006E
.L_006F:
sub esp, 8
push 34
lea eax, [ebp-20]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push 7
push dword ptr [ebp-16]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0073
sub esp, 8
push 72
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0075
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0068
.L_0075:
.L_0074:
.L_0073:
.L_0072:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_006E:
.L_006C:
sub esp, 8
push 0
push dword ptr [ebp-8]
call RTLDATARESTORE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0069
.L_006A:
cmp dword ptr [ebp+8], 446
jne .L_0076
.L_0077:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
.L_0078:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007C
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_007B
.L_007C:
sub esp, 12
push dword ptr [ebp-8]
call RTLDATAREAD
add esp, 16
test eax, eax
jne .L_007E
jmp .L_0068
.L_007E:
.L_007D:
.L_007B:
.L_007A:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_0078
.L_0079:
mov dword ptr [ebp-4], -1
jmp .L_0069
.L_0076:
cmp dword ptr [ebp+8], 447
jne .L_007F
.L_0080:
cmp dword ptr [ENV+136], 3
je .L_0082
sub esp, 12
push 32
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0084
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0068
.L_0084:
.L_0083:
cmp dword ptr [PARSER+100], 0
jbe .L_0086
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_0088
sub esp, 4
push 0
push 0
push 61
call ERRREPORT
add esp, 16
jmp .L_0087
.L_0088:
sub esp, 4
push 0
push 0
push 96
call ERRREPORT
add esp, 16
.L_0087:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_0086:
.L_0085:
jmp .L_0081
.L_0082:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_008A
sub esp, 4
push 0
push 0
push 61
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_008A:
.L_0089:
.L_0081:
call ASTDATASTMTBEGIN
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ENV+136], 3
je .L_008C
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_008D:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0091
jmp .L_0068
.L_0091:
.L_0090:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_0093
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 23
jne .L_0095
mov dword ptr [ebp-16], -1
jmp .L_0094
.L_0095:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 4
je .L_0099
.L_009A:
cmp dword ptr [ebp-20], 7
jne .L_0098
.L_0099:
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_0098:
.L_0096:
.L_0094:
.L_0093:
.L_0092:
cmp dword ptr [ebp-16], 0
jne .L_009C
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
jmp .L_009B
.L_009C:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTDATASTMTSTORE
add esp, 16
test eax, eax
jne .L_009E
jmp .L_0068
.L_009E:
.L_009D:
.L_009B:
.L_008F:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_008D
.L_008E:
jmp .L_008B
.L_008C:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.L_009F:
mov dword ptr [ebp-32], 0
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.L_00A2:
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_00A6
.L_00A8:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .L_00A3
jmp .L_00A5
.L_00A9:
dec dword ptr [ebp-32]
jmp .L_00A5
.L_00AA:
mov dword ptr [ebp-16], -1
jmp .L_00A3
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp-48]
add eax, 4294967287
cmp eax, 251
ja .L_00A5
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_00AB+eax*4-36]
.L_00AB:
.int .L_00A9
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A9
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A8
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00A5
.int .L_00AA
.int .L_00AA
.int .L_00AA
.int .L_00AA
.int .L_00AA
.L_00A5:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
call LEXGETTEXT
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [ebp-32]
.L_00A4:
jmp .L_00A2
.L_00A3:
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-28]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-32], 1
jne .L_00AE
sub esp, 8
push -1
lea eax, [ebp-28]
push eax
call fb_StrLen
add esp, 16
cmp eax, 1
jle .L_00B0
mov eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 34
jne .L_00B3
sub esp, 8
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrLen
add esp, 16
mov ebx, dword ptr [ebp-28]
add ebx, eax
movzx eax, byte ptr [ebx-1]
cmp eax, 34
jne .L_00B5
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-28]
push eax
call fb_StrLen
add esp, 12
add eax, -2
push eax
push 2
lea eax, [ebp-28]
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.L_00B5:
.L_00B4:
.L_00B3:
.L_00B2:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
sub esp, 8
sub esp, 4
push dword ptr [ebp-28]
call ASTNEWCONSTSTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTDATASTMTSTORE
add esp, 16
test eax, eax
jne .L_00B7
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0068
.L_00B7:
.L_00B6:
.L_00A1:
cmp dword ptr [ebp-16], 0
je .L_009F
.L_00A0:
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_008B:
sub esp, 12
push dword ptr [ebp-8]
call ASTDATASTMTEND
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov dword ptr [ebp-4], -1
.L_007F:
.L_0069:
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CDATASTMT, .-CDATASTMT
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

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
