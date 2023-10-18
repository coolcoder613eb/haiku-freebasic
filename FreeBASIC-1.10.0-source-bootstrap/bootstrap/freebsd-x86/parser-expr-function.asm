	.intel_syntax noprefix

.section .text
.balign 16

.globl CFUNCTIONCALL
CFUNCTIONCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_0069
jmp .L_0067
.L_0069:
.L_0068:
or dword ptr [ebp+24], 16
lea eax, [ebp+24]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call HMETHODCALLADDINSTPTROVLARG
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_006B
or dword ptr [ebp+24], 128
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_006D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 512
test ebx, ebx
jne .L_006F
push 0
push -1
push 196
call ERRREPORT
add esp, 12
.L_006F:
.L_006E:
push 0
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0071
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0070
.L_0071:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0070:
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 128
test ebx, ebx
jne .L_0073
push 0
push 0
push 194
call ERRREPORT
add esp, 12
.L_0073:
.L_0072:
mov ebx, dword ptr [ebp+24]
or ebx, 32
push ebx
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.L_006C:
jmp .L_006A
.L_006B:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0075
push 0
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0077
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0076
.L_0077:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0076:
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp+24]
or eax, 32
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.L_0074:
.L_006A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
test ebx, ebx
jne .L_0079
push 0
push 0
push 17
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
mov dword ptr [ebp-4], eax
jmp .L_0067
.L_0079:
.L_0078:
push dword ptr [ebp-8]
call ASTBUILDBYREFRESULTDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CFUNCTIONEX
CFUNCTIONEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_007A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_007E
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .L_007C
mov dword ptr [ebp-8], 8192
jmp .L_0081
.L_007C:
mov dword ptr [ebp-8], 4096
.L_0081:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_0080
.L_007E:
mov dword ptr [ebp-12], 2048
.L_0080:
push dword ptr [ebp-12]
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-4], eax
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMETHODCALL
CMETHODCALL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0082:
push 4096
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+152]
and eax, 4
test eax, eax
je .L_0085
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_0084
.L_0085:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call CPROCCALL
add esp, 24
mov dword ptr [ebp-8], eax
.L_0084:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0083:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCTORCALL
CCTORCALL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0086:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call ASTDTORLISTADD
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0089
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
jmp .L_0088
.L_0089:
mov dword ptr [ebp-12], 0
.L_0088:
push 0
lea eax, [ebp-28]
push eax
lea eax, [PARSER+116]
push eax
call SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-32], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+4], -1
cmp dword ptr [ebp-12], 0
jne .L_008A
mov dword ptr [ebp-36], 32
jmp .L_0090
.L_008A:
mov dword ptr [ebp-36], 0
.L_0090:
mov eax, dword ptr [ebp-36]
or eax, 80
push eax
lea eax, [ebp-28]
push eax
push 0
push dword ptr [ebp+8]
call SYMBGETCOMPCTORHEAD
add esp, 4
push eax
push 0
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .L_008D
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_008F
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_008E
.L_008F:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_008E:
.L_008D:
.L_008C:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
call ASTNEWCALLCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_0087:
mov eax, dword ptr [ebp-4]
pop ebx
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
