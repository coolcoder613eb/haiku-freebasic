	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPINIT
_PPINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_007F:
mov dword ptr [ebp-4], 0
mov dword ptr [_PP], 8
mov word ptr [_PP+36], 0
lea eax, [_PP]
mov dword ptr [_PP+56], eax
mov dword ptr [_PP+60], 0
mov dword ptr [_PP+64], 0
lea eax, [_PP]
mov dword ptr [_PP+68], eax
mov dword ptr [_PP+84], 0
mov dword ptr [_PP+88], 0
push 0
push 24
lea eax, [_PP+72]
push eax
call _HASHINIT
add esp, 12
jmp .L_0081
.L_0082:
push 12
push 0
lea eax, [_PP+72]
push eax
call _memset
add esp, 12
.L_0081:
lea eax, [_SYMB+98652]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [_PP+92], eax
mov dword ptr [ebp-4], 0
.L_0086:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [_KWDTB+eax], 0
jne .L_0088
jmp .L_0085
.L_0088:
.L_0087:
push 0
push -2147483648
lea eax, [_PP+68]
push eax
push 1
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [_KWDTB+eax+4]
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [_KWDTB+eax]
call _SYMBADDKEYWORD
add esp, 24
mov ebx, dword ptr [ebp-4]
imul ebx, 12
mov dword ptr [_KWDTB+ebx+8], eax
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [_KWDTB+eax+8], 0
jne .L_008A
jmp .L_0080
.L_008A:
.L_0089:
.L_0084:
inc dword ptr [ebp-4]
.L_0083:
cmp dword ptr [ebp-4], 23
jle .L_0086
.L_0085:
mov dword ptr [_PP+212], 0
call _PPDEFINEINIT
call _PPCONDINIT
call _PPPRAGMAINIT
.L_0080:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPEND
_PPEND:
push ebp
mov ebp, esp
sub esp, 4
.L_008B:
mov dword ptr [ebp-4], 0
call _PPPRAGMAEND
call _PPCONDEND
call _PPDEFINEEND
mov dword ptr [ebp-4], 0
.L_0090:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [_KWDTB+eax+8], 0
jne .L_0092
jmp .L_008F
.L_0092:
.L_0091:
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [_KWDTB+eax+8]
call _SYMBFREESYMBOL
add esp, 4
mov eax, dword ptr [ebp-4]
imul eax, 12
mov dword ptr [_KWDTB+eax+8], 0
.L_008E:
inc dword ptr [ebp-4]
.L_008D:
cmp dword ptr [ebp-4], 23
jle .L_0090
.L_008F:
push dword ptr [_PP+92]
lea eax, [_SYMB+98652]
push eax
call _LISTDELNODE
add esp, 8
lea eax, [_PP+72]
push eax
call _HASHEND
add esp, 4
.L_008C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPCHECK
_PPCHECK:
push ebx
.L_0093:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx], 35
je .L_0096
jmp .L_0094
.L_0096:
.L_0095:
mov ebx, dword ptr [_LEX+213384]
cmp dword ptr [ebx+4288], 0
je .L_0098
jmp .L_0094
.L_0098:
.L_0097:
mov ebx, dword ptr [_LEX+213384]
cmp dword ptr [ebx+4284], 257
je .L_009A
mov ebx, dword ptr [_LEX+213384]
cmp dword ptr [ebx+4284], -1
je .L_009C
jmp .L_0094
.L_009C:
.L_009B:
.L_009A:
.L_0099:
mov ebx, dword ptr [_LEX+213384]
inc dword ptr [ebx+4288]
lea ebx, [_PP]
mov eax, dword ptr [_LEX+213384]
mov dword ptr [eax+4296], ebx
push 256
call _LEXSKIPTOKEN
add esp, 4
call _PPPARSE
mov ebx, dword ptr [_LEX+213384]
dec dword ptr [ebx+4288]
.L_0094:
pop ebx
ret
.balign 16

.globl _PPPARSE
_PPPARSE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_009D:
push 256
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00A0
.L_00A2:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
call _PPDEFINE
add esp, 4
jmp .L_009F
.L_00A3:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push -1
call _PPDEFINE
add esp, 4
jmp .L_009F
.L_00A4:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
lea eax, [ebp-12]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00A6
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+140]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00A8
push 0
push 0
push 123
call _ERRREPORT
add esp, 12
jmp .L_00A7
.L_00A8:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .L_00AA
push 0
push 0
push 177
call _ERRREPORT
add esp, 12
jmp .L_00A9
.L_00AA:
cmp dword ptr [_ENV+860], 0
jle .L_00AC
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 5
je .L_00AE
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 7
push offset _Lt_00AF
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
call _LEXPPONLYEMITTOKEN
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
push dword ptr [ebp-16]
call _SYMBDELFROMHASH
add esp, 4
.L_00A9:
.L_00A7:
.L_00A6:
.L_00A5:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_009F
.L_00B1:
call _PPCONDIF
jmp .L_009F
.L_00B2:
call _PPCONDELSE
jmp .L_009F
.L_00B3:
call _PPCONDENDIF
jmp .L_009F
.L_00B4:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPASSERT
jmp .L_009F
.L_00B5:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
jmp .L_009F
.L_00B6:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
jmp .L_009F
.L_00B7:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
jmp .L_009F
.L_00B8:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 1
push 0
call _PPREADLITERAL
add esp, 4
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_009F
.L_00B9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 1
push 0
push 0
call _PPREADLITERAL
add esp, 4
push eax
push -1
call _ERRREPORTEX
add esp, 20
inc dword ptr [_PARSER+28]
jmp .L_009F
.L_00BA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPINCLUDE
jmp .L_009F
.L_00BB:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPINCLIB
jmp .L_009F
.L_00BC:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPLIBPATH
jmp .L_009F
.L_00BD:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPPRAGMA
jmp .L_009F
.L_00BE:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPLINE
jmp .L_009F
.L_00BF:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPLANG
jmp .L_009F
.L_00C0:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPCMDLINE
jmp .L_009F
.L_00C1:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
jmp .L_009F
.L_00A0:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 22
ja .L_00C1
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_00C2+eax*4-1064]
_.L_00C2:
.int .L_00B1
.int .L_00B1
.int .L_00B1
.int .L_00B2
.int .L_00B2
.int .L_00B3
.int .L_00A2
.int .L_00A4
.int .L_00A3
.int .L_00C1
.int .L_00BA
.int .L_00BB
.int .L_00BC
.int .L_00BD
.int .L_00B8
.int .L_00B9
.int .L_00BE
.int .L_00BF
.int .L_00B4
.int .L_00C0
.int .L_00B5
.int .L_00B6
.int .L_00B7
.L_009F:
push 0
call _CCOMMENT
add esp, 4
cmp dword ptr [_ENV+148], 0
je .L_00C4
cmp dword ptr [_ENV+900], 0
jne .L_00C6
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+12536]
call _ASTNEWLIT
add esp, 4
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+12536]
push ebx
call _DZSTRRESET
add esp, 4
.L_00C6:
.L_00C5:
.L_00C4:
.L_00C3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_00C8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
je .L_00CA
push 0
push 0
push 3
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
.L_009E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPREADLITERAL
_PPREADLITERAL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0100:
mov dword ptr [ebp-8], 0
push offset _Lt_0138
call _DZSTRRESET
add esp, 4
.L_0102:
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0106
.L_0108:
cmp dword ptr [ebp+8], 0
je .L_010A
push 0
push 0
push 134
call _ERRREPORT
add esp, 12
.L_010A:
.L_0109:
jmp .L_0103
jmp .L_0105
.L_010B:
cmp dword ptr [ebp+8], 0
jne .L_010D
jmp .L_0103
.L_010D:
.L_010C:
cmp dword ptr [_Lt_0138+4], 0
jle .L_010F
push offset _Lt_0110
push offset _Lt_0138
call _DZSTRCONCATASSIGN
add esp, 8
.L_010F:
.L_010E:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0104
jmp .L_0105
.L_0111:
cmp dword ptr [ebp+8], 0
jne .L_0113
jmp .L_0103
.L_0113:
.L_0112:
.L_0114:
push 63
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .L_011A
.L_011B:
cmp dword ptr [ebp-16], 256
jne .L_0119
.L_011A:
jmp .L_0115
.L_0119:
.L_0117:
.L_0116:
jmp .L_0114
.L_0115:
jmp .L_0104
jmp .L_0105
.L_011C:
push 314
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 35
jne .L_011F
.L_0120:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 63
call _LEXSKIPTOKEN
add esp, 4
push 2
push offset _Lt_0121
push 0
call _LEXGETTEXT
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0123
push offset _Lt_0124
push offset _Lt_0138
call _DZSTRCONCATASSIGN
add esp, 8
.L_0123:
.L_0122:
jmp .L_011D
.L_011F:
cmp dword ptr [ebp-16], 274
jne .L_0125
.L_0126:
cmp dword ptr [ebp+8], 0
je .L_0128
inc dword ptr [ebp-8]
.L_0128:
.L_0127:
jmp .L_011D
.L_0125:
cmp dword ptr [ebp-16], 275
jne .L_0129
.L_012A:
cmp dword ptr [ebp+8], 0
je .L_012C
cmp dword ptr [ebp-8], 0
jne .L_012E
push 62
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push offset _Lt_0138
call _HRTRIMMACROTEXT
add esp, 4
jmp .L_0103
.L_012E:
.L_012D:
dec dword ptr [ebp-8]
.L_012C:
.L_012B:
.L_0129:
.L_011D:
jmp .L_0105
.L_012F:
cmp dword ptr [_Lt_0138+4], 0
jle .L_0131
push offset _Lt_0132
push offset _Lt_0138
call _DZSTRCONCATASSIGN
add esp, 8
.L_0131:
.L_0130:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0104
jmp .L_0105
.L_0133:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _PPTYPEOF
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push offset _Lt_0138
call _DZSTRCONCATASSIGN
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0103
jmp .L_0105
.L_0106:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .L_0105
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0135+eax*4-36]
_.L_0135:
.int .L_012F
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_012F
.int .L_0105
.int .L_0105
.int .L_011C
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0108
.int .L_010B
.int .L_0105
.int .L_0111
.int .L_0111
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0105
.int .L_0133
.L_0105:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], 7
je .L_0137
call _LEXGETTEXT
push eax
push offset _Lt_0138
call _DZSTRCONCATASSIGN
add esp, 8
jmp .L_0136
.L_0137:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
lea eax, [ebx+12]
push eax
push offset _Lt_0138
call _DZSTRCONCATASSIGNW
add esp, 8
.L_0136:
push 62
call _LEXSKIPTOKEN
add esp, 4
.L_0104:
jmp .L_0102
.L_0103:
mov eax, dword ptr [_Lt_0138]
mov dword ptr [ebp-4], eax
.L_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0138,12

.section .text
.balign 16

.globl _PPREADLITERALW
_PPREADLITERALW:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0143:
mov dword ptr [ebp-8], 0
push 0
push offset _Lt_0179
call _DWSTRALLOCATE
add esp, 8
.L_0145:
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0149
.L_014B:
cmp dword ptr [ebp+8], 0
je .L_014D
push 0
push 0
push 134
call _ERRREPORT
add esp, 12
.L_014D:
.L_014C:
jmp .L_0146
jmp .L_0148
.L_014E:
cmp dword ptr [ebp+8], 0
jne .L_0150
jmp .L_0146
.L_0150:
.L_014F:
cmp dword ptr [_Lt_0179+4], 0
jle .L_0152
push offset _Lt_0110
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_0179
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
.L_0152:
.L_0151:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0147
jmp .L_0148
.L_0154:
cmp dword ptr [ebp+8], 0
jne .L_0156
jmp .L_0146
.L_0156:
.L_0155:
.L_0157:
push 63
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .L_015D
.L_015E:
cmp dword ptr [ebp-16], 256
jne .L_015C
.L_015D:
jmp .L_0158
.L_015C:
.L_015A:
.L_0159:
jmp .L_0157
.L_0158:
jmp .L_0147
jmp .L_0148
.L_015F:
push 314
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 35
jne .L_0162
.L_0163:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 63
call _LEXSKIPTOKEN
add esp, 4
push 2
push offset _Lt_0121
push 0
call _LEXGETTEXT
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0165
push offset _Lt_0124
push offset _Lt_0179
call _DWSTRCONCATASSIGNA
add esp, 8
.L_0165:
.L_0164:
jmp .L_0160
.L_0162:
cmp dword ptr [ebp-16], 274
jne .L_0166
.L_0167:
cmp dword ptr [ebp+8], 0
je .L_0169
inc dword ptr [ebp-8]
.L_0169:
.L_0168:
jmp .L_0160
.L_0166:
cmp dword ptr [ebp-16], 275
jne .L_016A
.L_016B:
cmp dword ptr [ebp+8], 0
je .L_016D
cmp dword ptr [ebp-8], 0
jne .L_016F
push 62
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push offset _Lt_0179
call _HRTRIMMACROTEXTW
add esp, 4
jmp .L_0146
.L_016F:
.L_016E:
dec dword ptr [ebp-8]
.L_016D:
.L_016C:
.L_016A:
.L_0160:
jmp .L_0148
.L_0170:
cmp dword ptr [_Lt_0179+4], 0
jle .L_0172
push offset _Lt_0132
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_0179
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
.L_0172:
.L_0171:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0147
jmp .L_0148
.L_0174:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _PPTYPEOF
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push offset _Lt_0179
call _DWSTRCONCATASSIGNA
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0146
jmp .L_0148
.L_0149:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .L_0148
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0176+eax*4-36]
_.L_0176:
.int .L_0170
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0170
.int .L_0148
.int .L_0148
.int .L_015F
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_014B
.int .L_014E
.int .L_0148
.int .L_0154
.int .L_0154
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0174
.L_0148:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], 7
jne .L_0178
mov ebx, dword ptr [_LEX+213384]
mov eax, dword ptr [ebx+4260]
lea ebx, [eax+12]
push ebx
push offset _Lt_0179
call _DWSTRCONCATASSIGN
add esp, 8
jmp .L_0177
.L_0178:
call _LEXGETTEXT
push eax
push offset _Lt_0179
call _DWSTRCONCATASSIGNA
add esp, 8
.L_0177:
push 62
call _LEXSKIPTOKEN
add esp, 4
.L_0147:
jmp .L_0145
.L_0146:
mov eax, dword ptr [_Lt_0179]
mov dword ptr [ebp-4], eax
.L_0144:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0179,12

.section .text
.balign 16

.globl _PPTYPEOF
_PPTYPEOF:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_017A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_017D
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .L_017C
.L_017D:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_017C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-28]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-16]
push eax
call _CTYPEOF
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call _SYMBTYPETOSTR
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0180
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_017F
.L_0180:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_017F:
.L_017B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__pp:
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
call _fb_StrAssign
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
.balign 16
_PPINCLUDE:
push ebp
mov ebp, esp
sub esp, 4
.L_00CB:
push 2048
push offset _Lt_00CD
call _HMATCHIDORKW
add esp, 8
mov dword ptr [ebp-4], eax
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00CF
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00CC
.L_00CF:
.L_00CE:
push 0
push offset _Lt_0198
call _LEXEATTOKEN
add esp, 8
push dword ptr [ebp-4]
push offset _Lt_0198
call _FBINCLUDEFILE
add esp, 8
.L_00CC:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0198,261

.section .text
.balign 16
_PPINCLIB:
push ebp
mov ebp, esp
sub esp, 12
.L_00D0:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00D3
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00D1
.L_00D3:
.L_00D2:
cmp dword ptr [_ENV+860], 0
jle .L_00D5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset _Lt_00D6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
call _LEXPPONLYEMITTOKEN
.L_00D5:
.L_00D4:
call _LEXGETTEXT
push eax
call _FBADDLIB
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00D1:
mov esp, ebp
pop ebp
ret
.balign 16
_PPLIBPATH:
push ebp
mov ebp, esp
sub esp, 12
.L_00D8:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00DB
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00D9
.L_00DB:
.L_00DA:
cmp dword ptr [_ENV+860], 0
jle .L_00DD
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset _Lt_00DE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
call _LEXPPONLYEMITTOKEN
.L_00DD:
.L_00DC:
call _LEXGETTEXT
push eax
call _FBADDLIBPATH
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00D9:
mov esp, ebp
pop ebp
ret
.balign 16
_PPLINE:
push ebx
.L_00E0:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 3
je .L_00E3
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .L_00E2
.L_00E3:
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VALINT
add esp, 4
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4280], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
jne .L_00E5
call _LEXGETTEXT
push eax
call _FBOVERRIDEFILENAME
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00E5:
.L_00E4:
.L_00E2:
.L_00E1:
pop ebx
ret
.balign 16
_PPLANG:
push ebp
mov ebp, esp
sub esp, 40
.L_00E6:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00E9
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00E7
.L_00E9:
.L_00E8:
call _LEXGETTEXT
push eax
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .L_00EB
push 0
push 0
push 279
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00E7
.L_00EB:
.L_00EA:
cmp dword ptr [_ENV+860], 0
jle .L_00ED
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 2
push offset _Lt_00EF
push -1
push -1
push dword ptr [ebp-4]
call _FBGETLANGNAME
add esp, 4
push eax
push 8
push offset _Lt_00EE
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_00ED:
.L_00EC:
push dword ptr [ebp-4]
push 10
call _FBCHANGEOPTION
add esp, 8
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00E7:
mov esp, ebp
pop ebp
ret
.balign 16
_HRTRIMMACROTEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00F3:
cmp dword ptr [ebp+8], 0
jne .L_00F6
jmp .L_00F4
jmp .L_00F5
.L_00F6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00F7
jmp .L_00F4
.L_00F7:
.L_00F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx+4]
dec ecx
mov dword ptr [_Lt_0199], ecx
.L_00F8:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp dword ptr [_Lt_0199], ebx
jbe .L_00F9
mov ebx, dword ptr [_Lt_0199]
movzx ecx, byte ptr [ebx]
mov dword ptr [ebp-4], ecx
jmp .L_00FB
.L_00FD:
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [_Lt_0199]
mov byte ptr [ecx], 0
jmp .L_00FA
.L_00FE:
jmp .L_00F9
jmp .L_00FA
.L_00FB:
mov ecx, dword ptr [ebp-4]
add ecx, 4294967287
cmp ecx, 23
ja .L_00FE
mov ecx, dword ptr [ebp-4]
jmp dword ptr [_.L_00FF+ecx*4-36]
_.L_00FF:
.int .L_00FD
.int .L_00FD
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FE
.int .L_00FD
.L_00FA:
dec dword ptr [_Lt_0199]
jmp .L_00F8
.L_00F9:
.L_00F4:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0199,4

.section .text
.balign 16
_HRTRIMMACROTEXTW:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0139:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx+4]
dec ecx
mov dword ptr [_Lt_019A], ecx
.L_013B:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp dword ptr [_Lt_019A], ebx
jbe .L_013C
mov ebx, dword ptr [_Lt_019A]
movzx ecx, byte ptr [ebx]
mov dword ptr [ebp-4], ecx
jmp .L_013E
.L_0140:
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [_Lt_019A]
mov byte ptr [ecx], 0
jmp .L_013D
.L_0141:
jmp .L_013C
jmp .L_013D
.L_013E:
mov ecx, dword ptr [ebp-4]
add ecx, 4294967287
cmp ecx, 23
ja .L_0141
mov ecx, dword ptr [ebp-4]
jmp dword ptr [_.L_0142+ecx*4-36]
_.L_0142:
.int .L_0140
.int .L_0140
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0141
.int .L_0140
.L_013D:
dec dword ptr [_Lt_019A]
jmp .L_013B
.L_013C:
.L_013A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_019A,4

.section .text
.balign 16
_PPCMDLINE:
push ebp
mov ebp, esp
sub esp, 40
.L_0181:
cmp dword ptr [_PARSER+96], 0
jbe .L_0184
push 0
push 1
push 0
push 46
call _ERRREPORTWARN
add esp, 16
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0182
.L_0184:
.L_0183:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_0186
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0182
.L_0186:
.L_0185:
call _LEXGETTEXT
mov dword ptr [ebp-4], eax
cmp dword ptr [_ENV+860], 0
jle .L_0188
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 2
push offset _Lt_00EF
push -1
push 0
push dword ptr [ebp-4]
push 11
push offset _Lt_0189
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_0188:
.L_0187:
cmp dword ptr [_PARSER+100], 0
je .L_018E
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0190
push 0
push 0
push 61
call _ERRREPORT
add esp, 12
jmp .L_018F
.L_0190:
push 0
push 0
push 96
call _ERRREPORT
add esp, 12
.L_018F:
jmp .L_018D
.L_018E:
cmp dword ptr [_ENV+1108], 1
je .L_0191
push 0
push 1
push 0
push 46
call _ERRREPORTWARN
add esp, 16
jmp .L_018D
.L_0191:
push 42
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0192
push 0
push 1
push 0
push 46
call _ERRREPORTWARN
add esp, 16
jmp .L_018D
.L_0192:
mov eax, dword ptr [_ENV+1120]
and eax, 10
test eax, eax
je .L_0193
jmp .L_018D
.L_0193:
push 5
push offset _Lt_0195
push -1
push 0
push dword ptr [ebp-4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_TRIM
add esp, 4
push eax
call _fb_StrLcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0194
push 10
call _FBRESTARTACCEPTREQUEST
add esp, 4
call _ERRHIDEFURTHERERRORS
jmp .L_018D
.L_0194:
push 9
push offset _Lt_0197
push -1
push 0
push dword ptr [ebp-4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_TRIM
add esp, 4
push eax
call _fb_StrLcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0196
push 8
call _FBRESTARTBEGINREQUEST
add esp, 4
push 10
call _FBRESTARTACCEPTREQUEST
add esp, 4
call _ERRHIDEFURTHERERRORS
jmp .L_018D
.L_0196:
push 0
push -1
push dword ptr [ebp-4]
call _FBCPARSEARGSFROMSTRING
add esp, 12
.L_018D:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0182:
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

.globl _PP
.balign 4
	.lcomm	_PP,220

.section .data
.balign 4
_KWDTB:
.int _Lt_0068
.int 266
.skip 4,0
.int _Lt_0069
.int 267
.skip 4,0
.int _Lt_006A
.int 268
.skip 4,0
.int _Lt_006B
.int 269
.skip 4,0
.int _Lt_006C
.int 270
.skip 4,0
.int _Lt_006D
.int 271
.skip 4,0
.int _Lt_006E
.int 272
.skip 4,0
.int _Lt_006F
.int 273
.skip 4,0
.int _Lt_0070
.int 274
.skip 4,0
.int _Lt_0071
.int 275
.skip 4,0
.int _Lt_0072
.int 276
.skip 4,0
.int _Lt_0073
.int 278
.skip 4,0
.int _Lt_0074
.int 277
.skip 4,0
.int _Lt_0075
.int 279
.skip 4,0
.int _Lt_0076
.int 280
.skip 4,0
.int _Lt_0077
.int 281
.skip 4,0
.int _Lt_0078
.int 282
.skip 4,0
.int _Lt_0079
.int 283
.skip 4,0
.int _Lt_007A
.int 284
.skip 4,0
.int _Lt_007B
.int 285
.skip 4,0
.int _Lt_007C
.int 286
.skip 4,0
.int _Lt_007D
.int 287
.skip 4,0
.int _Lt_007E
.int 288
.skip 4,0
.long 0
.skip 8,0
.balign 4
_Lt_0068:	.ascii	"IF\0"
.balign 4
_Lt_0069:	.ascii	"IFDEF\0"
.balign 4
_Lt_006A:	.ascii	"IFNDEF\0"
.balign 4
_Lt_006B:	.ascii	"ELSE\0"
.balign 4
_Lt_006C:	.ascii	"ELSEIF\0"
.balign 4
_Lt_006D:	.ascii	"ENDIF\0"
.balign 4
_Lt_006E:	.ascii	"DEFINE\0"
.balign 4
_Lt_006F:	.ascii	"UNDEF\0"
.balign 4
_Lt_0070:	.ascii	"MACRO\0"
.balign 4
_Lt_0071:	.ascii	"ENDMACRO\0"
.balign 4
_Lt_0072:	.ascii	"INCLUDE\0"
.balign 4
_Lt_0073:	.ascii	"LIBPATH\0"
.balign 4
_Lt_0074:	.ascii	"INCLIB\0"
.balign 4
_Lt_0075:	.ascii	"PRAGMA\0"
.balign 4
_Lt_0076:	.ascii	"PRINT\0"
.balign 4
_Lt_0077:	.ascii	"ERROR\0"
.balign 4
_Lt_0078:	.ascii	"LINE\0"
.balign 4
_Lt_0079:	.ascii	"LANG\0"
.balign 4
_Lt_007A:	.ascii	"ASSERT\0"
.balign 4
_Lt_007B:	.ascii	"CMDLINE\0"
.balign 4
_Lt_007C:	.ascii	"DUMP\0"
.balign 4
_Lt_007D:	.ascii	"ODUMP\0"
.balign 4
_Lt_007E:	.ascii	"LOOKUP\0"
.balign 4
_Lt_00AF:	.ascii	"#undef\0"
.balign 4
_Lt_00CD:	.ascii	"ONCE\0"
.balign 4
_Lt_00D6:	.ascii	"#inclib\0"
.balign 4
_Lt_00DE:	.ascii	"#libpath\0"
.balign 4
_Lt_00EE:	.ascii	"#lang \"\0"
.balign 4
_Lt_00EF:	.ascii	"\"\0"
.balign 4
_Lt_0110:	.ascii	"\n\0"
.balign 4
_Lt_0121:	.ascii	"_\0"
.balign 4
_Lt_0124:	.ascii	"##\0"
.balign 4
_Lt_0132:	.ascii	" \0"
.balign 4
_Lt_0189:	.ascii	"#cmdline \"\0"
.balign 4
_Lt_0195:	.ascii	"-end\0"
.balign 4
_Lt_0197:	.ascii	"-restart\0"

.section .ctors
.int _fb_ctor__pp
