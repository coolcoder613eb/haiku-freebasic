	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDNAMESPACE@8
_SYMBADDNAMESPACE@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
cmp dword ptr [ebp+12], 0
jne .L_006A
cmp dword ptr [_PARSER+104], 0
je .L_006C
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_006C:
.L_006B:
.L_006A:
.L_0069:
push 0
push 0
push 0
push 21
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 8
push 0
push 0
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006E
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_006E:
.L_006D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
push 0
push 800
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call _HASHINIT@12
jmp .L_006F
.L_0070:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call _memset
add esp, 12
.L_006F:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBDELNAMESPACEMEMBERS@8
_SYMBDELNAMESPACEMEMBERS@8:
push ebp
mov ebp, esp
push ebx
.L_0071:
push dword ptr [ebp+8]
call _SYMBCOMPDELIMPORTLIST@4
.L_0073:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_0074
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _SYMBDELSYMBOL@8
jmp .L_0073
.L_0074:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
je .L_0076
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
lea eax, [_SYMB+98660]
push eax
call _LISTDELNODE@8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
.L_0076:
.L_0075:
cmp dword ptr [ebp+12], 0
je .L_0078
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HASHEND@4
.L_0078:
.L_0077:
.L_0072:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBDELNAMESPACE@4
_SYMBDELNAMESPACE@4:
push ebp
mov ebp, esp
.L_0079:
push -1
push dword ptr [ebp+8]
call _SYMBDELNAMESPACEMEMBERS@8
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.L_007A:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBNAMESPACEIMPORTEX@8
_SYMBNAMESPACEIMPORTEX@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0097:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HISONPARENTLIST@8
test eax, eax
je .L_009A
mov dword ptr [ebp-4], 0
jmp .L_0098
.L_009A:
.L_0099:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_009C
lea eax, [_SYMB+98660]
push eax
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.L_009C:
.L_009B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HISONIMPORTLIST@8
test eax, eax
jne .L_009E
push dword ptr [ebp+12]
call _HADDIMPORT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00A0
mov dword ptr [ebp-4], 0
jmp .L_0098
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
push dword ptr [ebp-8]
call _SYMBCOMPADDTOIMPORTLIST@4
push dword ptr [ebp-8]
call _SYMBCOMPADDTOEXPORTLIST@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00A1:
cmp dword ptr [ebp-8], 0
je .L_00A2
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _SYMBNAMESPACEIMPORTEX@8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .L_00A1
.L_00A2:
push dword ptr [ebp+8]
call _HADDTOHASHTBLIST@4
.L_009E:
.L_009D:
mov dword ptr [ebp-4], -1
.L_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBNAMESPACEIMPORT@4
_SYMBNAMESPACEIMPORT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00A3:
push dword ptr [_SYMB+98536]
push dword ptr [ebp+8]
call _SYMBNAMESPACEIMPORTEX@8
mov dword ptr [ebp-4], eax
.L_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBNAMESPACEREMOVE@8
_SYMBNAMESPACEREMOVE@8:
push ebp
mov ebp, esp
.L_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00A8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HDELFROMHASHTBLIST@4
push dword ptr [ebp+8]
call _SYMBCOMPDELFROMEXPORTLIST@4
push dword ptr [ebp+8]
call _SYMBCOMPDELFROMIMPORTLIST@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.L_00A8:
.L_00A7:
cmp dword ptr [ebp+12], 0
jne .L_00AA
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.L_00AA:
.L_00A9:
.L_00A6:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBNAMESPACEREIMPORT@4
_SYMBNAMESPACEREIMPORT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+20], 0
je .L_00AE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .L_00AF
.L_00B0:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-8], eax
.L_00AF:
cmp dword ptr [ebp-8], 0
je .L_00B2
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBHASHLISTINSERTNAMESPACE@8
.L_00B2:
.L_00B1:
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_00B3:
cmp dword ptr [ebp-4], 0
je .L_00B4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00B5:
cmp dword ptr [ebp-8], 0
je .L_00B6
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _SYMBNAMESPACEIMPORTEX@8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .L_00B5
.L_00B6:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-4], eax
jmp .L_00B3
.L_00B4:
.L_00AC:
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
_HADDIMPORT@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_007B:
mov eax, dword ptr [_SYMB+98536]
cmp dword ptr [ebp+8], eax
jne .L_007E
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
jmp .L_007D
.L_007E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_007D:
push 0
cmp dword ptr [ebp-16], 0
je .L_007F
mov dword ptr [ebp-20], 128
jmp .L_00B7
.L_007F:
mov dword ptr [ebp-20], 0
.L_00B7:
push dword ptr [ebp-20]
push 0
push -2147483648
push 0
push 0
push 17
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 0
push 0
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-4], eax
.L_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HADDTOHASHTBLIST@4:
push ebp
mov ebp, esp
push ebx
.L_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
jne .L_0084
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [ebp+8]
call _SYMBHASHLISTINSERTNAMESPACE@8
.L_0084:
.L_0083:
.L_0082:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDELFROMHASHTBLIST@4:
push ebp
mov ebp, esp
push ebx
.L_0085:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 0
jne .L_0088
push dword ptr [ebp+8]
call _SYMBHASHLISTREMOVENAMESPACE@4
.L_0088:
.L_0087:
.L_0086:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HISONPARENTLIST@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0089:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_008B:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_008C
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .L_008E
mov dword ptr [ebp-4], -1
jmp .L_008A
.L_008E:
.L_008D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_008B
.L_008C:
mov dword ptr [ebp-4], 0
.L_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HISONIMPORTLIST@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+92], 0
je .L_0092
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_0093:
cmp dword ptr [ebp-8], 0
je .L_0094
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+56], ebx
jne .L_0096
mov dword ptr [ebp-4], -1
jmp .L_0090
.L_0096:
.L_0095:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
jmp .L_0093
.L_0094:
.L_0092:
.L_0091:
mov dword ptr [ebp-4], 0
.L_0090:
mov eax, dword ptr [ebp-4]
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
