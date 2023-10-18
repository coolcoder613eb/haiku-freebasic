	.intel_syntax noprefix

.section .text
.balign 16

.globl _CTYPEDEFMULTDECL
_CTYPEDEFMULTDECL:
push ebp
mov ebp, esp
sub esp, 28
.L_00AF:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00B2
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_00B0
.L_00B2:
.L_00B1:
push 2048
call _LEXSKIPTOKEN
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
call _HREADTYPE
add esp, 16
mov dword ptr [ebp-24], eax
.L_00B3:
call _HREADID
mov dword ptr [ebp-28], eax
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _HADDTYPEDEF
add esp, 32
.L_00B5:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_00B3
.L_00B4:
.L_00B0:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CTYPEDEFSINGLEDECL
_CTYPEDEFSINGLEDECL:
push ebp
mov ebp, esp
sub esp, 24
.L_00B6:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00B9
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_00B7
.L_00B9:
.L_00B8:
.L_00BA:
push 2048
push 376
call _HMATCH
add esp, 8
test eax, eax
jne .L_00BE
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_00BE:
.L_00BD:
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
call _HREADTYPE
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
call _HADDTYPEDEF
add esp, 32
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_00C0
jmp .L_00BB
.L_00C0:
.L_00BF:
call _HREADID
mov dword ptr [ebp+12], eax
.L_00BC:
jmp .L_00BA
.L_00BB:
.L_00B7:
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
_HPTRDECL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0067:
mov dword ptr [ebp-4], 0
.L_0069:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_006D
.L_006F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 373
je .L_0073
.L_0074:
cmp dword ptr [ebp-12], 374
jne .L_0072
.L_0073:
cmp dword ptr [ebp-4], 8
jl .L_0076
push 0
push 0
push 274
call _ERRREPORT
add esp, 12
jmp .L_0075
.L_0076:
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
.L_0075:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0070
.L_0072:
push 0
push 0
push 273
call _ERRREPORT
add esp, 12
jmp .L_006A
.L_0077:
.L_0070:
jmp .L_006C
.L_0078:
cmp dword ptr [ebp-4], 8
jl .L_007A
push 0
push 0
push 274
call _ERRREPORT
add esp, 12
jmp .L_0079
.L_007A:
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
.L_0079:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_006C
.L_007B:
jmp .L_006A
jmp .L_006C
.L_006D:
mov ecx, dword ptr [ebp-8]
add ecx, 4294966961
cmp ecx, 39
ja .L_007B
mov ecx, dword ptr [ebp-8]
jmp dword ptr [_.L_007C+ecx*4-1340]
_.L_007C:
.int .L_006F
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_0078
.int .L_0078
.L_006C:
.L_006B:
jmp .L_0069
.L_006A:
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREADTYPE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007D:
push 2
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CSYMBOLTYPE
add esp, 20
test eax, eax
je .L_0080
mov dword ptr [ebp-4], 0
jmp .L_007E
.L_0080:
.L_007F:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0084
.L_0085:
cmp dword ptr [ebp-8], 2
jne .L_0083
.L_0084:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_00C1
call _fb_StrAssign
add esp, 20
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0081
.L_0083:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push 129
push offset _Lt_00C1
call _fb_StrAssign
add esp, 20
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.L_0086:
.L_0081:
push dword ptr [ebp+8]
call _HPTRDECL
add esp, 4
mov eax, offset _Lt_00C1
mov dword ptr [ebp-4], eax
.L_007E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00C1,129

.section .text
.balign 16
_HADDFORWARDREF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0087:
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
call _HUCASE
add esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call _HUCASE
add esp, 8
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_008A
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .L_0089
.L_008A:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 23
push dword ptr [ebp+12]
call _SYMBADDFWDREF
add esp, 4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 4294967295
mov dword ptr [eax+4], 4294967295
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .L_008C
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
.L_008C:
.L_008B:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_008E
push 0
push -1
push 14
push dword ptr [ebp+12]
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_0090
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
call _SYMBUNIQUELABEL
push eax
call _SYMBADDFWDREF
add esp, 4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.L_0090:
.L_008F:
.L_008E:
.L_008D:
.L_0089:
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
.L_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDTYPEDEF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0091:
cmp dword ptr [ebp+12], 0
je .L_0094
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
call _HADDFORWARDREF
add esp, 28
.L_0094:
.L_0093:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _SYMBADDTYPEDEF
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0096
cmp dword ptr [ebp+32], 0
je .L_0098
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2097152
.L_0098:
.L_0097:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+36]
and ebx, 2097152
or dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+36]
and eax, 4194304
or dword ptr [ebx+4], eax
jmp .L_0095
.L_0096:
mov dword ptr [ebp-8], -1
push 0
push 0
push 13
push dword ptr [ebp+8]
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_009A
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+28], ebx
jne .L_009C
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebx+32], eax
jne .L_009E
mov dword ptr [ebp-8], 0
.L_009E:
.L_009D:
.L_009C:
.L_009B:
.L_009A:
.L_0099:
cmp dword ptr [ebp-8], 0
je .L_00A0
push 0
push -1
push 4
call _ERRREPORT
add esp, 12
.L_00A0:
.L_009F:
.L_0095:
.L_0092:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREADID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
call _CCURRENTPARENTID
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00A4
.L_00A6:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_00A8
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_00AA
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .L_00AC
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_00C2
call _fb_StrAssign
add esp, 20
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00A3
.L_00AD:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 129
push offset _Lt_00C2
call _fb_StrAssign
add esp, 20
jmp .L_00A3
.L_00A4:
cmp dword ptr [ebp-8], 2
ja .L_00AD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00AE+eax*4]
_.L_00AE:
.int .L_00A6
.int .L_00A6
.int .L_00A6
.L_00A3:
mov eax, offset _Lt_00C2
mov dword ptr [ebp-4], eax
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00C2,129
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
