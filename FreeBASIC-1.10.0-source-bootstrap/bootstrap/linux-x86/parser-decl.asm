	.intel_syntax noprefix

.section .text
.balign 16

.globl CDECLARATION
CDECLARATION:
.type CDECLARATION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+136], 3
jne .L_0069
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .L_006B
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_006B:
.L_006A:
.L_0069:
.L_0068:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_006D
.L_006F:
call HCHECKSCOPE
test eax, eax
je .L_0071
mov dword ptr [ebp-8], 32
.L_0071:
.L_0070:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_006C
.L_0072:
call HCHECKSCOPE
test eax, eax
je .L_0074
mov dword ptr [ebp-8], 64
.L_0074:
.L_0073:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_006C
.L_0075:
call CPROCDECL
mov dword ptr [ebp-4], -1
jmp .L_0067
jmp .L_006C
.L_0076:
call CDEFDECL
mov dword ptr [ebp-4], -1
jmp .L_0067
jmp .L_006C
.L_0077:
call COPTDECL
mov dword ptr [ebp-4], -1
jmp .L_0067
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp-20]
add eax, 4294966975
cmp eax, 58
ja .L_006C
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0078+eax*4-1284]
.L_0078:
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0076
.int .L_0075
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_0077
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006C
.int .L_006F
.int .L_0072
.L_006C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_007A
.L_007C:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_007E
.L_0080:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_007D
.L_0081:
cmp dword ptr [ebp-16], 335
jne .L_0083
.L_0084:
sub esp, 12
push dword ptr [ebp-8]
call CCONSTDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0082
.L_0083:
cmp dword ptr [ebp-16], 307
jne .L_0085
.L_0086:
sub esp, 12
push dword ptr [ebp-8]
call CVARIABLEDECL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0085:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0087:
.L_0082:
jmp .L_007D
.L_007E:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 10
ja .L_0081
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_0088+eax*4-1380]
.L_0088:
.int .L_0080
.int .L_0080
.int .L_0080
.int .L_0080
.int .L_0080
.int .L_0080
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0080
.int .L_0080
.L_007D:
jmp .L_0079
.L_0089:
cmp dword ptr [ebp-8], 0
je .L_008B
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_008A
.L_008B:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .L_008F
.L_0090:
cmp dword ptr [ebp-24], 305
jne .L_008E
.L_008F:
jmp .L_008C
.L_008E:
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
.L_0091:
.L_008C:
.L_008A:
jmp .L_0079
.L_0092:
cmp dword ptr [ebp-8], 0
je .L_0094
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0093
.L_0094:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_0096
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
.L_0096:
.L_0095:
.L_0093:
jmp .L_0079
.L_0097:
cmp dword ptr [ebp-8], 0
je .L_0099
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0098
.L_0099:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_009B
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009A
.L_009B:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .L_009F
.L_00A0:
cmp dword ptr [ebp-24], 305
jne .L_009E
.L_009F:
jmp .L_009C
.L_009E:
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
.L_00A1:
.L_009C:
.L_009A:
.L_0098:
jmp .L_0079
.L_00A2:
cmp dword ptr [ebp-8], 0
jne .L_00A4
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 301
je .L_00A8
.L_00A9:
cmp dword ptr [ebp-24], 40
jne .L_00A7
.L_00A8:
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_00A7:
.L_00A5:
.L_00A4:
.L_00A3:
sub esp, 12
push dword ptr [ebp-8]
call CTYPEDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0079
.L_00AA:
sub esp, 12
push dword ptr [ebp-8]
call CTYPEDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0079
.L_00AB:
sub esp, 12
push dword ptr [ebp-8]
call CENUMDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0079
.L_00AC:
sub esp, 12
push dword ptr [ebp-8]
call CVARIABLEDECL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0079
.L_00AD:
cmp dword ptr [ebp-8], 0
je .L_00AF
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
.L_00AF:
.L_00AE:
jmp .L_0079
.L_007A:
mov eax, dword ptr [ebp-20]
add eax, 4294966990
cmp eax, 49
ja .L_00AD
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00B0+eax*4-1224]
.L_00B0:
.int .L_00AC
.int .L_007C
.int .L_00AC
.int .L_00AC
.int .L_00AC
.int .L_00AC
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_007C
.int .L_00A2
.int .L_00AA
.int .L_00AB
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_0089
.int .L_0089
.int .L_0092
.int .L_0089
.int .L_0097
.int .L_0089
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_007C
.int .L_007C
.L_0079:
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CDECLARATION, .-CDECLARATION
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
