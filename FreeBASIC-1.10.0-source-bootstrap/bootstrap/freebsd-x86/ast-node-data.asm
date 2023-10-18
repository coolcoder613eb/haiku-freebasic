	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTDATASTMTINIT
ASTDATASTMTINIT:
.L_005C:
mov dword ptr [AST+120], 0
mov dword ptr [AST+124], 0
mov dword ptr [AST+128], 0
call HCREATEDATADESC
.L_005D:
ret
.balign 16

.globl ASTDATASTMTBEGIN
ASTDATASTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_005E:
push 0
push -2147483648
push 29
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_005F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDATASTMTSTORE
ASTDATASTMTSTORE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0060:
push 0
push -2147483648
push 29
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
jne .L_0063
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .L_0062
.L_0063:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_0062:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
cmp dword ptr [ebp+12], 0
jne .L_0065
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 65535
jmp .L_0064
.L_0065:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 4
je .L_0069
.L_006A:
cmp dword ptr [ebp-16], 7
jne .L_0068
.L_0069:
push dword ptr [ebp+12]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0066
.L_0068:
mov dword ptr [ebp-12], 0
.L_006B:
.L_0066:
cmp dword ptr [ebp-12], 0
je .L_006D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
je .L_006F
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 1
jmp .L_006E
.L_006F:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 32768
.L_006E:
jmp .L_006C
.L_006D:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 23
jne .L_0071
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 65534
jmp .L_0070
.L_0071:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 2
.L_0070:
.L_006C:
.L_0064:
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+20]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0061:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDATASTMTEND
ASTDATASTMTEND:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_0072:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push dword ptr [ebp+8]
call ASTDATASTMTSTORE
add esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push 0
call ASTDATASTMTADD
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push 0
push -1
push dword ptr [AST+116]
push 20
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-28], eax
push -1
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEBEGIN
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
dec eax
mov dword ptr [ebp-44], eax
jmp .L_0075
.L_0078:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEBEGIN
add esp, 12
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 1
jne .L_007B
.L_007C:
push dword ptr [ebp-24]
call ASTGETSTRLITSYMBOL
add esp, 4
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
mov eax, ecx
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0079
.L_007B:
cmp dword ptr [ebp-52], 32768
jne .L_007D
.L_007E:
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp-24]
call ASTGETSTRLITSYMBOL
add esp, 4
push dword ptr [eax+44]
push dword ptr [eax+40]
call __divdi3
add esp, 16
add eax, 32767
adc edx, 0
mov ecx, eax
mov dword ptr [ebp-16], ecx
push dword ptr [ebp-24]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0079
.L_007D:
cmp dword ptr [ebp-52], 2
jne .L_007F
.L_0080:
push 0
push -1
push dword ptr [ebp-24]
call ASTCONSTFLUSHTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-40]
push eax
call fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-40]
call ASTNEWCONSTSTR
add esp, 4
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0079
.L_007F:
cmp dword ptr [ebp-52], 0
je .L_0082
.L_0083:
cmp dword ptr [ebp-52], 65535
jne .L_0081
.L_0082:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
.L_0081:
.L_0079:
mov eax, dword ptr [AST+116]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-8], ecx
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
push 0
push 5
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
push ecx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-28]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-8], ecx
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEEND
add esp, 8
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-48], eax
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-20], eax
.L_0076:
inc dword ptr [ebp-12]
.L_0075:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-12], eax
jle .L_0078
.L_0077:
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-28]
call ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-28]
mov dword ptr [eax+56], ecx
cmp dword ptr [AST+120], 0
je .L_0085
mov ecx, dword ptr [AST+120]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-44], ecx
.L_0086:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+60], 0
je .L_0087
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx], 38
jne .L_0089
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-44], ecx
.L_0089:
.L_0088:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-20], eax
jmp .L_0086
.L_0087:
mov eax, dword ptr [ebp-44]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov ecx, dword ptr [ebp-44]
mov dword ptr [ecx+56], eax
.L_0085:
.L_0084:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [AST+120]
mov dword ptr [eax+104], ecx
mov ecx, dword ptr [ebp-4]
mov dword ptr [AST+120], ecx
cmp dword ptr [AST+124], 0
jne .L_008B
mov ecx, dword ptr [ebp-4]
mov dword ptr [AST+124], ecx
.L_008B:
.L_008A:
lea ecx, [ebp-40]
push ecx
call fb_StrDelete
add esp, 4
.L_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDATASTMTADD
ASTDATASTMTADD:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_008C:
cmp dword ptr [ebp+8], 0
jne .L_0090
mov eax, dword ptr [SYMB+99036]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [AST+128]
cmp ebx, dword ptr [ebp-12]
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0092
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
push offset Lt_009B
call fb_StrAssign
add esp, 20
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp-12]
mov dword ptr [AST+128], eax
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push 11
push offset Lt_001D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_009B
call fb_StrAssign
add esp, 20
.L_0091:
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov dword ptr [Lt_009C+8], ebx
mov dword ptr [Lt_009C+12], ecx
jmp .L_008F
.L_0090:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push 11
push offset Lt_001D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_009B
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_009C+8], 0
mov dword ptr [Lt_009C+12], 0
.L_008F:
push 0
push -1
push 1
push dword ptr [Lt_009B]
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0096
cmp dword ptr [ebp+8], 0
jne .L_0098
push offset Lt_009D
push 1
push dword ptr [ebp-8]
call SYMBSETARRAYDIMTB
add esp, 12
push dword ptr [ebp-8]
call SYMBMAYBEADDARRAYDESC
add esp, 4
.L_0098:
.L_0097:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_008D
.L_0096:
.L_0095:
push 9
push 3
push offset Lt_009D
push 1
push 0
push 0
push dword ptr [AST+116]
push 20
call SYMBUNIQUELABEL
push eax
push dword ptr [Lt_009B]
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+104], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_009B,12
.balign 4
	.lcomm	Lt_009C,16

.section .data
.balign 4
Lt_009D:
.int Lt_009C
.int Lt_009C
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
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
HCREATEDATADESC:
.L_009E:
push 0
push 0
push 0
push 1
push 0
push 0
push offset Lt_00A1
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [AST+116], eax
push 0
push 0
push 0
push 0
push 0
push 5
push offset Lt_00A4
push 0
push offset Lt_00A2
push dword ptr [AST+116]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_00A4
push 0
push offset Lt_00A3
push dword ptr [AST+116]
call SYMBADDFIELD
add esp, 40
push 0
push dword ptr [AST+116]
call SYMBSTRUCTEND
add esp, 8
.L_009F:
ret

.section .bss
.balign 4
	.lcomm	Lt_00A5,16

.section .data
.balign 4
Lt_00A4:
.int Lt_00A5
.int Lt_00A5
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0
.balign 4
Lt_001D:	.ascii	"_{fbdata}_\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_00A1:	.ascii	"__FB_DATADESC$\0"
.balign 4
Lt_00A2:	.ascii	"type\0"
.balign 4
Lt_00A3:	.ascii	"node\0"
