	.intel_syntax noprefix

.section .text
.balign 16

.globl PPPRAGMAINIT
PPPRAGMAINIT:
.type PPPRAGMAINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_006C:
mov dword ptr [ebp-4], 0
.L_0071:
mov eax, dword ptr [ebp-4]
imul eax, 68
mov dword ptr [PRAGMASTK+eax], 0
.L_006F:
inc dword ptr [ebp-4]
.L_006E:
cmp dword ptr [ebp-4], 3
jle .L_0071
.L_0070:
.L_006D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PPPRAGMAINIT, .-PPPRAGMAINIT
.cfi_endproc
.balign 16

.globl PPPRAGMAEND
PPPRAGMAEND:
.type PPPRAGMAEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0072:
.L_0073:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PPPRAGMAEND, .-PPPRAGMAEND
.cfi_endproc
.balign 16

.globl PPPRAGMA
PPPRAGMA:
.type PPPRAGMA, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 96
push ebx
push esi
.L_00B5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
push 5
push offset Lt_00B7
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00B9
mov dword ptr [ebp-24], -1
jmp .L_00B8
.L_00B9:
push 4
push offset Lt_00BB
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BA
mov dword ptr [ebp-20], -1
.L_00BA:
.L_00B8:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .L_00BD
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_00BF
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_00BE
.L_00BF:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00BE:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00BD:
.L_00BC:
mov dword ptr [ebp-36], 0
.L_00C3:
push 16
mov eax, dword ptr [ebp-36]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00C5
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
jmp .L_00C2
.L_00C5:
.L_00C4:
.L_00C1:
inc dword ptr [ebp-36]
.L_00C0:
cmp dword ptr [ebp-36], 3
jle .L_00C3
.L_00C2:
cmp dword ptr [ebp-16], -1
jne .L_00C7
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .L_00C9
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00C8
.L_00C9:
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
.L_00C8:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00B6
.L_00C7:
.L_00C6:
mov eax, dword ptr [ebp-20]
or eax, dword ptr [ebp-24]
je .L_00CB
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 1
test ebx, ebx
jne .L_00CD
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .L_00CF
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00CE
.L_00CF:
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
.L_00CE:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_00B6
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-20], 0
je .L_00D1
sub esp, 8
lea ebx, [ebp-32]
push ebx
push dword ptr [ebp-16]
call PRAGMAPOP
add esp, 16
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .L_00D3
cmp dword ptr [ENV+860], 0
jle .L_00D5
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00D7
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push 13
push offset Lt_00D6
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
jmp .L_00D0
.L_00D1:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-24], 0
je .L_00DC
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .L_00DE
sub esp, 4
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+16]
and eax, dword ptr [ENV+200]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-16]
call PRAGMAPUSH
add esp, 16
jmp .L_00DD
.L_00DE:
sub esp, 4
sub esp, 8
mov ecx, dword ptr [ebp-16]
imul ecx, 24
push dword ptr [PRAGMAOPT+ecx+16]
call FBGETOPTION
add esp, 12
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
push dword ptr [ebp-16]
call PRAGMAPUSH
add esp, 16
.L_00DD:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .L_00E0
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_00DF
.L_00E0:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.L_00DF:
jmp .L_00DB
.L_00DC:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 299
jne .L_00E2
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 2
test ebx, ebx
jne .L_00E4
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_00B6
.L_00E4:
.L_00E3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_00E1
.L_00E2:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.L_00E1:
.L_00DB:
cmp dword ptr [ebp-28], 0
jne .L_00E6
cmp dword ptr [ebp-32], 0
jne .L_00E6
.L_010C:
sub esp, 8
push 8
sub esp, 4
call CEXPRESSION
add esp, 4
push eax
call CCONSTINTEXPR
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
mov eax, dword ptr [ebp-16]
imul eax, 24
mov edx, dword ptr [PRAGMAOPT+eax+20]
and edx, 16
test edx, edx
je .L_00E8
cmp dword ptr [ebp-28], 0
mov edx, -1
jne .L_010D
cmp dword ptr [ebp-32], 0
jne .L_010D
.L_010E:
xor edx, edx
.L_010D:
mov ebx, edx
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], eax
.L_00E8:
.L_00E7:
.L_00E6:
.L_00E5:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .L_00EA
cmp dword ptr [ENV+860], 0
jle .L_00EC
cmp dword ptr [ebp-24], 0
je .L_00EE
sub esp, 12
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00D7
push -1
sub esp, 4
push -1
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_00F0
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push 14
push offset Lt_00EF
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00ED
.L_00EE:
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_00F7
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push 9
push offset Lt_00F6
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_00ED:
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
.L_00D0:
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 4
test ebx, ebx
je .L_00FD
cmp dword ptr [ebp-16], 1
jne .L_00FF
.L_0100:
call FBPRAGMAONCE
jmp .L_00FE
.L_00FF:
cmp dword ptr [ebp-16], 3
jne .L_0101
.L_0102:
call PRAGMARESERVE
.L_0101:
.L_00FE:
jmp .L_00FC
.L_00FD:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+20]
and eax, 3
test eax, eax
je .L_0104
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .L_0106
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov edx, dword ptr [PRAGMAOPT+ebx+16]
mov eax, edx
sar eax, 31
and edx, dword ptr [ebp-32]
and eax, dword ptr [ebp-28]
sub esp, 12
push 27
mov ebx, edx
mov esi, eax
call FBGETOPTION
add esp, 16
mov edx, dword ptr [ebp-16]
imul edx, 24
mov ecx, dword ptr [PRAGMAOPT+edx+16]
not ecx
and eax, ecx
mov edx, eax
mov ecx, edx
sar ecx, 31
or ebx, edx
or esi, ecx
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], esi
sub esp, 8
mov ebx, dword ptr [ebp-32]
push ebx
push 27
call FBSETOPTION
add esp, 16
jmp .L_0105
.L_0106:
sub esp, 8
mov ebx, dword ptr [ebp-32]
push ebx
mov ebx, dword ptr [ebp-16]
imul ebx, 24
push dword ptr [PRAGMAOPT+ebx+16]
call FBCHANGEOPTION
add esp, 16
.L_0105:
.L_0104:
.L_0103:
.L_00FC:
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .L_0108
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_010A
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0109
.L_010A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0109:
.L_0108:
.L_0107:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_00B6:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PPPRAGMA, .-PPPRAGMA
.cfi_endproc
.balign 16
fb_ctor__ppzpragma:
.type fb_ctor__ppzpragma, @function
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
.size fb_ctor__ppzpragma, .-fb_ctor__ppzpragma
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
PRAGMAPUSH:
.type PRAGMAPUSH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0074:
mov eax, dword ptr [ebp+8]
imul eax, 68
lea ebx, [PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 8
jl .L_0078
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
jmp .L_0075
.L_0078:
.L_0077:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+4], ecx
mov dword ptr [ebx+8], eax
mov ecx, dword ptr [ebp-4]
inc dword ptr [ecx]
.L_0075:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PRAGMAPUSH, .-PRAGMAPUSH
.cfi_endproc
.balign 16
PRAGMAPOP:
.type PRAGMAPOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_0079:
mov eax, dword ptr [ebp+8]
imul eax, 68
lea ebx, [PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 0
jg .L_007D
sub esp, 4
push 0
push 0
push 101
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
jmp .L_007A
.L_007D:
.L_007C:
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebx+4]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], esi
mov dword ptr [eax+4], ecx
.L_007A:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PRAGMAPOP, .-PRAGMAPOP
.cfi_endproc
.balign 16
PRAGMARESERVE:
.type PRAGMARESERVE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_007E:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ENV+860], 0
jle .L_0081
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 16
push offset Lt_0082
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0081:
.L_0080:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0085
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ENV+860], 0
jle .L_0087
call LEXPPONLYEMITTOKEN
.L_0087:
.L_0086:
.L_0088:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 344
je .L_008E
.L_008F:
cmp dword ptr [ebp-28], 306
jne .L_008D
.L_008E:
cmp dword ptr [PARSER+100], 0
jbe .L_0091
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_0093
sub esp, 12
push 0
push 1
push 0
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push 61
call ERRREPORTEX
add esp, 32
jmp .L_0092
.L_0093:
sub esp, 12
push 0
push 1
push 0
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push 96
call ERRREPORTEX
add esp, 32
.L_0092:
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_007F
.L_0091:
.L_0090:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 344
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
sub esp, 12
push 0
mov ebx, eax
call LEXGETTOKEN
add esp, 16
cmp eax, 306
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-24]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
or ebx, eax
je .L_0095
sub esp, 12
push 0
push 1
push 0
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push 17
call ERRREPORTEX
add esp, 32
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_007F
.L_0095:
.L_0094:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 344
jne .L_0098
.L_0099:
mov dword ptr [ebp-20], -1
jmp .L_0096
.L_0098:
cmp dword ptr [ebp-32], 306
jne .L_009A
.L_009B:
mov dword ptr [ebp-24], -1
.L_009A:
.L_0096:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_008B
.L_008D:
cmp dword ptr [ebp-28], 44
jne .L_009C
.L_009D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_008B
.L_009C:
jmp .L_0089
.L_009E:
.L_008B:
cmp dword ptr [ENV+860], 0
jle .L_00A0
call LEXPPONLYEMITTOKEN
.L_00A0:
.L_009F:
.L_008A:
jmp .L_0088
.L_0089:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00A2
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00A1
.L_00A2:
cmp dword ptr [ENV+860], 0
jle .L_00A4
call LEXPPONLYEMITTOKEN
.L_00A4:
.L_00A3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00A1:
.L_0085:
.L_0084:
sub esp, 8
push 0
lea eax, [ebp-8]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-4], eax
call LEXGETTEXT
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-16]
call HISVALIDSYMBOLNAME
add esp, 16
test eax, eax
jne .L_00A6
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_007F
.L_00A6:
.L_00A5:
cmp dword ptr [ENV+860], 0
jle .L_00A8
call LEXPPONLYEMITTOKEN
.L_00A8:
.L_00A7:
cmp dword ptr [ebp-20], -1
jne .L_00AA
sub esp, 12
push dword ptr [ebp-16]
call PARSERINLINEASMADDKEYWORD
add esp, 16
test eax, eax
jne .L_00AC
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp-16]
push 4
call ERRREPORTEX
add esp, 32
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_007F
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
cmp dword ptr [ebp-24], -1
jne .L_00AE
sub esp, 12
push dword ptr [ebp-16]
call PARSERGLOBALASMADDKEYWORD
add esp, 16
test eax, eax
jne .L_00B0
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp-16]
push 4
call ERRREPORTEX
add esp, 32
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_007F
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp-20]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-24]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00B2
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_007F
.L_00B2:
.L_00B1:
sub esp, 4
push 0
push 128
push 0
push -2147483648
push 0
push dword ptr [ebp-16]
push 16
push dword ptr [SYMB+98532]
push dword ptr [SYMB+98536]
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00B4
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp-16]
push 4
call ERRREPORTEX
add esp, 32
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_007F
.L_00B4:
.L_00B3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_007F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PRAGMARESERVE, .-PRAGMARESERVE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	PRAGMASTK,272

.section .data
.balign 4
PRAGMAOPT:
.ascii "msbitfields\0"
.skip 4,0
.int 34
.int 11
.ascii "once\0"
.skip 11,0
.int 0
.int 4
.ascii "constness\0"
.skip 6,0
.int 128
.int 27
.ascii "reserve\0"
.skip 8,0
.int 0
.int 4

.section .rodata
.balign 4
Lt_0082:	.ascii	"#pragma reserve\0"
.balign 4
Lt_00B7:	.ascii	"push\0"
.balign 4
Lt_00BB:	.ascii	"pop\0"
.balign 4
Lt_00D6:	.ascii	"#pragma pop(\0"
.balign 4
Lt_00D7:	.ascii	")\0"
.balign 4
Lt_00EF:	.ascii	"#pragma push(\0"
.balign 4
Lt_00F0:	.ascii	", \0"
.balign 4
Lt_00F6:	.ascii	"#pragma \0"
.balign 4
Lt_00F7:	.ascii	" = \0"

.section .ctors, "aw", @progbits
.int fb_ctor__ppzpragma
