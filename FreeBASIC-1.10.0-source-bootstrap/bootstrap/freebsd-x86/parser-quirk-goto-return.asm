	.intel_syntax noprefix

.section .text
.balign 16

.globl CGOTOSTMT
CGOTOSTMT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0094:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0097
.L_0099:
push 2048
call LEXSKIPTOKEN
add esp, 4
call HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_009B
push dword ptr [ebp-8]
call ASTSCOPEBREAK
add esp, 4
.L_009B:
.L_009A:
mov dword ptr [ebp-4], -1
jmp .L_0096
.L_009C:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
jne .L_009E
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0095
.L_009E:
.L_009D:
cmp dword ptr [ENV+1100], 0
je .L_00A0
call HGOSUBBRANCH
jmp .L_009F
.L_00A0:
push 0
push 0
push 278
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_009F:
mov dword ptr [ebp-4], -1
jmp .L_0095
jmp .L_0096
.L_00A1:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
je .L_00A3
cmp dword ptr [ENV+1100], 0
je .L_00A5
call HGOSUBRETURN
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_00A5:
.L_00A4:
.L_00A3:
.L_00A2:
call HFUNCRETURN
mov dword ptr [ebp-4], eax
jmp .L_0095
jmp .L_0096
.L_00A6:
mov eax, dword ptr [ENV+1040]
and eax, 134217728
test eax, eax
jne .L_00A8
push 0
push 146
push 134217728
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0095
.L_00A8:
.L_00A7:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
push 283
call HMATCH
add esp, 8
push eax
call RTLERRORRESUME
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_0096
.L_0097:
mov eax, dword ptr [ebp-12]
add eax, 4294966904
cmp eax, 110
ja .L_0096
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00A9+eax*4-1568]
.L_00A9:
.int .L_00A1
.int .L_0099
.int .L_009C
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_00A6
.L_0096:
.L_0095:
mov eax, dword ptr [ebp-4]
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
HFUNCRETURN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [PARSER+48], 0
je .L_006A
mov eax, dword ptr [PARSER+48]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
.L_006A:
.L_0069:
cmp dword ptr [ebp-12], 0
jne .L_006C
push 0
push 0
push 53
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0068
.L_006C:
.L_006B:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
je .L_006E
mov dword ptr [ebp-8], -1
jmp .L_006D
.L_006E:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0070
.L_0072:
mov dword ptr [ebp-8], 0
jmp .L_006F
.L_0073:
mov dword ptr [ebp-8], -1
jmp .L_006F
.L_0070:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 84
ja .L_0073
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0074+eax*4-1024]
.L_0074:
.int .L_0072
.int .L_0072
.int .L_0072
.int .L_0072
.int .L_0072
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0072
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0072
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0072
.L_006F:
.L_006D:
cmp dword ptr [ebp-8], 0
je .L_0076
push -1
call CASSIGNFUNCTRESULT
add esp, 4
test eax, eax
jne .L_0078
jmp .L_0068
.L_0078:
.L_0077:
.L_0076:
.L_0075:
push dword ptr [ebp-12]
call ASTSCOPEBREAK
add esp, 4
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETLABELID:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_0079:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_007C
.L_007E:
push 0
push 0
push 7
call LEXGETTEXT
push eax
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_007B
.L_007F:
push 38
lea eax, [ebp-16]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-20], eax
push 7
push dword ptr [ebp-20]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_007B
.L_0080:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_007A
jmp .L_007B
.L_007C:
cmp dword ptr [ebp-12], 3
ja .L_0080
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0081+eax*4]
.L_0081:
.int .L_007F
.int .L_007F
.int .L_007F
.int .L_007E
.L_007B:
cmp dword ptr [ebp-8], 0
jne .L_0083
push 64
call LEXGETTEXT
push eax
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0085
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.L_0085:
.L_0084:
.L_0083:
.L_0082:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HGOSUBBRANCH:
push ebp
mov ebp, esp
sub esp, 4
.L_0086:
push 2048
call LEXSKIPTOKEN
add esp, 4
call HGETLABELID
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0089
push dword ptr [ebp-4]
push dword ptr [PARSER+108]
call ASTGOSUBADDJMP
add esp, 8
.L_0089:
.L_0088:
.L_0087:
mov esp, ebp
pop ebp
ret
.balign 16
HGOSUBRETURN:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_008A:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_008D
.L_008F:
push 0
push dword ptr [PARSER+108]
call ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_008C
.L_0090:
call HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0092
push dword ptr [ebp-8]
push dword ptr [PARSER+108]
call ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0091
.L_0092:
mov dword ptr [ebp-4], -1
.L_0091:
jmp .L_008C
.L_008D:
mov eax, dword ptr [ebp-12]
add eax, 4294967040
cmp eax, 84
ja .L_0090
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0093+eax*4-1024]
.L_0093:
.int .L_008F
.int .L_008F
.int .L_008F
.int .L_008F
.int .L_008F
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_008F
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_008F
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_0090
.int .L_008F
.L_008C:
.L_008B:
mov eax, dword ptr [ebp-4]
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
