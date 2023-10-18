	.intel_syntax noprefix

.section .text
.balign 16

.globl _CDATASTMT@4
_CDATASTMT@4:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 445
jne .L_006B
.L_006C:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], 0
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0070
.L_0071:
cmp dword ptr [ebp-12], 2
je .L_0070
.L_0072:
cmp dword ptr [ebp-12], 3
jne .L_006F
.L_0070:
push 34
lea eax, [ebp-20]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-16], eax
push 7
push dword ptr [ebp-16]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0074
push 72
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0076
push 0
push 0
push 4
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .L_0069
.L_0076:
.L_0075:
.L_0074:
.L_0073:
push 2048
call _LEXSKIPTOKEN@4
.L_006F:
.L_006D:
push 0
push dword ptr [ebp-8]
call _RTLDATARESTORE@8
mov dword ptr [ebp-4], eax
jmp .L_006A
.L_006B:
cmp dword ptr [ebp+8], 446
jne .L_0077
.L_0078:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], 0
.L_0079:
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007D
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_007C
.L_007D:
push dword ptr [ebp-8]
call _RTLDATAREAD@4
test eax, eax
jne .L_007F
jmp .L_0069
.L_007F:
.L_007E:
.L_007C:
.L_007B:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_0079
.L_007A:
mov dword ptr [ebp-4], -1
jmp .L_006A
.L_0077:
cmp dword ptr [ebp+8], 447
jne .L_0080
.L_0081:
cmp dword ptr [_ENV+136], 3
je .L_0083
push 32
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0085
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0069
.L_0085:
.L_0084:
cmp dword ptr [_PARSER+100], 0
jbe .L_0087
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0089
push 0
push 0
push 61
call _ERRREPORT@12
jmp .L_0088
.L_0089:
push 0
push 0
push 96
call _ERRREPORT@12
.L_0088:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], 0
jmp .L_0069
.L_0087:
.L_0086:
jmp .L_0082
.L_0083:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_008B
push 0
push 0
push 61
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], 0
jmp .L_0069
.L_008B:
.L_008A:
.L_0082:
call _ASTDATASTMTBEGIN@0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [_ENV+136], 3
je .L_008D
push 2048
call _LEXSKIPTOKEN@4
.L_008E:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0092
jmp .L_0069
.L_0092:
.L_0091:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_0094
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 23
jne .L_0096
mov dword ptr [ebp-16], -1
jmp .L_0095
.L_0096:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 4
je .L_009A
.L_009B:
cmp dword ptr [ebp-20], 7
jne .L_0099
.L_009A:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_0099:
.L_0097:
.L_0095:
.L_0094:
.L_0093:
cmp dword ptr [ebp-16], 0
jne .L_009D
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
jmp .L_009C
.L_009D:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTDATASTMTSTORE@8
test eax, eax
jne .L_009F
jmp .L_0069
.L_009F:
.L_009E:
.L_009C:
.L_0090:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_008E
.L_008F:
jmp .L_008C
.L_008D:
push 62
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.L_00A0:
mov dword ptr [ebp-32], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.L_00A3:
push 62
call _LEXGETTOKEN@4
mov dword ptr [ebp-48], eax
jmp .L_00A7
.L_00A9:
push 62
call _LEXSKIPTOKEN@4
jmp .L_00A4
jmp .L_00A6
.L_00AA:
dec dword ptr [ebp-32]
jmp .L_00A6
.L_00AB:
mov dword ptr [ebp-16], -1
jmp .L_00A4
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [ebp-48]
add eax, 4294967287
cmp eax, 251
ja .L_00A6
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_00AC+eax*4-36]
_.L_00AC:
.int .L_00AA
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00AA
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A9
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00A6
.int .L_00AB
.int .L_00AB
.int .L_00AB
.int .L_00AB
.int .L_00AB
.L_00A6:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 62
call _LEXSKIPTOKEN@4
inc dword ptr [ebp-32]
.L_00A5:
jmp .L_00A3
.L_00A4:
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp-32], 1
jne .L_00AF
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen@8
cmp eax, 1
jle .L_00B1
mov eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 34
jne .L_00B4
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrLen@8
mov ebx, dword ptr [ebp-28]
add ebx, eax
movzx eax, byte ptr [ebx-1]
cmp eax, 34
jne .L_00B6
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen@8
add eax, -2
push eax
push 2
lea eax, [ebp-28]
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.L_00B6:
.L_00B5:
.L_00B4:
.L_00B3:
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
push dword ptr [ebp-28]
call _ASTNEWCONSTSTR@4
push eax
push dword ptr [ebp-8]
call _ASTDATASTMTSTORE@8
test eax, eax
jne .L_00B8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .L_0069
.L_00B8:
.L_00B7:
.L_00A2:
cmp dword ptr [ebp-16], 0
je .L_00A0
.L_00A1:
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_008C:
push dword ptr [ebp-8]
call _ASTDATASTMTEND@4
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov dword ptr [ebp-4], -1
.L_0080:
.L_006A:
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
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

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
