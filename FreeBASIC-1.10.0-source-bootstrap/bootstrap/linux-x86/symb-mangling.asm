	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBMANGLEINIT
SYMBMANGLEINIT:
.type SYMBMANGLEINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005C:
sub esp, 4
push 12
push 96
lea eax, [CTX]
push eax
call FLISTINIT
add esp, 16
mov dword ptr [CTX+56], 0
mov dword ptr [CTX+80], 0
mov dword ptr [CTX+84], 0
mov dword ptr [CTX+88], 0
.L_005D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLEINIT, .-SYMBMANGLEINIT
.cfi_endproc
.balign 16

.globl SYMBMANGLEEND
SYMBMANGLEEND:
.type SYMBMANGLEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005E:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTEND
add esp, 16
.L_005F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLEEND, .-SYMBMANGLEEND
.cfi_endproc
.balign 16

.globl SYMBUNIQUEID
SYMBUNIQUEID:
.type SYMBUNIQUEID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0060:
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
movzx ebx, byte ptr [ebp+8]
neg ebx
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0063
sub esp, 12
push 0
push 5
push offset Lt_0064
push 17
lea ebx, [CTX+60]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [CTX+80]
call fb_IntToStr
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0062
.L_0063:
sub esp, 12
push 0
push 4
push offset Lt_0066
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+80]
call HHEXUINT
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
.L_0062:
inc dword ptr [CTX+80]
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.L_0061:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBUNIQUEID, .-SYMBUNIQUEID
.cfi_endproc
.balign 16

.globl SYMBUNIQUELABEL
SYMBUNIQUELABEL:
.type SYMBUNIQUELABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_006A:
cmp dword ptr [ENV+104], 1
jne .L_006D
sub esp, 12
push 0
push 7
push offset Lt_006E
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [CTX+84]
call fb_IntToStr
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+84]
jmp .L_006C
.L_006D:
cmp dword ptr [ENV+108], 9
jne .L_0071
sub esp, 12
push 0
push 3
push offset Lt_0072
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0070
.L_0071:
sub esp, 12
push 0
push 4
push offset Lt_0073
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
.L_0070:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+80]
call HHEXUINT
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+80]
.L_006C:
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBUNIQUELABEL, .-SYMBUNIQUELABEL
.cfi_endproc
.balign 16

.globl SYMBMAKEPROFILELABELNAME
SYMBMAKEPROFILELABELNAME:
.type SYMBMAKEPROFILELABELNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0075:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+88]
call HHEXUINT
add esp, 16
push eax
push 4
push offset Lt_0077
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+88]
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.L_0076:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMAKEPROFILELABELNAME, .-SYMBMAKEPROFILELABELNAME
.cfi_endproc
.balign 16

.globl SYMBGETDBGNAME
SYMBGETDBGNAME:
.type SYMBGETDBGNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0079:
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
test eax, eax
je .L_007C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_007E
.L_0080:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0082
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-12], ebx
.L_0082:
.L_0081:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_007A
jmp .L_007D
.L_0083:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_007A
jmp .L_007D
.L_007E:
mov eax, dword ptr [ebp-8]
add eax, 4294967288
cmp eax, 3
ja .L_0083
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0084+eax*4-32]
.L_0084:
.int .L_0080
.int .L_0080
.int .L_0080
.int .L_0080
.L_007D:
.L_007C:
.L_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0086
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_0088
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
mov dword ptr [ebp-4], ebx
jmp .L_007A
.L_0088:
.L_0087:
.L_0086:
.L_0085:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ebp-4], ecx
.L_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETDBGNAME, .-SYMBGETDBGNAME
.cfi_endproc
.balign 16

.globl SYMBSETNAME
SYMBSETNAME:
.type SYMBSETNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_008B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_008E
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [SYMB+98608]
push eax
call POOLDELITEM
add esp, 16
.L_008E:
.L_008D:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0090
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
jmp .L_008F
.L_0090:
sub esp, 8
mov eax, dword ptr [ebp-4]
inc eax
push eax
lea eax, [SYMB+98608]
push eax
call POOLNEWITEM
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call fb_StrAssign
add esp, 32
.L_008F:
.L_008C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETNAME, .-SYMBSETNAME
.cfi_endproc
.balign 16

.globl SYMBGETMANGLEDNAME
SYMBGETMANGLEDNAME:
.type SYMBGETMANGLEDNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_009F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_00A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
jmp .L_00A0
.L_00A2:
.L_00A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00A4
.L_00A6:
sub esp, 12
push dword ptr [ebp+8]
call HMANGLEPROC
add esp, 16
jmp .L_00A3
.L_00A7:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx]
lea ebx, [ebp-20]
push ebx
call HMANGLENAMESPACE
add esp, 16
sub esp, 8
push dword ptr [ebp+8]
lea ebx, [ebp-20]
push ebx
call HMANGLEUDTID
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00A9
sub esp, 12
push 0
push 2
push offset Lt_009E
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_00A9:
.L_00A8:
sub esp, 8
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea ebx, [ebp-20]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_00A3
.L_00AA:
sub esp, 12
push dword ptr [ebp+8]
call HMANGLEVARIABLE
add esp, 16
jmp .L_00A3
.L_00AB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .L_00A0
jmp .L_00A3
.L_00A4:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .L_00AB
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00AC+eax*4-4]
.L_00AC:
.int .L_00AA
.int .L_00AB
.int .L_00A6
.int .L_00AB
.int .L_00AB
.int .L_00AB
.int .L_00AB
.int .L_00A7
.int .L_00A7
.int .L_00A7
.int .L_00A7
.int .L_00AB
.int .L_00AB
.int .L_00A7
.L_00A3:
call SYMBMANGLERESETABBREV
cmp dword ptr [ENV+104], 1
jne .L_00AE
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_00B0
sub esp, 4
push 36
push 46
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call HREPLACECHAR
add esp, 16
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.L_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETMANGLEDNAME, .-SYMBGETMANGLEDNAME
.cfi_endproc
.balign 16

.globl SYMBMANGLERESETABBREV
SYMBMANGLERESETABBREV:
.type SYMBMANGLERESETABBREV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B2:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTRESET
add esp, 16
mov dword ptr [CTX+56], 0
.L_00B3:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLERESETABBREV, .-SYMBMANGLERESETABBREV
.cfi_endproc
.balign 16

.globl HMANGLEBUILTINTYPE
HMANGLEBUILTINTYPE:
.type HMANGLEBUILTINTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00CD:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 17
jne .L_00D0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, offset Lt_00D1
mov dword ptr [ebp-4], eax
jmp .L_00CE
.L_00D0:
.L_00CF:
call FBIS64BIT
mov ebx, dword ptr [ENV+284]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00D3
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00D5
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 8
jne .L_00D7
.L_00D8:
mov ebx, offset Lt_00D9
mov dword ptr [ebp-4], ebx
jmp .L_00CE
jmp .L_00D6
.L_00D7:
cmp dword ptr [ebp+8], 9
jne .L_00DA
.L_00DB:
mov ebx, offset Lt_00DC
mov dword ptr [ebp-4], ebx
jmp .L_00CE
.L_00DA:
.L_00D6:
jmp .L_00D4
.L_00D5:
cmp dword ptr [ebp+8], 8
jne .L_00DE
.L_00DF:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset Lt_00E0
mov dword ptr [ebp-4], ebx
jmp .L_00CE
jmp .L_00DD
.L_00DE:
cmp dword ptr [ebp+8], 9
jne .L_00E1
.L_00E2:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset Lt_00E3
mov dword ptr [ebp-4], ebx
jmp .L_00CE
.L_00E1:
.L_00DD:
.L_00D4:
jmp .L_00D2
.L_00D3:
cmp dword ptr [ebp+8], 8
jne .L_00E5
.L_00E6:
mov ebx, offset Lt_00D9
mov dword ptr [ebp-4], ebx
jmp .L_00CE
jmp .L_00E4
.L_00E5:
cmp dword ptr [ebp+8], 9
jne .L_00E7
.L_00E8:
mov ebx, offset Lt_00DC
mov dword ptr [ebp-4], ebx
jmp .L_00CE
.L_00E7:
.L_00E4:
.L_00D2:
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00EA
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
.L_00EA:
.L_00E9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_00FB+ebx*4]
mov dword ptr [ebp-4], eax
.L_00CE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEBUILTINTYPE, .-HMANGLEBUILTINTYPE
.cfi_endproc

.section .data
.balign 4
Lt_00FB:
.int Lt_00EC
.int Lt_00ED
.int Lt_00EE
.int Lt_00EF
.int Lt_00F0
.int Lt_00F1
.int Lt_00F2
.int Lt_00F3
.long 0
.long 0
.long 0
.int Lt_00F4
.int Lt_00F5
.int Lt_00F6
.int Lt_00F7
.int Lt_00F8
.int Lt_00F9
.long 0
.long 0
.int Lt_00F0
.long 0
.long 0
.long 0
.long 0
.long 0
.skip 4,0

.section .text
.balign 16

.globl SYMBMANGLETYPE
SYMBMANGLETYPE:
.type SYMBMANGLETYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_00FC:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVFIND
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], -1
je .L_00FF
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call HABBREVGET
add esp, 16
jmp .L_00FD
.L_00FF:
.L_00FE:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0100
mov dword ptr [ebp-16], 24
jmp .L_013F
.L_0100:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_013F:
cmp dword ptr [ebp-16], 23
jne .L_0103
mov eax, dword ptr [ebp+12]
and eax, 2147483647
and eax, -512
or eax, 20
mov dword ptr [ebp+12], eax
.L_0103:
.L_0102:
mov eax, dword ptr [ebp+12]
and eax, 524288
test eax, eax
je .L_0105
sub esp, 12
push 0
push 2
push offset Lt_0106
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
mov eax, dword ptr [ebp+20]
or eax, 4
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -524289
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_00FD
.L_0105:
.L_0104:
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
je .L_0108
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_010A
sub esp, 12
push 0
push 2
push offset Lt_010B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_010A:
.L_0109:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -513
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_010D
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
.L_010D:
.L_010C:
jmp .L_00FD
.L_0108:
.L_0107:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_010F
sub esp, 12
push 0
push 2
push offset Lt_0110
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
mov eax, dword ptr [ebp+20]
or eax, 2
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_00FD
.L_010F:
.L_010E:
mov eax, dword ptr [ebp+12]
and eax, 32505856
test eax, eax
je .L_0112
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
jne .L_0114
mov eax, dword ptr [ebp+12]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_0116
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call SYMBGETVALISTTYPE
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .L_0119
.L_011A:
mov eax, dword ptr [ebp+20]
and eax, 6
test eax, eax
je .L_011C
sub esp, 12
push 0
push 4
push offset Lt_011D
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_011B
.L_011C:
sub esp, 12
push 0
push 2
push offset Lt_0110
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_011B:
and dword ptr [ebp+12], -32505857
jmp .L_0117
.L_0119:
cmp dword ptr [ebp-20], 4
je .L_011F
.L_0120:
cmp dword ptr [ebp-20], 5
jne .L_011E
.L_011F:
sub esp, 12
push 0
push 3
push offset Lt_0121
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
and dword ptr [ebp+12], -32505857
.L_011E:
.L_0117:
.L_0116:
.L_0115:
.L_0114:
.L_0113:
.L_0112:
.L_0111:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 20
je .L_0125
.L_0126:
cmp dword ptr [ebp-20], 10
jne .L_0124
.L_0125:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
lea eax, [SYMB+98352]
cmp dword ptr [ebp-4], eax
jne .L_0128
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
jmp .L_0127
.L_0128:
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_012A
sub esp, 12
push 0
push 2
push offset Lt_012B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_012A:
.L_0129:
push 8
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_012D
sub esp, 12
push 0
push 2
push offset Lt_009E
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_012D:
.L_012C:
.L_0127:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0122
.L_0124:
cmp dword ptr [ebp-20], 21
jne .L_012E
.L_012F:
lea eax, [SYMB+98352]
cmp dword ptr [ebp+16], eax
jne .L_0131
jmp .L_00FD
.L_0131:
.L_0130:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0133
push 0
push dword ptr [ebp-4]
push 21
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
.L_0133:
.L_0132:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0122
.L_012E:
cmp dword ptr [ebp-20], 22
jne .L_0134
.L_0135:
sub esp, 12
push 0
push 2
push offset Lt_0136
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_0138
sub esp, 12
push 0
push 2
push offset Lt_0106
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_0138:
.L_0137:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_013A
sub esp, 12
push 0
push 2
push offset Lt_010B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_013A:
.L_0139:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HGETPROCPARAMSTYPECODE
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_009E
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0122
.L_0134:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-8], 0
je .L_013E
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
.L_013E:
.L_013D:
.L_013B:
.L_0122:
.L_00FD:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLETYPE, .-SYMBMANGLETYPE
.cfi_endproc
.balign 16

.globl SYMBMANGLEPARAM
SYMBMANGLEPARAM:
.type SYMBMANGLEPARAM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0140:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
jmp .L_0143
.L_0145:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .L_0142
.L_0146:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
or eax, 524288
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .L_0142
.L_0147:
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push 524308
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .L_0142
.L_0148:
sub esp, 12
push 0
push 2
push offset Lt_0149
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_0142
.L_0143:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 3
ja .L_0142
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_014A+eax*4-4]
.L_014A:
.int .L_0145
.int .L_0146
.int .L_0147
.int .L_0148
.L_0142:
.L_0141:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLEPARAM, .-SYMBMANGLEPARAM
.cfi_endproc
.balign 16
fb_ctor__symbzmangling:
.type fb_ctor__symbzmangling, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0002:
.L_0003:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size fb_ctor__symbzmangling, .-fb_ctor__symbzmangling
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
.balign 16
SYMBSETMANGLEDID:
.type SYMBSETMANGLEDID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0091:
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call fb_StrAssign
add esp, 32
.L_0092:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETMANGLEDID, .-SYMBSETMANGLEDID
.cfi_endproc
.balign 16
HMANGLEUDTID:
.type HMANGLEUDTID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0093:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0096
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .L_0095
.L_0096:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.L_0095:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_009C
sub esp, 12
push 0
push 2
push offset Lt_009D
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
sub esp, 4
lea ecx, [ebp-8]
push ecx
lea ecx, [ebp-4]
push ecx
push dword ptr [ebp+12]
call SYMBGETDESCTYPEARRAYDTYPE
add esp, 16
push 1
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_009E
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_009C:
.L_009B:
.L_0094:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEUDTID, .-HMANGLEUDTID
.cfi_endproc
.balign 16
HABBREVFIND:
.type HABBREVFIND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00B4:
cmp dword ptr [CTX+56], 0
jne .L_00B7
mov dword ptr [ebp-4], -1
jmp .L_00B5
.L_00B7:
.L_00B6:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
.L_00B8:
cmp dword ptr [ebp-8], 0
je .L_00B9
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .L_00BB
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+4], eax
jne .L_00BD
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00B5
.L_00BD:
.L_00BC:
.L_00BB:
.L_00BA:
sub esp, 12
push dword ptr [ebp-8]
call FLISTGETNEXT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B8
.L_00B9:
mov dword ptr [ebp-4], -1
.L_00B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HABBREVFIND, .-HABBREVFIND
.cfi_endproc
.balign 16
HABBREVADD:
.type HABBREVADD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BE:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
inc dword ptr [CTX+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HABBREVADD, .-HABBREVADD
.cfi_endproc
.balign 16
HABBREVGET:
.type HABBREVGET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C0:
sub esp, 12
push 0
push 2
push offset Lt_00C2
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
cmp dword ptr [ebp+12], 0
jle .L_00C4
cmp dword ptr [ebp+12], 10
jg .L_00C6
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_00C5
.L_00C6:
cmp dword ptr [ebp+12], 33
jg .L_00C7
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_00C5
.L_00C7:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
mov ecx, 33
cdq
idiv ecx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
mov ecx, 33
mov eax, dword ptr [ebp+12]
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 10
jg .L_00CA
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_00C9
.L_00CA:
cmp dword ptr [ebp+12], 33
jg .L_00CB
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_00CB:
.L_00C9:
.L_00C5:
.L_00C4:
.L_00C3:
sub esp, 12
push 0
push 2
push offset Lt_00CC
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_00C1:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HABBREVGET, .-HABBREVGET
.cfi_endproc
.balign 16
HADDUNDERSCORE:
.type HADDUNDERSCORE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_014B:
cmp dword ptr [ENV+104], 1
jne .L_014E
mov dword ptr [ebp-4], 0
jmp .L_014D
.L_014E:
mov eax, dword ptr [ENV+292]
mov dword ptr [ebp-4], eax
.L_014D:
.L_014C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDUNDERSCORE, .-HADDUNDERSCORE
.cfi_endproc
.balign 16
HDOCPPMANGLING:
.type HDOCPPMANGLING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_014F:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 4
jne .L_0152
mov dword ptr [ebp-4], -1
jmp .L_0150
.L_0152:
.L_0151:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2080
test eax, eax
je .L_0154
mov dword ptr [ebp-4], 0
jmp .L_0150
.L_0154:
.L_0153:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 6
jne .L_0156
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8388608
test eax, eax
jne .L_0158
mov dword ptr [ebp-4], 0
jmp .L_0150
.L_0158:
.L_0157:
.L_0156:
.L_0155:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_015A
mov dword ptr [ebp-4], -1
jmp .L_0150
.L_015A:
.L_0159:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_015C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .L_015E
mov dword ptr [ebp-4], -1
jmp .L_0150
.L_015E:
.L_015D:
.L_015C:
.L_015B:
mov dword ptr [ebp-4], 0
.L_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDOCPPMANGLING, .-HDOCPPMANGLING
.cfi_endproc
.balign 16
HMANGLENAMESPACE:
.type HMANGLENAMESPACE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_015F:
cmp dword ptr [ebp+12], 0
jne .L_0163
jmp .L_0160
.L_0163:
.L_0162:
lea eax, [SYMB+98352]
cmp dword ptr [ebp+12], eax
jne .L_0165
jmp .L_0160
.L_0165:
.L_0164:
cmp dword ptr [ebp+16], 0
je .L_0167
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
lea eax, [ebp-16]
push eax
call SYMBMANGLETYPE
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0167:
.L_0166:
mov dword ptr [ebp-4], -1
.L_0168:
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [Lt_02B5+eax*4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp+12], ebx
.L_016A:
lea ebx, [SYMB+98352]
cmp dword ptr [ebp+12], ebx
jne .L_0168
.L_0169:
sub esp, 12
push 0
push 2
push offset Lt_012B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
cmp dword ptr [ebp+20], 0
je .L_016C
sub esp, 12
push 0
push 2
push offset Lt_010B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_016C:
.L_016B:
.L_016D:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [Lt_02B5+ebx*4]
mov dword ptr [ebp+12], eax
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
dec dword ptr [ebp-4]
.L_016F:
cmp dword ptr [ebp-4], 0
jge .L_016D
.L_016E:
.L_0160:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLENAMESPACE, .-HMANGLENAMESPACE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02B5,256

.section .text
.balign 16
HMANGLEVARIABLE:
.type HMANGLEVARIABLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0170:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
test ebx, ebx
jle .L_0173
mov dword ptr [ebp-20], 0
jmp .L_0172
.L_0173:
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
mov dword ptr [ebp-20], eax
.L_0172:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 59
je .L_0175
cmp dword ptr [ENV+104], 2
jne .L_0177
sub esp, 12
push 0
push 2
push offset Lt_0178
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_0177:
.L_0176:
call HADDUNDERSCORE
test eax, eax
je .L_017A
sub esp, 12
push 0
push 2
push offset Lt_00CC
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_017A:
.L_0179:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_017E
.L_017F:
cmp dword ptr [ebp-28], 1
jne .L_017D
.L_017E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0181
sub esp, 12
push 0
push 7
push offset Lt_0182
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_0181:
.L_0180:
.L_017D:
.L_017B:
cmp dword ptr [ebp-20], 0
je .L_0184
sub esp, 12
push 0
push 3
push offset Lt_0185
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 256
je .L_0187
sub esp, 12
push 0
push 3
push offset Lt_0188
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0186
.L_0187:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1024
je .L_0189
sub esp, 12
push 0
push 3
push offset Lt_018A
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_0189:
.L_0186:
.L_0184:
.L_0183:
jmp .L_0174
.L_0175:
cmp dword ptr [ENV+104], 2
jne .L_018C
sub esp, 12
push 0
push 2
push offset Lt_018D
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_018C:
.L_018B:
.L_0174:
cmp dword ptr [ebp-20], 0
je .L_018F
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
push dword ptr [eax]
lea eax, [ebp-12]
push eax
call HMANGLENAMESPACE
add esp, 16
.L_018F:
.L_018E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1280
je .L_0191
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
jmp .L_0190
.L_0191:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
je .L_0192
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
jmp .L_0190
.L_0192:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 57
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-20]
or ebx, dword ptr [ebp-24]
je .L_0194
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_0196
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0198
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
.L_0198:
.L_0197:
jmp .L_0195
.L_0196:
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
.L_0195:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_019A
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02B6
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+104], 1
jne .L_019E
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
.L_019E:
.L_019D:
.L_019A:
.L_0199:
jmp .L_0193
.L_0194:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_01A1
.L_01A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 16
and ebx, eax
je .L_01A4
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
jmp .L_01A3
.L_01A4:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01A6
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01A8
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02B6
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
.L_01A8:
.L_01A7:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
push ebx
call fb_UIntToStr
add esp, 16
push eax
push -1
push offset Lt_02B6
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
jmp .L_01A5
.L_01A6:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
.L_01A5:
.L_01A3:
jmp .L_019F
.L_01A1:
cmp dword ptr [ebp-28], 2
jne .L_01AC
.L_01AD:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01AF
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01B1
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02B6
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
.L_01B1:
.L_01B0:
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_02BB]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
inc dword ptr [Lt_02BB]
jmp .L_01AE
.L_01AF:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
.L_01AE:
jmp .L_019F
.L_01AC:
cmp dword ptr [ebp-28], 3
jne .L_01B4
.L_01B5:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01B7
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01B9
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02B6
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
.L_01B9:
.L_01B8:
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_02BB]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02B6
call fb_StrConcatAssign
add esp, 32
inc dword ptr [Lt_02BB]
jmp .L_01B6
.L_01B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01BC
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
jmp .L_01B6
.L_01BC:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
.L_01B6:
jmp .L_019F
.L_01B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01BF
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
jmp .L_01BE
.L_01BF:
sub esp, 12
push 0
push 0
sub esp, 12
call dword ptr [IR+40]
add esp, 12
push eax
push -1
push offset Lt_02B6
call fb_StrAssign
add esp, 32
.L_01BE:
.L_01BD:
.L_019F:
.L_0193:
.L_0190:
sub esp, 8
push -1
push offset Lt_02B6
call fb_StrLen
add esp, 16
test eax, eax
jle .L_01C1
cmp dword ptr [ebp-20], 0
je .L_01C3
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push -1
push offset Lt_02B6
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01C3:
.L_01C2:
sub esp, 12
push 0
push -1
push offset Lt_02B6
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01C1:
.L_01C0:
cmp dword ptr [ebp-20], 0
je .L_01C5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_01C7
sub esp, 12
push 0
push 2
push offset Lt_009E
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01C7:
.L_01C6:
.L_01C5:
.L_01C4:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0171:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEVARIABLE, .-HMANGLEVARIABLE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02B6,12
.balign 4
	.lcomm	Lt_02BB,4

.section .text
.balign 16
HGETPROCPARAMSTYPECODE:
.type HGETPROCPARAMSTYPECODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_01C8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_01CB
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+16]
je .L_01CD
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
.L_01CD:
.L_01CC:
.L_01CB:
.L_01CA:
cmp dword ptr [ebp-4], 0
jne .L_01CF
sub esp, 12
push 0
push 2
push offset Lt_00EC
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_01C9
.L_01CF:
.L_01CE:
.L_01D0:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call SYMBMANGLEPARAM
add esp, 16
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
.L_01D2:
cmp dword ptr [ebp-4], 0
jne .L_01D0
.L_01D1:
.L_01C9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETPROCPARAMSTYPECODE, .-HGETPROCPARAMSTYPECODE
.cfi_endproc
.balign 16
HGETOPERATORNAME:
.type HGETOPERATORNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
jmp .L_01D6
.L_01D8:
mov eax, offset Lt_01D9
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01DA:
mov eax, offset Lt_01DB
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01DC:
mov eax, offset Lt_01DD
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01DE:
mov eax, offset Lt_01DF
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01E0:
mov eax, offset Lt_01E1
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01E2:
mov eax, offset Lt_01E3
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01E4:
mov eax, offset Lt_01E5
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01E6:
mov eax, offset Lt_01E7
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01E8:
mov eax, offset Lt_01E9
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01EA:
mov eax, offset Lt_01EB
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01EC:
mov eax, offset Lt_01ED
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01EE:
mov eax, offset Lt_01EF
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01F0:
mov eax, offset Lt_01F1
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01F2:
mov eax, offset Lt_01F3
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01F4:
mov eax, offset Lt_01F5
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01F6:
mov eax, offset Lt_01F7
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01F8:
mov eax, offset Lt_01F9
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01FA:
mov eax, offset Lt_01FB
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01FC:
mov eax, offset Lt_01FD
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01FE:
mov eax, offset Lt_01FF
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0200:
mov eax, offset Lt_0201
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0202:
mov eax, offset Lt_0203
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0204:
mov eax, offset Lt_0205
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0206:
mov eax, offset Lt_0207
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0208:
mov eax, offset Lt_0209
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_020A:
mov eax, offset Lt_020B
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_020C:
mov eax, offset Lt_020D
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_020E:
mov eax, offset Lt_020F
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0210:
mov eax, offset Lt_0211
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0212:
mov eax, offset Lt_0213
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0214:
mov eax, offset Lt_0215
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0216:
mov eax, offset Lt_0217
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0218:
mov eax, offset Lt_0219
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_021A:
mov eax, offset Lt_021B
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_021C:
mov eax, offset Lt_021D
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_021E:
mov eax, offset Lt_021F
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0220:
mov eax, offset Lt_0221
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0222:
mov eax, offset Lt_0223
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0224:
mov eax, offset Lt_0225
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0226:
mov eax, offset Lt_0227
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0228:
mov eax, offset Lt_0229
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_022A:
mov eax, offset Lt_022B
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_022C:
mov eax, offset Lt_022D
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_022E:
mov eax, offset Lt_022F
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0230:
mov eax, offset Lt_0231
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0232:
mov eax, offset Lt_0233
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0234:
mov eax, offset Lt_0235
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0236:
mov eax, offset Lt_0237
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0238:
mov eax, offset Lt_0239
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_023A:
mov eax, offset Lt_023B
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_023C:
mov eax, offset Lt_023D
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_023E:
mov eax, offset Lt_023F
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0240:
mov eax, offset Lt_0241
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0242:
mov eax, offset Lt_0243
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0244:
mov eax, offset Lt_0245
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0246:
mov eax, offset Lt_0247
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0248:
mov eax, offset Lt_0249
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_024A:
mov eax, offset Lt_024B
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_024C:
mov eax, offset Lt_024D
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_024E:
mov eax, offset Lt_024F
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0250:
mov eax, offset Lt_0251
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0252:
mov eax, offset Lt_0253
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0254:
mov eax, offset Lt_0255
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0256:
mov eax, offset Lt_0257
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_0258:
mov eax, offset Lt_0259
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_025A:
mov eax, offset Lt_025B
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_025C:
mov eax, offset Lt_025D
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_025E:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 2
jne .L_0260
mov ebx, offset Lt_0261
mov dword ptr [ebp-4], ebx
jmp .L_025F
.L_0260:
mov ebx, offset Lt_0262
mov dword ptr [ebp-4], ebx
.L_025F:
jmp .L_01D5
.L_0263:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+68]
cmp eax, 2
jne .L_0265
mov eax, offset Lt_0266
mov dword ptr [ebp-4], eax
jmp .L_0264
.L_0265:
mov eax, offset Lt_0267
mov dword ptr [ebp-4], eax
.L_0264:
jmp .L_01D5
.L_0268:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 3
jne .L_026A
mov ebx, offset Lt_026B
mov dword ptr [ebp-4], ebx
jmp .L_0269
.L_026A:
mov ebx, offset Lt_026C
mov dword ptr [ebp-4], ebx
.L_0269:
jmp .L_01D5
.L_01D6:
cmp dword ptr [ebp-8], 81
ja .L_01D5
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_026D+ebx*4]
.L_026D:
.int .L_01D8
.int .L_01DC
.int .L_01E0
.int .L_01E4
.int .L_01E8
.int .L_01EC
.int .L_01F0
.int .L_01F4
.int .L_01F8
.int .L_01FC
.int .L_0200
.int .L_0204
.int .L_0208
.int .L_020C
.int .L_0210
.int .L_0214
.int .L_0218
.int .L_021C
.int .L_024E
.int .L_0250
.int .L_0252
.int .L_0254
.int .L_025C
.int .L_025A
.int .L_025E
.int .L_0263
.int .L_0268
.int .L_01D5
.int .L_01DA
.int .L_01DE
.int .L_01E2
.int .L_01E6
.int .L_01EA
.int .L_01EE
.int .L_01F2
.int .L_01F6
.int .L_01FA
.int .L_01FE
.int .L_0202
.int .L_0206
.int .L_020A
.int .L_020E
.int .L_0212
.int .L_0216
.int .L_021A
.int .L_021E
.int .L_0220
.int .L_0222
.int .L_0224
.int .L_0226
.int .L_0228
.int .L_01D5
.int .L_022A
.int .L_022E
.int .L_022C
.int .L_01D5
.int .L_0230
.int .L_0238
.int .L_0240
.int .L_0242
.int .L_0244
.int .L_0246
.int .L_0248
.int .L_024A
.int .L_01D5
.int .L_024C
.int .L_01D5
.int .L_01D5
.int .L_023E
.int .L_023C
.int .L_023A
.int .L_0232
.int .L_0234
.int .L_0236
.int .L_01D5
.int .L_01D5
.int .L_0256
.int .L_0258
.int .L_024E
.int .L_0250
.int .L_0252
.int .L_0254
.L_01D5:
.L_01D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETOPERATORNAME, .-HGETOPERATORNAME
.cfi_endproc
.balign 16
HMANGLEPROC:
.type HMANGLEPROC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 64
push ebx
push esi
.L_026E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+84]
cmp ecx, 6
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ENV+108]
cmp esi, 1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
mov esi, dword ptr [ENV+108]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
and ecx, eax
or ebx, ecx
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ENV+104]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-24], ebx
cmp dword ptr [ENV+104], 2
jne .L_0271
sub esp, 12
push 0
push 2
push offset Lt_0178
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-24], 0
je .L_0273
sub esp, 12
push 0
push 2
push offset Lt_0274
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
.L_0273:
.L_0272:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .L_0278
.L_0279:
cmp dword ptr [ebp-36], 1
je .L_0278
.L_027A:
cmp dword ptr [ebp-36], 4
jne .L_0277
.L_0278:
cmp dword ptr [ebp-28], 0
jne .L_027C
sub esp, 12
push 0
push 2
push offset Lt_0274
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
.L_027C:
.L_027B:
sub esp, 12
push 0
push 2
push offset Lt_027D
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_0277:
.L_0275:
.L_0271:
.L_0270:
call HADDUNDERSCORE
test eax, eax
je .L_027F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0281
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0285
.L_0286:
cmp dword ptr [ebp-36], 1
je .L_0285
.L_0287:
cmp dword ptr [ebp-36], 4
jne .L_0284
.L_0285:
sub esp, 12
push 0
push 2
push offset Lt_0178
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0282
.L_0284:
sub esp, 12
push 0
push 2
push offset Lt_00CC
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0288:
.L_0282:
jmp .L_0280
.L_0281:
sub esp, 12
push 0
push 2
push offset Lt_00CC
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0280:
.L_027F:
.L_027E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-20]
je .L_028A
sub esp, 12
push 0
push 3
push offset Lt_0185
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_028A:
.L_0289:
cmp dword ptr [ebp-20], 0
je .L_028C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx]
lea ebx, [ebp-12]
push ebx
call HMANGLENAMESPACE
add esp, 16
.L_028C:
.L_028B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
test eax, eax
je .L_028E
cmp dword ptr [ebp-20], 0
je .L_0290
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0290:
.L_028F:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_028D
.L_028E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0293
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
cmp dword ptr [eax+40], 27
jne .L_0295
sub esp, 12
push 0
push 3
push offset Lt_0296
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
lea eax, [ebp-12]
push eax
call SYMBMANGLETYPE
add esp, 16
jmp .L_0294
.L_0295:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call HGETOPERATORNAME
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0294:
jmp .L_028D
.L_0293:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_0298
sub esp, 12
push 0
push 3
push offset Lt_0299
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .L_028D
.L_0298:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 4096
test eax, eax
je .L_029A
sub esp, 12
push 0
push 3
push offset Lt_029B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_028D
.L_029A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .L_029C
sub esp, 12
push 0
push 3
push offset Lt_029D
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .L_028D
.L_029C:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_029F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-32], ebx
jmp .L_029E
.L_029F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-32], eax
.L_029E:
cmp dword ptr [ebp-20], 0
je .L_02A1
sub esp, 8
push 0
push dword ptr [ebp-32]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02A3
add dword ptr [ebp-16], 7
.L_02A3:
.L_02A2:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-16]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02A1:
.L_02A0:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-32]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02A6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .L_02A8
sub esp, 12
push 0
push 8
push offset Lt_02A9
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_02A7
.L_02A8:
sub esp, 12
push 0
push 8
push offset Lt_02AA
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02A7:
.L_02A6:
.L_02A5:
.L_028D:
cmp dword ptr [ebp-20], 0
je .L_02AC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_02AE
sub esp, 12
push 0
push 2
push offset Lt_009E
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02AE:
.L_02AD:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [ebp-12]
push eax
call HGETPROCPARAMSTYPECODE
add esp, 16
.L_02AC:
.L_02AB:
cmp dword ptr [ebp-24], 0
je .L_02B0
sub esp, 12
push 0
push 2
push offset Lt_0178
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 4
push dword ptr [ebp+8]
call SYMBPROCCALCSTDCALLSUFFIXN
add esp, 8
push edx
push eax
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02B0:
.L_02AF:
cmp dword ptr [ebp-28], 0
je .L_02B2
sub esp, 12
push 0
push 2
push offset Lt_0274
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02B2:
.L_02B1:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_026F:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEPROC, .-HMANGLEPROC
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	CTX,92

.section .rodata
.balign 4
Lt_0064:	.ascii	"tmp$\0"
.balign 4
Lt_0066:	.ascii	"Lt_\0"
.balign 4
Lt_006E:	.ascii	"label$\0"
.balign 4
Lt_0072:	.ascii	"L_\0"
.balign 4
Lt_0073:	.ascii	".L_\0"
.balign 4
Lt_0077:	.ascii	"LP_\0"
.balign 4
Lt_009D:	.ascii	"I\0"
.balign 4
Lt_009E:	.ascii	"E\0"
.balign 4
Lt_00B1:	.ascii	"$\0"
.balign 4
Lt_00C2:	.ascii	"S\0"
.balign 4
Lt_00CC:	.ascii	"_\0"
.balign 4
Lt_00D1:	.ascii	"8FBSTRING\0"
.balign 4
Lt_00D9:	.ascii	"l\0"
.balign 4
Lt_00DC:	.ascii	"m\0"
.balign 4
Lt_00E0:	.ascii	"u7INTEGER\0"
.balign 4
Lt_00E3:	.ascii	"u8UINTEGER\0"
.balign 4
Lt_00EC:	.ascii	"v\0"
.balign 4
Lt_00ED:	.ascii	"b\0"
.balign 4
Lt_00EE:	.ascii	"a\0"
.balign 4
Lt_00EF:	.ascii	"h\0"
.balign 4
Lt_00F0:	.ascii	"c\0"
.balign 4
Lt_00F1:	.ascii	"s\0"
.balign 4
Lt_00F2:	.ascii	"t\0"
.balign 4
Lt_00F3:	.ascii	"w\0"
.balign 4
Lt_00F4:	.ascii	"i\0"
.balign 4
Lt_00F5:	.ascii	"j\0"
.balign 4
Lt_00F6:	.ascii	"x\0"
.balign 4
Lt_00F7:	.ascii	"y\0"
.balign 4
Lt_00F8:	.ascii	"f\0"
.balign 4
Lt_00F9:	.ascii	"d\0"
.balign 4
Lt_0106:	.ascii	"R\0"
.balign 4
Lt_010B:	.ascii	"K\0"
.balign 4
Lt_0110:	.ascii	"P\0"
.balign 4
Lt_011D:	.ascii	"A1_\0"
.balign 4
Lt_0121:	.ascii	"St\0"
.balign 4
Lt_012B:	.ascii	"N\0"
.balign 4
Lt_0136:	.ascii	"F\0"
.balign 4
Lt_0149:	.ascii	"z\0"
.balign 4
Lt_0178:	.ascii	"@\0"
.balign 4
Lt_0182:	.ascii	"_imp__\0"
.balign 4
Lt_0185:	.ascii	"_Z\0"
.balign 4
Lt_0188:	.ascii	"TS\0"
.balign 4
Lt_018A:	.ascii	"TV\0"
.balign 4
Lt_018D:	.ascii	"%\0"
.balign 4
Lt_01D9:	.ascii	"aS\0"
.balign 4
Lt_01DB:	.ascii	"pl\0"
.balign 4
Lt_01DD:	.ascii	"pL\0"
.balign 4
Lt_01DF:	.ascii	"mi\0"
.balign 4
Lt_01E1:	.ascii	"mI\0"
.balign 4
Lt_01E3:	.ascii	"ml\0"
.balign 4
Lt_01E5:	.ascii	"mL\0"
.balign 4
Lt_01E7:	.ascii	"dv\0"
.balign 4
Lt_01E9:	.ascii	"dV\0"
.balign 4
Lt_01EB:	.ascii	"v24idiv\0"
.balign 4
Lt_01ED:	.ascii	"v28selfidiv\0"
.balign 4
Lt_01EF:	.ascii	"rm\0"
.balign 4
Lt_01F1:	.ascii	"rM\0"
.balign 4
Lt_01F3:	.ascii	"an\0"
.balign 4
Lt_01F5:	.ascii	"aN\0"
.balign 4
Lt_01F7:	.ascii	"or\0"
.balign 4
Lt_01F9:	.ascii	"oR\0"
.balign 4
Lt_01FB:	.ascii	"aa\0"
.balign 4
Lt_01FD:	.ascii	"aA\0"
.balign 4
Lt_01FF:	.ascii	"oo\0"
.balign 4
Lt_0201:	.ascii	"oO\0"
.balign 4
Lt_0203:	.ascii	"eo\0"
.balign 4
Lt_0205:	.ascii	"eO\0"
.balign 4
Lt_0207:	.ascii	"v23eqv\0"
.balign 4
Lt_0209:	.ascii	"v27selfeqv\0"
.balign 4
Lt_020B:	.ascii	"v23imp\0"
.balign 4
Lt_020D:	.ascii	"v27selfimp\0"
.balign 4
Lt_020F:	.ascii	"ls\0"
.balign 4
Lt_0211:	.ascii	"lS\0"
.balign 4
Lt_0213:	.ascii	"rs\0"
.balign 4
Lt_0215:	.ascii	"rS\0"
.balign 4
Lt_0217:	.ascii	"v23pow\0"
.balign 4
Lt_0219:	.ascii	"v27selfpow\0"
.balign 4
Lt_021B:	.ascii	"v23cat\0"
.balign 4
Lt_021D:	.ascii	"v27selfcat\0"
.balign 4
Lt_021F:	.ascii	"eq\0"
.balign 4
Lt_0221:	.ascii	"gt\0"
.balign 4
Lt_0223:	.ascii	"lt\0"
.balign 4
Lt_0225:	.ascii	"ne\0"
.balign 4
Lt_0227:	.ascii	"ge\0"
.balign 4
Lt_0229:	.ascii	"le\0"
.balign 4
Lt_022B:	.ascii	"co\0"
.balign 4
Lt_022D:	.ascii	"ng\0"
.balign 4
Lt_022F:	.ascii	"ps\0"
.balign 4
Lt_0231:	.ascii	"v13abs\0"
.balign 4
Lt_0233:	.ascii	"v13fix\0"
.balign 4
Lt_0235:	.ascii	"v14frac\0"
.balign 4
Lt_0237:	.ascii	"v13len\0"
.balign 4
Lt_0239:	.ascii	"v13sgn\0"
.balign 4
Lt_023B:	.ascii	"v13int\0"
.balign 4
Lt_023D:	.ascii	"v13exp\0"
.balign 4
Lt_023F:	.ascii	"v13log\0"
.balign 4
Lt_0241:	.ascii	"v13sin\0"
.balign 4
Lt_0243:	.ascii	"v14asin\0"
.balign 4
Lt_0245:	.ascii	"v13cos\0"
.balign 4
Lt_0247:	.ascii	"v14acos\0"
.balign 4
Lt_0249:	.ascii	"v13tan\0"
.balign 4
Lt_024B:	.ascii	"v13atn\0"
.balign 4
Lt_024D:	.ascii	"v13sqr\0"
.balign 4
Lt_024F:	.ascii	"nw\0"
.balign 4
Lt_0251:	.ascii	"na\0"
.balign 4
Lt_0253:	.ascii	"dl\0"
.balign 4
Lt_0255:	.ascii	"da\0"
.balign 4
Lt_0257:	.ascii	"de\0"
.balign 4
Lt_0259:	.ascii	"pt\0"
.balign 4
Lt_025B:	.ascii	"ix\0"
.balign 4
Lt_025D:	.ascii	"ad\0"
.balign 4
Lt_0261:	.ascii	"v13for\0"
.balign 4
Lt_0262:	.ascii	"v03for\0"
.balign 4
Lt_0266:	.ascii	"v14step\0"
.balign 4
Lt_0267:	.ascii	"v04step\0"
.balign 4
Lt_026B:	.ascii	"v24next\0"
.balign 4
Lt_026C:	.ascii	"v14next\0"
.balign 4
Lt_0274:	.ascii	"\"\0"
.balign 4
Lt_027D:	.ascii	"\1""\0"
.balign 4
Lt_0296:	.ascii	"cv\0"
.balign 4
Lt_0299:	.ascii	"C1\0"
.balign 4
Lt_029B:	.ascii	"D0\0"
.balign 4
Lt_029D:	.ascii	"D1\0"
.balign 4
Lt_02A9:	.ascii	"__set__\0"
.balign 4
Lt_02AA:	.ascii	"__get__\0"

.section .ctors, "aw", @progbits
.int fb_ctor__symbzmangling
