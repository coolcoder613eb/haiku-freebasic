	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCONSTANT@4
_CCONSTANT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0067:
push dword ptr [ebp+8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_006A
push 0
push 0
push 202
call _ERRREPORT@12
.L_006A:
.L_0069:
push 4096
call _LEXSKIPTOKEN@4
push dword ptr [ebp+8]
call _ASTBUILDCONST@4
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CSTRLITERAL@4
_CSTRLITERAL@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
mov dword ptr [ebp-28], 0
.L_006D:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+2064]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .L_0071
push 0
call _LEXGETTOKEN@4
cmp eax, 263
jne .L_0073
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _LEXGETTEXT@0
push eax
call _HREESCAPE@12
mov dword ptr [ebp-20], eax
jmp .L_0072
.L_0073:
call _LEXGETTEXT@0
mov dword ptr [ebp-20], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
je .L_0075
mov ebx, dword ptr [_ENV+200]
and ebx, 1
test ebx, ebx
je .L_0077
push 0
call _LEXGETTOKEN@4
cmp eax, 264
je .L_0079
push dword ptr [ebp-20]
call _HHASESCAPE@4
test eax, eax
je .L_007B
push 0
push 6
push dword ptr [ebp-20]
push 16
call _ERRREPORTWARN@16
.L_007B:
.L_007A:
.L_0079:
.L_0078:
.L_0077:
.L_0076:
.L_0075:
.L_0074:
mov dword ptr [ebp-16], 0
.L_0072:
cmp dword ptr [ebp-16], 0
jne .L_007D
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _SYMBALLOCSTRCONST@8
mov dword ptr [ebp-8], eax
jmp .L_007C
.L_007D:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
.L_007C:
jmp .L_0070
.L_0071:
push 0
call _LEXGETTOKEN@4
cmp eax, 263
jne .L_0080
lea eax, [ebp-12]
push eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
call _HREESCAPEW@8
mov dword ptr [ebp-24], eax
jmp .L_007F
.L_0080:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
je .L_0082
mov ebx, dword ptr [_ENV+200]
and ebx, 1
test ebx, ebx
je .L_0084
push 0
call _LEXGETTOKEN@4
cmp eax, 264
je .L_0086
push dword ptr [ebp-24]
call _HHASESCAPEW@4
test eax, eax
je .L_0088
push 0
push 1
push 0
push 16
call _ERRREPORTWARN@16
.L_0088:
.L_0087:
.L_0086:
.L_0085:
.L_0084:
.L_0083:
.L_0082:
.L_0081:
.L_007F:
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
.L_0070:
cmp dword ptr [ebp-28], 0
jne .L_008A
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-28], eax
jmp .L_0089
.L_008A:
push 1
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-28]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-28], eax
.L_0089:
cmp dword ptr [ebp+8], 0
je .L_008C
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 4
je .L_008E
jmp .L_006E
.L_008E:
.L_008D:
jmp .L_008B
.L_008C:
jmp .L_006E
.L_008B:
.L_006F:
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CNUMLITERAL@4
_CNUMLITERAL@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 16
jne .L_0092
.L_0093:
push dword ptr [ebp-8]
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VAL@4
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-4], eax
jmp .L_0091
.L_0092:
cmp dword ptr [ebp-8], 15
jne .L_0094
.L_0095:
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VAL@4
fstp dword ptr [ebp-12]
push dword ptr [ebp-8]
fld dword ptr [ebp-12]
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-4], eax
jmp .L_0091
.L_0094:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0097
mov dword ptr [ebp-12], 24
jmp .L_009D
.L_0097:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_009D:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_009A
push 0
push dword ptr [ebp-8]
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VALLNG@4
push edx
push eax
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_009A:
push 0
push dword ptr [ebp-8]
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VALULNG@4
push edx
push eax
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_0099:
.L_0096:
.L_0091:
cmp dword ptr [ebp+8], 0
je .L_009C
push 0
call _LEXSKIPTOKEN@4
.L_009C:
.L_009B:
.L_0090:
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
