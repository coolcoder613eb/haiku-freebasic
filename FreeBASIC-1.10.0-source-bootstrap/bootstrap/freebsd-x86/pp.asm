	.intel_syntax noprefix

.section .text
.balign 16

.globl PPINIT
PPINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_007E:
mov dword ptr [ebp-4], 0
mov dword ptr [PP], 8
mov word ptr [PP+36], 0
lea eax, [PP]
mov dword ptr [PP+56], eax
mov dword ptr [PP+60], 0
mov dword ptr [PP+64], 0
lea eax, [PP]
mov dword ptr [PP+68], eax
mov dword ptr [PP+84], 0
mov dword ptr [PP+88], 0
push 0
push 24
lea eax, [PP+72]
push eax
call HASHINIT
add esp, 12
jmp .L_0080
.L_0081:
push 12
push 0
lea eax, [PP+72]
push eax
call memset
add esp, 12
.L_0080:
lea eax, [SYMB+98652]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [PP+92], eax
mov dword ptr [ebp-4], 0
.L_0085:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [KWDTB+eax], 0
jne .L_0087
jmp .L_0084
.L_0087:
.L_0086:
push 0
push -2147483648
lea eax, [PP+68]
push eax
push 1
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [KWDTB+eax+4]
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [KWDTB+eax]
call SYMBADDKEYWORD
add esp, 24
mov ebx, dword ptr [ebp-4]
imul ebx, 12
mov dword ptr [KWDTB+ebx+8], eax
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [KWDTB+eax+8], 0
jne .L_0089
jmp .L_007F
.L_0089:
.L_0088:
.L_0083:
inc dword ptr [ebp-4]
.L_0082:
cmp dword ptr [ebp-4], 23
jle .L_0085
.L_0084:
mov dword ptr [PP+212], 0
call PPDEFINEINIT
call PPCONDINIT
call PPPRAGMAINIT
.L_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPEND
PPEND:
push ebp
mov ebp, esp
sub esp, 4
.L_008A:
mov dword ptr [ebp-4], 0
call PPPRAGMAEND
call PPCONDEND
call PPDEFINEEND
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [KWDTB+eax+8], 0
jne .L_0091
jmp .L_008E
.L_0091:
.L_0090:
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [KWDTB+eax+8]
call SYMBFREESYMBOL
add esp, 4
mov eax, dword ptr [ebp-4]
imul eax, 12
mov dword ptr [KWDTB+eax+8], 0
.L_008D:
inc dword ptr [ebp-4]
.L_008C:
cmp dword ptr [ebp-4], 23
jle .L_008F
.L_008E:
push dword ptr [PP+92]
lea eax, [SYMB+98652]
push eax
call LISTDELNODE
add esp, 8
lea eax, [PP+72]
push eax
call HASHEND
add esp, 4
.L_008B:
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPCHECK
PPCHECK:
push ebx
.L_0092:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], 35
je .L_0095
jmp .L_0093
.L_0095:
.L_0094:
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16576], 0
je .L_0097
jmp .L_0093
.L_0097:
.L_0096:
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16572], 257
je .L_0099
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16572], -1
je .L_009B
jmp .L_0093
.L_009B:
.L_009A:
.L_0099:
.L_0098:
mov ebx, dword ptr [LEX+840072]
inc dword ptr [ebx+16576]
lea ebx, [PP]
mov eax, dword ptr [LEX+840072]
mov dword ptr [eax+16584], ebx
push 256
call LEXSKIPTOKEN
add esp, 4
call PPPARSE
mov ebx, dword ptr [LEX+840072]
dec dword ptr [ebx+16576]
.L_0093:
pop ebx
ret
.balign 16

.globl PPPARSE
PPPARSE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_009C:
push 256
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_009F
.L_00A1:
push 2050
call LEXSKIPTOKEN
add esp, 4
push 0
call PPDEFINE
add esp, 4
jmp .L_009E
.L_00A2:
push 2050
call LEXSKIPTOKEN
add esp, 4
push -1
call PPDEFINE
add esp, 4
jmp .L_009E
.L_00A3:
push 2050
call LEXSKIPTOKEN
add esp, 4
push 0
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00A5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00A7
push 0
push 0
push 123
call ERRREPORT
add esp, 12
jmp .L_00A6
.L_00A7:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .L_00A9
push 0
push 0
push 177
call ERRREPORT
add esp, 12
jmp .L_00A8
.L_00A9:
cmp dword ptr [ENV+860], 0
jle .L_00AB
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 5
je .L_00AD
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 7
push offset Lt_00AE
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
call LEXPPONLYEMITTOKEN
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
push dword ptr [ebp-16]
call SYMBDELFROMHASH
add esp, 4
.L_00A8:
.L_00A6:
.L_00A5:
.L_00A4:
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_009E
.L_00B0:
call PPCONDIF
jmp .L_009E
.L_00B1:
call PPCONDELSE
jmp .L_009E
.L_00B2:
call PPCONDENDIF
jmp .L_009E
.L_00B3:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPASSERT
jmp .L_009E
.L_00B4:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
jmp .L_009E
.L_00B5:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
jmp .L_009E
.L_00B6:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
jmp .L_009E
.L_00B7:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 1
push 0
call PPREADLITERAL
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_009E
.L_00B8:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 1
push 0
push 0
call PPREADLITERAL
add esp, 4
push eax
push -1
call ERRREPORTEX
add esp, 20
inc dword ptr [PARSER+28]
jmp .L_009E
.L_00B9:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPINCLUDE
jmp .L_009E
.L_00BA:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPINCLIB
jmp .L_009E
.L_00BB:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPLIBPATH
jmp .L_009E
.L_00BC:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPPRAGMA
jmp .L_009E
.L_00BD:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPLINE
jmp .L_009E
.L_00BE:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPLANG
jmp .L_009E
.L_00BF:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPCMDLINE
jmp .L_009E
.L_00C0:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
jmp .L_009E
.L_009F:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 22
ja .L_00C0
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_00C1+eax*4-1064]
.L_00C1:
.int .L_00B0
.int .L_00B0
.int .L_00B0
.int .L_00B1
.int .L_00B1
.int .L_00B2
.int .L_00A1
.int .L_00A3
.int .L_00A2
.int .L_00C0
.int .L_00B9
.int .L_00BA
.int .L_00BB
.int .L_00BC
.int .L_00B7
.int .L_00B8
.int .L_00BD
.int .L_00BE
.int .L_00B3
.int .L_00BF
.int .L_00B4
.int .L_00B5
.int .L_00B6
.L_009E:
push 0
call CCOMMENT
add esp, 4
cmp dword ptr [ENV+148], 0
je .L_00C3
cmp dword ptr [ENV+900], 0
jne .L_00C5
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 4
.L_00C5:
.L_00C4:
.L_00C3:
.L_00C2:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_00C7
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 256
je .L_00C9
push 0
push 0
push 3
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
.L_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPREADLITERAL
PPREADLITERAL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00FF:
mov dword ptr [ebp-8], 0
push offset Lt_0137
call DZSTRRESET
add esp, 4
.L_0101:
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0105
.L_0107:
cmp dword ptr [ebp+8], 0
je .L_0109
push 0
push 0
push 134
call ERRREPORT
add esp, 12
.L_0109:
.L_0108:
jmp .L_0102
jmp .L_0104
.L_010A:
cmp dword ptr [ebp+8], 0
jne .L_010C
jmp .L_0102
.L_010C:
.L_010B:
cmp dword ptr [Lt_0137+4], 0
jle .L_010E
push offset Lt_010F
push offset Lt_0137
call DZSTRCONCATASSIGN
add esp, 8
.L_010E:
.L_010D:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_0103
jmp .L_0104
.L_0110:
cmp dword ptr [ebp+8], 0
jne .L_0112
jmp .L_0102
.L_0112:
.L_0111:
.L_0113:
push 63
call LEXSKIPTOKEN
add esp, 4
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .L_0119
.L_011A:
cmp dword ptr [ebp-16], 256
jne .L_0118
.L_0119:
jmp .L_0114
.L_0118:
.L_0116:
.L_0115:
jmp .L_0113
.L_0114:
jmp .L_0103
jmp .L_0104
.L_011B:
push 314
push 1
call LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 35
jne .L_011E
.L_011F:
push 62
call LEXSKIPTOKEN
add esp, 4
push 63
call LEXSKIPTOKEN
add esp, 4
push 2
push offset Lt_0120
push 0
call LEXGETTEXT
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0122
push offset Lt_0123
push offset Lt_0137
call DZSTRCONCATASSIGN
add esp, 8
.L_0122:
.L_0121:
jmp .L_011C
.L_011E:
cmp dword ptr [ebp-16], 274
jne .L_0124
.L_0125:
cmp dword ptr [ebp+8], 0
je .L_0127
inc dword ptr [ebp-8]
.L_0127:
.L_0126:
jmp .L_011C
.L_0124:
cmp dword ptr [ebp-16], 275
jne .L_0128
.L_0129:
cmp dword ptr [ebp+8], 0
je .L_012B
cmp dword ptr [ebp-8], 0
jne .L_012D
push 62
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
push offset Lt_0137
call HRTRIMMACROTEXT
add esp, 4
jmp .L_0102
.L_012D:
.L_012C:
dec dword ptr [ebp-8]
.L_012B:
.L_012A:
.L_0128:
.L_011C:
jmp .L_0104
.L_012E:
cmp dword ptr [Lt_0137+4], 0
jle .L_0130
push offset Lt_0131
push offset Lt_0137
call DZSTRCONCATASSIGN
add esp, 8
.L_0130:
.L_012F:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_0103
jmp .L_0104
.L_0132:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call PPTYPEOF
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push offset Lt_0137
call DZSTRCONCATASSIGN
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0102
jmp .L_0104
.L_0105:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .L_0104
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0134+eax*4-36]
.L_0134:
.int .L_012E
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_012E
.int .L_0104
.int .L_0104
.int .L_011B
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0107
.int .L_010A
.int .L_0104
.int .L_0110
.int .L_0110
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0104
.int .L_0132
.L_0104:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .L_0136
call LEXGETTEXT
push eax
push offset Lt_0137
call DZSTRCONCATASSIGN
add esp, 8
jmp .L_0135
.L_0136:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push offset Lt_0137
call DZSTRCONCATASSIGNW
add esp, 8
.L_0135:
push 62
call LEXSKIPTOKEN
add esp, 4
.L_0103:
jmp .L_0101
.L_0102:
mov eax, dword ptr [Lt_0137]
mov dword ptr [ebp-4], eax
.L_0100:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0137,12

.section .text
.balign 16

.globl PPREADLITERALW
PPREADLITERALW:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0142:
mov dword ptr [ebp-8], 0
push 0
push offset Lt_0178
call DWSTRALLOCATE
add esp, 8
.L_0144:
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0148
.L_014A:
cmp dword ptr [ebp+8], 0
je .L_014C
push 0
push 0
push 134
call ERRREPORT
add esp, 12
.L_014C:
.L_014B:
jmp .L_0145
jmp .L_0147
.L_014D:
cmp dword ptr [ebp+8], 0
jne .L_014F
jmp .L_0145
.L_014F:
.L_014E:
cmp dword ptr [Lt_0178+4], 0
jle .L_0151
push offset Lt_0152
push offset Lt_0178
call DWSTRCONCATASSIGN
add esp, 8
.L_0151:
.L_0150:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_0146
jmp .L_0147
.L_0153:
cmp dword ptr [ebp+8], 0
jne .L_0155
jmp .L_0145
.L_0155:
.L_0154:
.L_0156:
push 63
call LEXSKIPTOKEN
add esp, 4
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .L_015C
.L_015D:
cmp dword ptr [ebp-16], 256
jne .L_015B
.L_015C:
jmp .L_0157
.L_015B:
.L_0159:
.L_0158:
jmp .L_0156
.L_0157:
jmp .L_0146
jmp .L_0147
.L_015E:
push 314
push 1
call LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 35
jne .L_0161
.L_0162:
push 62
call LEXSKIPTOKEN
add esp, 4
push 63
call LEXSKIPTOKEN
add esp, 4
push 2
push offset Lt_0120
push 0
call LEXGETTEXT
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0164
push offset Lt_0123
push offset Lt_0178
call DWSTRCONCATASSIGNA
add esp, 8
.L_0164:
.L_0163:
jmp .L_015F
.L_0161:
cmp dword ptr [ebp-16], 274
jne .L_0165
.L_0166:
cmp dword ptr [ebp+8], 0
je .L_0168
inc dword ptr [ebp-8]
.L_0168:
.L_0167:
jmp .L_015F
.L_0165:
cmp dword ptr [ebp-16], 275
jne .L_0169
.L_016A:
cmp dword ptr [ebp+8], 0
je .L_016C
cmp dword ptr [ebp-8], 0
jne .L_016E
push 62
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
push offset Lt_0178
call HRTRIMMACROTEXTW
add esp, 4
jmp .L_0145
.L_016E:
.L_016D:
dec dword ptr [ebp-8]
.L_016C:
.L_016B:
.L_0169:
.L_015F:
jmp .L_0147
.L_016F:
cmp dword ptr [Lt_0178+4], 0
jle .L_0171
push offset Lt_0172
push offset Lt_0178
call DWSTRCONCATASSIGN
add esp, 8
.L_0171:
.L_0170:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_0146
jmp .L_0147
.L_0173:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call PPTYPEOF
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push offset Lt_0178
call DWSTRCONCATASSIGNA
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0145
jmp .L_0147
.L_0148:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .L_0147
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0175+eax*4-36]
.L_0175:
.int .L_016F
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_016F
.int .L_0147
.int .L_0147
.int .L_015E
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_014A
.int .L_014D
.int .L_0147
.int .L_0153
.int .L_0153
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0147
.int .L_0173
.L_0147:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
jne .L_0177
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
push offset Lt_0178
call DWSTRCONCATASSIGN
add esp, 8
jmp .L_0176
.L_0177:
call LEXGETTEXT
push eax
push offset Lt_0178
call DWSTRCONCATASSIGNA
add esp, 8
.L_0176:
push 62
call LEXSKIPTOKEN
add esp, 4
.L_0146:
jmp .L_0144
.L_0145:
mov eax, dword ptr [Lt_0178]
mov dword ptr [ebp-4], eax
.L_0143:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0178,12

.section .text
.balign 16

.globl PPTYPEOF
PPTYPEOF:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0179:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_017C
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .L_017B
.L_017C:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_017B:
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
call CTYPEOF
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call SYMBTYPETOSTR
add esp, 20
push eax
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_017F
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_017E
.L_017F:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_017E:
.L_017A:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__pp:
.L_0002:
.L_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
PPINCLUDE:
push ebp
mov ebp, esp
sub esp, 4
.L_00CA:
push 2048
push offset Lt_00CC
call HMATCHIDORKW
add esp, 8
mov dword ptr [ebp-4], eax
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00CE
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_00CB
.L_00CE:
.L_00CD:
push 0
push offset Lt_0197
call LEXEATTOKEN
add esp, 8
push dword ptr [ebp-4]
push offset Lt_0197
call FBINCLUDEFILE
add esp, 8
.L_00CB:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0197,261

.section .text
.balign 16
PPINCLIB:
push ebp
mov ebp, esp
sub esp, 12
.L_00CF:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00D2
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_00D0
.L_00D2:
.L_00D1:
cmp dword ptr [ENV+860], 0
jle .L_00D4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset Lt_00D5
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
call LEXPPONLYEMITTOKEN
.L_00D4:
.L_00D3:
call LEXGETTEXT
push eax
call FBADDLIB
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00D0:
mov esp, ebp
pop ebp
ret
.balign 16
PPLIBPATH:
push ebp
mov ebp, esp
sub esp, 12
.L_00D7:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00DA
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_00D8
.L_00DA:
.L_00D9:
cmp dword ptr [ENV+860], 0
jle .L_00DC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset Lt_00DD
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
call LEXPPONLYEMITTOKEN
.L_00DC:
.L_00DB:
call LEXGETTEXT
push eax
call FBADDLIBPATH
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00D8:
mov esp, ebp
pop ebp
ret
.balign 16
PPLINE:
push ebx
.L_00DF:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 3
je .L_00E2
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_00E1
.L_00E2:
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 4
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16568], eax
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
jne .L_00E4
call LEXGETTEXT
push eax
call FBOVERRIDEFILENAME
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00E4:
.L_00E3:
.L_00E1:
.L_00E0:
pop ebx
ret
.balign 16
PPLANG:
push ebp
mov ebp, esp
sub esp, 40
.L_00E5:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_00E8
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_00E6
.L_00E8:
.L_00E7:
call LEXGETTEXT
push eax
call FBGETLANGID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .L_00EA
push 0
push 0
push 279
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_00E6
.L_00EA:
.L_00E9:
cmp dword ptr [ENV+860], 0
jle .L_00EC
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 2
push offset Lt_00EE
push -1
push -1
push dword ptr [ebp-4]
call FBGETLANGNAME
add esp, 4
push eax
push 8
push offset Lt_00ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_00EC:
.L_00EB:
push dword ptr [ebp-4]
push 10
call FBCHANGEOPTION
add esp, 8
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00E6:
mov esp, ebp
pop ebp
ret
.balign 16
HRTRIMMACROTEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00F2:
cmp dword ptr [ebp+8], 0
jne .L_00F5
jmp .L_00F3
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00F6
jmp .L_00F3
.L_00F6:
.L_00F4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx+4]
dec ecx
mov dword ptr [Lt_0198], ecx
.L_00F7:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp dword ptr [Lt_0198], ebx
jbe .L_00F8
mov ebx, dword ptr [Lt_0198]
movzx ecx, byte ptr [ebx]
mov dword ptr [ebp-4], ecx
jmp .L_00FA
.L_00FC:
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [Lt_0198]
mov byte ptr [ecx], 0
jmp .L_00F9
.L_00FD:
jmp .L_00F8
jmp .L_00F9
.L_00FA:
mov ecx, dword ptr [ebp-4]
add ecx, 4294967287
cmp ecx, 23
ja .L_00FD
mov ecx, dword ptr [ebp-4]
jmp dword ptr [.L_00FE+ecx*4-36]
.L_00FE:
.int .L_00FC
.int .L_00FC
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FD
.int .L_00FC
.L_00F9:
dec dword ptr [Lt_0198]
jmp .L_00F7
.L_00F8:
.L_00F3:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0198,4

.section .text
.balign 16
HRTRIMMACROTEXTW:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0138:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
sal ecx, 2
mov ebx, dword ptr [eax]
add ebx, ecx
add ebx, -4
mov dword ptr [Lt_0199], ebx
.L_013A:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp dword ptr [Lt_0199], ecx
jbe .L_013B
mov ecx, dword ptr [Lt_0199]
mov ebx, dword ptr [ecx]
mov dword ptr [ebp-4], ebx
jmp .L_013D
.L_013F:
mov ebx, dword ptr [ebp+8]
dec dword ptr [ebx+4]
mov ebx, dword ptr [Lt_0199]
mov dword ptr [ebx], 0
jmp .L_013C
.L_0140:
jmp .L_013B
jmp .L_013C
.L_013D:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967287
cmp ebx, 23
ja .L_0140
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_0141+ebx*4-36]
.L_0141:
.int .L_013F
.int .L_013F
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_0140
.int .L_013F
.L_013C:
add dword ptr [Lt_0199], -4
jmp .L_013A
.L_013B:
.L_0139:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0199,4

.section .text
.balign 16
PPCMDLINE:
push ebp
mov ebp, esp
sub esp, 40
.L_0180:
cmp dword ptr [PARSER+96], 0
jbe .L_0183
push 0
push 1
push 0
push 46
call ERRREPORTWARN
add esp, 16
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_0181
.L_0183:
.L_0182:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_0185
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_0181
.L_0185:
.L_0184:
call LEXGETTEXT
mov dword ptr [ebp-4], eax
cmp dword ptr [ENV+860], 0
jle .L_0187
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 2
push offset Lt_00EE
push -1
push 0
push dword ptr [ebp-4]
push 11
push offset Lt_0188
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_0187:
.L_0186:
cmp dword ptr [PARSER+100], 0
je .L_018D
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_018F
push 0
push 0
push 61
call ERRREPORT
add esp, 12
jmp .L_018E
.L_018F:
push 0
push 0
push 96
call ERRREPORT
add esp, 12
.L_018E:
jmp .L_018C
.L_018D:
cmp dword ptr [ENV+1108], 1
je .L_0190
push 0
push 1
push 0
push 46
call ERRREPORTWARN
add esp, 16
jmp .L_018C
.L_0190:
push 42
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0191
push 0
push 1
push 0
push 46
call ERRREPORTWARN
add esp, 16
jmp .L_018C
.L_0191:
mov eax, dword ptr [ENV+1120]
and eax, 10
test eax, eax
je .L_0192
jmp .L_018C
.L_0192:
push 5
push offset Lt_0194
push -1
push 0
push dword ptr [ebp-4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_TRIM
add esp, 4
push eax
call fb_StrLcase2
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0193
push 10
call FBRESTARTACCEPTREQUEST
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .L_018C
.L_0193:
push 9
push offset Lt_0196
push -1
push 0
push dword ptr [ebp-4]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_TRIM
add esp, 4
push eax
call fb_StrLcase2
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0195
push 8
call FBRESTARTBEGINREQUEST
add esp, 4
push 10
call FBRESTARTACCEPTREQUEST
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .L_018C
.L_0195:
push 0
push -1
push dword ptr [ebp-4]
call FBCPARSEARGSFROMSTRING
add esp, 12
.L_018C:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0181:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.globl PP
.balign 4
	.lcomm	PP,220

.section .data
.balign 4
KWDTB:
.int Lt_0067
.int 266
.skip 4,0
.int Lt_0068
.int 267
.skip 4,0
.int Lt_0069
.int 268
.skip 4,0
.int Lt_006A
.int 269
.skip 4,0
.int Lt_006B
.int 270
.skip 4,0
.int Lt_006C
.int 271
.skip 4,0
.int Lt_006D
.int 272
.skip 4,0
.int Lt_006E
.int 273
.skip 4,0
.int Lt_006F
.int 274
.skip 4,0
.int Lt_0070
.int 275
.skip 4,0
.int Lt_0071
.int 276
.skip 4,0
.int Lt_0072
.int 278
.skip 4,0
.int Lt_0073
.int 277
.skip 4,0
.int Lt_0074
.int 279
.skip 4,0
.int Lt_0075
.int 280
.skip 4,0
.int Lt_0076
.int 281
.skip 4,0
.int Lt_0077
.int 282
.skip 4,0
.int Lt_0078
.int 283
.skip 4,0
.int Lt_0079
.int 284
.skip 4,0
.int Lt_007A
.int 285
.skip 4,0
.int Lt_007B
.int 286
.skip 4,0
.int Lt_007C
.int 287
.skip 4,0
.int Lt_007D
.int 288
.skip 4,0
.long 0
.skip 8,0
.balign 4
Lt_0067:	.ascii	"IF\0"
.balign 4
Lt_0068:	.ascii	"IFDEF\0"
.balign 4
Lt_0069:	.ascii	"IFNDEF\0"
.balign 4
Lt_006A:	.ascii	"ELSE\0"
.balign 4
Lt_006B:	.ascii	"ELSEIF\0"
.balign 4
Lt_006C:	.ascii	"ENDIF\0"
.balign 4
Lt_006D:	.ascii	"DEFINE\0"
.balign 4
Lt_006E:	.ascii	"UNDEF\0"
.balign 4
Lt_006F:	.ascii	"MACRO\0"
.balign 4
Lt_0070:	.ascii	"ENDMACRO\0"
.balign 4
Lt_0071:	.ascii	"INCLUDE\0"
.balign 4
Lt_0072:	.ascii	"LIBPATH\0"
.balign 4
Lt_0073:	.ascii	"INCLIB\0"
.balign 4
Lt_0074:	.ascii	"PRAGMA\0"
.balign 4
Lt_0075:	.ascii	"PRINT\0"
.balign 4
Lt_0076:	.ascii	"ERROR\0"
.balign 4
Lt_0077:	.ascii	"LINE\0"
.balign 4
Lt_0078:	.ascii	"LANG\0"
.balign 4
Lt_0079:	.ascii	"ASSERT\0"
.balign 4
Lt_007A:	.ascii	"CMDLINE\0"
.balign 4
Lt_007B:	.ascii	"DUMP\0"
.balign 4
Lt_007C:	.ascii	"ODUMP\0"
.balign 4
Lt_007D:	.ascii	"LOOKUP\0"
.balign 4
Lt_00AE:	.ascii	"#undef\0"
.balign 4
Lt_00CC:	.ascii	"ONCE\0"
.balign 4
Lt_00D5:	.ascii	"#inclib\0"
.balign 4
Lt_00DD:	.ascii	"#libpath\0"
.balign 4
Lt_00ED:	.ascii	"#lang \"\0"
.balign 4
Lt_00EE:	.ascii	"\"\0"
.balign 4
Lt_010F:	.ascii	"\n\0"
.balign 4
Lt_0120:	.ascii	"_\0"
.balign 4
Lt_0123:	.ascii	"##\0"
.balign 4
Lt_0131:	.ascii	" \0"
.balign 4
Lt_0152:	.ascii	"\12\0\0\0\0\0\0\0"
.balign 4
Lt_0172:	.ascii	"\40\0\0\0\0\0\0\0"
.balign 4
Lt_0188:	.ascii	"#cmdline \"\0"
.balign 4
Lt_0194:	.ascii	"-end\0"
.balign 4
Lt_0196:	.ascii	"-restart\0"

.section .ctors
.int fb_ctor__pp
