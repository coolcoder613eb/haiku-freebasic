	.intel_syntax noprefix

.section .text
.balign 16

.globl _CENUMBODY@8
_CENUMBODY@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0073:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0075:
.L_0078:
push 0
call _CCOMMENT@4
push 0
mov ebx, eax
call _CSTMTSEPARATOR@4
or ebx, eax
push 0
call _LEXGETTOKEN@4
cmp eax, 256
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0079
jmp .L_0078
.L_0079:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .L_007C
.L_007D:
jmp .L_0076
jmp .L_007A
.L_007C:
cmp dword ptr [ebp-12], 340
jne .L_007E
.L_007F:
jmp .L_0076
jmp .L_007A
.L_007E:
.L_0081:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0086
.L_0087:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_0089
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .L_008B
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
jle .L_008D
push 0
push 0
push 90
call _ERRREPORT@12
.L_008D:
.L_008C:
.L_008B:
.L_008A:
.L_0089:
.L_0088:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_00A0
call _fb_StrAssign@20
jmp .L_0084
.L_0086:
cmp dword ptr [ebp-16], 2
jne .L_008E
.L_008F:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [_PARSER+100], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0091
push 0
push 0
push 4
call _ERRREPORT@12
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push 129
push offset _Lt_00A0
call _fb_StrAssign@20
jmp .L_0090
.L_0091:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_00A0
call _fb_StrAssign@20
.L_0090:
jmp .L_0084
.L_008E:
jmp .L_0082
.L_0092:
.L_0084:
push 2048
call _LEXSKIPTOKEN@4
lea eax, [ebp-8]
push eax
push offset _Lt_00A0
call _HENUMCONSTDECL@8
push dword ptr [ebp+12]
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push offset _Lt_00A0
push dword ptr [ebp+8]
call _SYMBADDENUMELEMENT@20
test eax, eax
jne .L_0094
push 0
push 1
push 0
push offset _Lt_00A0
push 4
call _ERRREPORTEX@20
.L_0094:
.L_0093:
add dword ptr [ebp-8], 1
adc dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0096
jmp .L_0082
.L_0096:
.L_0095:
push 0
call _LEXSKIPTOKEN@4
.L_0083:
jmp .L_0081
.L_0082:
push 0
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .L_0098
cmp dword ptr [_ENV+900], 0
jne .L_009A
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+24824]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRRESET@4
.L_009A:
.L_0099:
.L_0098:
.L_0097:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .L_009C
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL@16
.L_009C:
.L_009B:
.L_0080:
.L_007A:
.L_0077:
jmp .L_0075
.L_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
jne .L_009E
push 0
push 0
push 256
call _ERRREPORT@12
.L_009E:
.L_009D:
.L_0074:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_00A0,129

.section .text
.balign 16

.globl _CENUMDECL@4
_CENUMDECL@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00A3:
push 9
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00A6
push 0
push -1
push 338
call _HSKIPCOMPOUND@12
jmp .L_00A4
.L_00A6:
.L_00A5:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_00AA
.L_00AB:
cmp dword ptr [ebp-20], 2
jne .L_00A9
.L_00AA:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_00AD
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .L_00AF
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
jle .L_00B1
push 0
push 0
push 90
call _ERRREPORT@12
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AC:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_00C9
call _fb_StrAssign@20
push 4096
call _LEXSKIPTOKEN@4
jmp .L_00A7
.L_00A9:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 129
push offset _Lt_00C9
call _fb_StrAssign@20
or dword ptr [ebp+8], 16777216
.L_00B2:
.L_00A7:
call _CALIASATTRIBUTE@0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 318
jne .L_00B4
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], -1
.L_00B4:
.L_00B3:
mov eax, dword ptr [_PARSER+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
or dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset _Lt_00C9
call _SYMBADDENUM@16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00B6
push 0
push 1
push 0
push offset _Lt_00C9
push 4
call _ERRREPORTEX@20
push dword ptr [ebp-16]
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
call _SYMBADDENUM@16
mov dword ptr [ebp-4], eax
.L_00B6:
.L_00B5:
push 0
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .L_00B8
cmp dword ptr [_ENV+900], 0
jne .L_00BA
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+24824]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRRESET@4
.L_00BA:
.L_00B9:
.L_00B8:
.L_00B7:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .L_00BC
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL@16
.L_00BC:
.L_00BB:
cmp dword ptr [ebp-16], 0
je .L_00BE
push 0
push dword ptr [ebp-4]
call _SYMBNESTBEGIN@8
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+8]
and eax, -16777217
push eax
push dword ptr [ebp-4]
call _CENUMBODY@8
cmp dword ptr [ebp-16], 0
je .L_00C0
push 0
call _SYMBNESTEND@4
.L_00C0:
.L_00BF:
push 0
call _LEXGETTOKEN@4
cmp eax, 340
je .L_00C2
push 0
push 0
push 74
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00C1
.L_00C2:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 338
je .L_00C4
push 0
push 0
push 74
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00C3
.L_00C4:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-12], 0
jne .L_00C6
cmp dword ptr [ebp-16], 0
je .L_00C8
push dword ptr [ebp-4]
call _SYMBNAMESPACEIMPORT@4
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C3:
.L_00C1:
.L_00A4:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00C9,129

.section .text
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
_HENUMCONSTDECL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0067:
call _CASSIGNTOKEN@0
test eax, eax
je .L_006A
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006C
push 0
push 0
push 11
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_0068
.L_006C:
.L_006B:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 16
je .L_006E
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp-4]
call _ASTDELTREE@4
jmp .L_0068
.L_006E:
.L_006D:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_006F
mov dword ptr [ebp-8], 24
jmp .L_00CB
.L_006F:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.L_00CB:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .L_0072
push 0
push 1
push dword ptr [ebp+8]
push 5
call _ERRREPORTWARN@16
.L_0072:
.L_0071:
push 8
push dword ptr [ebp-4]
call _ASTCONSTFLUSHTOINT@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_006A:
.L_0069:
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
