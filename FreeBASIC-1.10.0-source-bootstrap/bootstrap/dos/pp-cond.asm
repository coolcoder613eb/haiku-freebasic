	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPCONDINIT
_PPCONDINIT:
.L_0068:
mov dword ptr [_PP+208], 0
.L_0069:
ret
.balign 16

.globl _PPCONDEND
_PPCONDEND:
.L_006A:
.L_006B:
ret
.balign 16

.globl _PPCONDIF
_PPCONDIF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0077:
mov dword ptr [ebp-4], 0
push 256
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_007A
.L_007C:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
call _CIDENTIFIERORUDTMEMBER
add esp, 8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0079
.L_007E:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-12]
push ebx
call _CIDENTIFIERORUDTMEMBER
add esp, 8
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0079
.L_0080:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_0079
.L_007A:
mov eax, dword ptr [ebp-8]
add eax, 4294967030
cmp eax, 2
ja .L_0079
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0081+eax*4-1064]
_.L_0081:
.int .L_0080
.int .L_007C
.int .L_007E
.L_0079:
inc dword ptr [_PP+208]
cmp dword ptr [_PP+208], 64
jle .L_0083
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
call _ERRHIDEFURTHERERRORS
jmp .L_0078
.L_0083:
.L_0082:
mov eax, dword ptr [_PP+208]
mov ebx, dword ptr [ebp-4]
mov dword ptr [_PPTB+eax*8-8], ebx
mov ebx, dword ptr [_PP+208]
mov dword ptr [_PPTB+ebx*8-4], 0
cmp dword ptr [ebp-4], 0
jne .L_0085
call _PPSKIP
.L_0085:
.L_0084:
.L_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPCONDELSE
_PPCONDELSE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0088:
mov dword ptr [ebp-4], 0
cmp dword ptr [_PP+208], 0
jne .L_008B
push 0
push 0
push 44
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0089
.L_008B:
.L_008A:
mov eax, dword ptr [_PP+208]
cmp dword ptr [_PPTB+eax*8-4], 0
jle .L_008D
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0089
.L_008D:
.L_008C:
push 256
call _LEXGETTOKEN
add esp, 4
cmp eax, 270
jne .L_008F
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPEXPRESSION
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_PP+208]
cmp dword ptr [_PPTB+eax*8-8], 0
je .L_0091
call _PPSKIP
jmp .L_0089
.L_0091:
.L_0090:
mov eax, dword ptr [_PP+208]
mov ebx, dword ptr [ebp-4]
mov dword ptr [_PPTB+eax*8-8], ebx
jmp .L_008E
.L_008F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [_PP+208]
inc dword ptr [_PPTB+ebx*8-4]
mov ebx, dword ptr [_PP+208]
not dword ptr [_PPTB+ebx*8-8]
.L_008E:
mov ebx, dword ptr [_PP+208]
cmp dword ptr [_PPTB+ebx*8-8], 0
jne .L_0093
call _PPSKIP
.L_0093:
.L_0092:
.L_0089:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPCONDENDIF
_PPCONDENDIF:
.L_0094:
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [_PP+208], 0
jle .L_0097
dec dword ptr [_PP+208]
jmp .L_0096
.L_0097:
push 0
push 0
push 44
call _ERRREPORT
add esp, 12
.L_0096:
.L_0095:
ret
.balign 16

.globl _PPASSERT
_PPASSERT:
push ebp
mov ebp, esp
sub esp, 4
.L_0098:
call _PPEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_009B
push 0
push 0
push 308
call _ERRREPORT
add esp, 12
.L_009B:
.L_009A:
.L_0099:
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__ppzcond:
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
_PPEXPRESSION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006C:
or dword ptr [_PARSER+152], 1024
jmp .L_006E
.L_006F:
and dword ptr [_PARSER+152], -1025
.L_006E:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
jmp .L_0071
or dword ptr [_PARSER+152], 1024
jmp .L_0070
.L_0071:
and dword ptr [_PARSER+152], -1025
.L_0070:
cmp dword ptr [ebp-8], 0
jne .L_0073
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0073:
.L_0072:
push dword ptr [ebp-8]
call _ASTGETSTRLITSYMBOL
add esp, 4
test eax, eax
je .L_0075
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_0076
push 0
push 0
push 11
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0076:
.L_0074:
push dword ptr [ebp-8]
call _ASTCONSTEQZERO
add esp, 4
not eax
mov dword ptr [ebp-4], eax
.L_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_PPSKIP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_009C:
mov dword ptr [_PP+212], -1
push 0
call _CCOMMENT
add esp, 4
cmp dword ptr [_ENV+148], 0
je .L_009F
cmp dword ptr [_ENV+900], 0
jne .L_00A1
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
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_00A3
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
jmp .L_00A2
.L_00A3:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00A2:
mov eax, dword ptr [_PP+208]
mov dword ptr [ebp-4], eax
.L_00A4:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 35
jne .L_00A9
.L_00AA:
push 256
call _LEXSKIPTOKEN
add esp, 4
push 256
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_00AC
.L_00AE:
inc dword ptr [ebp-4]
jmp .L_00AB
.L_00AF:
mov eax, dword ptr [_PP+208]
cmp dword ptr [ebp-4], eax
jne .L_00B1
.L_00B2:
mov dword ptr [_PP+212], 0
call _PPCONDELSE
jmp .L_009D
jmp .L_00B0
.L_00B1:
cmp dword ptr [ebp-4], 0
jne .L_00B3
.L_00B4:
push 0
push 0
push 44
call _ERRREPORT
add esp, 12
.L_00B3:
.L_00B0:
jmp .L_00AB
.L_00B5:
mov eax, dword ptr [_PP+208]
cmp dword ptr [ebp-4], eax
jne .L_00B7
.L_00B8:
mov dword ptr [_PP+212], 0
call _PPCONDENDIF
jmp .L_009D
jmp .L_00B6
.L_00B7:
cmp dword ptr [ebp-4], 0
jne .L_00B9
.L_00BA:
push 0
push 0
push 44
call _ERRREPORT
add esp, 12
jmp .L_00B6
.L_00B9:
dec dword ptr [ebp-4]
.L_00BB:
.L_00B6:
jmp .L_00AB
.L_00AC:
mov eax, dword ptr [ebp-12]
add eax, 4294967030
cmp eax, 5
ja .L_00AB
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00BC+eax*4-1064]
_.L_00BC:
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AF
.int .L_00AF
.int .L_00B5
.L_00AB:
jmp .L_00A7
.L_00A9:
cmp dword ptr [ebp-8], 256
jne .L_00BD
.L_00BE:
push 0
push 0
push 290
call _ERRREPORT
add esp, 12
jmp .L_00A5
.L_00BD:
.L_00A7:
call _LEXSKIPLINE
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .L_00C0
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00C0:
.L_00BF:
.L_00A6:
jmp .L_00A4
.L_00A5:
mov dword ptr [_PP+212], 0
.L_009D:
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
	.lcomm	_PPTB,512

.section .ctors
.int _fb_ctor__ppzcond
