	.intel_syntax noprefix

.section .text
.balign 16

.globl COPTDECL
COPTDECL:
push ebp
mov ebp, esp
sub esp, 16
.L_0066:
mov eax, dword ptr [ENV+1040]
and eax, 33554432
test eax, eax
jne .L_0069
push 0
push 146
push 33554432
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0069:
.L_0068:
push 8
call CCOMPSTMTISALLOWED
add esp, 4
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
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_006D
.L_006F:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ENV+1080], 1
jmp .L_006C
.L_0070:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ENV+1096], -1
jmp .L_006C
.L_0071:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ENV+1096], 0
jmp .L_006C
.L_0072:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
jne .L_0074
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 12
jmp .L_0073
.L_0074:
mov dword ptr [ENV+1100], -1
.L_0073:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_006C
.L_0075:
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
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
push 2048
call LEXSKIPTOKEN
add esp, 4
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
push 2048
call LEXSKIPTOKEN
add esp, 4
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
push 2048
call LEXSKIPTOKEN
add esp, 4
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
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 3
je .L_0085
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
jmp .L_0084
.L_0085:
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 4
mov dword ptr [ENV+1076], eax
push 0
call LEXSKIPTOKEN
add esp, 4
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
push 2050
call LEXSKIPTOKEN
add esp, 4
.L_0089:
call HUNDEFSYMBOL
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_008D
jmp .L_008A
.L_008D:
.L_008C:
push 2
call LEXSKIPTOKEN
add esp, 4
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
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 12
jmp .L_0091
.L_0092:
mov dword ptr [ENV+1100], 0
.L_0091:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_0076
.L_008E:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_0093:
.L_0076:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
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
HUNDEFSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0095:
mov dword ptr [ebp-4], 0
push 2
call LEXGETCLASS
add esp, 4
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
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 4
jmp .L_009B
.L_009C:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.L_009B:
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_0097
.L_009D:
push 3
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4116]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_009F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .L_00A1
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .L_00A0
.L_00A1:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00A3
push 0
push 0
push 123
call ERRREPORT
add esp, 12
jmp .L_00A2
.L_00A3:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .L_00A5
push 0
push 0
push 177
call ERRREPORT
add esp, 12
jmp .L_00A4
.L_00A5:
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 4
.L_00A4:
.L_00A2:
.L_00A0:
jmp .L_009E
.L_009F:
push 5
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A7
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_00A9
push 0
push 0
push 123
call ERRREPORT
add esp, 12
jmp .L_00A8
.L_00A9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 8388608
test ebx, ebx
je .L_00AB
push 0
push 0
push 177
call ERRREPORT
add esp, 12
jmp .L_00AA
.L_00AB:
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 4
.L_00AA:
.L_00A8:
.L_00A6:
.L_009E:
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_0097
.L_00AC:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
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
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
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
