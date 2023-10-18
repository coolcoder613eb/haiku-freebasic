	.intel_syntax noprefix

.section .text
.balign 16

.globl _CNAMESPACESTMTBEGIN
_CNAMESPACESTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_006B:
mov eax, dword ptr [_ENV+1040]
and eax, 4
test eax, eax
jne .L_006E
push 0
push 146
push 4
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 286
call _HSKIPCOMPOUND
add esp, 12
jmp .L_006C
.L_006E:
.L_006D:
push 4
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0070
push 0
push -1
push 286
call _HSKIPCOMPOUND
add esp, 12
jmp .L_006C
.L_0070:
.L_006F:
push 2112
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0072
.L_0074:
push -50
push 286
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-16]
call _NAMESPACEBEGIN
add esp, 8
jmp .L_006C
jmp .L_0071
.L_0072:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .L_0071
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_0075+eax*4-1024]
_.L_0075:
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.int .L_0074
.L_0071:
mov dword ptr [ebp-20], 0
.L_0076:
mov eax, dword ptr [ebp-20]
add eax, dword ptr [_PARSER+88]
cmp eax, 64
jl .L_007A
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
jmp .L_006C
.L_007A:
.L_0079:
inc dword ptr [ebp-20]
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_007D
.L_007E:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_0096
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-12], eax
jmp .L_007B
.L_007D:
cmp dword ptr [ebp-24], 2
jne .L_007F
.L_0080:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
jne .L_0082
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
mov byte ptr [_Lt_0096], 0
mov dword ptr [ebp-12], 0
jmp .L_0081
.L_0082:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_0096
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-12], eax
.L_0081:
jmp .L_007B
.L_007F:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov byte ptr [_Lt_0096], 0
mov dword ptr [ebp-12], 0
.L_0083:
.L_007B:
cmp dword ptr [ebp-12], 0
je .L_0085
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 8
je .L_0087
push 0
push 1
push 0
push offset _Lt_0096
push 4
call _ERRREPORTEX
add esp, 20
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 129
push offset _Lt_0096
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 0
jmp .L_0086
.L_0087:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_SYMB+98532]
cmp dword ptr [eax+140], ebx
je .L_0089
mov dword ptr [ebp-8], 0
.L_0089:
.L_0088:
.L_0086:
jmp .L_0084
.L_0085:
mov dword ptr [ebp-8], 0
.L_0084:
movzx ebx, byte ptr [_Lt_0096]
test ebx, ebx
je .L_008B
push 2112
call _LEXSKIPTOKEN
add esp, 4
.L_008B:
.L_008A:
cmp dword ptr [ebp-8], 0
jne .L_008D
cmp dword ptr [ebp-20], 1
jne .L_008F
call _CALIASATTRIBUTE
mov dword ptr [ebp-4], eax
.L_008F:
.L_008E:
push dword ptr [ebp-4]
push offset _Lt_0096
call _SYMBADDNAMESPACE
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0091
push 0
push 1
push 0
push offset _Lt_0096
push 4
call _ERRREPORTEX
add esp, 20
.L_0091:
.L_0090:
.L_008D:
.L_008C:
push -34
push 286
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _NAMESPACEBEGIN
add esp, 8
cmp dword ptr [ebp-4], 0
je .L_0093
jmp .L_0077
.L_0093:
.L_0092:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_0095
jmp .L_0077
.L_0095:
.L_0094:
push 64
call _LEXSKIPTOKEN
add esp, 4
.L_0078:
jmp .L_0076
.L_0077:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
add dword ptr [_PARSER+88], ebx
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0096,129

.section .text
.balign 16

.globl _CNAMESPACESTMTEND
_CNAMESPACESTMTEND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0097:
push -1
push 286
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_009A
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0098
.L_009A:
.L_0099:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sub dword ptr [_PARSER+88], ebx
.L_009B:
cmp dword ptr [ebp-8], 0
jle .L_009C
push 0
call _SYMBNESTEND
add esp, 4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
inc dword ptr [eax+96]
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+96], 1
jle .L_009E
push dword ptr [ebp-12]
call _SYMBNAMESPACEREIMPORT
add esp, 4
.L_009E:
.L_009D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+100], ecx
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
push 0
push 286
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A0
jmp .L_009C
.L_00A0:
.L_009F:
dec dword ptr [ebp-8]
jmp .L_009B
.L_009C:
.L_0098:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CUSINGSTMT
_CUSINGSTMT:
push ebp
mov ebp, esp
sub esp, 4
.L_00A1:
mov eax, dword ptr [_ENV+1040]
and eax, 4
test eax, eax
jne .L_00A4
push 0
push 146
push 4
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_00A2
.L_00A4:
.L_00A3:
push 2112
call _LEXSKIPTOKEN
add esp, 4
.L_00A5:
push 1
call _CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A9
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 265
je .L_00AB
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .L_00AA
.L_00AB:
push 0
push 0
push 8
call _ERRREPORT
add esp, 12
.L_00AA:
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .L_00A8
.L_00A9:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 8
je .L_00AD
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
jmp .L_00AC
.L_00AD:
push dword ptr [ebp-4]
call _SYMBNAMESPACEIMPORT
add esp, 4
.L_00AC:
.L_00A8:
.L_00A7:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_00A5
.L_00A6:
.L_00A2:
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
.balign 16
_NAMESPACEBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0067:
cmp dword ptr [ebp+12], 0
jne .L_006A
push 0
call _SYMBUNIQUELABEL
push eax
call _SYMBADDNAMESPACE
add esp, 8
mov dword ptr [ebp+12], eax
.L_006A:
.L_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 1
push 0
push dword ptr [ebp+12]
call _SYMBNESTBEGIN
add esp, 8
.L_0068:
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
