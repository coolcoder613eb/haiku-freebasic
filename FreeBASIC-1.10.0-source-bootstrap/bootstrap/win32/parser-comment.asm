	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCOMMENT@4
_CCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
push dword ptr [ebp+8]
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 259
je .L_006C
.L_006D:
cmp dword ptr [ebp-8], 260
jne .L_006B
.L_006C:
push dword ptr [ebp+8]
call _LEXGETTOKEN@4
cmp eax, 260
jne .L_006F
cmp dword ptr [_ENV+136], 3
jne .L_0071
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .L_0073
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_0073:
.L_0072:
.L_0071:
.L_0070:
.L_006F:
.L_006E:
mov ebx, dword ptr [_LEX+422280]
inc dword ptr [ebx+8384]
push 523
call _LEXSKIPTOKEN@4
push 523
call _LEXGETTOKEN@4
cmp eax, 36
jne .L_0075
push 523
call _LEXSKIPTOKEN@4
call _CDIRECTIVE@0
jmp .L_0074
.L_0075:
call _LEXSKIPLINE@0
.L_0074:
mov eax, dword ptr [_LEX+422280]
dec dword ptr [eax+8384]
mov dword ptr [ebp-4], -1
jmp .L_0069
.L_006B:
mov dword ptr [ebp-4], 0
.L_0076:
.L_0069:
.L_0068:
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
.balign 16
_CDIRECTIVE@0:
push ebp
mov ebp, esp
sub esp, 44
.L_0077:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
jmp .L_007A
.L_007C:
mov eax, dword ptr [_ENV+1040]
and eax, 16777216
test eax, eax
jne .L_007E
push 0
push 146
push 16777216
call _ERRREPORTNOTALLOWED@12
jmp .L_007D
.L_007E:
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+1096], -1
cmp dword ptr [_ENV+860], 0
jle .L_0080
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 10
push offset _Lt_0081
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0080:
.L_007F:
.L_007D:
jmp .L_0079
.L_0083:
mov eax, dword ptr [_ENV+1040]
and eax, 16777216
test eax, eax
jne .L_0085
push 0
push 146
push 16777216
call _ERRREPORTNOTALLOWED@12
jmp .L_0084
.L_0085:
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+1096], 0
cmp dword ptr [_ENV+860], 0
jle .L_0087
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset _Lt_0088
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0087:
.L_0086:
.L_0084:
jmp .L_0079
.L_008A:
mov eax, dword ptr [_ENV+1040]
and eax, 16777216
test eax, eax
jne .L_008C
push 0
push 146
push 16777216
call _ERRREPORTNOTALLOWED@12
jmp .L_008B
.L_008C:
push 0
call _LEXSKIPTOKEN@4
push 2048
push offset _Lt_008D
call _HMATCHIDORKW@8
mov dword ptr [_Lt_00B8], eax
push 0
push 258
call _HMATCH@8
test eax, eax
jne .L_008F
push 0
push 0
push 17
call _ERRREPORT@12
jmp .L_0079
.L_008F:
.L_008E:
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .L_0091
push 0
push offset _Lt_00B9
call _LEXEATTOKEN@8
jmp .L_0090
.L_0091:
push 527
call _LEXGETTOKEN@4
cmp eax, 259
je .L_0093
push 0
push 0
push 17
call _ERRREPORT@12
jmp .L_0079
jmp .L_0092
.L_0093:
push 527
call _LEXSKIPTOKEN@4
.L_0092:
push 0
push offset _Lt_00B9
push 39
call _LEXREADLINE@12
push 0
push 39
call _HMATCH@8
test eax, eax
jne .L_0095
push 0
push 0
push 17
call _ERRREPORT@12
jmp .L_0079
.L_0095:
.L_0094:
.L_0090:
push dword ptr [_Lt_00B8]
push offset _Lt_00B9
call _FBINCLUDEFILE@8
.L_008B:
jmp .L_0079
.L_0096:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_009A
.L_009B:
cmp dword ptr [ebp-8], 2
jne .L_0099
.L_009A:
mov eax, dword ptr [_ENV+1040]
and eax, 16777216
test eax, eax
je .L_009D
push 0
push 0
push 17
call _ERRREPORT@12
.L_009D:
.L_009C:
jmp .L_0097
.L_0099:
push 0
push offset _Lt_009F
call _HMATCHIDORKW@8
test eax, eax
je .L_00A1
push 0
push 258
call _HMATCH@8
test eax, eax
jne .L_00A3
push 0
push -1
push 203
call _ERRREPORT@12
jmp .L_0097
.L_00A3:
.L_00A2:
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .L_00A5
push 0
push offset _Lt_00B9
call _LEXEATTOKEN@8
push offset _Lt_00B9
call _FBGETLANGID@4
mov dword ptr [_Lt_00BA], eax
cmp dword ptr [_Lt_00BA], -1
jne .L_00A7
push 0
push 0
push 279
call _ERRREPORT@12
jmp .L_00A6
.L_00A7:
push dword ptr [_Lt_00BA]
push 10
call _FBCHANGEOPTION@8
cmp dword ptr [_ENV+860], 0
jle .L_00A9
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 2
push offset _Lt_00AB
push -1
push -1
push dword ptr [_Lt_00BA]
call _FBGETLANGNAME@4
push eax
push 10
push offset _Lt_00AA
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
.L_00A9:
.L_00A8:
.L_00A6:
jmp .L_00A4
.L_00A5:
push 0
push 0
push 17
call _ERRREPORT@12
.L_00A4:
.L_00A1:
.L_00A0:
.L_009E:
.L_0097:
jmp .L_0079
.L_007A:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 10
ja .L_0096
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_00AF+eax*4-1228]
_.L_00AF:
.int .L_0083
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_008A
.int .L_007C
.L_0079:
.L_00B0:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
je .L_00B6
.L_00B7:
cmp dword ptr [ebp-4], 256
jne .L_00B5
.L_00B6:
jmp .L_00B1
.L_00B5:
.L_00B3:
push 523
call _LEXSKIPTOKEN@4
.L_00B2:
jmp .L_00B0
.L_00B1:
.L_0078:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00B9,261
.balign 4
	.lcomm	_Lt_00B8,4
.balign 4
	.lcomm	_Lt_00BA,4
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0081:	.ascii	"'$dynamic\0"
.balign 4
_Lt_0088:	.ascii	"'$static\0"
.balign 4
_Lt_008D:	.ascii	"ONCE\0"
.balign 4
_Lt_009F:	.ascii	"LANG\0"
.balign 4
_Lt_00AA:	.ascii	"'$lang: \"\0"
.balign 4
_Lt_00AB:	.ascii	"\"\0"
