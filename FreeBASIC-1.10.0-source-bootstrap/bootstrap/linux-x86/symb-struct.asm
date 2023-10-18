	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBSTRUCTBEGIN
SYMBSTRUCTBEGIN:
.type SYMBSTRUCTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
jne .L_0069
cmp dword ptr [PARSER+104], 0
je .L_006B
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp+24], eax
.L_006B:
.L_006A:
.L_0069:
.L_0068:
sub esp, 4
push 0
push dword ptr [ebp+40]
push 0
push 20
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 10
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp+44]
or eax, 32
push eax
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
jmp .L_0067
.L_006D:
.L_006C:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+116], 0
cmp dword ptr [ebp+28], 0
je .L_006F
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 1
.L_006F:
.L_006E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
cmp dword ptr [ebp+16], 0
jne .L_0071
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
sub esp, 4
push 0
push 16
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call HASHINIT
add esp, 16
jmp .L_0072
.L_0073:
sub esp, 4
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call memset
add esp, 16
.L_0072:
jmp .L_0070
.L_0071:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+100], ebx
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+116], 2
.L_0070:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
cmp dword ptr [ENV+136], 3
jne .L_0075
cmp dword ptr [ebp+32], 0
jne .L_0077
cmp dword ptr [ENV+108], 11
je .L_0079
mov dword ptr [ebp+32], 1
.L_0079:
.L_0078:
.L_0077:
.L_0076:
.L_0075:
.L_0074:
mov bl, byte ptr [ebp+32]
mov eax, dword ptr [ebp-8]
mov byte ptr [eax+121], bl
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+104], 1
mov ebx, dword ptr [ebp-8]
mov byte ptr [ebx+120], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+108], 0
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+124], -2147483648
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+132], -1
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+136], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
cmp dword ptr [ebp+36], 0
je .L_007B
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+12], 262144
sub esp, 8
push 0
push dword ptr [ebp-8]
call SYMBNESTBEGIN
add esp, 16
.L_007B:
.L_007A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSTRUCTBEGIN, .-SYMBSTRUCTBEGIN
.cfi_endproc
.balign 16

.globl SYMBSTRUCTADDBASE
SYMBSTRUCTADDBASE:
.type SYMBSTRUCTADDBASE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_007C:
sub esp, 8
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 20
push offset Lt_0082
push 0
push offset Lt_007F
push dword ptr [ebp+8]
call SYMBADDFIELD
add esp, 48
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+96], eax
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call SYMBNAMESPACEIMPORTEX
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .L_0081
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 4194304
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+136]
mov ebx, dword ptr [eax+144]
mov dword ptr [ecx+144], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ecx+156]
mov dword ptr [eax+156], ebx
.L_0081:
.L_0080:
.L_007D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSTRUCTADDBASE, .-SYMBSTRUCTADDBASE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0083,16

.section .data
.balign 4
Lt_0082:
.int Lt_0083
.int Lt_0083
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl TYPECALCNATURALALIGN
TYPECALCNATURALALIGN:
.type TYPECALCNATURALALIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0084:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0086
mov dword ptr [ebp-12], 24
jmp .L_0095
.L_0086:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0095:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_0089
.L_008B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-8], ebx
jmp .L_0088
.L_008C:
mov ebx, dword ptr [ENV+296]
mov dword ptr [ebp-8], ebx
jmp .L_0088
.L_008D:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_008E
mov dword ptr [ebp-20], 24
jmp .L_0096
.L_008E:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0096:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
jmp .L_0088
.L_0089:
mov eax, dword ptr [ebp-16]
add eax, 4294967279
cmp eax, 3
ja .L_008D
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0090+eax*4-68]
.L_0090:
.int .L_008C
.int .L_008D
.int .L_008D
.int .L_008B
.L_0088:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+108]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0092
cmp dword ptr [ebp-8], 8
jne .L_0094
mov dword ptr [ebp-8], 4
.L_0094:
.L_0093:
.L_0092:
.L_0091:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size TYPECALCNATURALALIGN, .-TYPECALCNATURALALIGN
.cfi_endproc
.balign 16

.globl SYMBCHECKBITFIELD
SYMBCHECKBITFIELD:
.type SYMBCHECKBITFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_00A3:
mov eax, dword ptr [ebp+24]
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
mov ebx, ecx
sar ebx, 31
mov edi, dword ptr [ebp+16]
mov esi, dword ptr [ebp+20]
shld esi, edi, 3
shl edi, 3
cmp ebx, esi
mov edx, -1
jg .L_00B2
jl .L_00B3
cmp ecx, edi
ja .L_00B2
.L_00B3:
xor edx, edx
.L_00B2:
or eax, edx
je .L_00A6
mov dword ptr [ebp-4], 0
jmp .L_00A4
.L_00A6:
.L_00A5:
mov edx, dword ptr [ebp+12]
and edx, 480
je .L_00A7
mov dword ptr [ebp-8], 24
jmp .L_00B0
.L_00A7:
mov edx, dword ptr [ebp+12]
and edx, 31
mov dword ptr [ebp-8], edx
.L_00B0:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-12], edx
jmp .L_00AA
.L_00AC:
mov dword ptr [ebp-4], -1
jmp .L_00A4
jmp .L_00A9
.L_00AD:
call FBIS64BIT
mov dword ptr [ebp-4], eax
jmp .L_00A9
.L_00AE:
mov dword ptr [ebp-4], 0
jmp .L_00A4
jmp .L_00A9
.L_00AA:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 13
ja .L_00AE
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00AF+eax*4-4]
.L_00AF:
.int .L_00AC
.int .L_00AC
.int .L_00AC
.int .L_00AE
.int .L_00AC
.int .L_00AC
.int .L_00AE
.int .L_00AC
.int .L_00AC
.int .L_00AE
.int .L_00AC
.int .L_00AC
.int .L_00AD
.int .L_00AD
.L_00A9:
.L_00A4:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCHECKBITFIELD, .-SYMBCHECKBITFIELD
.cfi_endproc
.balign 16

.globl SYMBADDFIELD
SYMBADDFIELD:
.type SYMBADDFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 112
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00B4:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp+36], 0
jg .L_00B7
jl .L_010A
cmp dword ptr [ebp+32], 0
ja .L_00B7
.L_010A:
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], edx
.L_00B7:
.L_00B6:
mov eax, dword ptr [ebp+44]
and eax, 4
je .L_00B9
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-72]
mov dword ptr [ebp-108], eax
lea eax, [ebp-72]
mov dword ptr [ebp-104], eax
mov dword ptr [ebp-100], 16
mov dword ptr [ebp-96], 16
mov dword ptr [ebp-92], 1
mov dword ptr [ebp-88], 49
mov dword ptr [ebp-84], 1
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
sub esp, 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
push 8192
push 0
push 0
push 0
push dword ptr [ebp-24]
push 20
lea eax, [ebp-108]
push eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDFIELD
add esp, 48
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+48]
mov edx, dword ptr [eax+52]
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], 0
jmp .L_00B8
.L_00B9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov edx, dword ptr [ebx+52]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], -1
.L_00B8:
cmp dword ptr [ebp+40], 0
jle .L_00BC
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 32768
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+120]
test edx, edx
jle .L_00BE
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+64]
mov dword ptr [ebp-12], eax
.L_00BF:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
je .L_00C0
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+168]
mov dword ptr [ebp-12], edx
jmp .L_00BF
.L_00C0:
mov edx, dword ptr [ebp+8]
movzx eax, byte ptr [edx+120]
add eax, dword ptr [ebp+40]
mov ebx, eax
mov edx, ebx
sar edx, 31
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
shld ecx, esi, 3
shl esi, 3
cmp edx, ecx
jl .L_00C2
jg .L_010B
cmp ebx, esi
jbe .L_00C2
.L_010B:
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+120], 0
jmp .L_00C1
.L_00C2:
mov esi, dword ptr [ebp-12]
mov ebx, dword ptr [esi+40]
mov ecx, dword ptr [esi+44]
cmp dword ptr [ebp+36], ecx
jne .L_010C
cmp dword ptr [ebp+32], ebx
je .L_00C4
.L_010C:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+28]
and ecx, 511
mov dword ptr [ebp+24], ecx
mov ecx, dword ptr [ebp-12]
mov esi, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [ebp+32], esi
mov dword ptr [ebp+36], ebx
.L_00C4:
.L_00C3:
mov esi, dword ptr [ebp-12]
mov ecx, dword ptr [esi+48]
mov ebx, dword ptr [esi+52]
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-32], 0
.L_00C1:
.L_00BE:
.L_00BD:
jmp .L_00BB
.L_00BC:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+120], 0
.L_00BB:
cmp dword ptr [ebp-32], 0
je .L_00C6
sub esp, 12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
movzx ebx, byte ptr [ecx+121]
push ebx
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call HCALCPADDING
add esp, 32
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .L_00C8
cmp dword ptr [ebp+40], 0
jle .L_00CA
cmp dword ptr [ENV+228], 0
jne .L_00CC
mov eax, dword ptr [ebp-28]
sal eax, 3
cmp dword ptr [ebp+40], eax
jg .L_00CE
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp+32], ebx
mov dword ptr [ebp+36], eax
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+36], 0
jne .L_00D0
cmp dword ptr [ebp+32], 1
jne .L_00D0
.L_010D:
.L_00D1:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .L_00D2
mov dword ptr [ebp-60], 24
jmp .L_0108
.L_00D2:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_0108:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_00D5
mov dword ptr [ebp+24], 2
jmp .L_00D4
.L_00D5:
mov dword ptr [ebp+24], 3
.L_00D4:
jmp .L_00CF
.L_00D0:
cmp dword ptr [ebp+36], 0
jne .L_00D6
cmp dword ptr [ebp+32], 2
jne .L_00D6
.L_010E:
.L_00D7:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .L_00D8
mov dword ptr [ebp-60], 24
jmp .L_0109
.L_00D8:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_0109:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_00DB
mov dword ptr [ebp+24], 5
jmp .L_00DA
.L_00DB:
mov dword ptr [ebp+24], 6
.L_00DA:
.L_00D6:
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
sub esp, 12
push dword ptr [ebp-28]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call HCHECKUDTSIZE
add esp, 32
test eax, eax
je .L_00DD
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-48], ebx
adc dword ptr [ebp-44], eax
jmp .L_00DC
.L_00DD:
mov dword ptr [ebp-32], 0
.L_00DC:
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPECALCNATURALALIGN
add esp, 16
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [ebp-36], ebx
jle .L_00DF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebx+104], eax
.L_00DF:
.L_00DE:
.L_00C6:
.L_00C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_00E0:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .L_00E1
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-16], eax
jmp .L_00E0
.L_00E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
or dword ptr [ebp+44], ebx
mov dword ptr [ebp-40], 0
mov ebx, dword ptr [ebp+44]
and ebx, 8192
test ebx, ebx
jne .L_00E3
mov dword ptr [ebp-40], 32
.L_00E3:
.L_00E2:
sub esp, 4
push 0
push dword ptr [ebp+44]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+12]
push 12
mov ebx, dword ptr [ebp-16]
lea eax, [ebx+68]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
push 0
push dword ptr [ebp-40]
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E5
jmp .L_00B5
.L_00E5:
.L_00E4:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+32]
mov ebx, dword ptr [ebp+36]
mov dword ptr [eax+40], ecx
mov dword ptr [eax+44], ebx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [ebp-44]
mov dword ptr [ecx+48], eax
mov dword ptr [ecx+52], ebx
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARINITFIELDS
add esp, 16
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call SYMBVARINITARRAYDIMENSIONS
add esp, 16
cmp dword ptr [ebp-20], 0
je .L_00E7
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+84], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+88], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+92], eax
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call ASTBUILDARRAYDESCINITREE
add esp, 16
mov ecx, dword ptr [ebp-20]
mov dword ptr [ecx+56], eax
.L_00E7:
.L_00E6:
mov eax, dword ptr [ebp+8]
movzx ecx, byte ptr [eax+120]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+108], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+112], eax
mov eax, dword ptr [ebp+44]
and eax, 4
je .L_00E9
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .L_00EB
sub esp, 4
push 0
push 0
push 162
call ERRREPORT
add esp, 16
jmp .L_00EA
.L_00EB:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 8
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 16
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 4
.L_00EA:
jmp .L_00E8
.L_00E9:
mov ecx, dword ptr [ebp+24]
and ecx, 511
mov dword ptr [ebp-60], ecx
cmp dword ptr [ebp-60], 17
jne .L_00EE
.L_00EF:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+116]
and eax, 3
test eax, eax
je .L_00F1
sub esp, 4
push 0
push 0
push 161
call ERRREPORT
add esp, 16
jmp .L_00F0
.L_00F1:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 8
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 16
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 4
.L_00F0:
jmp .L_00EC
.L_00EE:
cmp dword ptr [ebp-60], 20
jne .L_00F2
.L_00F3:
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [eax+116]
and ecx, 4
test ecx, ecx
je .L_00F5
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+116], 4
.L_00F5:
.L_00F4:
sub esp, 12
push dword ptr [ebp+28]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .L_00F7
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .L_00F9
sub esp, 4
push 0
push 0
push 163
call ERRREPORT
add esp, 16
jmp .L_00F8
.L_00F9:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 8
.L_00F8:
.L_00F7:
.L_00F6:
sub esp, 12
push dword ptr [ebp+28]
call SYMBGETCOMPDTOR1
add esp, 16
test eax, eax
je .L_00FB
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .L_00FD
sub esp, 4
push 0
push 0
push 164
call ERRREPORT
add esp, 16
jmp .L_00FC
.L_00FD:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 16
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F2:
.L_00EC:
.L_00E8:
mov ecx, dword ptr [ebp+24]
and ecx, 480
test ecx, ecx
je .L_00FF
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+116], 4
.L_00FF:
.L_00FE:
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETREALSIZE
add esp, 16
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+116]
and edx, 1
test edx, edx
je .L_0101
mov edx, dword ptr [ebp-8]
or dword ptr [edx+12], 16777216
cmp dword ptr [ebp-32], 0
je .L_0103
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
cmp dword ptr [edx+44], eax
jg .L_0105
jl .L_010F
cmp dword ptr [edx+40], ecx
jae .L_0105
.L_010F:
mov ecx, dword ptr [ebp+8]
mov edx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], edx
mov dword ptr [ecx+44], eax
.L_0105:
.L_0104:
.L_0103:
.L_0102:
jmp .L_0100
.L_0101:
cmp dword ptr [ebp-32], 0
je .L_0107
mov eax, dword ptr [ebp-56]
mov edx, dword ptr [ebp-52]
add dword ptr [ebp-48], eax
adc dword ptr [ebp-44], edx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-48]
mov edx, dword ptr [ebp-44]
mov dword ptr [eax+48], ecx
mov dword ptr [eax+52], edx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-48]
mov edx, dword ptr [ebp-44]
mov dword ptr [ecx+40], eax
mov dword ptr [ecx+44], edx
.L_0107:
.L_0106:
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+120]
add edx, dword ptr [ebp+40]
mov al, dl
mov edx, dword ptr [ebp+8]
mov byte ptr [edx+120], al
.L_0100:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+8]
mov dword ptr [eax+164], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_00B5:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDFIELD, .-SYMBADDFIELD
.cfi_endproc
.balign 16

.globl SYMBINSERTINNERUDT
SYMBINSERTINNERUDT:
.type SYMBINSERTINNERUDT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_0110:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
jne .L_0113
sub esp, 12
push dword ptr [ebp+12]
push 20
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+121]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call HCALCPADDING
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-12]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call HCHECKUDTSIZE
add esp, 32
test eax, eax
je .L_0115
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov ebx, ecx
sar ebx, 31
add dword ptr [eax+48], ecx
adc dword ptr [eax+52], ebx
.L_0115:
.L_0114:
.L_0113:
.L_0112:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0117
jmp .L_0111
.L_0117:
.L_0116:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx+168], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .L_0119
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+60], ecx
jmp .L_0118
.L_0119:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+172], ecx
.L_0118:
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+56]
mov dword ptr [ebp-8], eax
.L_011A:
cmp dword ptr [ebp-4], 0
je .L_011B
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax+160], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+116]
and eax, 1
test eax, eax
je .L_011D
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 16777216
jmp .L_011C
.L_011D:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+48]
mov ebx, dword ptr [ecx+52]
add dword ptr [eax+48], esi
adc dword ptr [eax+52], ebx
.L_011C:
mov esi, dword ptr [ebp-4]
mov ebx, dword ptr [esi+172]
mov dword ptr [ebp-4], ebx
jmp .L_011A
.L_011B:
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [esi+64], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+116]
and esi, 1
test esi, esi
jne .L_011F
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [esi+48], ecx
adc dword ptr [esi+52], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+48]
mov esi, dword ptr [ecx+52]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], esi
jmp .L_011E
.L_011F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+48], 0
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [eax+44], ebx
jl .L_0121
jg .L_0126
cmp dword ptr [eax+40], ecx
jbe .L_0121
.L_0126:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+40]
mov eax, dword ptr [ecx+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], eax
.L_0121:
.L_0120:
.L_011E:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [esi+104], ebx
jle .L_0123
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+104]
mov dword ptr [esi+104], eax
.L_0123:
.L_0122:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+120], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+164], esi
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [esi+116]
and eax, 32768
test eax, eax
je .L_0125
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 32768
.L_0125:
.L_0124:
.L_0111:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBINSERTINNERUDT, .-SYMBINSERTINNERUDT
.cfi_endproc
.balign 16

.globl HGETMAGICSTRUCTNUMBER
HGETMAGICSTRUCTNUMBER:
.type HGETMAGICSTRUCTNUMBER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_013B:
mov dword ptr [ebp-8], 2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 1
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
call STRUCT_ANALYZE
add esp, 16
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_013C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETMAGICSTRUCTNUMBER, .-HGETMAGICSTRUCTNUMBER
.cfi_endproc
.balign 16

.globl SYMBSTRUCTEND
SYMBSTRUCTEND:
.type SYMBSTRUCTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
.L_0186:
cmp dword ptr [ebp+12], 0
je .L_0189
sub esp, 12
push 0
call SYMBNESTEND
add esp, 16
.L_0189:
.L_0188:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+108], esi
mov dword ptr [ebx+112], ecx
sub esp, 12
push dword ptr [ebp+8]
push 20
mov esi, dword ptr [ebp+8]
movzx ecx, byte ptr [esi+121]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call HCALCPADDING
add esp, 32
mov dword ptr [ebp-28], eax
sub esp, 12
push dword ptr [ebp-28]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call HCHECKUDTSIZE
add esp, 32
test eax, eax
je .L_018B
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-28]
mov ecx, esi
sar ecx, 31
add dword ptr [eax+40], esi
adc dword ptr [eax+44], ecx
.L_018B:
.L_018A:
mov dword ptr [ebp-32], 3
cmp dword ptr [PARSER+104], 4
jne .L_018D
cmp dword ptr [ENV+108], 0
jne .L_018F
call FBIS64BIT
test eax, eax
jne .L_0191
cmp dword ptr [ENV+212], 0
jne .L_0193
mov dword ptr [ebp-32], 5
.L_0193:
.L_0192:
.L_0191:
.L_0190:
.L_018F:
.L_018E:
.L_018D:
.L_018C:
sub esp, 4
push dword ptr [ebp-32]
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call SYMBUDTDECLAREDEFAULTMEMBERS
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 0
sub esp, 12
push dword ptr [ebp+8]
call HGETRETURNTYPE
add esp, 16
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+124], eax
sub esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call SYMBUDTIMPLEMENTDEFAULTMEMBERS
add esp, 16
cmp dword ptr [SYMB+98684], 0
jle .L_0195
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKFWDREF
add esp, 16
.L_0195:
.L_0194:
.L_0187:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSTRUCTEND, .-SYMBSTRUCTEND
.cfi_endproc
.balign 16

.globl SYMBDELSTRUCT
SYMBDELSTRUCT:
.type SYMBDELSTRUCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0196:
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+8]
call SYMBDELNAMESPACEMEMBERS
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+136], 0
je .L_0199
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+136]
call free
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+136], 0
.L_0199:
.L_0198:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.L_0197:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELSTRUCT, .-SYMBDELSTRUCT
.cfi_endproc
.balign 16

.globl SYMBUDTGETFIRSTFIELD
SYMBUDTGETFIRSTFIELD:
.type SYMBUDTGETFIRSTFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01A1:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HSKIPTOFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.L_01A2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBUDTGETFIRSTFIELD, .-SYMBUDTGETFIRSTFIELD
.cfi_endproc
.balign 16

.globl SYMBUDTGETNEXTFIELD
SYMBUDTGETNEXTFIELD:
.type SYMBUDTGETNEXTFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01A3:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+172]
call HSKIPTOFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.L_01A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBUDTGETNEXTFIELD, .-SYMBUDTGETNEXTFIELD
.cfi_endproc
.balign 16

.globl SYMBUDTGETNEXTINITABLEFIELD
SYMBUDTGETNEXTINITABLEFIELD:
.type SYMBUDTGETNEXTINITABLEFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01AD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_01AF:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_01B3
jmp .L_01B0
.L_01B3:
.L_01B2:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call HFINDCOMMONPARENT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01B5
jmp .L_01B0
.L_01B5:
.L_01B4:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
jne .L_01B7
jmp .L_01B0
.L_01B7:
.L_01B6:
.L_01B1:
jmp .L_01AF
.L_01B0:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_01AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBUDTGETNEXTINITABLEFIELD, .-SYMBUDTGETNEXTINITABLEFIELD
.cfi_endproc
.balign 16

.globl SYMBGETUDTBASELEVEL
SYMBGETUDTBASELEVEL:
.type SYMBGETUDTBASELEVEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01B8:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01BB
mov dword ptr [ebp-4], 0
jmp .L_01B9
.L_01BB:
.L_01BA:
mov dword ptr [ebp-8], 1
.L_01BC:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+96], 0
je .L_01BD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+32], ebx
jne .L_01BF
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01B9
.L_01BF:
.L_01BE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
inc dword ptr [ebp-8]
jmp .L_01BC
.L_01BD:
mov dword ptr [ebp-4], 0
.L_01B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETUDTBASELEVEL, .-SYMBGETUDTBASELEVEL
.cfi_endproc
.balign 16

.globl SYMBCLONESIMPLESTRUCT
SYMBCLONESIMPLESTRUCT:
.type SYMBCLONESIMPLESTRUCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_01C2:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call SYMBUNIQUELABEL
push eax
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-12], eax
.L_01C5:
cmp dword ptr [ebp-12], 0
je .L_01C6
sub esp, 8
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
push offset Lt_01C7
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push dword ptr [ebp-8]
call SYMBADDFIELD
add esp, 48
sub esp, 12
push dword ptr [ebp-12]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_01C5
.L_01C6:
sub esp, 8
push 0
push dword ptr [ebp-8]
call SYMBSTRUCTEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01C3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCLONESIMPLESTRUCT, .-SYMBCLONESIMPLESTRUCT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01C8,16

.section .data
.balign 4
Lt_01C7:
.int Lt_01C8
.int Lt_01C8
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
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
HCALCPADDING:
.type HCALCPADDING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_0099:
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call TYPECALCNATURALALIGN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .L_009C
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
jmp .L_009B
.L_009C:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+16], eax
jle .L_009E
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
.L_009E:
.L_009D:
.L_009B:
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
dec ecx
mov edi, ecx
mov esi, edi
sar esi, 31
and edi, dword ptr [ebp+8]
and esi, dword ptr [ebp+12]
sub ebx, edi
sbb eax, esi
mov edi, dword ptr [ebp+16]
dec edi
mov ecx, edi
mov esi, ecx
sar esi, 31
and ebx, ecx
and eax, esi
mov ecx, ebx
mov dword ptr [ebp-4], ecx
.L_009A:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCALCPADDING, .-HCALCPADDING
.cfi_endproc
.balign 16
HCHECKUDTSIZE:
.type HCHECKUDTSIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_009F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
add dword ptr [ebp-12], eax
adc dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+24]
mov eax, 0
add dword ptr [ebp-12], ebx
adc dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jb .L_00A2
ja .L_01C9
cmp dword ptr [ebp-12], 2147483647
jbe .L_00A2
.L_01C9:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 51
call ERRREPORT
add esp, 16
jmp .L_00A1
.L_00A2:
mov dword ptr [ebp-4], -1
.L_00A1:
.L_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKUDTSIZE, .-HCHECKUDTSIZE
.cfi_endproc
.balign 16
STRUCT_ANALYZE:
.type STRUCT_ANALYZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0127:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp+8], eax
.L_0129:
cmp dword ptr [ebp+8], 0
je .L_012A
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
mov ecx, -1
jg .L_01CD
jl .L_01CE
cmp dword ptr [eax+48], 7
ja .L_01CD
.L_01CE:
xor ecx, ecx
.L_01CD:
and ebx, ecx
je .L_012C
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], 2
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 8
.L_012C:
.L_012B:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .L_012D
mov dword ptr [ebp-8], 24
jmp .L_01CA
.L_012D:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_01CA:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 3
jne .L_0130
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call STRUCT_ANALYZE
add esp, 16
jmp .L_012F
.L_0130:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .L_0132
mov dword ptr [ebp-12], 24
jmp .L_01CB
.L_0132:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_01CB:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 0
jne .L_0131
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx], 1
jne .L_0135
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 1
jmp .L_0134
.L_0135:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 4
.L_0134:
.L_0131:
.L_012F:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_0129
.L_012A:
cmp dword ptr [ebp-4], 8
jle .L_0137
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx]
add ebx, dword ptr [eax]
cmp ebx, 1
jne .L_0139
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 5
jmp .L_0138
.L_0139:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx]
cmp ecx, 2
jne .L_013A
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 10
.L_013A:
.L_0138:
.L_0137:
.L_0136:
.L_0128:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size STRUCT_ANALYZE, .-STRUCT_ANALYZE
.cfi_endproc
.balign 16
HGETRETURNTYPEGAS64SYSTEMV:
.type HGETRETURNTYPEGAS64SYSTEMV, @function
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
.L_013D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [SYMB_DTYPETB+368]
sal ebx, 1
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jg .L_0140
jl .L_01CF
cmp dword ptr [eax+40], esi
ja .L_0140
.L_01CF:
sub esp, 12
push dword ptr [ebp+8]
call HGETMAGICSTRUCTNUMBER
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0142
.L_0144:
mov dword ptr [ebp-4], 13
jmp .L_013E
jmp .L_0141
.L_0145:
mov dword ptr [ebp-4], 16
jmp .L_013E
jmp .L_0141
.L_0146:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 2
mov dword ptr [ebp-4], 20
jmp .L_013E
jmp .L_0141
.L_0147:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 3
mov dword ptr [ebp-4], 20
jmp .L_013E
jmp .L_0141
.L_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 5
mov dword ptr [ebp-4], 20
jmp .L_013E
jmp .L_0141
.L_0149:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 6
mov dword ptr [ebp-4], 20
jmp .L_013E
jmp .L_0141
.L_014A:
mov dword ptr [ebp-4], 20
jmp .L_013E
jmp .L_0141
.L_0142:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 9
ja .L_014A
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_014B+eax*4-4]
.L_014B:
.int .L_0144
.int .L_0145
.int .L_014A
.int .L_014A
.int .L_0146
.int .L_0148
.int .L_014A
.int .L_014A
.int .L_0147
.int .L_0149
.L_0141:
.L_0140:
.L_013F:
mov dword ptr [ebp-4], 52
.L_013E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETRETURNTYPEGAS64SYSTEMV, .-HGETRETURNTYPEGAS64SYSTEMV
.cfi_endproc
.balign 16
HGETRETURNTYPE:
.type HGETRETURNTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_014C:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCOMPISTRIVIAL
add esp, 16
test eax, eax
jne .L_014F
mov dword ptr [ebp-4], 52
jmp .L_014D
.L_014F:
.L_014E:
cmp dword ptr [ENV+104], 1
jne .L_0151
mov dword ptr [ebp-4], 20
jmp .L_014D
.L_0151:
.L_0150:
call FBIS64BIT
test eax, eax
je .L_0153
cmp dword ptr [ENV+104], 3
jne .L_0155
mov eax, dword ptr [ENV+108]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+108]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0157
sub esp, 12
push dword ptr [ebp+8]
call HGETRETURNTYPEGAS64SYSTEMV
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_014D
.L_0157:
.L_0156:
.L_0155:
.L_0154:
.L_0153:
.L_0152:
mov eax, dword ptr [ENV+284]
and eax, 16
test eax, eax
jne .L_0159
mov dword ptr [ebp-4], 52
jmp .L_014D
.L_0159:
.L_0158:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+108]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-24]
mov dword ptr [ebp-16], ecx
mov ebx, dword ptr [ebp-16]
mov ecx, ebx
sar ecx, 31
mov esi, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
cmp ecx, eax
jne .L_01D2
cmp ebx, esi
je .L_015B
.L_01D2:
mov dword ptr [ebp-4], 20
jmp .L_014D
.L_015B:
.L_015A:
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-28], esi
jmp .L_015D
.L_015F:
mov dword ptr [ebp-12], 2
jmp .L_015C
.L_0160:
mov dword ptr [ebp-12], 5
jmp .L_015C
.L_0161:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jne .L_0163
cmp dword ptr [eax+40], 2
jne .L_0163
.L_01D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .L_0165
jg .L_01D4
cmp dword ptr [eax+40], 4
jb .L_0165
.L_01D4:
mov dword ptr [ebp-12], 11
.L_0165:
.L_0164:
.L_0163:
.L_0162:
jmp .L_015C
.L_0166:
.L_0167:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
test eax, eax
je .L_016B
jmp .L_0168
.L_016B:
.L_016A:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 15
jne .L_016D
mov dword ptr [ebp-12], 15
.L_016D:
.L_016C:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .L_016F
jmp .L_0168
.L_016F:
.L_016E:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.L_0169:
jmp .L_0167
.L_0168:
cmp dword ptr [ebp-12], 0
jne .L_0171
mov dword ptr [ebp-12], 11
.L_0171:
.L_0170:
jmp .L_015C
.L_0172:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jg .L_0174
jl .L_01D5
cmp dword ptr [eax+40], 4
ja .L_0174
.L_01D5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .L_0176
jg .L_01D6
cmp dword ptr [eax+40], 8
jb .L_0176
.L_01D6:
mov dword ptr [ebp-12], 13
.L_0176:
.L_0175:
.L_0174:
.L_0173:
jmp .L_015C
.L_0177:
.L_0178:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
test eax, eax
je .L_017C
jmp .L_0179
.L_017C:
.L_017B:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 16
jne .L_017E
mov dword ptr [ebp-12], 16
.L_017E:
.L_017D:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .L_0180
jmp .L_0179
.L_0180:
.L_017F:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.L_017A:
jmp .L_0178
.L_0179:
cmp dword ptr [ebp-12], 0
jne .L_0182
mov dword ptr [ebp-12], 13
.L_0182:
.L_0181:
jmp .L_015C
.L_015D:
mov esi, dword ptr [ebp-28]
add esi, 4294967295
cmp esi, 7
ja .L_015C
mov esi, dword ptr [ebp-28]
jmp dword ptr [.L_0183+esi*4-4]
.L_0183:
.int .L_015F
.int .L_0160
.int .L_0161
.int .L_0166
.int .L_0172
.int .L_0172
.int .L_0172
.int .L_0177
.L_015C:
cmp dword ptr [ebp-12], 0
jne .L_0185
mov dword ptr [ebp-12], 52
.L_0185:
.L_0184:
mov esi, dword ptr [ebp-12]
mov dword ptr [ebp-4], esi
.L_014D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETRETURNTYPE, .-HGETRETURNTYPE
.cfi_endproc
.balign 16
HSKIPTOFIELD:
.type HSKIPTOFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019B:
.L_019D:
cmp dword ptr [ebp+8], 0
je .L_019E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_01A0
jmp .L_019E
.L_01A0:
.L_019F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
jmp .L_019D
.L_019E:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_019C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSKIPTOFIELD, .-HSKIPTOFIELD
.cfi_endproc
.balign 16
HFINDCOMMONPARENT:
.type HFINDCOMMONPARENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01A5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_01A7:
cmp dword ptr [ebp+8], 0
je .L_01A8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+12], eax
.L_01A9:
cmp dword ptr [ebp+12], 0
je .L_01AA
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_01AC
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01A6
.L_01AC:
.L_01AB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp+12], ebx
jmp .L_01A9
.L_01AA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+164]
mov dword ptr [ebp+8], eax
jmp .L_01A7
.L_01A8:
mov dword ptr [ebp-4], 0
.L_01A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFINDCOMMONPARENT, .-HFINDCOMMONPARENT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_007F:	.ascii	"base$\0"
