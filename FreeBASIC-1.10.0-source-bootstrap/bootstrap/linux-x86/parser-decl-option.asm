	.intel_syntax noprefix

.section .text
.balign 16

.globl COPTDECL
COPTDECL:
.type COPTDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0066:
mov eax, dword ptr [ENV+1040]
and eax, 33554432
test eax, eax
jne .L_0069
sub esp, 4
push 0
push 146
push 33554432
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0069:
.L_0068:
sub esp, 12
push 8
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_006B
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_006B:
.L_006A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_006D
.L_006F:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+1080], 1
jmp .L_006C
.L_0070:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+1096], -1
jmp .L_006C
.L_0071:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+1096], 0
jmp .L_006C
.L_0072:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
jne .L_0074
sub esp, 4
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_0073
.L_0074:
mov dword ptr [ENV+1100], -1
.L_0073:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_006C
.L_0075:
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
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 9
push offset Lt_0079
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0078
.L_007A:
mov dword ptr [ENV+1084], -1
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_0076
.L_0078:
push 8
push offset Lt_007C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_007B
.L_007D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+1088], 0
jmp .L_0076
.L_007B:
push 7
push offset Lt_007F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_007E
.L_0080:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+1092], -1
jmp .L_0076
.L_007E:
push 5
push offset Lt_0082
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0081
.L_0083:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 3
je .L_0085
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0084
.L_0085:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 16
mov dword ptr [ENV+1076], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0084:
jmp .L_0076
.L_0081:
push 10
push offset Lt_0087
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0086
.L_0088:
sub esp, 12
push 2050
call LEXSKIPTOKEN
add esp, 16
.L_0089:
call HUNDEFSYMBOL
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_008D
jmp .L_008A
.L_008D:
.L_008C:
sub esp, 12
push 2
call LEXSKIPTOKEN
add esp, 16
.L_008B:
jmp .L_0089
.L_008A:
jmp .L_0076
.L_0086:
push 8
push offset Lt_008F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_008E
.L_0090:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
jne .L_0092
sub esp, 4
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_0091
.L_0092:
mov dword ptr [ENV+1100], 0
.L_0091:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_0076
.L_008E:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0093:
.L_0076:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 87
ja .L_0075
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0094+eax*4-1228]
.L_0094:
.int .L_0071
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0070
.int .L_0075
.int .L_006F
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0075
.int .L_0072
.L_006C:
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size COPTDECL, .-COPTDECL
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
HUNDEFSYMBOL:
.type HUNDEFSYMBOL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0095:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0098
.L_009A:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_009C
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 16
jmp .L_009B
.L_009C:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
.L_009B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_0097
.L_009D:
sub esp, 8
push 3
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4116]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_009F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .L_00A1
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_00A0
.L_00A1:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00A3
sub esp, 4
push 0
push 0
push 123
call ERRREPORT
add esp, 16
jmp .L_00A2
.L_00A3:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .L_00A5
sub esp, 4
push 0
push 0
push 177
call ERRREPORT
add esp, 16
jmp .L_00A4
.L_00A5:
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 16
.L_00A4:
.L_00A2:
.L_00A0:
jmp .L_009E
.L_009F:
sub esp, 8
push 5
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A7
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_00A9
sub esp, 4
push 0
push 0
push 123
call ERRREPORT
add esp, 16
jmp .L_00A8
.L_00A9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 8388608
test ebx, ebx
je .L_00AB
sub esp, 4
push 0
push 0
push 177
call ERRREPORT
add esp, 16
jmp .L_00AA
.L_00AB:
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 16
.L_00AA:
.L_00A8:
.L_00A6:
.L_009E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_0097
.L_00AC:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_0097
.L_0098:
cmp dword ptr [ebp-8], 2
ja .L_00AC
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_00AD+ebx*4]
.L_00AD:
.int .L_009D
.int .L_009A
.int .L_009A
.L_0097:
.L_0096:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HUNDEFSYMBOL, .-HUNDEFSYMBOL
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
Lt_0079:	.ascii	"EXPLICIT\0"
.balign 4
Lt_007C:	.ascii	"PRIVATE\0"
.balign 4
Lt_007F:	.ascii	"ESCAPE\0"
.balign 4
Lt_0082:	.ascii	"BASE\0"
.balign 4
Lt_0087:	.ascii	"NOKEYWORD\0"
.balign 4
Lt_008F:	.ascii	"NOGOSUB\0"
