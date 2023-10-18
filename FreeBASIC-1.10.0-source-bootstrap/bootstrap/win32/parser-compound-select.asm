	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERSELECTSTMTINIT@0
_PARSERSELECTSTMTINIT@0:
.L_0068:
mov dword ptr [_CTX], 0
.L_0069:
ret
.balign 16

.globl _PARSERSELECTSTMTEND@0
_PARSERSELECTSTMTEND@0:
.L_006A:
.L_006B:
ret
.balign 16

.globl _CSELECTSTMTBEGIN@0
_CSELECTSTMTBEGIN@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.L_006C:
push 2048
call _LEXSKIPTOKEN@4
push 2048
push 271
call _HMATCH@8
test eax, eax
jne .L_006F
push 0
push 0
push 34
call _ERRREPORT@12
.L_006F:
.L_006E:
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .L_0071
push 2048
call _LEXSKIPTOKEN@4
push 2048
push 335
call _HMATCH@8
test eax, eax
je .L_0073
call _CSELCONSTSTMTBEGIN@0
jmp .L_006D
.L_0073:
.L_0072:
push 0
push 0
push 17
call _ERRREPORT@12
.L_0071:
.L_0070:
call _ASTSCOPEBEGIN@0
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0075
push 0
push 0
push 27
call _ERRREPORT@12
.L_0075:
.L_0074:
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0077
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_0077:
.L_0076:
lea eax, [ebp-4]
push eax
call _ASTTRYOVLSTRINGCONV@4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_0079
push 0
push 0
push 24
call _ERRREPORT@12
push dword ptr [ebp-4]
call _ASTDELTREE@4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_0079:
.L_0078:
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-4]
call _ASTGETEFFECTIVENODE@4
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 17
jne .L_007B
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-4]
call _ASTREBUILDWITHOUTEFFECTIVEPART@4
push eax
call _ASTADD@4
jmp .L_007A
.L_007B:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_007C
mov dword ptr [ebp-44], 24
jmp .L_0091
.L_007C:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.L_0091:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .L_0081
.L_0082:
cmp dword ptr [ebp-48], 4
jne .L_0080
.L_0081:
mov dword ptr [ebp-8], 17
.L_0080:
.L_007E:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
jne .L_0084
or dword ptr [ebp-12], 2
.L_0084:
.L_0083:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0085
mov dword ptr [ebp-40], 24
jmp .L_0092
.L_0085:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0092:
cmp dword ptr [ebp-40], 7
je .L_0088
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0089
mov dword ptr [ebp-44], 24
jmp .L_0093
.L_0089:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.L_0093:
cmp dword ptr [ebp-44], 17
je .L_008C
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 2048
.L_008C:
.L_008B:
mov eax, dword ptr [ebp-12]
and eax, 2
je .L_008E
push -1
push dword ptr [ebp-16]
call _ASTNEWDECL@8
push eax
call _ASTADDUNSCOPED@4
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
jmp .L_008D
.L_008E:
push 0
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
push 0
push dword ptr [ebp-16]
call _ASTNEWDECL@8
push eax
call _ASTNEWLINK@12
push eax
call _ASTADD@4
.L_008D:
jmp .L_0087
.L_0088:
push dword ptr [ebp-12]
push 0
push 39
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 16777216
mov eax, dword ptr [ebp-12]
and eax, 2
je .L_0090
push -1
push dword ptr [ebp-16]
call _ASTNEWDECL@8
push eax
call _ASTADDUNSCOPED@4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call _ASTBUILDFAKEWSTRINGASSIGN@12
push eax
call _ASTADD@4
jmp .L_008F
.L_0090:
push 0
push 64
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call _ASTBUILDFAKEWSTRINGASSIGN@12
push eax
push 0
push dword ptr [ebp-16]
call _ASTNEWDECL@8
push eax
call _ASTNEWLINK@12
push eax
call _ASTADD@4
.L_008F:
.L_0087:
.L_007A:
push 0
push 270
call _CCOMPSTMTPUSH@8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+24], 0
push 0
push 0
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+68], eax
.L_006D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELECTSTMTNEXT@0
_CSELECTSTMTNEXT@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00B2:
push 0
push 270
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_00B5
push 0
push 0
push 118
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00B3
.L_00B5:
.L_00B4:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+24], -1
jne .L_00B7
push 0
push 0
push 35
call _ERRREPORT@12
.L_00B7:
.L_00B6:
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+4], 1
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+16], 0
je .L_00B9
push dword ptr [ebp-24]
call _CSELCONSTSTMTNEXT@4
jmp .L_00B3
.L_00B9:
.L_00B8:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+8], 0
je .L_00BB
mov eax, dword ptr [ebp-24]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+8], 0
.L_00BB:
.L_00BA:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+24], 0
jle .L_00BD
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax+60]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 4
push 0
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+56], eax
.L_00BD:
.L_00BC:
push 0
call _LEXGETTOKEN@4
cmp eax, 268
jne .L_00BF
push 2048
call _LEXSKIPTOKEN@4
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+24], -1
jmp .L_00B3
.L_00BF:
.L_00BE:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_CTX]
mov dword ptr [ebp-20], eax
.L_00C0:
mov eax, dword ptr [ebp-24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-20]
sal eax, 4
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call _HCASEEXPRESSION@8
inc dword ptr [ebp-12]
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_00C4
jmp .L_00C1
.L_00C4:
.L_00C3:
push 0
call _LEXSKIPTOKEN@4
.L_00C2:
jmp .L_00C0
.L_00C1:
mov eax, dword ptr [ebp-12]
add dword ptr [_CTX], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_00C6
.L_00C9:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .L_00CB
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
jmp .L_00CA
.L_00CB:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.L_00CA:
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-20]
sal ebx, 4
mov eax, offset _CTX
add eax, ebx
cmp dword ptr [eax+4], 3
je .L_00CD
mov eax, dword ptr [ebp-12]
dec eax
cmp eax, dword ptr [ebp-16]
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp-20]
sal eax, 4
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call _HFLUSHCASEEXPR@20
test eax, eax
jne .L_00CF
push 0
push -1
push 24
call _ERRREPORT@12
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .L_00D1
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.L_00D1:
.L_00D0:
.L_00C7:
inc dword ptr [ebp-16]
.L_00C6:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-16], eax
jle .L_00C9
.L_00C8:
mov eax, dword ptr [ebp-12]
sub dword ptr [_CTX], eax
push -1
push dword ptr [ebp-4]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
inc dword ptr [eax+24]
.L_00B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELECTSTMTEND@0
_CSELECTSTMTEND@0:
push ebp
mov ebp, esp
sub esp, 4
.L_00D3:
push -1
push 270
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00D6
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00D4
.L_00D6:
.L_00D5:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+24], 0
jne .L_00D8
push 0
push 0
push 34
call _ERRREPORT@12
.L_00D8:
.L_00D7:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
je .L_00DA
push dword ptr [ebp-4]
call _CSELCONSTSTMTEND@4
jmp .L_00D4
.L_00DA:
.L_00D9:
push 2048
call _LEXSKIPTOKEN@4
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_00DC
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.L_00DC:
.L_00DB:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+56]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+60]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+68], 0
je .L_00DE
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
call _ASTSCOPEEND@4
.L_00DE:
.L_00DD:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
.L_00D4:
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__parserzcompoundzselect:
.L_0002:
.L_0003:
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
_HCASEEXPRESSION@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0094:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 45
push 0
call _LEXGETTOKEN@4
cmp eax, 272
jne .L_0097
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
push eax
call _HFBRELOP2IRRELOP@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
jmp .L_0096
.L_0097:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.L_0096:
call _CEXPRESSION@0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
jne .L_0099
push 0
push 0
push 9
call _ERRREPORT@12
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_009A
mov dword ptr [ebp-4], 7
jmp .L_00DF
.L_009A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
.L_00DF:
push dword ptr [ebp-4]
call _ASTNEWCONSTZ@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.L_0099:
.L_0098:
push 0
call _LEXGETTOKEN@4
cmp eax, 284
jne .L_009D
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_009F
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_009E
.L_009F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
call _CEXPRESSION@0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
jne .L_00A1
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.L_00A1:
.L_00A0:
.L_009E:
.L_009D:
.L_009C:
.L_0095:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFLUSHCASEEXPR@20:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_00A4
push dword ptr [ebp+12]
call _ASTBUILDFAKEWSTRINGACCESS@4
mov dword ptr [ebp-12], eax
jmp .L_00E0
.L_00A4:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR@20
mov dword ptr [ebp-12], eax
.L_00E0:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
je .L_00A7
cmp dword ptr [ebp+24], 0
je .L_00A9
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTGETINVERSELOGOP@4
push eax
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
jmp .L_00A8
.L_00A9:
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
.L_00A8:
jmp .L_00A6
.L_00A7:
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
push 47
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AB
mov dword ptr [ebp-4], 0
jmp .L_00A3
.L_00AB:
.L_00AA:
push dword ptr [ebp-8]
call _ASTADD@4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_00AC
push dword ptr [ebp+12]
call _ASTBUILDFAKEWSTRINGACCESS@4
mov dword ptr [ebp-16], eax
jmp .L_00E1
.L_00AC:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR@20
mov dword ptr [ebp-16], eax
.L_00E1:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .L_00AF
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 46
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
jmp .L_00AE
.L_00AF:
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 50
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
.L_00AE:
.L_00A6:
cmp dword ptr [ebp-8], 0
jne .L_00B1
mov dword ptr [ebp-4], 0
jmp .L_00A3
.L_00B1:
.L_00B0:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_CTX,16388

.section .ctors
.int _fb_ctor__parserzcompoundzselect
