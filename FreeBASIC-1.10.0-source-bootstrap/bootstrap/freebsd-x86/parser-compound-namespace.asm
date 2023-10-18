	.intel_syntax noprefix

.section .text
.balign 16

.globl CNAMESPACESTMTBEGIN
CNAMESPACESTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_006A:
mov eax, dword ptr [ENV+1040]
and eax, 4
test eax, eax
jne .L_006D
push 0
push 146
push 4
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 286
call HSKIPCOMPOUND
add esp, 12
jmp .L_006B
.L_006D:
.L_006C:
push 4
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_006F
push 0
push -1
push 286
call HSKIPCOMPOUND
add esp, 12
jmp .L_006B
.L_006F:
.L_006E:
push 2112
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0071
.L_0073:
push -50
push 286
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-16]
call NAMESPACEBEGIN
add esp, 8
jmp .L_006B
jmp .L_0070
.L_0071:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .L_0070
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_0074+eax*4-1024]
.L_0074:
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.int .L_0073
.L_0070:
mov dword ptr [ebp-20], 0
.L_0075:
mov eax, dword ptr [ebp-20]
add eax, dword ptr [PARSER+88]
cmp eax, 64
jl .L_0079
push 0
push 0
push 27
call ERRREPORT
add esp, 12
jmp .L_006B
.L_0079:
.L_0078:
inc dword ptr [ebp-20]
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_007C
.L_007D:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_0095
call fb_StrAssign
add esp, 20
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-12], eax
jmp .L_007A
.L_007C:
cmp dword ptr [ebp-24], 2
jne .L_007E
.L_007F:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .L_0081
push 0
push 0
push 4
call ERRREPORT
add esp, 12
mov byte ptr [Lt_0095], 0
mov dword ptr [ebp-12], 0
jmp .L_0080
.L_0081:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_0095
call fb_StrAssign
add esp, 20
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-12], eax
.L_0080:
jmp .L_007A
.L_007E:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
mov byte ptr [Lt_0095], 0
mov dword ptr [ebp-12], 0
.L_0082:
.L_007A:
cmp dword ptr [ebp-12], 0
je .L_0084
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 8
je .L_0086
push 0
push 1
push 0
push offset Lt_0095
push 4
call ERRREPORTEX
add esp, 20
push 0
push 0
call SYMBUNIQUELABEL
push eax
push 129
push offset Lt_0095
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 0
jmp .L_0085
.L_0086:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [SYMB+98532]
cmp dword ptr [eax+140], ebx
je .L_0088
mov dword ptr [ebp-8], 0
.L_0088:
.L_0087:
.L_0085:
jmp .L_0083
.L_0084:
mov dword ptr [ebp-8], 0
.L_0083:
movzx ebx, byte ptr [Lt_0095]
test ebx, ebx
je .L_008A
push 2112
call LEXSKIPTOKEN
add esp, 4
.L_008A:
.L_0089:
cmp dword ptr [ebp-8], 0
jne .L_008C
cmp dword ptr [ebp-20], 1
jne .L_008E
call CALIASATTRIBUTE
mov dword ptr [ebp-4], eax
.L_008E:
.L_008D:
push dword ptr [ebp-4]
push offset Lt_0095
call SYMBADDNAMESPACE
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0090
push 0
push 1
push 0
push offset Lt_0095
push 4
call ERRREPORTEX
add esp, 20
.L_0090:
.L_008F:
.L_008C:
.L_008B:
push -34
push 286
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call NAMESPACEBEGIN
add esp, 8
cmp dword ptr [ebp-4], 0
je .L_0092
jmp .L_0076
.L_0092:
.L_0091:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_0094
jmp .L_0076
.L_0094:
.L_0093:
push 64
call LEXSKIPTOKEN
add esp, 4
.L_0077:
jmp .L_0075
.L_0076:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
add dword ptr [PARSER+88], ebx
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0095,129

.section .text
.balign 16

.globl CNAMESPACESTMTEND
CNAMESPACESTMTEND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0096:
push -1
push 286
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0099
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0097
.L_0099:
.L_0098:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sub dword ptr [PARSER+88], ebx
.L_009A:
cmp dword ptr [ebp-8], 0
jle .L_009B
push 0
call SYMBNESTEND
add esp, 4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
inc dword ptr [eax+96]
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+96], 1
jle .L_009D
push dword ptr [ebp-12]
call SYMBNAMESPACEREIMPORT
add esp, 4
.L_009D:
.L_009C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+100], ecx
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
push 0
push 286
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_009F
jmp .L_009B
.L_009F:
.L_009E:
dec dword ptr [ebp-8]
jmp .L_009A
.L_009B:
.L_0097:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CUSINGSTMT
CUSINGSTMT:
push ebp
mov ebp, esp
sub esp, 4
.L_00A0:
mov eax, dword ptr [ENV+1040]
and eax, 4
test eax, eax
jne .L_00A3
push 0
push 146
push 4
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00A1
.L_00A3:
.L_00A2:
push 2112
call LEXSKIPTOKEN
add esp, 4
.L_00A4:
push 1
call CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00A8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 265
je .L_00AA
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .L_00A9
.L_00AA:
push 0
push 0
push 8
call ERRREPORT
add esp, 12
.L_00A9:
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_00A7
.L_00A8:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 8
je .L_00AC
push 0
push 0
push 20
call ERRREPORT
add esp, 12
jmp .L_00AB
.L_00AC:
push dword ptr [ebp-4]
call SYMBNAMESPACEIMPORT
add esp, 4
.L_00AB:
.L_00A7:
.L_00A6:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .L_00A4
.L_00A5:
.L_00A1:
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
.balign 16
NAMESPACEBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0066:
cmp dword ptr [ebp+12], 0
jne .L_0069
push 0
call SYMBUNIQUELABEL
push eax
call SYMBADDNAMESPACE
add esp, 8
mov dword ptr [ebp+12], eax
.L_0069:
.L_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 1
push 0
push dword ptr [ebp+12]
call SYMBNESTBEGIN
add esp, 8
.L_0067:
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
