	.intel_syntax noprefix

.section .text
.balign 16

.globl CGOTOSTMT
CGOTOSTMT:
.type CGOTOSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0094:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0097
.L_0099:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_009B
sub esp, 12
push dword ptr [ebp-8]
call ASTSCOPEBREAK
add esp, 16
.L_009B:
.L_009A:
mov dword ptr [ebp-4], -1
jmp .L_0096
.L_009C:
mov eax, dword ptr [ENV+1040]
and eax, 65536
test eax, eax
jne .L_009E
sub esp, 4
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 16
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
sub esp, 4
push 0
push 0
push 278
call ERRREPORT
add esp, 16
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
sub esp, 4
push 0
push 146
push 134217728
call ERRREPORTNOTALLOWED
add esp, 16
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
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
sub esp, 12
push 2048
push 283
call HMATCH
add esp, 20
push eax
call RTLERRORRESUME
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGOTOSTMT, .-CGOTOSTMT
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
HFUNCRETURN:
.type HFUNCRETURN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
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
sub esp, 4
push 0
push 0
push 53
call ERRREPORT
add esp, 16
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
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
je .L_006E
mov dword ptr [ebp-8], -1
jmp .L_006D
.L_006E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
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
sub esp, 12
push -1
call CASSIGNFUNCTRESULT
add esp, 16
test eax, eax
jne .L_0078
jmp .L_0068
.L_0078:
.L_0077:
.L_0076:
.L_0075:
sub esp, 12
push dword ptr [ebp-12]
call ASTSCOPEBREAK
add esp, 16
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFUNCRETURN, .-HFUNCRETURN
.cfi_endproc
.balign 16
HGETLABELID:
.type HGETLABELID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0079:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_007C
.L_007E:
sub esp, 12
push 0
push 0
push 7
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_007B
.L_007F:
sub esp, 8
push 38
lea eax, [ebp-16]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 8
push 7
push dword ptr [ebp-20]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_007B
.L_0080:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
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
sub esp, 8
push 64
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0085
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
.L_0085:
.L_0084:
.L_0083:
.L_0082:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETLABELID, .-HGETLABELID
.cfi_endproc
.balign 16
HGOSUBBRANCH:
.type HGOSUBBRANCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0086:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call HGETLABELID
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0089
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [PARSER+108]
call ASTGOSUBADDJMP
add esp, 16
.L_0089:
.L_0088:
.L_0087:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGOSUBBRANCH, .-HGOSUBBRANCH
.cfi_endproc
.balign 16
HGOSUBRETURN:
.type HGOSUBRETURN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_008A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_008D
.L_008F:
sub esp, 8
push 0
push dword ptr [PARSER+108]
call ASTGOSUBADDRETURN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_008C
.L_0090:
call HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0092
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [PARSER+108]
call ASTGOSUBADDRETURN
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGOSUBRETURN, .-HGOSUBRETURN
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
