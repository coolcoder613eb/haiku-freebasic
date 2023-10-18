	.intel_syntax noprefix

.section .text
.balign 16

.globl _CFUNCTIONCALL
_CFUNCTIONCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_006A
jmp .L_0068
.L_006A:
.L_0069:
or dword ptr [ebp+24], 16
lea eax, [ebp+24]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _HMETHODCALLADDINSTPTROVLARG
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_006C
or dword ptr [ebp+24], 128
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_006E
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 512
test ebx, ebx
jne .L_0070
push 0
push -1
push 196
call _ERRREPORT
add esp, 12
.L_0070:
.L_006F:
push 0
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0072
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0071
.L_0072:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0071:
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 128
test ebx, ebx
jne .L_0074
push 0
push 0
push 194
call _ERRREPORT
add esp, 12
.L_0074:
.L_0073:
mov ebx, dword ptr [ebp+24]
or ebx, 32
push ebx
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.L_006D:
jmp .L_006B
.L_006C:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0076
push 0
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0078
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0077
.L_0078:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0077:
jmp .L_0075
.L_0076:
mov eax, dword ptr [ebp+24]
or eax, 32
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.L_0075:
.L_006B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
test ebx, ebx
jne .L_007A
push 0
push 0
push 17
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
mov dword ptr [ebp-4], eax
jmp .L_0068
.L_007A:
.L_0079:
push dword ptr [ebp-8]
call _ASTBUILDBYREFRESULTDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFUNCTIONEX
_CFUNCTIONEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_007B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_007F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .L_007D
mov dword ptr [ebp-8], 8192
jmp .L_0082
.L_007D:
mov dword ptr [ebp-8], 4096
.L_0082:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_0081
.L_007F:
mov dword ptr [ebp-12], 2048
.L_0081:
push dword ptr [ebp-12]
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-4], eax
.L_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMETHODCALL
_CMETHODCALL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0083:
push 4096
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [_PARSER+152]
and eax, 4
test eax, eax
je .L_0086
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call _CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_0085
.L_0086:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call _CPROCCALL
add esp, 24
mov dword ptr [ebp-8], eax
.L_0085:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCTORCALL
_CCTORCALL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0087:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTDTORLISTADD
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_008A
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
jmp .L_0089
.L_008A:
mov dword ptr [ebp-12], 0
.L_0089:
push 0
lea eax, [ebp-28]
push eax
lea eax, [_PARSER+116]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-32], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+4], -1
cmp dword ptr [ebp-12], 0
jne .L_008B
mov dword ptr [ebp-36], 32
jmp .L_0091
.L_008B:
mov dword ptr [ebp-36], 0
.L_0091:
mov eax, dword ptr [ebp-36]
or eax, 80
push eax
lea eax, [ebp-28]
push eax
push 0
push dword ptr [ebp+8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
push eax
push 0
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .L_008E
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0090
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_008F
.L_0090:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_008F:
.L_008E:
.L_008D:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
call _ASTNEWCALLCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_0088:
mov eax, dword ptr [ebp-4]
pop ebx
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
