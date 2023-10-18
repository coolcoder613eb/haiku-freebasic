	.intel_syntax noprefix

.section .text
.balign 16

.globl _CIFSTMTBEGIN@0
_CIFSTMTBEGIN@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_007F:
push 2048
call _LEXSKIPTOKEN@4
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0082
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_0082:
.L_0081:
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-12], eax
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH@16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0084
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_0083
.L_0084:
push dword ptr [ebp-4]
call _ASTADD@4
.L_0083:
push 1
push 266
call _CCOMPSTMTPUSH@8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+28], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 393
jne .L_0086
push dword ptr [ebp-16]
call _HIFSINGLELINE@4
jmp .L_0080
.L_0086:
.L_0085:
push 0
call _LEXGETTOKEN@4
cmp eax, 267
je .L_0088
push 0
push 0
push 31
call _ERRREPORT@12
jmp .L_0087
.L_0088:
push 2048
call _LEXSKIPTOKEN@4
.L_0087:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .L_008A
.L_008C:
mov dword ptr [ebp-20], -1
jmp .L_0089
.L_008D:
cmp dword ptr [_ENV+136], 3
jne .L_008F
mov dword ptr [ebp-20], 0
jmp .L_008E
.L_008F:
mov dword ptr [ebp-20], -1
.L_008E:
jmp .L_0089
.L_0090:
mov dword ptr [ebp-20], 0
jmp .L_0089
.L_008A:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .L_0090
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_0091+eax*4-1024]
_.L_0091:
.int .L_008C
.int .L_008C
.int .L_008D
.int .L_008C
.int .L_008D
.L_0089:
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
cmp dword ptr [ebp-20], 0
je .L_0093
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+16], 0
jmp .L_0092
.L_0093:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+16], -1
push dword ptr [ebp-16]
call _HIFSINGLELINE@4
.L_0092:
.L_0080:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CIFSTMTNEXT@0
_CIFSTMTNEXT@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0094:
push 0
push 266
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0097
push 0
call _LEXGETTOKEN@4
cmp eax, 269
jne .L_0099
push 0
push 0
push 116
call _ERRREPORT@12
jmp .L_0098
.L_0099:
push 0
push 0
push 117
call _ERRREPORT@12
.L_0098:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0095
.L_0097:
.L_0096:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+16], 0
je .L_009B
jmp .L_0095
.L_009B:
.L_009A:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
je .L_009D
push 0
push 0
push 32
call _ERRREPORT@12
.L_009D:
.L_009C:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .L_009F
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.L_009F:
.L_009E:
push 0
call _LEXGETTOKEN@4
cmp eax, 269
jne .L_00A1
push 2048
call _LEXSKIPTOKEN@4
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+20], 0
je .L_00A3
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.L_00A3:
.L_00A2:
push 0
push 0
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A5
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00A5:
.L_00A4:
push 2048
push 267
call _HMATCH@8
test eax, eax
jne .L_00A7
push 0
push 0
push 31
call _ERRREPORT@12
.L_00A7:
.L_00A6:
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH@16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A9
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_00A8
.L_00A9:
push dword ptr [ebp-4]
call _ASTADD@4
.L_00A8:
jmp .L_00A0
.L_00A1:
mov eax, dword ptr [ebp-8]
inc dword ptr [eax+28]
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 266
jne .L_00AB
push 0
push 1
push 0
push 32
call _ERRREPORTWARN@16
.L_00AB:
.L_00AA:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+20], 0
je .L_00AD
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
.L_00AD:
.L_00AC:
.L_00A0:
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
call _CSTATEMENT@0
.L_0095:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CIFSTMTEND@0
_CIFSTMTEND@0:
push ebp
mov ebp, esp
sub esp, 4
.L_00AE:
push -1
push 266
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00B1
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AF
.L_00B1:
.L_00B0:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
je .L_00B3
jmp .L_00AF
.L_00B3:
.L_00B2:
push 0
call _LEXGETTOKEN@4
cmp eax, 340
jne .L_00B5
push 2048
call _LEXSKIPTOKEN@4
.L_00B5:
.L_00B4:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_00B7
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.L_00B7:
.L_00B6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+20], 0
je .L_00B9
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.L_00B9:
.L_00B8:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+24]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
.L_00AF:
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
_HIFSINGLELINE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0067:
push 0
call _LEXGETCLASS@4
cmp eax, 3
jne .L_006A
push 0
push 0
push 7
call _LEXGETTEXT@0
push eax
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006C
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
.L_006C:
.L_006B:
push 0
call _LEXSKIPTOKEN@4
push 0
push dword ptr [ebp-4]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
jmp .L_0069
.L_006A:
call _CSTATEMENT@0
.L_0069:
push 0
call _LEXGETTOKEN@4
cmp eax, 268
jne .L_006E
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_0070
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_0070:
.L_006F:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
call _LEXGETCLASS@4
cmp eax, 3
jne .L_0072
push 0
push 0
push 7
call _LEXGETTEXT@0
push eax
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0074
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
.L_0074:
.L_0073:
push 0
call _LEXSKIPTOKEN@4
push 0
push dword ptr [ebp-4]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
jmp .L_0071
.L_0072:
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
call _CSTATEMENT@0
.L_0071:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
jmp .L_006D
.L_006E:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.L_006D:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 340
jne .L_0077
.L_0078:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 266
jne .L_007A
push 2048
call _LEXSKIPTOKEN@4
push 2048
call _LEXSKIPTOKEN@4
.L_007A:
.L_0079:
jmp .L_0075
.L_0077:
cmp dword ptr [ebp-4], 314
jne .L_007B
.L_007C:
push 2048
call _LEXSKIPTOKEN@4
.L_007B:
.L_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_007E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.L_007E:
.L_007D:
push dword ptr [ebp+8]
call _CCOMPSTMTPOP@4
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
