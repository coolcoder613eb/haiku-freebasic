	.intel_syntax noprefix

.section .text
.balign 16

.globl CTYPEDEFMULTDECL
CTYPEDEFMULTDECL:
push ebp
mov ebp, esp
sub esp, 28
.L_00AE:
push 9
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00B1
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AF
.L_00B1:
.L_00B0:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-4]
push eax
call HREADTYPE
add esp, 16
mov dword ptr [ebp-24], eax
.L_00B2:
call HREADID
mov dword ptr [ebp-28], eax
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call HADDTYPEDEF
add esp, 32
.L_00B4:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .L_00B2
.L_00B3:
.L_00AF:
mov esp, ebp
pop ebp
ret
.balign 16

.globl CTYPEDEFSINGLEDECL
CTYPEDEFSINGLEDECL:
push ebp
mov ebp, esp
sub esp, 24
.L_00B5:
push 9
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00B8
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00B6
.L_00B8:
.L_00B7:
.L_00B9:
push 2048
push 376
call HMATCH
add esp, 8
test eax, eax
jne .L_00BD
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_00BD:
.L_00BC:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-4]
push eax
call HREADTYPE
add esp, 16
mov dword ptr [ebp-24], eax
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call HADDTYPEDEF
add esp, 32
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .L_00BF
jmp .L_00BA
.L_00BF:
.L_00BE:
call HREADID
mov dword ptr [ebp+12], eax
.L_00BB:
jmp .L_00B9
.L_00BA:
.L_00B6:
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
HPTRDECL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0066:
mov dword ptr [ebp-4], 0
.L_0068:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_006C
.L_006E:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 373
je .L_0072
.L_0073:
cmp dword ptr [ebp-12], 374
jne .L_0071
.L_0072:
cmp dword ptr [ebp-4], 8
jl .L_0075
push 0
push 0
push 274
call ERRREPORT
add esp, 12
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 32505856
or ebx, ecx
or ebx, 512
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], ebx
inc dword ptr [ebp-4]
.L_0074:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_006F
.L_0071:
push 0
push 0
push 273
call ERRREPORT
add esp, 12
jmp .L_0069
.L_0076:
.L_006F:
jmp .L_006B
.L_0077:
cmp dword ptr [ebp-4], 8
jl .L_0079
push 0
push 0
push 274
call ERRREPORT
add esp, 12
jmp .L_0078
.L_0079:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 31
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
add eax, 32
or ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 261632
sal ebx, 1
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 32505856
or ecx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ecx
inc dword ptr [ebp-4]
.L_0078:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_006B
.L_007A:
jmp .L_0069
jmp .L_006B
.L_006C:
mov ecx, dword ptr [ebp-8]
add ecx, 4294966961
cmp ecx, 39
ja .L_007A
mov ecx, dword ptr [ebp-8]
jmp dword ptr [.L_007B+ecx*4-1340]
.L_007B:
.int .L_006E
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_007A
.int .L_0077
.int .L_0077
.L_006B:
.L_006A:
jmp .L_0068
.L_0069:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADTYPE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007C:
push 2
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CSYMBOLTYPE
add esp, 20
test eax, eax
je .L_007F
mov dword ptr [ebp-4], 0
jmp .L_007D
.L_007F:
.L_007E:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0083
.L_0084:
cmp dword ptr [ebp-8], 2
jne .L_0082
.L_0083:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_00C0
call fb_StrAssign
add esp, 20
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_0080
.L_0082:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push 129
push offset Lt_00C0
call fb_StrAssign
add esp, 20
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_0085:
.L_0080:
push dword ptr [ebp+8]
call HPTRDECL
add esp, 4
mov eax, offset Lt_00C0
mov dword ptr [ebp-4], eax
.L_007D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00C0,129

.section .text
.balign 16
HADDFORWARDREF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0086:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 480
sar ebx, 5
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 261632
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call HUCASE
add esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call HUCASE
add esp, 8
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0089
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .L_0088
.L_0089:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 23
push dword ptr [ebp+12]
call SYMBADDFWDREF
add esp, 4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 4294967295
mov dword ptr [eax+4], 4294967295
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .L_008B
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+32]
and eax, 2097152
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+32]
and eax, 4194304
or dword ptr [ebx+4], eax
.L_008B:
.L_008A:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_008D
push 0
push -1
push 14
push dword ptr [ebp+12]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_008F
push 0
push 0
push 4
call ERRREPORT
add esp, 12
call SYMBUNIQUELABEL
push eax
call SYMBADDFWDREF
add esp, 4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.L_008F:
.L_008E:
.L_008D:
.L_008C:
.L_0088:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 480
mov eax, dword ptr [ebp-4]
sal eax, 5
add ecx, eax
or ebx, ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx]
and eax, 261632
mov cl, byte ptr [ebp-4]
sal eax, cl
or ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 32505856
or ebx, ecx
or ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], ebx
.L_0087:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDTYPEDEF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0090:
cmp dword ptr [ebp+12], 0
je .L_0093
push dword ptr [ebp+36]
lea eax, [ebp+32]
push eax
lea eax, [ebp+24]
push eax
lea eax, [ebp+20]
push eax
lea eax, [ebp+16]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HADDFORWARDREF
add esp, 28
.L_0093:
.L_0092:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call SYMBADDTYPEDEF
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0095
cmp dword ptr [ebp+32], 0
je .L_0097
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2097152
.L_0097:
.L_0096:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+36]
and ebx, 2097152
or dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+36]
and eax, 4194304
or dword ptr [ebx+4], eax
jmp .L_0094
.L_0095:
mov dword ptr [ebp-8], -1
push 0
push 0
push 13
push dword ptr [ebp+8]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0099
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+28], ebx
jne .L_009B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebx+32], eax
jne .L_009D
mov dword ptr [ebp-8], 0
.L_009D:
.L_009C:
.L_009B:
.L_009A:
.L_0099:
.L_0098:
cmp dword ptr [ebp-8], 0
je .L_009F
push 0
push -1
push 4
call ERRREPORT
add esp, 12
.L_009F:
.L_009E:
.L_0094:
.L_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00A0:
call CCURRENTPARENTID
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00A3
.L_00A5:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_00A7
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_00A9
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_00AB
push 0
push 0
push 90
call ERRREPORT
add esp, 12
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_00C1
call fb_StrAssign
add esp, 20
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_00A2
.L_00AC:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push 0
call SYMBUNIQUELABEL
push eax
push 129
push offset Lt_00C1
call fb_StrAssign
add esp, 20
jmp .L_00A2
.L_00A3:
cmp dword ptr [ebp-8], 2
ja .L_00AC
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00AD+eax*4]
.L_00AD:
.int .L_00A5
.int .L_00A5
.int .L_00A5
.L_00A2:
mov eax, offset Lt_00C1
mov dword ptr [ebp-4], eax
.L_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00C1,129
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
