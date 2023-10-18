	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPPRAGMAINIT@0
_PPPRAGMAINIT@0:
push ebp
mov ebp, esp
sub esp, 4
.L_006D:
mov dword ptr [ebp-4], 0
.L_0072:
mov eax, dword ptr [ebp-4]
imul eax, 72
mov dword ptr [_PRAGMASTK+eax], 0
.L_0070:
inc dword ptr [ebp-4]
.L_006F:
cmp dword ptr [ebp-4], 3
jle .L_0072
.L_0071:
.L_006E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPPRAGMAEND@0
_PPPRAGMAEND@0:
.L_0073:
.L_0074:
ret
.balign 16

.globl _PPPRAGMA@0
_PPPRAGMA@0:
push ebp
mov ebp, esp
sub esp, 92
push ebx
push esi
.L_00B6:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 5
push offset _Lt_00B8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00BA
mov dword ptr [ebp-24], -1
jmp .L_00B9
.L_00BA:
push 4
push offset _Lt_00BC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00BB
mov dword ptr [ebp-20], -1
.L_00BB:
.L_00B9:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .L_00BE
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_00C0
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_00BF
.L_00C0:
push 0
call _LEXSKIPTOKEN@4
.L_00BF:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00BE:
.L_00BD:
mov dword ptr [ebp-36], 0
.L_00C4:
push 16
mov eax, dword ptr [ebp-36]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .L_00C6
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
jmp .L_00C3
.L_00C6:
.L_00C5:
.L_00C2:
inc dword ptr [ebp-36]
.L_00C1:
cmp dword ptr [ebp-36], 3
jle .L_00C4
.L_00C3:
cmp dword ptr [ebp-16], -1
jne .L_00C8
push 0
push 0
push 17
call _ERRREPORT@12
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .L_00CA
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00C9
.L_00CA:
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
.L_00C9:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_00B7
.L_00C8:
.L_00C7:
mov eax, dword ptr [ebp-20]
or eax, dword ptr [ebp-24]
je .L_00CC
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 1
test ebx, ebx
jne .L_00CE
push 0
push 0
push 17
call _ERRREPORT@12
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .L_00D0
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00CF
.L_00D0:
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
.L_00CF:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .L_00B7
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-20], 0
je .L_00D2
lea ebx, [ebp-32]
push ebx
push dword ptr [ebp-16]
call _PRAGMAPOP@8
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .L_00D4
cmp dword ptr [_ENV+860], 0
jle .L_00D6
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 2
push offset _Lt_00D8
push -1
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push 13
push offset _Lt_00D7
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
jmp .L_00D1
.L_00D2:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-24], 0
je .L_00DD
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .L_00DF
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+16]
and eax, dword ptr [_ENV+200]
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
call _PRAGMAPUSH@12
jmp .L_00DE
.L_00DF:
mov ecx, dword ptr [ebp-16]
imul ecx, 24
push dword ptr [_PRAGMAOPT+ecx+16]
call _FBGETOPTION@4
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
push dword ptr [ebp-16]
call _PRAGMAPUSH@12
.L_00DE:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_00E1
push 0
call _LEXSKIPTOKEN@4
jmp .L_00E0
.L_00E1:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.L_00E0:
jmp .L_00DC
.L_00DD:
push 0
call _LEXGETTOKEN@4
cmp eax, 299
jne .L_00E3
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 2
test ebx, ebx
jne .L_00E5
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .L_00B7
.L_00E5:
.L_00E4:
push 0
call _LEXSKIPTOKEN@4
jmp .L_00E2
.L_00E3:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.L_00E2:
.L_00DC:
cmp dword ptr [ebp-28], 0
jne .L_00E7
cmp dword ptr [ebp-32], 0
jne .L_00E7
.L_010D:
push 8
call _CEXPRESSION@0
push eax
call _CCONSTINTEXPR@8
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
mov eax, dword ptr [ebp-16]
imul eax, 24
mov edx, dword ptr [_PRAGMAOPT+eax+20]
and edx, 16
test edx, edx
je .L_00E9
cmp dword ptr [ebp-28], 0
mov edx, -1
jne .L_010E
cmp dword ptr [ebp-32], 0
jne .L_010E
.L_010F:
xor edx, edx
.L_010E:
mov ebx, edx
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], eax
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .L_00EB
cmp dword ptr [_ENV+860], 0
jle .L_00ED
cmp dword ptr [ebp-24], 0
je .L_00EF
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 2
push offset _Lt_00D8
push -1
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _fb_LongintToStr@8
push eax
push -1
push 3
push offset _Lt_00F1
push -1
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push 14
push offset _Lt_00F0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
lea eax, [ebp-92]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
jmp .L_00EE
.L_00EF:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _fb_LongintToStr@8
push eax
push -1
push 4
push offset _Lt_00F8
push -1
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push 9
push offset _Lt_00F7
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
.L_00EE:
.L_00ED:
.L_00EC:
.L_00EB:
.L_00EA:
.L_00D1:
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 4
test ebx, ebx
je .L_00FE
cmp dword ptr [ebp-16], 1
jne .L_0100
.L_0101:
call _FBPRAGMAONCE@0
jmp .L_00FF
.L_0100:
cmp dword ptr [ebp-16], 3
jne .L_0102
.L_0103:
call _PRAGMARESERVE@0
.L_0102:
.L_00FF:
jmp .L_00FD
.L_00FE:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+20]
and eax, 3
test eax, eax
je .L_0105
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .L_0107
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov edx, dword ptr [_PRAGMAOPT+ebx+16]
mov eax, edx
sar eax, 31
and edx, dword ptr [ebp-32]
and eax, dword ptr [ebp-28]
push 27
mov ebx, edx
mov esi, eax
call _FBGETOPTION@4
mov edx, dword ptr [ebp-16]
imul edx, 24
mov ecx, dword ptr [_PRAGMAOPT+edx+16]
not ecx
and eax, ecx
mov edx, eax
mov ecx, edx
sar ecx, 31
or ebx, edx
or esi, ecx
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], esi
mov ebx, dword ptr [ebp-32]
push ebx
push 27
call _FBSETOPTION@8
jmp .L_0106
.L_0107:
mov ebx, dword ptr [ebp-32]
push ebx
mov ebx, dword ptr [ebp-16]
imul ebx, 24
push dword ptr [_PRAGMAOPT+ebx+16]
call _FBCHANGEOPTION@8
.L_0106:
.L_0105:
.L_0104:
.L_00FD:
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .L_0109
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_010B
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_010A
.L_010B:
push 0
call _LEXSKIPTOKEN@4
.L_010A:
.L_0109:
.L_0108:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_00B7:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__ppzpragma:
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
.balign 16
_PRAGMAPUSH@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0075:
mov eax, dword ptr [ebp+8]
imul eax, 72
lea ebx, [_PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 8
jl .L_0079
push 0
push 0
push 27
call _ERRREPORT@12
jmp .L_0076
.L_0079:
.L_0078:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], ecx
mov dword ptr [ebx+12], eax
mov ecx, dword ptr [ebp-4]
inc dword ptr [ecx]
.L_0076:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_PRAGMAPOP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.L_007A:
mov eax, dword ptr [ebp+8]
imul eax, 72
lea ebx, [_PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 0
jg .L_007E
push 0
push 0
push 101
call _ERRREPORT@12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
jmp .L_007B
.L_007E:
.L_007D:
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebx+8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax], esi
mov dword ptr [eax+4], ecx
.L_007B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_PRAGMARESERVE@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_007F:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [_ENV+860], 0
jle .L_0082
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 16
push offset _Lt_0083
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0082:
.L_0081:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .L_0086
push 0
call _LEXSKIPTOKEN@4
cmp dword ptr [_ENV+860], 0
jle .L_0088
call _LEXPPONLYEMITTOKEN@0
.L_0088:
.L_0087:
.L_0089:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 344
je .L_008F
.L_0090:
cmp dword ptr [ebp-28], 306
jne .L_008E
.L_008F:
cmp dword ptr [_PARSER+100], 0
jbe .L_0092
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0094
push 0
push 1
push 0
call _LEXGETTEXT@0
push eax
push 61
call _ERRREPORTEX@20
jmp .L_0093
.L_0094:
push 0
push 1
push 0
call _LEXGETTEXT@0
push eax
push 96
call _ERRREPORTEX@20
.L_0093:
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .L_0080
.L_0092:
.L_0091:
push 0
call _LEXGETTOKEN@4
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
push 0
mov ebx, eax
call _LEXGETTOKEN@4
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
je .L_0096
push 0
push 1
push 0
call _LEXGETTEXT@0
push eax
push 17
call _ERRREPORTEX@20
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .L_0080
.L_0096:
.L_0095:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 344
jne .L_0099
.L_009A:
mov dword ptr [ebp-20], -1
jmp .L_0097
.L_0099:
cmp dword ptr [ebp-32], 306
jne .L_009B
.L_009C:
mov dword ptr [ebp-24], -1
.L_009B:
.L_0097:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_008C
.L_008E:
cmp dword ptr [ebp-28], 44
jne .L_009D
.L_009E:
push 0
call _LEXSKIPTOKEN@4
jmp .L_008C
.L_009D:
jmp .L_008A
.L_009F:
.L_008C:
cmp dword ptr [_ENV+860], 0
jle .L_00A1
call _LEXPPONLYEMITTOKEN@0
.L_00A1:
.L_00A0:
.L_008B:
jmp .L_0089
.L_008A:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00A3
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00A2
.L_00A3:
cmp dword ptr [_ENV+860], 0
jle .L_00A5
call _LEXPPONLYEMITTOKEN@0
.L_00A5:
.L_00A4:
push 0
call _LEXSKIPTOKEN@4
.L_00A2:
.L_0086:
.L_0085:
push 0
lea eax, [ebp-8]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-4], eax
call _LEXGETTEXT@0
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _HISVALIDSYMBOLNAME@4
test eax, eax
jne .L_00A7
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_0080
.L_00A7:
.L_00A6:
cmp dword ptr [_ENV+860], 0
jle .L_00A9
call _LEXPPONLYEMITTOKEN@0
.L_00A9:
.L_00A8:
cmp dword ptr [ebp-20], -1
jne .L_00AB
push dword ptr [ebp-16]
call _PARSERINLINEASMADDKEYWORD@4
test eax, eax
jne .L_00AD
push 0
push 1
push 0
push dword ptr [ebp-16]
push 4
call _ERRREPORTEX@20
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .L_0080
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
cmp dword ptr [ebp-24], -1
jne .L_00AF
push dword ptr [ebp-16]
call _PARSERGLOBALASMADDKEYWORD@4
test eax, eax
jne .L_00B1
push 0
push 1
push 0
push dword ptr [ebp-16]
push 4
call _ERRREPORTEX@20
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .L_0080
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
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
je .L_00B3
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0080
.L_00B3:
.L_00B2:
push 0
push 128
push 0
push -2147483648
push 0
push dword ptr [ebp-16]
push 16
push dword ptr [_SYMB+98540]
push dword ptr [_SYMB+98544]
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00B5
push 0
push 1
push 0
push dword ptr [ebp-16]
push 4
call _ERRREPORTEX@20
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .L_0080
.L_00B5:
.L_00B4:
push 2048
call _LEXSKIPTOKEN@4
.L_0080:
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
.balign 4
	.lcomm	_PRAGMASTK,288

.section .data
.balign 4
_PRAGMAOPT:
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
.balign 4
_Lt_0083:	.ascii	"#pragma reserve\0"
.balign 4
_Lt_00B8:	.ascii	"push\0"
.balign 4
_Lt_00BC:	.ascii	"pop\0"
.balign 4
_Lt_00D7:	.ascii	"#pragma pop(\0"
.balign 4
_Lt_00D8:	.ascii	")\0"
.balign 4
_Lt_00F0:	.ascii	"#pragma push(\0"
.balign 4
_Lt_00F1:	.ascii	", \0"
.balign 4
_Lt_00F7:	.ascii	"#pragma \0"
.balign 4
_Lt_00F8:	.ascii	" = \0"

.section .ctors
.int _fb_ctor__ppzpragma
