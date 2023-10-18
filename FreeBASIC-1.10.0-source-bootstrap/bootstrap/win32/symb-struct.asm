	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBSTRUCTBEGIN@40
_SYMBSTRUCTBEGIN@40:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
jne .L_006A
cmp dword ptr [_PARSER+104], 0
je .L_006C
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp+24], eax
.L_006C:
.L_006B:
.L_006A:
.L_0069:
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
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006E
jmp .L_0068
.L_006E:
.L_006D:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+120], 0
cmp dword ptr [ebp+28], 0
je .L_0070
mov eax, dword ptr [ebp-8]
or dword ptr [eax+120], 1
.L_0070:
.L_006F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
cmp dword ptr [ebp+16], 0
jne .L_0072
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
push 0
push 16
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call _HASHINIT@12
jmp .L_0073
.L_0074:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call _memset
add esp, 12
.L_0073:
jmp .L_0071
.L_0072:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+100], ebx
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+120], 2
.L_0071:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
cmp dword ptr [_ENV+136], 3
jne .L_0076
cmp dword ptr [ebp+32], 0
jne .L_0078
cmp dword ptr [_ENV+108], 11
je .L_007A
mov dword ptr [ebp+32], 1
.L_007A:
.L_0079:
.L_0078:
.L_0077:
.L_0076:
.L_0075:
mov bl, byte ptr [ebp+32]
mov eax, dword ptr [ebp-8]
mov byte ptr [eax+125], bl
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+104], 1
mov ebx, dword ptr [ebp-8]
mov byte ptr [ebx+124], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+112], 0
mov dword ptr [ebx+116], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+128], -2147483648
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+136], -1
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+140], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
cmp dword ptr [ebp+36], 0
je .L_007C
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+12], 262144
push 0
push dword ptr [ebp-8]
call _SYMBNESTBEGIN@8
.L_007C:
.L_007B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16

.globl _SYMBSTRUCTADDBASE@8
_SYMBSTRUCTADDBASE@8:
push ebp
mov ebp, esp
push ebx
.L_007D:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 20
push offset _Lt_0083
push 0
push offset _Lt_0080
push dword ptr [ebp+8]
call _SYMBADDFIELD@40
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+96], eax
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _SYMBNAMESPACEIMPORTEX@8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .L_0082
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 4194304
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT@4
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+140]
mov ebx, dword ptr [eax+144]
mov dword ptr [ecx+144], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+140]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [ecx+156]
mov dword ptr [eax+156], ebx
.L_0082:
.L_0081:
.L_007E:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0084,16

.section .data
.balign 4
_Lt_0083:
.int _Lt_0084
.int _Lt_0084
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _TYPECALCNATURALALIGN@8
_TYPECALCNATURALALIGN@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0085:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0087
mov dword ptr [ebp-12], 24
jmp .L_0096
.L_0087:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0096:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_008A
.L_008C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-8], ebx
jmp .L_0089
.L_008D:
mov ebx, dword ptr [_ENV+296]
mov dword ptr [ebp-8], ebx
jmp .L_0089
.L_008E:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_008F
mov dword ptr [ebp-20], 24
jmp .L_0097
.L_008F:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0097:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
jmp .L_0089
.L_008A:
mov eax, dword ptr [ebp-16]
add eax, 4294967279
cmp eax, 3
ja .L_008E
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0091+eax*4-68]
_.L_0091:
.int .L_008D
.int .L_008E
.int .L_008E
.int .L_008C
.L_0089:
call _FBGETCPUFAMILY@0
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+108]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0093
cmp dword ptr [ebp-8], 8
jne .L_0095
mov dword ptr [ebp-8], 4
.L_0095:
.L_0094:
.L_0093:
.L_0092:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0086:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCHECKBITFIELD@20
_SYMBCHECKBITFIELD@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_00A4:
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
jg .L_00B3
jl .L_00B4
cmp ecx, edi
ja .L_00B3
.L_00B4:
xor edx, edx
.L_00B3:
or eax, edx
je .L_00A7
mov dword ptr [ebp-4], 0
jmp .L_00A5
.L_00A7:
.L_00A6:
mov edx, dword ptr [ebp+12]
and edx, 480
je .L_00A8
mov dword ptr [ebp-8], 24
jmp .L_00B1
.L_00A8:
mov edx, dword ptr [ebp+12]
and edx, 31
mov dword ptr [ebp-8], edx
.L_00B1:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-12], edx
jmp .L_00AB
.L_00AD:
mov dword ptr [ebp-4], -1
jmp .L_00A5
jmp .L_00AA
.L_00AE:
call _FBIS64BIT@0
mov dword ptr [ebp-4], eax
jmp .L_00AA
.L_00AF:
mov dword ptr [ebp-4], 0
jmp .L_00A5
jmp .L_00AA
.L_00AB:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 13
ja .L_00AF
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00B0+eax*4-4]
_.L_00B0:
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AF
.int .L_00AD
.int .L_00AD
.int .L_00AF
.int .L_00AD
.int .L_00AD
.int .L_00AF
.int .L_00AD
.int .L_00AD
.int .L_00AE
.int .L_00AE
.L_00AA:
.L_00A5:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBADDFIELD@40
_SYMBADDFIELD@40:
push ebp
mov ebp, esp
sub esp, 108
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00B5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp+36], 0
jg .L_00B8
jl .L_010B
cmp dword ptr [ebp+32], 0
ja .L_00B8
.L_010B:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _SYMBCALCLEN@8
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], edx
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp+44]
and eax, 4
je .L_00BA
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
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call _SYMBADDARRAYDESCRIPTORTYPE@12
mov dword ptr [ebp-24], eax
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
call _SYMBADDFIELD@40
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+48]
mov edx, dword ptr [eax+52]
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], 0
jmp .L_00B9
.L_00BA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov edx, dword ptr [ebx+52]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], -1
.L_00B9:
cmp dword ptr [ebp+40], 0
jle .L_00BD
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 32768
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+124]
test edx, edx
jle .L_00BF
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+64]
mov dword ptr [ebp-12], eax
.L_00C0:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
je .L_00C1
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-12], edx
jmp .L_00C0
.L_00C1:
mov edx, dword ptr [ebp+8]
movzx eax, byte ptr [edx+124]
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
jl .L_00C3
jg .L_010C
cmp ebx, esi
jbe .L_00C3
.L_010C:
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+124], 0
jmp .L_00C2
.L_00C3:
mov esi, dword ptr [ebp-12]
mov ebx, dword ptr [esi+40]
mov ecx, dword ptr [esi+44]
cmp dword ptr [ebp+36], ecx
jne .L_010D
cmp dword ptr [ebp+32], ebx
je .L_00C5
.L_010D:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+28]
and ecx, 511
mov dword ptr [ebp+24], ecx
mov ecx, dword ptr [ebp-12]
mov esi, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [ebp+32], esi
mov dword ptr [ebp+36], ebx
.L_00C5:
.L_00C4:
mov esi, dword ptr [ebp-12]
mov ecx, dword ptr [esi+48]
mov ebx, dword ptr [esi+52]
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-32], 0
.L_00C2:
.L_00BF:
.L_00BE:
jmp .L_00BC
.L_00BD:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+124], 0
.L_00BC:
cmp dword ptr [ebp-32], 0
je .L_00C7
push dword ptr [ebp+28]
push dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
movzx ebx, byte ptr [ecx+125]
push ebx
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call _HCALCPADDING@20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .L_00C9
cmp dword ptr [ebp+40], 0
jle .L_00CB
cmp dword ptr [_ENV+228], 0
jne .L_00CD
mov eax, dword ptr [ebp-28]
sal eax, 3
cmp dword ptr [ebp+40], eax
jg .L_00CF
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp+32], ebx
mov dword ptr [ebp+36], eax
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+36], 0
jne .L_00D1
cmp dword ptr [ebp+32], 1
jne .L_00D1
.L_010E:
.L_00D2:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .L_00D3
mov dword ptr [ebp-60], 24
jmp .L_0109
.L_00D3:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_0109:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_00D6
mov dword ptr [ebp+24], 2
jmp .L_00D5
.L_00D6:
mov dword ptr [ebp+24], 3
.L_00D5:
jmp .L_00D0
.L_00D1:
cmp dword ptr [ebp+36], 0
jne .L_00D7
cmp dword ptr [ebp+32], 2
jne .L_00D7
.L_010F:
.L_00D8:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .L_00D9
mov dword ptr [ebp-60], 24
jmp .L_010A
.L_00D9:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_010A:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_00DC
mov dword ptr [ebp+24], 5
jmp .L_00DB
.L_00DC:
mov dword ptr [ebp+24], 6
.L_00DB:
.L_00D7:
.L_00D0:
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
push dword ptr [ebp-28]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call _HCHECKUDTSIZE@20
test eax, eax
je .L_00DE
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-48], ebx
adc dword ptr [ebp-44], eax
jmp .L_00DD
.L_00DE:
mov dword ptr [ebp-32], 0
.L_00DD:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPECALCNATURALALIGN@8
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [ebp-36], ebx
jle .L_00E0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebx+104], eax
.L_00E0:
.L_00DF:
.L_00C7:
.L_00C6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_00E1:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+120]
and ebx, 2
test ebx, ebx
je .L_00E2
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-16], eax
jmp .L_00E1
.L_00E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
or dword ptr [ebp+44], ebx
mov dword ptr [ebp-40], 0
mov ebx, dword ptr [ebp+44]
and ebx, 8192
test ebx, ebx
jne .L_00E4
mov dword ptr [ebp-40], 32
.L_00E4:
.L_00E3:
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
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E6
jmp .L_00B6
.L_00E6:
.L_00E5:
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
push dword ptr [ebp-8]
call _SYMBVARINITFIELDS@4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _SYMBVARINITARRAYDIMENSIONS@12
cmp dword ptr [ebp-20], 0
je .L_00E8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+88], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+92], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+96], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _ASTBUILDARRAYDESCINITREE@12
mov ecx, dword ptr [ebp-20]
mov dword ptr [ecx+56], eax
.L_00E8:
.L_00E7:
mov eax, dword ptr [ebp+8]
movzx ecx, byte ptr [eax+124]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+112], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+116], eax
mov eax, dword ptr [ebp+44]
and eax, 4
je .L_00EA
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+120]
and ecx, 3
test ecx, ecx
je .L_00EC
push 0
push 0
push 162
call _ERRREPORT@12
jmp .L_00EB
.L_00EC:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+120], 8
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+120], 16
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+120], 4
.L_00EB:
jmp .L_00E9
.L_00EA:
mov ecx, dword ptr [ebp+24]
and ecx, 511
mov dword ptr [ebp-60], ecx
cmp dword ptr [ebp-60], 17
jne .L_00EF
.L_00F0:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+120]
and eax, 3
test eax, eax
je .L_00F2
push 0
push 0
push 161
call _ERRREPORT@12
jmp .L_00F1
.L_00F2:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 8
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 16
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 4
.L_00F1:
jmp .L_00ED
.L_00EF:
cmp dword ptr [ebp-60], 20
jne .L_00F3
.L_00F4:
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [eax+120]
and ecx, 4
test ecx, ecx
je .L_00F6
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+120], 4
.L_00F6:
.L_00F5:
push dword ptr [ebp+28]
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
je .L_00F8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+120]
and ecx, 3
test ecx, ecx
je .L_00FA
push 0
push 0
push 163
call _ERRREPORT@12
jmp .L_00F9
.L_00FA:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+120], 8
.L_00F9:
.L_00F8:
.L_00F7:
push dword ptr [ebp+28]
call _SYMBGETCOMPDTOR1@4
test eax, eax
je .L_00FC
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+120]
and ecx, 3
test ecx, ecx
je .L_00FE
push 0
push 0
push 164
call _ERRREPORT@12
jmp .L_00FD
.L_00FE:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+120], 16
.L_00FD:
.L_00FC:
.L_00FB:
.L_00F3:
.L_00ED:
.L_00E9:
mov ecx, dword ptr [ebp+24]
and ecx, 480
test ecx, ecx
je .L_0100
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+120], 4
.L_0100:
.L_00FF:
push dword ptr [ebp-8]
call _SYMBGETREALSIZE@4
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+120]
and edx, 1
test edx, edx
je .L_0102
mov edx, dword ptr [ebp-8]
or dword ptr [edx+12], 16777216
cmp dword ptr [ebp-32], 0
je .L_0104
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
cmp dword ptr [edx+44], eax
jg .L_0106
jl .L_0110
cmp dword ptr [edx+40], ecx
jae .L_0106
.L_0110:
mov ecx, dword ptr [ebp+8]
mov edx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], edx
mov dword ptr [ecx+44], eax
.L_0106:
.L_0105:
.L_0104:
.L_0103:
jmp .L_0101
.L_0102:
cmp dword ptr [ebp-32], 0
je .L_0108
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
.L_0108:
.L_0107:
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+124]
add edx, dword ptr [ebp+40]
mov al, dl
mov edx, dword ptr [ebp+8]
mov byte ptr [edx+124], al
.L_0101:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+8]
mov dword ptr [eax+168], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_00B6:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16

.globl _SYMBINSERTINNERUDT@8
_SYMBINSERTINNERUDT@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
.L_0111:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
jne .L_0114
push dword ptr [ebp+12]
push 20
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+125]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _HCALCPADDING@20
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _HCHECKUDTSIZE@20
test eax, eax
je .L_0116
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov ebx, ecx
sar ebx, 31
add dword ptr [eax+48], ecx
adc dword ptr [eax+52], ebx
.L_0116:
.L_0115:
.L_0114:
.L_0113:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0118
jmp .L_0112
.L_0118:
.L_0117:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx+172], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .L_011A
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+60], ecx
jmp .L_0119
.L_011A:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+176], ecx
.L_0119:
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+56]
mov dword ptr [ebp-8], eax
.L_011B:
cmp dword ptr [ebp-4], 0
je .L_011C
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax+164], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+120]
and eax, 1
test eax, eax
je .L_011E
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 16777216
jmp .L_011D
.L_011E:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+48]
mov ebx, dword ptr [ecx+52]
add dword ptr [eax+48], esi
adc dword ptr [eax+52], ebx
.L_011D:
mov esi, dword ptr [ebp-4]
mov ebx, dword ptr [esi+176]
mov dword ptr [ebp-4], ebx
jmp .L_011B
.L_011C:
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [esi+64], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+120]
and esi, 1
test esi, esi
jne .L_0120
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
jmp .L_011F
.L_0120:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+48], 0
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [eax+44], ebx
jl .L_0122
jg .L_0127
cmp dword ptr [eax+40], ecx
jbe .L_0122
.L_0127:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+40]
mov eax, dword ptr [ecx+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], eax
.L_0122:
.L_0121:
.L_011F:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [esi+104], ebx
jle .L_0124
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+104]
mov dword ptr [esi+104], eax
.L_0124:
.L_0123:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+124], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+168], esi
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [esi+120]
and eax, 32768
test eax, eax
je .L_0126
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 32768
.L_0126:
.L_0125:
.L_0112:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HGETMAGICSTRUCTNUMBER@4
_HGETMAGICSTRUCTNUMBER@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_013C:
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
call _STRUCT_ANALYZE@16
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_013D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBSTRUCTEND@8
_SYMBSTRUCTEND@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.L_0187:
cmp dword ptr [ebp+12], 0
je .L_018A
push 0
call _SYMBNESTEND@4
.L_018A:
.L_0189:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+112], esi
mov dword ptr [ebx+116], ecx
push dword ptr [ebp+8]
push 20
mov esi, dword ptr [ebp+8]
movzx ecx, byte ptr [esi+125]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call _HCALCPADDING@20
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _HCHECKUDTSIZE@20
test eax, eax
je .L_018C
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-28]
mov ecx, esi
sar ecx, 31
add dword ptr [eax+40], esi
adc dword ptr [eax+44], ecx
.L_018C:
.L_018B:
mov dword ptr [ebp-32], 3
cmp dword ptr [_PARSER+104], 4
jne .L_018E
cmp dword ptr [_ENV+108], 0
jne .L_0190
call _FBIS64BIT@0
test eax, eax
jne .L_0192
cmp dword ptr [_ENV+212], 0
jne .L_0194
mov dword ptr [ebp-32], 5
.L_0194:
.L_0193:
.L_0192:
.L_0191:
.L_0190:
.L_018F:
.L_018E:
.L_018D:
push dword ptr [ebp-32]
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _SYMBUDTDECLAREDEFAULTMEMBERS@12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 0
push dword ptr [ebp+8]
call _HGETRETURNTYPE@4
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+128], eax
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _SYMBUDTIMPLEMENTDEFAULTMEMBERS@8
cmp dword ptr [_SYMB+98692], 0
jle .L_0196
push dword ptr [ebp+8]
call _SYMBCHECKFWDREF@4
.L_0196:
.L_0195:
.L_0188:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBDELSTRUCT@4
_SYMBDELSTRUCT@4:
push ebp
mov ebp, esp
push ebx
.L_0197:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+8]
call _SYMBDELNAMESPACEMEMBERS@8
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+140], 0
je .L_019A
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+140]
call _free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+140], 0
.L_019A:
.L_0199:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.L_0198:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBUDTGETFIRSTFIELD@4
_SYMBUDTGETFIRSTFIELD@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01A2:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HSKIPTOFIELD@4
mov dword ptr [ebp-4], eax
.L_01A3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBUDTGETNEXTFIELD@4
_SYMBUDTGETNEXTFIELD@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01A4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+176]
call _HSKIPTOFIELD@4
mov dword ptr [ebp-4], eax
.L_01A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBUDTGETNEXTINITABLEFIELD@4
_SYMBUDTGETNEXTINITABLEFIELD@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01AE:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_01B0:
push dword ptr [ebp+8]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_01B4
jmp .L_01B1
.L_01B4:
.L_01B3:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _HFINDCOMMONPARENT@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01B6
jmp .L_01B1
.L_01B6:
.L_01B5:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
jne .L_01B8
jmp .L_01B1
.L_01B8:
.L_01B7:
.L_01B2:
jmp .L_01B0
.L_01B1:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_01AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETUDTBASELEVEL@8
_SYMBGETUDTBASELEVEL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01B9:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01BC
mov dword ptr [ebp-4], 0
jmp .L_01BA
.L_01BC:
.L_01BB:
mov dword ptr [ebp-8], 1
.L_01BD:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+96], 0
je .L_01BE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+32], ebx
jne .L_01C0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01BA
.L_01C0:
.L_01BF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
inc dword ptr [ebp-8]
jmp .L_01BD
.L_01BE:
mov dword ptr [ebp-4], 0
.L_01BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCLONESIMPLESTRUCT@4
_SYMBCLONESIMPLESTRUCT@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_01C3:
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _SYMBUNIQUELABEL@0
push eax
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN@40
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-12], eax
.L_01C6:
cmp dword ptr [ebp-12], 0
je .L_01C7
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
push offset _Lt_01C8
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push dword ptr [ebp-8]
call _SYMBADDFIELD@40
push dword ptr [ebp-12]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-12], eax
jmp .L_01C6
.L_01C7:
push 0
push dword ptr [ebp-8]
call _SYMBSTRUCTEND@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01C4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01C9,16

.section .data
.balign 4
_Lt_01C8:
.int _Lt_01C9
.int _Lt_01C9
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
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
_HCALCPADDING@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_009A:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _TYPECALCNATURALALIGN@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .L_009D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
jmp .L_009C
.L_009D:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+16], eax
jle .L_009F
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
.L_009F:
.L_009E:
.L_009C:
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
.L_009B:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKUDTSIZE@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A0:
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
jb .L_00A3
ja .L_01CA
cmp dword ptr [ebp-12], 2147483647
jbe .L_00A3
.L_01CA:
mov dword ptr [ebp-4], 0
push 0
push 0
push 51
call _ERRREPORT@12
jmp .L_00A2
.L_00A3:
mov dword ptr [ebp-4], -1
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_STRUCT_ANALYZE@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0128:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp+8], eax
.L_012A:
cmp dword ptr [ebp+8], 0
je .L_012B
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
mov ecx, -1
jg .L_01CE
jl .L_01CF
cmp dword ptr [eax+48], 7
ja .L_01CE
.L_01CF:
xor ecx, ecx
.L_01CE:
and ebx, ecx
je .L_012D
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], 2
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 8
.L_012D:
.L_012C:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .L_012E
mov dword ptr [ebp-8], 24
jmp .L_01CB
.L_012E:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_01CB:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 3
jne .L_0131
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call _STRUCT_ANALYZE@16
jmp .L_0130
.L_0131:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .L_0133
mov dword ptr [ebp-12], 24
jmp .L_01CC
.L_0133:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_01CC:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 0
jne .L_0132
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx], 1
jne .L_0136
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 1
jmp .L_0135
.L_0136:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 4
.L_0135:
.L_0132:
.L_0130:
push dword ptr [ebp+8]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp+8], eax
jmp .L_012A
.L_012B:
cmp dword ptr [ebp-4], 8
jle .L_0138
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx]
add ebx, dword ptr [eax]
cmp ebx, 1
jne .L_013A
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 5
jmp .L_0139
.L_013A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx]
cmp ecx, 2
jne .L_013B
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 10
.L_013B:
.L_0139:
.L_0138:
.L_0137:
.L_0129:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HGETRETURNTYPEGAS64SYSTEMV@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_013E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_SYMB_DTYPETB+368]
sal ebx, 1
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jg .L_0141
jl .L_01D0
cmp dword ptr [eax+40], esi
ja .L_0141
.L_01D0:
push dword ptr [ebp+8]
call _HGETMAGICSTRUCTNUMBER@4
mov dword ptr [ebp-8], eax
jmp .L_0143
.L_0145:
mov dword ptr [ebp-4], 13
jmp .L_013F
jmp .L_0142
.L_0146:
mov dword ptr [ebp-4], 16
jmp .L_013F
jmp .L_0142
.L_0147:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 2
mov dword ptr [ebp-4], 20
jmp .L_013F
jmp .L_0142
.L_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 3
mov dword ptr [ebp-4], 20
jmp .L_013F
jmp .L_0142
.L_0149:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 5
mov dword ptr [ebp-4], 20
jmp .L_013F
jmp .L_0142
.L_014A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 6
mov dword ptr [ebp-4], 20
jmp .L_013F
jmp .L_0142
.L_014B:
mov dword ptr [ebp-4], 20
jmp .L_013F
jmp .L_0142
.L_0143:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 9
ja .L_014B
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_014C+eax*4-4]
_.L_014C:
.int .L_0145
.int .L_0146
.int .L_014B
.int .L_014B
.int .L_0147
.int .L_0149
.int .L_014B
.int .L_014B
.int .L_0148
.int .L_014A
.L_0142:
.L_0141:
.L_0140:
mov dword ptr [ebp-4], 52
.L_013F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETRETURNTYPE@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_014D:
push dword ptr [ebp+8]
call _SYMBCOMPISTRIVIAL@4
test eax, eax
jne .L_0150
mov dword ptr [ebp-4], 52
jmp .L_014E
.L_0150:
.L_014F:
cmp dword ptr [_ENV+104], 1
jne .L_0152
mov dword ptr [ebp-4], 20
jmp .L_014E
.L_0152:
.L_0151:
call _FBIS64BIT@0
test eax, eax
je .L_0154
cmp dword ptr [_ENV+104], 3
jne .L_0156
mov eax, dword ptr [_ENV+108]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+108]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0158
push dword ptr [ebp+8]
call _HGETRETURNTYPEGAS64SYSTEMV@4
mov dword ptr [ebp-4], eax
jmp .L_014E
.L_0158:
.L_0157:
.L_0156:
.L_0155:
.L_0154:
.L_0153:
mov eax, dword ptr [_ENV+284]
and eax, 16
test eax, eax
jne .L_015A
mov dword ptr [ebp-4], 52
jmp .L_014E
.L_015A:
.L_0159:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov ebx, dword ptr [eax+116]
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
jne .L_01D3
cmp ebx, esi
je .L_015C
.L_01D3:
mov dword ptr [ebp-4], 20
jmp .L_014E
.L_015C:
.L_015B:
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-28], esi
jmp .L_015E
.L_0160:
mov dword ptr [ebp-12], 2
jmp .L_015D
.L_0161:
mov dword ptr [ebp-12], 5
jmp .L_015D
.L_0162:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jne .L_0164
cmp dword ptr [eax+40], 2
jne .L_0164
.L_01D4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .L_0166
jg .L_01D5
cmp dword ptr [eax+40], 4
jb .L_0166
.L_01D5:
mov dword ptr [ebp-12], 11
.L_0166:
.L_0165:
.L_0164:
.L_0163:
jmp .L_015D
.L_0167:
.L_0168:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD@4
test eax, eax
je .L_016C
jmp .L_0169
.L_016C:
.L_016B:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 15
jne .L_016E
mov dword ptr [ebp-12], 15
.L_016E:
.L_016D:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .L_0170
jmp .L_0169
.L_0170:
.L_016F:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.L_016A:
jmp .L_0168
.L_0169:
cmp dword ptr [ebp-12], 0
jne .L_0172
mov dword ptr [ebp-12], 11
.L_0172:
.L_0171:
jmp .L_015D
.L_0173:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jg .L_0175
jl .L_01D6
cmp dword ptr [eax+40], 4
ja .L_0175
.L_01D6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .L_0177
jg .L_01D7
cmp dword ptr [eax+40], 8
jb .L_0177
.L_01D7:
mov dword ptr [ebp-12], 13
.L_0177:
.L_0176:
.L_0175:
.L_0174:
jmp .L_015D
.L_0178:
.L_0179:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD@4
test eax, eax
je .L_017D
jmp .L_017A
.L_017D:
.L_017C:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 16
jne .L_017F
mov dword ptr [ebp-12], 16
.L_017F:
.L_017E:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .L_0181
jmp .L_017A
.L_0181:
.L_0180:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.L_017B:
jmp .L_0179
.L_017A:
cmp dword ptr [ebp-12], 0
jne .L_0183
mov dword ptr [ebp-12], 13
.L_0183:
.L_0182:
jmp .L_015D
.L_015E:
mov esi, dword ptr [ebp-28]
add esi, 4294967295
cmp esi, 7
ja .L_015D
mov esi, dword ptr [ebp-28]
jmp dword ptr [_.L_0184+esi*4-4]
_.L_0184:
.int .L_0160
.int .L_0161
.int .L_0162
.int .L_0167
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0178
.L_015D:
cmp dword ptr [ebp-12], 0
jne .L_0186
mov dword ptr [ebp-12], 52
.L_0186:
.L_0185:
mov esi, dword ptr [ebp-12]
mov dword ptr [ebp-4], esi
.L_014E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSKIPTOFIELD@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019C:
.L_019E:
cmp dword ptr [ebp+8], 0
je .L_019F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_01A1
jmp .L_019F
.L_01A1:
.L_01A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp+8], ebx
jmp .L_019E
.L_019F:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_019D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFINDCOMMONPARENT@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01A6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_01A8:
cmp dword ptr [ebp+8], 0
je .L_01A9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+12], eax
.L_01AA:
cmp dword ptr [ebp+12], 0
je .L_01AB
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_01AD
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01A7
.L_01AD:
.L_01AC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp+12], ebx
jmp .L_01AA
.L_01AB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp+8], eax
jmp .L_01A8
.L_01A9:
mov dword ptr [ebp-4], 0
.L_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0080:	.ascii	"base$\0"
