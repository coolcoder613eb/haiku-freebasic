	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERSETCTX
_PARSERSETCTX:
.L_0067:
mov dword ptr [_PARSER+96], 0
mov dword ptr [_PARSER+100], 0
mov dword ptr [_PARSER+108], 0
mov dword ptr [_PARSER+112], 0
mov dword ptr [_PARSER+88], 0
mov dword ptr [_PARSER+92], 0
mov dword ptr [_PARSER+104], 0
mov dword ptr [_PARSER+28], 0
mov dword ptr [_PARSER+24], 0
mov dword ptr [_PARSER+148], 0
mov dword ptr [_PARSER+152], 2
mov dword ptr [_PARSER+160], 0
mov dword ptr [_PARSER+156], -2147483648
call _PARSERCOMPOUNDSTMTSETCTX
.L_0068:
ret
.balign 16

.globl _PARSERINIT
_PARSERINIT:
.L_0069:
call _PARSERCOMPOUNDSTMTINIT
call _PARSERPROCCALLINIT
call _PARSERLETINIT
call _PARSERASMINIT
.L_006A:
ret
.balign 16

.globl _PARSEREND
_PARSEREND:
.L_006B:
call _PARSERASMEND
call _PARSERLETEND
call _PARSERPROCCALLEND
call _PARSERCOMPOUNDSTMTEND
.L_006C:
ret
.balign 16

.globl _CPROGRAM
_CPROGRAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0075:
mov eax, dword ptr [_PP+208]
mov dword ptr [ebp-4], eax
.L_0077:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .L_007B
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+12536]
push ebx
call _DZSTRRESET
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
call _FBSHOULDCONTINUE
test eax, eax
jne .L_007D
jmp .L_0076
.L_007D:
.L_007C:
inc dword ptr [_PARSER+28]
jmp .L_0079
.L_007B:
.L_007A:
push 0
call _CCOMMENT
add esp, 4
test eax, eax
je .L_007F
call _FBSHOULDCONTINUE
test eax, eax
jne .L_0081
jmp .L_0076
.L_0081:
.L_0080:
jmp .L_0079
.L_007F:
.L_007E:
call _FBSHOULDRESTART
test eax, eax
je .L_0083
jmp .L_0076
jmp .L_0082
.L_0083:
call _FBSHOULDCONTINUE
test eax, eax
jne .L_0084
jmp .L_0076
.L_0084:
.L_0082:
mov dword ptr [_PARSER+96], 1
push dword ptr [_ENV+568]
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4280]
push 113
call _ASTNEWDBG
add esp, 12
push eax
call _ASTADD
add esp, 4
call _CLABEL
call _CSTATEMENT
push 0
call _CCOMMENT
add esp, 4
call _FBSHOULDCONTINUE
test eax, eax
jne .L_0086
jmp .L_0076
.L_0086:
.L_0085:
cmp dword ptr [_ENV+148], 0
je .L_0088
cmp dword ptr [_ENV+900], 0
jne .L_008A
call _HEMITCURRENTLINETEXT
.L_008A:
.L_0089:
.L_0088:
.L_0087:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 257
jne .L_008D
.L_008E:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_008B
.L_008D:
cmp dword ptr [ebp-8], 256
jne .L_008F
.L_0090:
jmp .L_008B
.L_008F:
push 0
push 0
push 3
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL
add esp, 16
.L_0091:
.L_008B:
call _FBSHOULDCONTINUE
test eax, eax
jne .L_0093
jmp .L_0076
.L_0093:
.L_0092:
push 0
push 0
push 114
call _ASTNEWDBG
add esp, 12
push eax
call _ASTADD
add esp, 4
inc dword ptr [_PARSER+28]
.L_0079:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
jne .L_0077
.L_0078:
mov eax, dword ptr [ebp-4]
cmp dword ptr [_PP+208], eax
je .L_0095
push 0
push 0
push 290
call _ERRREPORT
add esp, 12
.L_0095:
.L_0094:
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [_ENV+900], 0
jne .L_0097
call _CCOMPSTMTCHECK
.L_0097:
.L_0096:
.L_0076:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSKIPUNTIL
_HSKIPUNTIL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0098:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.L_009A:
push dword ptr [ebp+16]
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_009E
.L_00A0:
jmp .L_009B
jmp .L_009D
.L_00A1:
cmp dword ptr [ebp+8], 257
je .L_00A3
jmp .L_009B
.L_00A3:
.L_00A2:
jmp .L_009D
.L_00A4:
jmp .L_0099
jmp .L_009D
.L_00A5:
cmp dword ptr [ebp+8], 40
jne .L_00A7
jmp .L_009B
.L_00A7:
.L_00A6:
inc dword ptr [ebp-4]
jmp .L_009D
.L_00A8:
inc dword ptr [ebp-4]
jmp .L_009D
.L_00A9:
cmp dword ptr [ebp-4], 0
jle .L_00AB
dec dword ptr [ebp-4]
jmp .L_00AA
.L_00AB:
cmp dword ptr [ebp+8], 41
jne .L_00AD
jmp .L_009B
.L_00AD:
.L_00AC:
.L_00AA:
jmp .L_009D
.L_00AE:
cmp dword ptr [ebp-4], 0
jle .L_00B0
dec dword ptr [ebp-4]
jmp .L_00AF
.L_00B0:
cmp dword ptr [ebp+8], 125
jne .L_00B2
jmp .L_009B
.L_00B2:
.L_00B1:
.L_00AF:
jmp .L_009D
.L_00B3:
mov eax, dword ptr [ebp+8]
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .L_00B5
cmp dword ptr [ebp-4], 0
jne .L_00B7
jmp .L_009B
.L_00B7:
.L_00B6:
.L_00B5:
.L_00B4:
jmp .L_009D
.L_00B8:
push dword ptr [ebp+16]
call _LEXGETTOKEN
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .L_00BA
jmp .L_009B
.L_00BA:
.L_00B9:
jmp .L_009D
.L_009E:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967256
cmp ebx, 220
ja .L_00B8
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_00BB+ebx*4-160]
_.L_00BB:
.int .L_00A5
.int .L_00A9
.int .L_00B8
.int .L_00B8
.int .L_00B3
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00A8
.int .L_00B8
.int .L_00AE
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00A4
.int .L_00A0
.int .L_00A1
.int .L_00A1
.int .L_00A1
.L_009D:
push dword ptr [ebp+16]
call _LEXSKIPTOKEN
add esp, 4
.L_009C:
jmp .L_009A
.L_009B:
cmp dword ptr [ebp+12], 0
je .L_00BD
push dword ptr [ebp+16]
call _LEXGETTOKEN
add esp, 4
cmp dword ptr [ebp+8], eax
jne .L_00BF
push dword ptr [ebp+16]
call _LEXSKIPTOKEN
add esp, 4
.L_00BF:
.L_00BE:
.L_00BD:
.L_00BC:
.L_0099:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSKIPCOMPOUND
_HSKIPCOMPOUND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00C1:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], -1
jne .L_00C4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_00C4:
.L_00C3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
.L_00C5:
push dword ptr [ebp+16]
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .L_00CA
.L_00CB:
jmp .L_00C2
jmp .L_00C8
.L_00CA:
cmp dword ptr [ebp-12], 257
jne .L_00CC
.L_00CD:
mov dword ptr [ebp-8], 0
jmp .L_00C8
.L_00CC:
cmp dword ptr [ebp-12], 259
je .L_00CF
.L_00D0:
cmp dword ptr [ebp-12], 260
jne .L_00CE
.L_00CF:
mov dword ptr [ebp-8], -1
jmp .L_00C8
.L_00CE:
cmp dword ptr [ebp-12], 340
jne .L_00D1
.L_00D2:
cmp dword ptr [ebp-8], 0
jne .L_00D4
push dword ptr [ebp+16]
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .L_00D6
push dword ptr [ebp+16]
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-4], 0
jle .L_00D8
dec dword ptr [ebp-4]
.L_00D8:
.L_00D7:
cmp dword ptr [ebp-4], 0
jne .L_00DA
jmp .L_00C6
.L_00DA:
.L_00D9:
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
jmp .L_00C8
.L_00D1:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-12], ebx
jne .L_00DB
.L_00DC:
cmp dword ptr [ebp-8], 0
jne .L_00DE
inc dword ptr [ebp-4]
.L_00DE:
.L_00DD:
.L_00DB:
.L_00C8:
push dword ptr [ebp+16]
call _LEXSKIPTOKEN
add esp, 4
.L_00C7:
jmp .L_00C5
.L_00C6:
push dword ptr [ebp+16]
call _LEXSKIPTOKEN
add esp, 4
.L_00C2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HMATCHEXPR
_HMATCHEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00DF:
mov dword ptr [ebp-8], 0
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E2
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
cmp dword ptr [ebp+8], -2147483648
jne .L_00E4
mov dword ptr [ebp-4], 0
jmp .L_00E0
.L_00E4:
.L_00E3:
push 0
push dword ptr [ebp+8]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-8], eax
.L_00E2:
.L_00E1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00E0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__parserztoplevel:
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
_HEMITCURRENTLINETEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_006D:
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_006F:
cmp dword ptr [ebp-4], 0
je .L_0070
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 30
jne .L_0072
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+28], 113
jne .L_0074
push dword ptr [ebp-4]
mov ebx, dword ptr [_LEX+213384]
push dword ptr [ebx+12536]
call _ASTNEWLIT
add esp, 4
push eax
call _ASTADDAFTER
add esp, 8
jmp .L_0070
.L_0074:
.L_0073:
.L_0072:
.L_0071:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
jmp .L_006F
.L_0070:
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+12536]
push eax
call _DZSTRRESET
add esp, 4
.L_006E:
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

.globl _PARSER
.balign 4
	.lcomm	_PARSER,168

.section .ctors
.int _fb_ctor__parserztoplevel
