	.intel_syntax noprefix

.section .text
.balign 16

.globl PPCONDINIT
PPCONDINIT:
.L_0067:
mov dword ptr [PP+208], 0
.L_0068:
ret
.balign 16

.globl PPCONDEND
PPCONDEND:
.L_0069:
.L_006A:
ret
.balign 16

.globl PPCONDIF
PPCONDIF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0076:
mov dword ptr [ebp-4], 0
push 256
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_007B:
push 2050
call LEXSKIPTOKEN
add esp, 4
push 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
call CIDENTIFIERORUDTMEMBER
add esp, 8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0078
.L_007D:
push 2050
call LEXSKIPTOKEN
add esp, 4
push 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-12]
push ebx
call CIDENTIFIERORUDTMEMBER
add esp, 8
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0078
.L_007F:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_0078
.L_0079:
mov eax, dword ptr [ebp-8]
add eax, 4294967030
cmp eax, 2
ja .L_0078
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0080+eax*4-1064]
.L_0080:
.int .L_007F
.int .L_007B
.int .L_007D
.L_0078:
inc dword ptr [PP+208]
cmp dword ptr [PP+208], 64
jle .L_0082
push 0
push 0
push 27
call ERRREPORT
add esp, 12
call ERRHIDEFURTHERERRORS
jmp .L_0077
.L_0082:
.L_0081:
mov eax, dword ptr [PP+208]
mov ebx, dword ptr [ebp-4]
mov dword ptr [PPTB+eax*8-8], ebx
mov ebx, dword ptr [PP+208]
mov dword ptr [PPTB+ebx*8-4], 0
cmp dword ptr [ebp-4], 0
jne .L_0084
call PPSKIP
.L_0084:
.L_0083:
.L_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPCONDELSE
PPCONDELSE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0087:
mov dword ptr [ebp-4], 0
cmp dword ptr [PP+208], 0
jne .L_008A
push 0
push 0
push 44
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0088
.L_008A:
.L_0089:
mov eax, dword ptr [PP+208]
cmp dword ptr [PPTB+eax*8-4], 0
jle .L_008C
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0088
.L_008C:
.L_008B:
push 256
call LEXGETTOKEN
add esp, 4
cmp eax, 270
jne .L_008E
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPEXPRESSION
mov dword ptr [ebp-4], eax
mov eax, dword ptr [PP+208]
cmp dword ptr [PPTB+eax*8-8], 0
je .L_0090
call PPSKIP
jmp .L_0088
.L_0090:
.L_008F:
mov eax, dword ptr [PP+208]
mov ebx, dword ptr [ebp-4]
mov dword ptr [PPTB+eax*8-8], ebx
jmp .L_008D
.L_008E:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [PP+208]
inc dword ptr [PPTB+ebx*8-4]
mov ebx, dword ptr [PP+208]
not dword ptr [PPTB+ebx*8-8]
.L_008D:
mov ebx, dword ptr [PP+208]
cmp dword ptr [PPTB+ebx*8-8], 0
jne .L_0092
call PPSKIP
.L_0092:
.L_0091:
.L_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPCONDENDIF
PPCONDENDIF:
.L_0093:
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [PP+208], 0
jle .L_0096
dec dword ptr [PP+208]
jmp .L_0095
.L_0096:
push 0
push 0
push 44
call ERRREPORT
add esp, 12
.L_0095:
.L_0094:
ret
.balign 16

.globl PPASSERT
PPASSERT:
push ebp
mov ebp, esp
sub esp, 4
.L_0097:
call PPEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_009A
push 0
push 0
push 308
call ERRREPORT
add esp, 12
.L_009A:
.L_0099:
.L_0098:
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__ppzcond:
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
PPEXPRESSION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006B:
or dword ptr [PARSER+152], 1024
jmp .L_006D
.L_006E:
and dword ptr [PARSER+152], -1025
.L_006D:
call CEXPRESSION
mov dword ptr [ebp-8], eax
jmp .L_0070
or dword ptr [PARSER+152], 1024
jmp .L_006F
.L_0070:
and dword ptr [PARSER+152], -1025
.L_006F:
cmp dword ptr [ebp-8], 0
jne .L_0072
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0072:
.L_0071:
push dword ptr [ebp-8]
call ASTGETSTRLITSYMBOL
add esp, 4
test eax, eax
je .L_0074
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0073
.L_0074:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_0075
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0075:
.L_0073:
push dword ptr [ebp-8]
call ASTCONSTEQZERO
add esp, 4
not eax
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
PPSKIP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_009B:
mov dword ptr [PP+212], -1
push 0
call CCOMMENT
add esp, 4
cmp dword ptr [ENV+148], 0
je .L_009E
cmp dword ptr [ENV+900], 0
jne .L_00A0
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
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_00A2
push 0
push 0
push 3
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_00A1
.L_00A2:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00A1:
mov eax, dword ptr [PP+208]
mov dword ptr [ebp-4], eax
.L_00A3:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 35
jne .L_00A8
.L_00A9:
push 256
call LEXSKIPTOKEN
add esp, 4
push 256
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_00AB
.L_00AD:
inc dword ptr [ebp-4]
jmp .L_00AA
.L_00AE:
mov eax, dword ptr [PP+208]
cmp dword ptr [ebp-4], eax
jne .L_00B0
.L_00B1:
mov dword ptr [PP+212], 0
call PPCONDELSE
jmp .L_009C
jmp .L_00AF
.L_00B0:
cmp dword ptr [ebp-4], 0
jne .L_00B2
.L_00B3:
push 0
push 0
push 44
call ERRREPORT
add esp, 12
.L_00B2:
.L_00AF:
jmp .L_00AA
.L_00B4:
mov eax, dword ptr [PP+208]
cmp dword ptr [ebp-4], eax
jne .L_00B6
.L_00B7:
mov dword ptr [PP+212], 0
call PPCONDENDIF
jmp .L_009C
jmp .L_00B5
.L_00B6:
cmp dword ptr [ebp-4], 0
jne .L_00B8
.L_00B9:
push 0
push 0
push 44
call ERRREPORT
add esp, 12
jmp .L_00B5
.L_00B8:
dec dword ptr [ebp-4]
.L_00BA:
.L_00B5:
jmp .L_00AA
.L_00AB:
mov eax, dword ptr [ebp-12]
add eax, 4294967030
cmp eax, 5
ja .L_00AA
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00BB+eax*4-1064]
.L_00BB:
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AE
.int .L_00AE
.int .L_00B4
.L_00AA:
jmp .L_00A6
.L_00A8:
cmp dword ptr [ebp-8], 256
jne .L_00BC
.L_00BD:
push 0
push 0
push 290
call ERRREPORT
add esp, 12
jmp .L_00A4
.L_00BC:
.L_00A6:
call LEXSKIPLINE
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .L_00BF
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00BF:
.L_00BE:
.L_00A5:
jmp .L_00A3
.L_00A4:
mov dword ptr [PP+212], 0
.L_009C:
pop ebx
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
.balign 4
	.lcomm	PPTB,512

.section .ctors
.int fb_ctor__ppzcond
