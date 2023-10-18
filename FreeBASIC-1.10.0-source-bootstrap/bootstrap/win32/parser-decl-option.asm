	.intel_syntax noprefix

.section .text
.balign 16

.globl _COPTDECL@0
_COPTDECL@0:
push ebp
mov ebp, esp
sub esp, 16
.L_0067:
mov eax, dword ptr [_ENV+1040]
and eax, 33554432
test eax, eax
jne .L_006A
push 0
push 146
push 33554432
call _ERRREPORTNOTALLOWED@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_006A:
.L_0069:
push 8
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_006C
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_006C:
.L_006B:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
jmp .L_006E
.L_0070:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+1080], 1
jmp .L_006D
.L_0071:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+1096], -1
jmp .L_006D
.L_0072:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+1096], 0
jmp .L_006D
.L_0073:
mov eax, dword ptr [_ENV+1040]
and eax, 65536
test eax, eax
jne .L_0075
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED@12
jmp .L_0074
.L_0075:
mov dword ptr [_ENV+1100], -1
.L_0074:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_006D
.L_0076:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 9
push offset _Lt_007A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0079
.L_007B:
mov dword ptr [_ENV+1084], -1
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0077
.L_0079:
push 8
push offset _Lt_007D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_007C
.L_007E:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+1088], 0
jmp .L_0077
.L_007C:
push 7
push offset _Lt_0080
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_007F
.L_0081:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+1092], -1
jmp .L_0077
.L_007F:
push 5
push offset _Lt_0083
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0082
.L_0084:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 3
je .L_0086
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0085
.L_0086:
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VALINT@4
mov dword ptr [_ENV+1076], eax
push 0
call _LEXSKIPTOKEN@4
.L_0085:
jmp .L_0077
.L_0082:
push 10
push offset _Lt_0088
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0087
.L_0089:
push 2050
call _LEXSKIPTOKEN@4
.L_008A:
call _HUNDEFSYMBOL@0
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_008E
jmp .L_008B
.L_008E:
.L_008D:
push 2
call _LEXSKIPTOKEN@4
.L_008C:
jmp .L_008A
.L_008B:
jmp .L_0077
.L_0087:
push 8
push offset _Lt_0090
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_008F
.L_0091:
mov eax, dword ptr [_ENV+1040]
and eax, 65536
test eax, eax
jne .L_0093
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED@12
jmp .L_0092
.L_0093:
mov dword ptr [_ENV+1100], 0
.L_0092:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0077
.L_008F:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0094:
.L_0077:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 87
ja .L_0076
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0095+eax*4-1228]
_.L_0095:
.int .L_0072
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0071
.int .L_0076
.int .L_0070
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0073
.L_006D:
.L_0068:
mov esp, ebp
pop ebp
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
_HUNDEFSYMBOL@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0096:
mov dword ptr [ebp-4], 0
push 2
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
jmp .L_0099
.L_009B:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+2068]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_009D
push dword ptr [ebp-4]
call _SYMBDELFROMHASH@4
jmp .L_009C
.L_009D:
push 0
push 0
push 14
call _ERRREPORT@12
.L_009C:
push 0
call _LEXSKIPTOKEN@4
jmp .L_0098
.L_009E:
push 3
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2068]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00A0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .L_00A2
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_00A1
.L_00A2:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+144]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00A4
push 0
push 0
push 123
call _ERRREPORT@12
jmp .L_00A3
.L_00A4:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .L_00A6
push 0
push 0
push 177
call _ERRREPORT@12
jmp .L_00A5
.L_00A6:
push dword ptr [ebp-4]
call _SYMBDELFROMHASH@4
.L_00A5:
.L_00A3:
.L_00A1:
jmp .L_009F
.L_00A0:
push 5
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2068]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A8
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_00A7
.L_00A8:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+144]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .L_00AA
push 0
push 0
push 123
call _ERRREPORT@12
jmp .L_00A9
.L_00AA:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 8388608
test ebx, ebx
je .L_00AC
push 0
push 0
push 177
call _ERRREPORT@12
jmp .L_00AB
.L_00AC:
push dword ptr [ebp-4]
call _SYMBDELFROMHASH@4
.L_00AB:
.L_00A9:
.L_00A7:
.L_009F:
push 0
call _LEXSKIPTOKEN@4
jmp .L_0098
.L_00AD:
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_0098
.L_0099:
cmp dword ptr [ebp-8], 2
ja .L_00AD
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_00AE+ebx*4]
_.L_00AE:
.int .L_009E
.int .L_009B
.int .L_009B
.L_0098:
.L_0097:
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

.section .data
.balign 4
_Lt_007A:	.ascii	"EXPLICIT\0"
.balign 4
_Lt_007D:	.ascii	"PRIVATE\0"
.balign 4
_Lt_0080:	.ascii	"ESCAPE\0"
.balign 4
_Lt_0083:	.ascii	"BASE\0"
.balign 4
_Lt_0088:	.ascii	"NOKEYWORD\0"
.balign 4
_Lt_0090:	.ascii	"NOGOSUB\0"
