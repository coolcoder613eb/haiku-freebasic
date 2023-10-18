	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERSETCTX
PARSERSETCTX:
.type PARSERSETCTX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
mov dword ptr [PARSER+96], 0
mov dword ptr [PARSER+100], 0
mov dword ptr [PARSER+108], 0
mov dword ptr [PARSER+112], 0
mov dword ptr [PARSER+88], 0
mov dword ptr [PARSER+92], 0
mov dword ptr [PARSER+104], 0
mov dword ptr [PARSER+28], 0
mov dword ptr [PARSER+24], 0
mov dword ptr [PARSER+148], 0
mov dword ptr [PARSER+152], 2
mov dword ptr [PARSER+160], 0
mov dword ptr [PARSER+156], -2147483648
call PARSERCOMPOUNDSTMTSETCTX
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERSETCTX, .-PARSERSETCTX
.cfi_endproc
.balign 16

.globl PARSERINIT
PARSERINIT:
.type PARSERINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0068:
call PARSERCOMPOUNDSTMTINIT
call PARSERPROCCALLINIT
call PARSERLETINIT
call PARSERASMINIT
.L_0069:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERINIT, .-PARSERINIT
.cfi_endproc
.balign 16

.globl PARSEREND
PARSEREND:
.type PARSEREND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_006A:
call PARSERASMEND
call PARSERLETEND
call PARSERPROCCALLEND
call PARSERCOMPOUNDSTMTEND
.L_006B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSEREND, .-PARSEREND
.cfi_endproc
.balign 16

.globl CPROGRAM
CPROGRAM:
.type CPROGRAM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0074:
mov eax, dword ptr [PP+208]
mov dword ptr [ebp-4], eax
.L_0076:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
jne .L_007A
sub esp, 12
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call FBSHOULDCONTINUE
test eax, eax
jne .L_007C
jmp .L_0075
.L_007C:
.L_007B:
inc dword ptr [PARSER+28]
jmp .L_0078
.L_007A:
.L_0079:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
test eax, eax
je .L_007E
call FBSHOULDCONTINUE
test eax, eax
jne .L_0080
jmp .L_0075
.L_0080:
.L_007F:
jmp .L_0078
.L_007E:
.L_007D:
call FBSHOULDRESTART
test eax, eax
je .L_0082
jmp .L_0075
jmp .L_0081
.L_0082:
call FBSHOULDCONTINUE
test eax, eax
jne .L_0083
jmp .L_0075
.L_0083:
.L_0081:
mov dword ptr [PARSER+96], 1
sub esp, 12
sub esp, 8
push dword ptr [ENV+568]
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push 113
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
call CLABEL
call CSTATEMENT
sub esp, 12
push 0
call CCOMMENT
add esp, 16
call FBSHOULDCONTINUE
test eax, eax
jne .L_0085
jmp .L_0075
.L_0085:
.L_0084:
cmp dword ptr [ENV+148], 0
je .L_0087
cmp dword ptr [ENV+900], 0
jne .L_0089
call HEMITCURRENTLINETEXT
.L_0089:
.L_0088:
.L_0087:
.L_0086:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 257
jne .L_008C
.L_008D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_008A
.L_008C:
cmp dword ptr [ebp-8], 256
jne .L_008E
.L_008F:
jmp .L_008A
.L_008E:
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.L_0090:
.L_008A:
call FBSHOULDCONTINUE
test eax, eax
jne .L_0092
jmp .L_0075
.L_0092:
.L_0091:
sub esp, 12
sub esp, 8
push 0
push 0
push 114
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
inc dword ptr [PARSER+28]
.L_0078:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 256
jne .L_0076
.L_0077:
mov eax, dword ptr [ebp-4]
cmp dword ptr [PP+208], eax
je .L_0094
sub esp, 4
push 0
push 0
push 290
call ERRREPORT
add esp, 16
.L_0094:
.L_0093:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ENV+900], 0
jne .L_0096
call CCOMPSTMTCHECK
.L_0096:
.L_0095:
.L_0075:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROGRAM, .-CPROGRAM
.cfi_endproc
.balign 16

.globl HSKIPUNTIL
HSKIPUNTIL:
.type HSKIPUNTIL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0097:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.L_0099:
sub esp, 12
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_009D
.L_009F:
jmp .L_009A
jmp .L_009C
.L_00A0:
cmp dword ptr [ebp+8], 257
je .L_00A2
jmp .L_009A
.L_00A2:
.L_00A1:
jmp .L_009C
.L_00A3:
jmp .L_0098
jmp .L_009C
.L_00A4:
cmp dword ptr [ebp+8], 40
jne .L_00A6
jmp .L_009A
.L_00A6:
.L_00A5:
inc dword ptr [ebp-4]
jmp .L_009C
.L_00A7:
inc dword ptr [ebp-4]
jmp .L_009C
.L_00A8:
cmp dword ptr [ebp-4], 0
jle .L_00AA
dec dword ptr [ebp-4]
jmp .L_00A9
.L_00AA:
cmp dword ptr [ebp+8], 41
jne .L_00AC
jmp .L_009A
.L_00AC:
.L_00AB:
.L_00A9:
jmp .L_009C
.L_00AD:
cmp dword ptr [ebp-4], 0
jle .L_00AF
dec dword ptr [ebp-4]
jmp .L_00AE
.L_00AF:
cmp dword ptr [ebp+8], 125
jne .L_00B1
jmp .L_009A
.L_00B1:
.L_00B0:
.L_00AE:
jmp .L_009C
.L_00B2:
mov eax, dword ptr [ebp+8]
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .L_00B4
cmp dword ptr [ebp-4], 0
jne .L_00B6
jmp .L_009A
.L_00B6:
.L_00B5:
.L_00B4:
.L_00B3:
jmp .L_009C
.L_00B7:
sub esp, 12
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .L_00B9
jmp .L_009A
.L_00B9:
.L_00B8:
jmp .L_009C
.L_009D:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967256
cmp ebx, 220
ja .L_00B7
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_00BA+ebx*4-160]
.L_00BA:
.int .L_00A4
.int .L_00A8
.int .L_00B7
.int .L_00B7
.int .L_00B2
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00A7
.int .L_00B7
.int .L_00AD
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00A3
.int .L_009F
.int .L_00A0
.int .L_00A0
.int .L_00A0
.L_009C:
sub esp, 12
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 16
.L_009B:
jmp .L_0099
.L_009A:
cmp dword ptr [ebp+12], 0
je .L_00BC
sub esp, 12
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 16
cmp dword ptr [ebp+8], eax
jne .L_00BE
sub esp, 12
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 16
.L_00BE:
.L_00BD:
.L_00BC:
.L_00BB:
.L_0098:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSKIPUNTIL, .-HSKIPUNTIL
.cfi_endproc
.balign 16

.globl HSKIPCOMPOUND
HSKIPCOMPOUND:
.type HSKIPCOMPOUND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00C0:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], -1
jne .L_00C3
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_00C3:
.L_00C2:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
.L_00C4:
sub esp, 12
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .L_00C9
.L_00CA:
jmp .L_00C1
jmp .L_00C7
.L_00C9:
cmp dword ptr [ebp-12], 257
jne .L_00CB
.L_00CC:
mov dword ptr [ebp-8], 0
jmp .L_00C7
.L_00CB:
cmp dword ptr [ebp-12], 259
je .L_00CE
.L_00CF:
cmp dword ptr [ebp-12], 260
jne .L_00CD
.L_00CE:
mov dword ptr [ebp-8], -1
jmp .L_00C7
.L_00CD:
cmp dword ptr [ebp-12], 340
jne .L_00D0
.L_00D1:
cmp dword ptr [ebp-8], 0
jne .L_00D3
sub esp, 8
push dword ptr [ebp+16]
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .L_00D5
sub esp, 12
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-4], 0
jle .L_00D7
dec dword ptr [ebp-4]
.L_00D7:
.L_00D6:
cmp dword ptr [ebp-4], 0
jne .L_00D9
jmp .L_00C5
.L_00D9:
.L_00D8:
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
jmp .L_00C7
.L_00D0:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-12], ebx
jne .L_00DA
.L_00DB:
cmp dword ptr [ebp-8], 0
jne .L_00DD
inc dword ptr [ebp-4]
.L_00DD:
.L_00DC:
.L_00DA:
.L_00C7:
sub esp, 12
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 16
.L_00C6:
jmp .L_00C4
.L_00C5:
sub esp, 12
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 16
.L_00C1:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSKIPCOMPOUND, .-HSKIPCOMPOUND
.cfi_endproc
.balign 16

.globl HMATCHEXPR
HMATCHEXPR:
.type HMATCHEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00DE:
mov dword ptr [ebp-8], 0
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E1
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
cmp dword ptr [ebp+8], -2147483648
jne .L_00E3
mov dword ptr [ebp-4], 0
jmp .L_00DF
.L_00E3:
.L_00E2:
sub esp, 8
push 0
push dword ptr [ebp+8]
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_00E1:
.L_00E0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00DF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMATCHEXPR, .-HMATCHEXPR
.cfi_endproc
.balign 16
fb_ctor__parserztoplevel:
.type fb_ctor__parserztoplevel, @function
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
.size fb_ctor__parserztoplevel, .-fb_ctor__parserztoplevel
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
HEMITCURRENTLINETEXT:
.type HEMITCURRENTLINETEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_006C:
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_006E:
cmp dword ptr [ebp-4], 0
je .L_006F
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 30
jne .L_0071
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+28], 113
jne .L_0073
sub esp, 8
push dword ptr [ebp-4]
mov ebx, dword ptr [LEX+840072]
push dword ptr [ebx+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADDAFTER
add esp, 16
jmp .L_006F
.L_0073:
.L_0072:
.L_0071:
.L_0070:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
jmp .L_006E
.L_006F:
sub esp, 12
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+49400]
push eax
call DZSTRRESET
add esp, 16
.L_006D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITCURRENTLINETEXT, .-HEMITCURRENTLINETEXT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.globl PARSER
.balign 4
	.lcomm	PARSER,168

.section .ctors, "aw", @progbits
.int fb_ctor__parserztoplevel
