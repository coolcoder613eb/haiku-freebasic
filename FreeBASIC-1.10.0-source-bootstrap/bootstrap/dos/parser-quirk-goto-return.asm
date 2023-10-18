	.intel_syntax noprefix

.section .text
.balign 16

.globl _CGOTOSTMT
_CGOTOSTMT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0095:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0098
.L_009A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_009C
push dword ptr [ebp-8]
call _ASTSCOPEBREAK
add esp, 4
.L_009C:
.L_009B:
mov dword ptr [ebp-4], -1
jmp .L_0097
.L_009D:
mov eax, dword ptr [_ENV+1040]
and eax, 65536
test eax, eax
jne .L_009F
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0096
.L_009F:
.L_009E:
cmp dword ptr [_ENV+1100], 0
je .L_00A1
call _HGOSUBBRANCH
jmp .L_00A0
.L_00A1:
push 0
push 0
push 278
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.L_00A0:
mov dword ptr [ebp-4], -1
jmp .L_0096
jmp .L_0097
.L_00A2:
mov eax, dword ptr [_ENV+1040]
and eax, 65536
test eax, eax
je .L_00A4
cmp dword ptr [_ENV+1100], 0
je .L_00A6
call _HGOSUBRETURN
mov dword ptr [ebp-4], eax
jmp .L_0096
.L_00A6:
.L_00A5:
.L_00A4:
.L_00A3:
call _HFUNCRETURN
mov dword ptr [ebp-4], eax
jmp .L_0096
jmp .L_0097
.L_00A7:
mov eax, dword ptr [_ENV+1040]
and eax, 134217728
test eax, eax
jne .L_00A9
push 0
push 146
push 134217728
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0096
.L_00A9:
.L_00A8:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
push 283
call _HMATCH
add esp, 8
push eax
call _RTLERRORRESUME
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_0097
.L_0098:
mov eax, dword ptr [ebp-12]
add eax, 4294966904
cmp eax, 110
ja .L_0097
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00AA+eax*4-1568]
_.L_00AA:
.int .L_00A2
.int .L_009A
.int .L_009D
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_0097
.int .L_00A7
.L_0097:
.L_0096:
mov eax, dword ptr [ebp-4]
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
_HFUNCRETURN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [_PARSER+48], 0
je .L_006B
mov eax, dword ptr [_PARSER+48]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
.L_006B:
.L_006A:
cmp dword ptr [ebp-12], 0
jne .L_006D
push 0
push 0
push 53
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0069
.L_006D:
.L_006C:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
je .L_006F
mov dword ptr [ebp-8], -1
jmp .L_006E
.L_006F:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0071
.L_0073:
mov dword ptr [ebp-8], 0
jmp .L_0070
.L_0074:
mov dword ptr [ebp-8], -1
jmp .L_0070
.L_0071:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 84
ja .L_0074
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0075+eax*4-1024]
_.L_0075:
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0073
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0073
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0073
.L_0070:
.L_006E:
cmp dword ptr [ebp-8], 0
je .L_0077
push -1
call _CASSIGNFUNCTRESULT
add esp, 4
test eax, eax
jne .L_0079
jmp .L_0069
.L_0079:
.L_0078:
.L_0077:
.L_0076:
push dword ptr [ebp-12]
call _ASTSCOPEBREAK
add esp, 4
mov dword ptr [ebp-4], -1
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETLABELID:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_007A:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_007D
.L_007F:
push 0
push 0
push 7
call _LEXGETTEXT
push eax
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_007C
.L_0080:
push 38
lea eax, [ebp-16]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-20], eax
push 7
push dword ptr [ebp-20]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_007C
.L_0081:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_007B
jmp .L_007C
.L_007D:
cmp dword ptr [ebp-12], 3
ja .L_0081
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0082+eax*4]
_.L_0082:
.int .L_0080
.int .L_0080
.int .L_0080
.int .L_007F
.L_007C:
cmp dword ptr [ebp-8], 0
jne .L_0084
push 64
call _LEXGETTEXT
push eax
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0086
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.L_0086:
.L_0085:
.L_0084:
.L_0083:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGOSUBBRANCH:
push ebp
mov ebp, esp
sub esp, 4
.L_0087:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _HGETLABELID
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_008A
push dword ptr [ebp-4]
push dword ptr [_PARSER+108]
call _ASTGOSUBADDJMP
add esp, 8
.L_008A:
.L_0089:
.L_0088:
mov esp, ebp
pop ebp
ret
.balign 16
_HGOSUBRETURN:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_008B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_008E
.L_0090:
push 0
push dword ptr [_PARSER+108]
call _ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_008D
.L_0091:
call _HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0093
push dword ptr [ebp-8]
push dword ptr [_PARSER+108]
call _ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0092
.L_0093:
mov dword ptr [ebp-4], -1
.L_0092:
jmp .L_008D
.L_008E:
mov eax, dword ptr [ebp-12]
add eax, 4294967040
cmp eax, 84
ja .L_0091
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0094+eax*4-1024]
_.L_0094:
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0090
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0090
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0091
.int .L_0090
.L_008D:
.L_008C:
mov eax, dword ptr [ebp-4]
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
