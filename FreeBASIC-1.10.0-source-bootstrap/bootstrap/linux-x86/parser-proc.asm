	.intel_syntax noprefix

.section .text
.balign 16

.globl CALIASATTRIBUTE
CALIASATTRIBUTE:
.type CALIASATTRIBUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0067:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 386
jne .L_006A
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .L_006C
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_006F
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 129
push offset Lt_006F
call fb_StrLen
add esp, 16
test eax, eax
jle .L_006E
mov eax, offset Lt_006F
mov dword ptr [ebp-4], eax
jmp .L_006D
.L_006E:
sub esp, 4
push 0
push 0
push 304
call ERRREPORT
add esp, 16
.L_006D:
jmp .L_006B
.L_006C:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_006B:
.L_006A:
.L_0069:
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CALIASATTRIBUTE, .-CALIASATTRIBUTE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_006F,129

.section .text
.balign 16

.globl CLIBATTRIBUTE
CLIBATTRIBUTE:
.type CLIBATTRIBUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0070:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 387
jne .L_0073
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .L_0075
call LEXGETTEXT
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp-4]
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0077
sub esp, 12
push dword ptr [ebp-4]
call FBADDLIB
add esp, 16
jmp .L_0076
.L_0077:
sub esp, 4
push 0
push 0
push 305
call ERRREPORT
add esp, 16
.L_0076:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_0074
.L_0075:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0074:
.L_0073:
.L_0072:
.L_0071:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLIBATTRIBUTE, .-CLIBATTRIBUTE
.cfi_endproc
.balign 16

.globl CMETHODATTRIBUTES
CMETHODATTRIBUTES:
.type CMETHODATTRIBUTES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0078:
sub esp, 8
push 2048
push 307
call HMATCH
add esp, 16
test eax, eax
je .L_007B
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2
jmp .L_0079
.L_007B:
.L_007A:
sub esp, 8
push 2048
push 335
call HMATCH
add esp, 16
test eax, eax
je .L_007D
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2048
.L_007D:
.L_007C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 355
jne .L_0080
.L_0081:
mov eax, dword ptr [ebp+16]
or dword ptr [eax], 768
cmp dword ptr [ebp+8], 0
je .L_0083
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_0085
sub esp, 4
push 0
push 0
push 222
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+16]
and dword ptr [ebx], -769
.L_0085:
.L_0084:
.L_0083:
.L_0082:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_007E
.L_0080:
cmp dword ptr [ebp-4], 354
jne .L_0086
.L_0087:
mov ebx, dword ptr [ebp+16]
or dword ptr [ebx], 256
cmp dword ptr [ebp+8], 0
je .L_0089
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4194304
test eax, eax
jne .L_008B
sub esp, 4
push 0
push 0
push 221
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+16]
and dword ptr [eax], -257
.L_008B:
.L_008A:
.L_0089:
.L_0088:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0086:
.L_007E:
.L_0079:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMETHODATTRIBUTES, .-CMETHODATTRIBUTES
.cfi_endproc
.balign 16

.globl CPROCRETTYPE
CPROCRETTYPE:
.type CPROCRETTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_00EA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+12]
and eax, 2048
je .L_00ED
cmp dword ptr [ebp+20], 0
je .L_00EF
or dword ptr [ebp-4], 2
.L_00EF:
.L_00EE:
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.L_00ED:
.L_00EC:
cmp dword ptr [ebp+20], 0
je .L_00F1
and dword ptr [ebp-4], -2
.L_00F1:
.L_00F0:
sub esp, 12
push dword ptr [ebp-4]
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .L_00F5
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 7
jne .L_00F8
.L_00F9:
mov ebx, dword ptr [ebp+12]
and ebx, 2048
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+20]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00FB
sub esp, 4
push 0
push 0
push 55
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
.L_00FB:
.L_00FA:
jmp .L_00F6
.L_00F8:
cmp dword ptr [ebp-20], 18
je .L_00FD
.L_00FE:
cmp dword ptr [ebp-20], 4
jne .L_00FC
.L_00FD:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 511
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0100
sub esp, 4
push 0
push 0
push 55
call ERRREPORT
add esp, 16
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.L_0100:
.L_00FF:
jmp .L_00F6
.L_00FC:
cmp dword ptr [ebp-20], 0
jne .L_0101
.L_0102:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
and eax, 31
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 32505856
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .L_00F6
.L_0101:
cmp dword ptr [ebp-20], 20
jne .L_0103
.L_0104:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 0
je .L_0106
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 15728640
sar eax, 20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 3
je .L_010A
.L_010B:
cmp dword ptr [ebp-24], 5
jne .L_0109
.L_010A:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 480
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_010D
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
and eax, 31
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 32505856
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
.L_010D:
.L_010C:
.L_0109:
.L_0107:
.L_0106:
.L_0105:
.L_0103:
.L_00F6:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
jne .L_010F
sub esp, 8
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.L_010F:
.L_010E:
.L_00F4:
sub esp, 12
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call CPROCRETURNMETHOD
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+96], eax
.L_00EB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCRETTYPE, .-CPROCRETTYPE
.cfi_endproc
.balign 16

.globl CPROCRETURNMETHOD
CPROCRETURNMETHOD:
.type CPROCRETURNMETHOD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0116:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 2
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0118
mov dword ptr [ebp-20], 24
jmp .L_0129
.L_0118:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0129:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
je .L_011B
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0117
.L_011B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 343
jne .L_011D
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_011F
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_011E
.L_011F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_011E:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .L_0121
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .L_0120
.L_0121:
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
push 4
push offset Lt_0122
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0124
mov dword ptr [ebp-4], 1
jmp .L_0123
.L_0124:
push 4
push offset Lt_0126
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0125
mov dword ptr [ebp-4], 0
.L_0125:
.L_0123:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0120:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0128
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0127
.L_0128:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0127:
.L_011D:
.L_011C:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0117:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCRETURNMETHOD, .-CPROCRETURNMETHOD
.cfi_endproc
.balign 16

.globl CPROCCALLINGCONV
CPROCCALLINGCONV:
.type CPROCCALLINGCONV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_012A:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], -1
jne .L_012D
mov eax, dword ptr [ENV+276]
mov dword ptr [ebp+8], eax
.L_012D:
.L_012C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_012F
.L_0131:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov dword ptr [ebp-4], 3
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_012E
.L_0132:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [ENV+280]
mov dword ptr [ebp-4], eax
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_012E
.L_0133:
mov dword ptr [ebp-4], 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_012E
.L_0134:
cmp dword ptr [ENV+212], 0
jne .L_0136
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov dword ptr [ebp-4], 5
.L_0136:
.L_0135:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_012E
.L_0137:
cmp dword ptr [ENV+216], 0
jne .L_0139
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov dword ptr [ebp-4], 6
.L_0139:
.L_0138:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_012E
.L_012F:
mov eax, dword ptr [ebp-8]
add eax, 4294966915
cmp eax, 4
ja .L_012E
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_013A+eax*4-1524]
.L_013A:
.int .L_0133
.int .L_0131
.int .L_0132
.int .L_0134
.int .L_0137
.L_012E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_013C
mov eax, dword ptr [PARSER+104]
mov dword ptr [ebp-8], eax
jmp .L_013E
.L_0140:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_013D
.L_0141:
cmp dword ptr [ebp+8], 5
jne .L_0143
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0142
.L_0143:
mov dword ptr [ebp-4], 3
.L_0142:
jmp .L_013D
.L_0144:
mov eax, dword ptr [ENV+280]
mov dword ptr [ebp-4], eax
jmp .L_013D
.L_0145:
mov dword ptr [ebp-4], 2
jmp .L_013D
.L_013E:
cmp dword ptr [ebp-8], 6
ja .L_013D
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0146+eax*4]
.L_0146:
.int .L_0140
.int .L_0141
.int .L_0144
.int .L_0145
.int .L_0141
.int .L_013D
.int .L_0140
.L_013D:
.L_013C:
.L_013B:
.L_012B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCCALLINGCONV, .-CPROCCALLINGCONV
.cfi_endproc
.balign 16

.globl CBYREFATTRIBUTE
CBYREFATTRIBUTE:
.type CBYREFATTRIBUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0155:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 320
jne .L_0158
cmp dword ptr [ebp+12], 0
jne .L_015A
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_015A:
.L_0159:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 2048
.L_0158:
.L_0157:
.L_0156:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CBYREFATTRIBUTE, .-CBYREFATTRIBUTE
.cfi_endproc
.balign 16

.globl CPROCHEADER
CPROCHEADER:
.type CPROCHEADER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 80
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0231:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-32], -2147483648
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-72], 0
cmp dword ptr [ebp+24], 347
je .L_0235
.L_0236:
cmp dword ptr [ebp+24], 348
jne .L_0234
.L_0235:
or dword ptr [ebp+12], 2
cmp dword ptr [ebp+24], 347
jne .L_0238
or dword ptr [ebp+12], 5
jmp .L_0237
.L_0238:
or dword ptr [ebp+12], 8
.L_0237:
jmp .L_0233
.L_0234:
cmp dword ptr [ebp+24], 349
jne .L_0239
.L_023A:
or dword ptr [ebp+12], 17
jmp .L_0233
.L_0239:
cmp dword ptr [ebp+24], 350
jne .L_023B
.L_023C:
or dword ptr [ebp+12], 35
.L_023B:
.L_0233:
mov eax, dword ptr [ebp+20]
and eax, 2
je .L_023E
mov dword ptr [ebp-20], 0
jmp .L_023D
.L_023E:
mov dword ptr [ebp-68], 22
cmp dword ptr [ebp+24], 349
jne .L_0240
.L_0241:
or dword ptr [ebp-68], 8
jmp .L_023F
.L_0240:
cmp dword ptr [ebp+24], 347
je .L_0243
.L_0244:
cmp dword ptr [ebp+24], 348
jne .L_0242
.L_0243:
or dword ptr [ebp-68], 1
.L_0242:
.L_023F:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0246
mov eax, dword ptr [ebp-68]
or eax, 256
or dword ptr [ebp-68], eax
.L_0246:
.L_0245:
sub esp, 12
push dword ptr [ebp-68]
call CPARENTID
add esp, 16
mov dword ptr [ebp-20], eax
.L_023D:
cmp dword ptr [ebp-20], 0
je .L_0248
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_024A
sub esp, 4
push 0
push 0
push 158
call ERRREPORT
add esp, 16
mov dword ptr [ebp-20], 0
jmp .L_0249
.L_024A:
mov dword ptr [ebp-36], -1
.L_0249:
jmp .L_0247
.L_0248:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_024C
mov eax, dword ptr [SYMB+98528]
mov dword ptr [ebp-20], eax
.L_024C:
.L_024B:
.L_0247:
cmp dword ptr [ebp-20], 0
je .L_024E
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
.L_024E:
.L_024D:
cmp dword ptr [ebp-40], 0
je .L_0250
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0252
or dword ptr [ebp+12], 2
.L_0252:
.L_0251:
jmp .L_024F
.L_0250:
cmp dword ptr [ebp+24], 347
je .L_0255
.L_0256:
cmp dword ptr [ebp+24], 348
je .L_0255
.L_0257:
cmp dword ptr [ebp+24], 350
jne .L_0254
.L_0255:
cmp dword ptr [ebp-20], 0
jne .L_0259
sub esp, 4
push 0
push 0
push 160
call ERRREPORT
add esp, 16
jmp .L_0258
.L_0259:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 10
je .L_025A
sub esp, 4
push 0
push 0
push 168
call ERRREPORT
add esp, 16
.L_025A:
.L_0258:
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_025C
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_025B
.L_025C:
sub esp, 4
push 0
push -1
push dword ptr [ebp+24]
call HSKIPCOMPOUND
add esp, 16
.L_025B:
jmp .L_0232
.L_0254:
.L_0253:
sub esp, 4
push 258
push 2
lea eax, [ebp+8]
push eax
call HCHECKATTRIB
add esp, 16
sub esp, 4
push 259
push 2048
lea eax, [ebp+8]
push eax
call HCHECKATTRIB
add esp, 16
sub esp, 4
push 260
push 512
lea eax, [ebp+12]
push eax
call HCHECKATTRIB
add esp, 16
sub esp, 4
push 261
push 256
lea eax, [ebp+12]
push eax
call HCHECKATTRIB
add esp, 16
.L_024F:
cmp dword ptr [ebp+24], 347
je .L_025F
.L_0260:
cmp dword ptr [ebp+24], 348
jne .L_025E
.L_025F:
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_025D
.L_025E:
cmp dword ptr [ebp+24], 349
jne .L_0261
.L_0262:
sub esp, 12
push -1
call COPERATOR
add esp, 16
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], -1
je .L_0265
.L_0266:
cmp dword ptr [ebp-52], 36
je .L_0265
.L_0267:
cmp dword ptr [ebp-52], 9
je .L_0265
.L_0268:
cmp dword ptr [ebp-52], 37
je .L_0265
.L_0269:
cmp dword ptr [ebp-52], 10
jne .L_0264
.L_0265:
sub esp, 4
push 0
push 0
push 157
call ERRREPORT
add esp, 16
mov dword ptr [ebp-52], 28
.L_0264:
.L_0263:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_026B
cmp dword ptr [ebp-40], 0
jne .L_026D
sub esp, 4
push 0
push -1
push 152
call ERRREPORT
add esp, 16
mov dword ptr [ebp-52], 28
.L_026D:
.L_026C:
jmp .L_026A
.L_026B:
cmp dword ptr [ebp-40], 0
je .L_026F
sub esp, 4
push offset Lt_0270
push -1
push 153
call ERRREPORT
add esp, 16
.L_026F:
.L_026E:
.L_026A:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp-76], ebx
jmp .L_0272
.L_0274:
mov ebx, dword ptr [ebp+12]
and ebx, 768
je .L_0276
sub esp, 4
push 0
push -1
push 233
call ERRREPORT
add esp, 16
and dword ptr [ebp+12], -769
.L_0276:
.L_0275:
mov ebx, dword ptr [ebp+8]
and ebx, 2048
je .L_0278
sub esp, 4
push 0
push -1
push 234
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -2049
.L_0278:
.L_0277:
or dword ptr [ebp+8], 2
and dword ptr [ebp+12], -3
jmp .L_0271
.L_0279:
cmp dword ptr [ebp-40], 0
je .L_027B
mov ebx, dword ptr [ebp+8]
and ebx, 2
je .L_027D
sub esp, 4
push 0
push -1
push 232
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -3
.L_027D:
.L_027C:
or dword ptr [ebp+12], 2
.L_027B:
.L_027A:
jmp .L_0271
.L_0272:
mov ebx, dword ptr [ebp-76]
add ebx, 4294967278
cmp ebx, 3
ja .L_0279
mov ebx, dword ptr [ebp-76]
jmp dword ptr [.L_027E+ebx*4-72]
.L_027E:
.int .L_0274
.int .L_0274
.int .L_0274
.int .L_0274
.L_0271:
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_025D
.L_0261:
mov eax, dword ptr [ebp+24]
cmp eax, 345
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
cmp ebx, 350
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
push eax
lea eax, [ebp-32]
push eax
push offset Lt_0354
push dword ptr [ebp-20]
call HGETID
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ENV+1040]
and eax, 8388608
test eax, eax
je .L_0281
cmp dword ptr [ebp-32], -2147483648
je .L_0283
or dword ptr [ebp+8], 1048576
.L_0283:
.L_0282:
.L_0281:
.L_0280:
sub esp, 12
push offset Lt_0354
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-16], eax
.L_027F:
.L_025D:
sub esp, 12
lea eax, [ebp+12]
push eax
call CNAKEDATTRIBUTE
add esp, 16
cmp dword ptr [ebp+24], 347
je .L_0286
.L_0287:
cmp dword ptr [ebp+24], 348
jne .L_0285
.L_0286:
mov dword ptr [ebp-44], 3
jmp .L_0284
.L_0285:
mov dword ptr [ebp-44], -1
.L_0288:
.L_0284:
cmp dword ptr [ebp-40], 0
je .L_028A
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
jne .L_028C
cmp dword ptr [PARSER+104], 4
jne .L_028E
cmp dword ptr [ENV+108], 0
jne .L_0290
call FBIS64BIT
test eax, eax
jne .L_0292
cmp dword ptr [ENV+212], 0
jne .L_0294
mov dword ptr [ebp-44], 5
.L_0294:
.L_0293:
.L_0292:
.L_0291:
.L_0290:
.L_028F:
.L_028E:
.L_028D:
.L_028C:
.L_028B:
.L_028A:
.L_0289:
sub esp, 8
lea eax, [ebp-72]
push eax
push dword ptr [ebp-44]
call CPROCCALLINGCONV
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 388
jne .L_0296
mov eax, dword ptr [ENV+1040]
and eax, 16
test eax, eax
jne .L_0298
sub esp, 4
push 0
push 146
push 16
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_0297
.L_0298:
or dword ptr [ebp+12], 1
.L_0297:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0296:
.L_0295:
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_029A
call CLIBATTRIBUTE
.L_029A:
.L_0299:
call CALIASATTRIBUTE
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_029C
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [ebp-20], ebx
je .L_029E
sub esp, 8
push -1
push dword ptr [ebp-20]
call SYMBNESTBEGIN
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
.L_029E:
.L_029D:
.L_029C:
.L_029B:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-44]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call CPARAMETERS
add esp, 16
cmp dword ptr [ebp+24], 348
jne .L_02A0
.L_02A1:
mov ebx, dword ptr [ebp-16]
movsx eax, word ptr [ebx+68]
cmp eax, 1
jle .L_02A3
sub esp, 4
push 0
push 0
push 159
call ERRREPORT
add esp, 16
.L_02A3:
.L_02A2:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .L_029F
.L_02A0:
cmp dword ptr [ebp+24], 347
jne .L_02A4
.L_02A5:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HCHECKISSELFCLONEBYVAL
add esp, 16
test eax, eax
je .L_02A7
sub esp, 4
push 0
push -1
push 271
call ERRREPORT
add esp, 16
jmp .L_0232
.L_02A7:
.L_02A6:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+80]
cmp dword ptr [ebx+56], 4
jne .L_02A9
sub esp, 4
push 143
push 0
push dword ptr [ebp-16]
call HPARAMERROR
add esp, 16
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebx+80], ecx
mov ecx, dword ptr [ebp-28]
cmp dword ptr [ecx+168], 0
je .L_02AB
mov ecx, dword ptr [ebp-28]
mov ebx, dword ptr [ecx+168]
mov dword ptr [ebx+172], 0
.L_02AB:
.L_02AA:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
dec ecx
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+68], cx
sub esp, 12
push dword ptr [ebp-28]
call SYMBFREESYMBOL
add esp, 16
.L_02A9:
.L_02A8:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .L_029F
.L_02A4:
cmp dword ptr [ebp+24], 349
jne .L_02AC
.L_02AD:
cmp dword ptr [ebp-52], 29
jne .L_02AF
.L_02B0:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .L_02B2
mov dword ptr [ebp-52], 54
.L_02B2:
.L_02B1:
jmp .L_02AE
.L_02AF:
cmp dword ptr [ebp-52], 28
jne .L_02B3
.L_02B4:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
cmp ecx, 1
jne .L_02B6
mov dword ptr [ebp-52], 53
.L_02B6:
.L_02B5:
jmp .L_02AE
.L_02B3:
cmp dword ptr [ebp-52], 30
jne .L_02B7
.L_02B8:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .L_02BA
mov dword ptr [ebp-52], 76
.L_02BA:
.L_02B9:
.L_02B7:
.L_02AE:
mov ebx, dword ptr [ebp-52]
sal ebx, 4
mov ecx, dword ptr [AST_OPTB+ebx+4]
and ecx, 4
test ecx, ecx
je .L_02BC
mov dword ptr [ebp-32], 0
jmp .L_02BB
.L_02BC:
sub esp, 8
push -1
lea ecx, [ebp+12]
push ecx
call CBYREFATTRIBUTE
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_02BE
sub esp, 8
lea eax, [ebp-24]
push eax
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCRETTYPE
add esp, 32
jmp .L_02BD
.L_02BE:
sub esp, 4
push 0
push 0
push 68
call ERRREPORT
add esp, 16
mov dword ptr [ebp-32], 8
.L_02BD:
.L_02BB:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
sub esp, 12
push dword ptr [ebp-16]
call SYMBPROCALLOCEXT
add esp, 16
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], eax
cmp dword ptr [ebp-52], 0
jne .L_02C0
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HCHECKISSELFCLONEBYVAL
add esp, 16
test eax, eax
je .L_02C2
sub esp, 4
push 0
push -1
push 271
call ERRREPORT
add esp, 16
jmp .L_0232
.L_02C2:
.L_02C1:
.L_02C0:
.L_02BF:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call HCHECKOPOVLPARAMS
add esp, 16
test eax, eax
jne .L_02C4
jmp .L_0232
.L_02C4:
.L_02C3:
jmp .L_029F
.L_02AC:
cmp dword ptr [ebp+24], 350
jne .L_02C5
.L_02C6:
sub esp, 8
push -1
lea eax, [ebp+12]
push eax
call CBYREFATTRIBUTE
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_02C8
sub esp, 8
lea eax, [ebp-24]
push eax
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCRETTYPE
add esp, 32
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-60], ecx
mov dword ptr [ebp-56], -1
jmp .L_02C7
.L_02C8:
mov ecx, dword ptr [ebp+12]
and ecx, 2048
je .L_02CA
sub esp, 4
push 0
push 0
push 68
call ERRREPORT
add esp, 16
and dword ptr [ebp+12], -2049
.L_02CA:
.L_02C9:
mov dword ptr [ebp-32], 0
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-60], eax
.L_02C7:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
sub esp, 8
push dword ptr [ebp-56]
push dword ptr [ebp-16]
call HCHECKPROPPARAMS
add esp, 16
jmp .L_029F
.L_02C5:
cmp dword ptr [ebp-40], 0
je .L_02CD
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_02CE
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+80]
mov ecx, dword ptr [eax+56]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-76], ecx
jmp .L_034D
.L_02CE:
mov dword ptr [ebp-76], -1
.L_034D:
cmp dword ptr [ebp-76], 0
je .L_02D1
or dword ptr [ebp+12], 1
.L_02D1:
.L_02D0:
.L_02CD:
.L_02CC:
sub esp, 8
mov ecx, dword ptr [ebp+24]
cmp ecx, 346
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
lea ecx, [ebp+12]
push ecx
call CBYREFATTRIBUTE
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_02D3
mov eax, dword ptr [ebp-32]
cmp eax, -2147483648
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
cmp ecx, 345
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_02D5
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_02D5:
.L_02D4:
sub esp, 8
lea ecx, [ebp-24]
push ecx
lea ecx, [ebp-32]
push ecx
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCRETTYPE
add esp, 32
jmp .L_02D2
.L_02D3:
cmp dword ptr [ebp+24], 346
jne .L_02D7
mov ecx, dword ptr [ENV+1040]
and ecx, 4194304
test ecx, ecx
je .L_02D9
cmp dword ptr [ebp-32], -2147483648
jne .L_02DB
sub esp, 12
push offset Lt_0354
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp-32], eax
.L_02DB:
.L_02DA:
jmp .L_02D8
.L_02D9:
sub esp, 4
push 0
push 147
push 4194304
call ERRREPORTNOTALLOWED
add esp, 16
mov dword ptr [ebp-32], 8
.L_02D8:
jmp .L_02D6
.L_02D7:
mov dword ptr [ebp-32], 0
.L_02D6:
.L_02D2:
.L_02CB:
.L_029F:
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_02DD
cmp dword ptr [ebp+24], 347
je .L_02E0
.L_02E1:
cmp dword ptr [ebp+24], 348
jne .L_02DF
.L_02E0:
sub esp, 8
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 32
mov dword ptr [ebp-16], eax
jmp .L_02DE
.L_02DF:
cmp dword ptr [ebp+24], 349
jne .L_02E2
.L_02E3:
sub esp, 12
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call SYMBADDOPERATOR
add esp, 48
mov dword ptr [ebp-16], eax
jmp .L_02DE
.L_02E2:
sub esp, 12
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset Lt_0354
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-16], eax
.L_02E4:
.L_02DE:
cmp dword ptr [ebp-16], 0
jne .L_02E6
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
jmp .L_0232
.L_02E6:
.L_02E5:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
cmp ecx, 347
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_02E8
sub esp, 12
push dword ptr [ebp-16]
call COVERRIDEATTRIBUTE
add esp, 16
.L_02E8:
.L_02E7:
cmp dword ptr [ebp+24], 348
jne .L_02EA
mov ecx, dword ptr [ebp-20]
movsx eax, word ptr [ecx+38]
cmp eax, 4
jne .L_02EC
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-76], eax
sub esp, 8
push dword ptr [ebp-76]
push dword ptr [ebp-20]
call SYMBADDPROCINSTANCEPARAM
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+12]
and eax, -9
or eax, 4096
push eax
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-76]
call SYMBADDCTOR
add esp, 32
mov dword ptr [ebp-76], eax
.L_02EC:
.L_02EB:
.L_02EA:
.L_02E9:
cmp dword ptr [ebp+24], 350
jne .L_02EE
sub esp, 4
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call HSETUDTPROPERTYFLAGS
add esp, 16
.L_02EE:
.L_02ED:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0232
.L_02DD:
.L_02DC:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 347
je .L_02F2
.L_02F3:
cmp dword ptr [ebp-76], 348
jne .L_02F1
.L_02F2:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
cmp ecx, 346
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_02F5
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
jmp .L_02F4
.L_02F5:
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
test eax, eax
je .L_02F6
sub esp, 4
push 0
push -1
push 1
call ERRREPORT
add esp, 16
jmp .L_02F4
.L_02F6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 347
jne .L_02F8
or dword ptr [ebp-48], 65536
jmp .L_02F7
.L_02F8:
or dword ptr [ebp-48], 131072
.L_02F7:
.L_02F4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 3
jne .L_02FA
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16548]
cmp dword ptr [ecx+8], 8
je .L_02FC
sub esp, 4
push 0
push 0
push 189
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_02FB
.L_02FC:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 16
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-64]
cmp eax, 101
setl al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-64]
cmp ecx, 65535
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_02FE
sub esp, 4
push 0
push 0
push 189
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_02FD
.L_02FE:
and dword ptr [ebp-64], 65535
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02FD:
.L_02FB:
.L_02FA:
.L_02F9:
.L_02F1:
.L_02EF:
sub esp, 8
push 2048
push 307
call HMATCH
add esp, 16
test eax, eax
je .L_0300
or dword ptr [ebp+12], 64
.L_0300:
.L_02FF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 341
jne .L_0302
mov eax, dword ptr [ebp-48]
and eax, 196608
test eax, eax
je .L_0304
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0304:
.L_0303:
mov eax, dword ptr [ebp+8]
and eax, 64
je .L_0306
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -65
.L_0306:
.L_0305:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push -1
push 33
call FBSETOPTION
add esp, 16
or dword ptr [ebp+8], 288
.L_0302:
.L_0301:
cmp dword ptr [ebp+24], 347
jne .L_0308
.L_0309:
sub esp, 12
push dword ptr [ebp-20]
call SYMBGETCOMPCTORHEAD
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0307
.L_0308:
cmp dword ptr [ebp+24], 348
jne .L_030A
.L_030B:
sub esp, 12
push dword ptr [ebp-20]
call SYMBGETCOMPDTOR1
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0307
.L_030A:
cmp dword ptr [ebp+24], 349
jne .L_030C
.L_030D:
sub esp, 8
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call SYMBGETCOMPOPOVLHEAD
add esp, 16
mov dword ptr [ebp-12], eax
.L_030C:
.L_0307:
cmp dword ptr [ebp-12], 0
jne .L_030F
cmp dword ptr [ebp-36], 0
je .L_0311
sub esp, 4
push 0
push 0
push 158
call ERRREPORT
add esp, 16
.L_0311:
.L_0310:
cmp dword ptr [ebp+24], 347
je .L_0314
.L_0315:
cmp dword ptr [ebp+24], 348
jne .L_0313
.L_0314:
sub esp, 8
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 32
mov dword ptr [ebp-12], eax
jmp .L_0312
.L_0313:
cmp dword ptr [ebp+24], 349
jne .L_0316
.L_0317:
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call SYMBADDOPERATOR
add esp, 48
mov dword ptr [ebp-12], eax
jmp .L_0312
.L_0316:
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset Lt_0354
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-12], eax
.L_0318:
.L_0312:
cmp dword ptr [ebp-12], 0
jne .L_031A
sub esp, 4
push 0
push -1
push 4
call ERRREPORT
add esp, 16
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
sub esp, 8
call SYMBUNIQUELABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-16], eax
jmp .L_0319
.L_031A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0319:
jmp .L_030E
.L_030F:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
and ecx, 32
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+24]
cmp eax, 350
sete al
shr eax, 1
sbb eax, eax
cmp ecx, eax
je .L_031C
sub esp, 4
push 0
push -1
push 4
call ERRREPORT
add esp, 16
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
sub esp, 8
call SYMBUNIQUELABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-4], eax
jmp .L_0232
.L_031C:
.L_031B:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
and ecx, 1
test ecx, ecx
jle .L_031E
cmp dword ptr [ebp+24], 347
jne .L_0320
.L_0321:
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBFINDCTORPROC
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_031F
.L_0320:
cmp dword ptr [ebp+24], 349
jne .L_0322
.L_0323:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-52]
call SYMBFINDOPOVLPROC
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_031F
.L_0322:
sub esp, 4
cmp dword ptr [ebp-56], 0
je .L_0325
mov dword ptr [ebp-76], 1
jmp .L_034E
.L_0325:
mov dword ptr [ebp-76], 0
.L_034E:
push dword ptr [ebp-76]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBFINDOVERLOADPROC
add esp, 16
mov dword ptr [ebp-12], eax
.L_0324:
.L_031F:
or dword ptr [ebp+12], 1
.L_031E:
.L_031D:
cmp dword ptr [ebp-12], 0
jne .L_0328
cmp dword ptr [ebp-36], 0
je .L_032A
sub esp, 4
push 0
push 0
push 158
call ERRREPORT
add esp, 16
.L_032A:
.L_0329:
cmp dword ptr [ebp+24], 347
je .L_032D
.L_032E:
cmp dword ptr [ebp+24], 348
jne .L_032C
.L_032D:
sub esp, 8
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 32
mov dword ptr [ebp-12], eax
jmp .L_032B
.L_032C:
cmp dword ptr [ebp+24], 349
jne .L_032F
.L_0330:
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call SYMBADDOPERATOR
add esp, 48
mov dword ptr [ebp-12], eax
jmp .L_032B
.L_032F:
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset Lt_0354
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-12], eax
.L_0331:
.L_032B:
cmp dword ptr [ebp-12], 0
jne .L_0333
sub esp, 4
push 0
push -1
push 4
call ERRREPORT
add esp, 16
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
sub esp, 8
call SYMBUNIQUELABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-4], eax
jmp .L_0232
.L_0333:
.L_0332:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_0327
.L_0328:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 8
test ecx, ecx
je .L_0335
sub esp, 4
push 0
push -1
push 4
call ERRREPORT
add esp, 16
sub esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
sub esp, 8
call SYMBUNIQUELABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-4], eax
jmp .L_0232
.L_0335:
.L_0334:
cmp dword ptr [ebp-72], 0
jne .L_0337
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-44], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-44]
mov dword ptr [ecx+84], eax
.L_0337:
.L_0336:
sub esp, 8
push dword ptr [ebp-44]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call HCHECKPROTOTYPE
add esp, 32
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call HCHECKATTRIBS
add esp, 16
mov eax, dword ptr [ebp-48]
and eax, 196608
je .L_0339
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .L_033B
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
.L_033B:
.L_033A:
.L_0339:
.L_0338:
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 8
.L_0327:
.L_030E:
cmp dword ptr [ebp-16], 0
je .L_033D
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+4]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .L_033F
sub esp, 8
push 129
push offset Lt_0354
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+140]
lea ecx, [SYMB+98352]
cmp dword ptr [ebx], ecx
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
je .L_0341
sub esp, 12
push offset Lt_0354
call PARSERISGLOBALASMKEYWORD
add esp, 16
test eax, eax
je .L_0343
sub esp, 12
push 0
push 1
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push offset Lt_0354
push 47
call ERRREPORTWARNEX
add esp, 32
.L_0343:
.L_0342:
.L_0341:
.L_0340:
.L_033F:
.L_033E:
.L_033D:
.L_033C:
mov eax, dword ptr [ebp-48]
and eax, 65536
je .L_0345
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
and esi, 6291456
je .L_0347
sub esp, 4
push 0
push -1
push 205
call ERRREPORT
add esp, 16
.L_0347:
.L_0346:
sub esp, 12
push dword ptr [ebp-16]
call SYMBADDGLOBALCTOR
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call SYMBPROCALLOCEXT
add esp, 16
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+112]
mov esi, dword ptr [ebp-64]
mov dword ptr [eax+56], esi
jmp .L_0344
.L_0345:
mov esi, dword ptr [ebp-48]
and esi, 131072
je .L_0348
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
and eax, 6291456
je .L_034A
sub esp, 4
push 0
push -1
push 206
call ERRREPORT
add esp, 16
.L_034A:
.L_0349:
sub esp, 12
push dword ptr [ebp-16]
call SYMBADDGLOBALDTOR
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call SYMBPROCALLOCEXT
add esp, 16
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+112]
mov eax, dword ptr [ebp-64]
mov dword ptr [esi+56], eax
.L_0348:
.L_0344:
cmp dword ptr [ebp+24], 350
jne .L_034C
sub esp, 4
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call HSETUDTPROPERTYFLAGS
add esp, 16
.L_034C:
.L_034B:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0232:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCHEADER, .-CPROCHEADER
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0354,129

.section .text
.balign 16

.globl HDISALLOWSTATICATTRIB
HDISALLOWSTATICATTRIB:
.type HDISALLOWSTATICATTRIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_036C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 2
test ebx, ebx
je .L_036F
sub esp, 4
push 0
push 0
push 213
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx], -3
.L_036F:
.L_036E:
.L_036D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDISALLOWSTATICATTRIB, .-HDISALLOWSTATICATTRIB
.cfi_endproc
.balign 16

.globl HDISALLOWVIRTUALCTOR
HDISALLOWVIRTUALCTOR:
.type HDISALLOWVIRTUALCTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0370:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 768
je .L_0373
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 512
je .L_0375
sub esp, 4
push 0
push 0
push 210
call ERRREPORT
add esp, 16
jmp .L_0374
.L_0375:
sub esp, 4
push 0
push 0
push 211
call ERRREPORT
add esp, 16
.L_0374:
mov eax, dword ptr [ebp+12]
and dword ptr [eax], -724
.L_0373:
.L_0372:
.L_0371:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDISALLOWVIRTUALCTOR, .-HDISALLOWVIRTUALCTOR
.cfi_endproc
.balign 16

.globl HDISALLOWABSTRACTDTOR
HDISALLOWABSTRACTDTOR:
.type HDISALLOWABSTRACTDTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0376:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 512
je .L_0379
sub esp, 4
push 0
push 0
push 212
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -513
.L_0379:
.L_0378:
.L_0377:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDISALLOWABSTRACTDTOR, .-HDISALLOWABSTRACTDTOR
.cfi_endproc
.balign 16

.globl HDISALLOWCONSTCTORDTOR
HDISALLOWCONSTCTORDTOR:
.type HDISALLOWCONSTCTORDTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_037A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 2048
je .L_037D
sub esp, 4
push 0
push 0
cmp dword ptr [ebp+8], 347
jne .L_037E
mov dword ptr [ebp-4], 314
jmp .L_0380
.L_037E:
mov dword ptr [ebp-4], 315
.L_0380:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -2049
.L_037D:
.L_037C:
.L_037B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDISALLOWCONSTCTORDTOR, .-HDISALLOWCONSTCTORDTOR
.cfi_endproc
.balign 16

.globl CPROCSTMTBEGIN
CPROCSTMTBEGIN:
.type CPROCSTMTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0381:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
jne .L_0384
cmp dword ptr [ENV+1088], 0
je .L_0386
or dword ptr [ebp+8], 32
jmp .L_0385
.L_0386:
or dword ptr [ebp+8], 64
.L_0385:
.L_0384:
.L_0383:
sub esp, 4
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push 0
call CMETHODATTRIBUTES
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .L_0388
.L_038A:
jmp .L_0387
.L_038B:
mov eax, dword ptr [ENV+1040]
and eax, 64
test eax, eax
jne .L_038D
sub esp, 4
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_038C
.L_038D:
or dword ptr [ebp+12], 4
.L_038C:
sub esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
sub esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWVIRTUALCTOR
add esp, 16
sub esp, 4
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call HDISALLOWCONSTCTORDTOR
add esp, 16
jmp .L_0387
.L_038E:
mov eax, dword ptr [ENV+1040]
and eax, 64
test eax, eax
jne .L_0390
sub esp, 4
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_038F
.L_0390:
or dword ptr [ebp+12], 8
.L_038F:
sub esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
sub esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWABSTRACTDTOR
add esp, 16
sub esp, 4
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call HDISALLOWCONSTCTORDTOR
add esp, 16
jmp .L_0387
.L_0391:
mov eax, dword ptr [ENV+1040]
and eax, 32
test eax, eax
jne .L_0393
sub esp, 4
push 0
push 146
push 32
call ERRREPORTNOTALLOWED
add esp, 16
.L_0393:
.L_0392:
jmp .L_0387
.L_0394:
mov eax, dword ptr [ENV+1040]
and eax, 64
test eax, eax
jne .L_0396
sub esp, 4
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 16
.L_0396:
.L_0395:
sub esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
jmp .L_0387
.L_0397:
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
jmp .L_0382
jmp .L_0387
.L_0388:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .L_0397
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0398+eax*4-1380]
.L_0398:
.int .L_038A
.int .L_038A
.int .L_038B
.int .L_038E
.int .L_0391
.int .L_0394
.L_0387:
sub esp, 12
push 2
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_039A
sub esp, 4
push 0
push -1
push dword ptr [ebp-4]
call HSKIPCOMPOUND
add esp, 16
jmp .L_0382
.L_039A:
.L_0399:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCHEADER
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_039C
cmp dword ptr [ebp-8], 0
je .L_039E
sub esp, 12
push -1
call SYMBNESTEND
add esp, 16
.L_039E:
.L_039D:
sub esp, 4
push 0
push -1
push dword ptr [ebp-4]
call HSKIPCOMPOUND
add esp, 16
jmp .L_0382
.L_039C:
.L_039B:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .L_03A0
sub esp, 4
push 0
push 0
push 224
call ERRREPORT
add esp, 16
.L_03A0:
.L_039F:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTPROCBEGIN
add esp, 16
sub esp, 8
push 33
push 346
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+36]
mov dword ptr [ebx+20], ecx
.L_0382:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCSTMTBEGIN, .-CPROCSTMTBEGIN
.cfi_endproc
.balign 16

.globl CPROCSTMTEND
CPROCSTMTEND:
.type CPROCSTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_03A1:
sub esp, 8
push -1
push 346
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_03A4
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_03A2
.L_03A4:
.L_03A3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 2048
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
call HMATCH
add esp, 16
test eax, eax
jne .L_03A6
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 345
jne .L_03A9
.L_03AA:
sub esp, 4
push 0
push 0
push 125
call ERRREPORT
add esp, 16
jmp .L_03A7
.L_03A9:
cmp dword ptr [ebp-12], 346
jne .L_03AB
.L_03AC:
sub esp, 4
push 0
push 0
push 126
call ERRREPORT
add esp, 16
jmp .L_03A7
.L_03AB:
cmp dword ptr [ebp-12], 347
jne .L_03AD
.L_03AE:
sub esp, 4
push 0
push 0
push 127
call ERRREPORT
add esp, 16
jmp .L_03A7
.L_03AD:
cmp dword ptr [ebp-12], 348
jne .L_03AF
.L_03B0:
sub esp, 4
push 0
push 0
push 128
call ERRREPORT
add esp, 16
jmp .L_03A7
.L_03AF:
cmp dword ptr [ebp-12], 349
jne .L_03B1
.L_03B2:
sub esp, 4
push 0
push 0
push 129
call ERRREPORT
add esp, 16
jmp .L_03A7
.L_03B1:
cmp dword ptr [ebp-12], 350
jne .L_03B3
.L_03B4:
sub esp, 4
push 0
push 0
push 130
call ERRREPORT
add esp, 16
.L_03B3:
.L_03A7:
.L_03A6:
.L_03A5:
sub esp, 12
push dword ptr [PARSER+108]
call SYMBGETPROCRESULT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_03B6
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_03B8
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 128
test eax, eax
jne .L_03BA
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_03BC
sub esp, 4
push 0
push 0
push 316
call ERRREPORT
add esp, 16
jmp .L_03BB
.L_03BC:
push 0
push 1
push 0
push 13
call ERRREPORTWARN
add esp, 16
.L_03BB:
.L_03BA:
.L_03B9:
.L_03B8:
.L_03B7:
.L_03B6:
.L_03B5:
sub esp, 12
push 0
call ASTPROCEND
add esp, 16
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+16], 0
je .L_03BE
sub esp, 12
push -1
call SYMBNESTEND
add esp, 16
.L_03BE:
.L_03BD:
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.L_03A2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCSTMTEND, .-CPROCSTMTEND
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
HPARAMERROR:
.type HPARAMERROR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_008C:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ERRREPORTPARAM
add esp, 16
.L_008D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARAMERROR, .-HPARAMERROR
.cfi_endproc
.balign 16
HCHECKPROTOTYPE:
.type HCHECKPROTOTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 64
push ebx
push esi
.L_008E:
cmp dword ptr [ebp+16], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0091
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+20]
push 0
push dword ptr [ebp+16]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0093
sub esp, 12
push 0
push 1
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_0094
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_0094
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-56]
push 311
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_0093:
.L_0092:
.L_0091:
.L_0090:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+20]
cmp ecx, dword ptr [eax+28]
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
cmp ebx, dword ptr [ebp+24]
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0099
sub esp, 4
push 0
push -1
push 40
call ERRREPORT
add esp, 16
.L_0099:
.L_0098:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+96]
cmp esi, dword ptr [eax+96]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .L_009B
push 0
push 1
push 0
push 28
call ERRREPORTWARN
add esp, 16
.L_009B:
.L_009A:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+28]
cmp dword ptr [esi+84], ecx
je .L_009D
sub esp, 4
push 0
push -1
push 41
call ERRREPORT
add esp, 16
.L_009D:
.L_009C:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+76]
mov dword ptr [ebp-4], esi
mov esi, dword ptr [ebp+12]
movsx ecx, word ptr [esi+68]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+8]
and esi, 2
test esi, esi
je .L_009F
dec dword ptr [ebp-12]
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+172]
mov dword ptr [ebp-4], ecx
.L_009F:
.L_009E:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+76]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp+8]
movsx ecx, word ptr [esi+68]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+8]
and esi, 2
test esi, esi
je .L_00A1
dec dword ptr [ebp-16]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+172]
mov dword ptr [ebp-8], ecx
.L_00A1:
.L_00A0:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-16], ecx
je .L_00A3
sub esp, 4
push 0
push -1
push 1
call ERRREPORT
add esp, 16
.L_00A3:
.L_00A2:
mov dword ptr [ebp-20], 1
.L_00A4:
mov ecx, dword ptr [ebp-20]
cmp ecx, dword ptr [ebp-16]
setle cl
shr ecx, 1
sbb ecx, ecx
mov esi, dword ptr [ebp-20]
cmp esi, dword ptr [ebp-12]
setle dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .L_00A5
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+28]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .L_00A6
mov dword ptr [ebp-28], 24
jmp .L_03BF
.L_00A6:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-28], ecx
.L_03BF:
cmp dword ptr [ebp-28], 0
jne .L_00A9
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
mov dword ptr [esi+28], eax
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [esi+32], ecx
jmp .L_00A8
.L_00A9:
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-24]
cmp dword ptr [ecx+28], esi
je .L_00AB
sub esp, 4
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 16
jmp .L_00AA
.L_00AB:
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
cmp dword ptr [esi+32], eax
je .L_00AC
sub esp, 4
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 16
.L_00AC:
.L_00AA:
.L_00A8:
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+56]
cmp dword ptr [eax+56], ecx
je .L_00AE
sub esp, 4
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 16
.L_00AE:
.L_00AD:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+56], 3
jne .L_00B0
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+68]
cmp dword ptr [ecx+68], esi
je .L_00B2
sub esp, 4
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 16
.L_00B2:
.L_00B1:
.L_00B0:
.L_00AF:
mov esi, dword ptr [ebp-4]
cmp dword ptr [esi+56], 4
je .L_00B4
sub esp, 8
mov esi, dword ptr [ebp-4]
push dword ptr [esi+16]
push dword ptr [ebp-8]
call SYMBSETNAME
add esp, 16
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+4]
and ecx, 1048576
test ecx, ecx
je .L_00B6
mov ecx, dword ptr [ebp-8]
or dword ptr [ecx+4], 1048576
jmp .L_00B5
.L_00B6:
mov ecx, dword ptr [ebp-8]
and dword ptr [ecx+4], -1048577
.L_00B5:
.L_00B4:
.L_00B3:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx+64], 0
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
and esi, eax
je .L_00B8
sub esp, 8
mov eax, dword ptr [ebp-4]
push dword ptr [eax+64]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call ASTISEQUALPARAMINIT
add esp, 16
test eax, eax
jne .L_00BA
push 36
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_00BA:
.L_00B9:
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+172]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp-4]
mov eax, dword ptr [esi+172]
mov dword ptr [ebp-4], eax
inc dword ptr [ebp-20]
jmp .L_00A4
.L_00A5:
.L_008F:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKPROTOTYPE, .-HCHECKPROTOTYPE
.cfi_endproc
.balign 16
HCHECKATTRIBS:
.type HCHECKATTRIBS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00BB:
mov eax, dword ptr [ebp+16]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp eax, ecx
je .L_00BE
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 2048
test eax, eax
je .L_00C0
or dword ptr [ebp+16], 2048
jmp .L_00BF
.L_00C0:
and dword ptr [ebp+16], -2049
.L_00BF:
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+12]
and eax, 2
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00C2
sub esp, 4
push 0
push 0
push 217
call ERRREPORT
add esp, 16
.L_00C2:
.L_00C1:
mov ebx, dword ptr [ebp+12]
and ebx, 2048
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00C4
sub esp, 4
push 0
push 0
push 218
call ERRREPORT
add esp, 16
.L_00C4:
.L_00C3:
mov ecx, dword ptr [ebp+16]
and ecx, 512
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 512
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_00C6
sub esp, 4
push 0
push 0
push 220
call ERRREPORT
add esp, 16
jmp .L_00C5
.L_00C6:
mov eax, dword ptr [ebp+16]
and eax, 256
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+8]
and ebx, 256
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00C7
sub esp, 4
push 0
push 0
push 219
call ERRREPORT
add esp, 16
.L_00C7:
.L_00C5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
or dword ptr [eax+8], ebx
.L_00BC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKATTRIBS, .-HCHECKATTRIBS
.cfi_endproc
.balign 16
HCHECKIDTOKEN:
.type HCHECKIDTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C8:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00CB
.L_00CD:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_00CF
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_00D1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_00D3
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
.L_00CF:
.L_00CE:
jmp .L_00CA
.L_00D4:
cmp dword ptr [ENV+136], 3
je .L_00D6
mov ebx, dword ptr [ebp+8]
not ebx
cmp dword ptr [PARSER+100], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00D8
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
jmp .L_00C9
.L_00D8:
.L_00D7:
.L_00D6:
.L_00D5:
jmp .L_00CA
.L_00D9:
cmp dword ptr [ENV+136], 3
je .L_00DB
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
jmp .L_00C9
.L_00DB:
.L_00DA:
jmp .L_00CA
.L_00DC:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_00C9
jmp .L_00CA
.L_00CB:
cmp dword ptr [ebp-8], 5
ja .L_00DC
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00DD+eax*4]
.L_00DD:
.int .L_00CD
.int .L_00D9
.int .L_00D4
.int .L_00DC
.int .L_00DC
.int .L_00D9
.L_00CA:
mov dword ptr [ebp-4], -1
.L_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKIDTOKEN, .-HCHECKIDTOKEN
.cfi_endproc
.balign 16
HGETID:
.type HGETID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00DE:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_00E1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-8], eax
jmp .L_00E0
.L_00E1:
push 0
push 0
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
.L_00E0:
cmp dword ptr [ebp-8], 0
je .L_00E3
sub esp, 8
push 3
push dword ptr [ebp-8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_00E2
.L_00E3:
mov dword ptr [ebp-12], 0
.L_00E2:
sub esp, 12
cmp dword ptr [ebp+8], 0
setne al
shr eax, 1
sbb eax, eax
push eax
call HCHECKIDTOKEN
add esp, 16
test eax, eax
jne .L_00E5
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
push 0
push 0
push 0
push 40
call HSKIPUNTIL
add esp, 16
jmp .L_00DF
.L_00E5:
.L_00E4:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+20], 0
je .L_00E7
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], -2147483648
je .L_00E9
sub esp, 4
push 0
push 0
push 25
call ERRREPORT
add esp, 16
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], -2147483648
mov ecx, dword ptr [LEX+840072]
mov eax, dword ptr [ecx+16548]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16548]
mov dword ptr [ecx+4124], 0
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
.L_00DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETID, .-HGETID
.cfi_endproc
.balign 16
CNAKEDATTRIBUTE:
.type CNAKEDATTRIBUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0147:
push 6
push offset Lt_0149
push -1
sub esp, 12
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_014B
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 128
.L_014B:
.L_014A:
.L_0148:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CNAKEDATTRIBUTE, .-CNAKEDATTRIBUTE
.cfi_endproc
.balign 16
COVERRIDEATTRIBUTE:
.type COVERRIDEATTRIBUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_014C:
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBPROCCHECKOVERRIDDEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
jne .L_014F
jmp .L_014D
.L_014F:
.L_014E:
push 9
push offset Lt_0150
push -1
sub esp, 12
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0152
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCGETOVERRIDDEN
add esp, 16
test eax, eax
jne .L_0154
sub esp, 4
push 0
push 0
push 223
call ERRREPORT
add esp, 16
.L_0154:
.L_0153:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0152:
.L_0151:
.L_014D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size COVERRIDEATTRIBUTE, .-COVERRIDEATTRIBUTE
.cfi_endproc
.balign 16
HCHECKATTRIB:
.type HCHECKATTRIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_015B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax]
je .L_015E
sub esp, 4
push 0
push -1
push dword ptr [ebp+16]
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
not ebx
and dword ptr [eax], ebx
.L_015E:
.L_015D:
.L_015C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKATTRIB, .-HCHECKATTRIB
.cfi_endproc
.balign 16
HCHECKOPOVLPARAMS:
.type HCHECKOPOVLPARAMS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_015F:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx]
mov dword ptr [ebp-36], eax
jmp .L_0162
.L_0164:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_0165
mov dword ptr [ebp-40], 0
jmp .L_03D2
.L_0165:
mov dword ptr [ebp-40], 1
.L_03D2:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0161
.L_0167:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0161
.L_0168:
mov dword ptr [ebp-16], 1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0161
.L_0169:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .L_016B
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 1
cmp dword ptr [ebp+12], 26
jne .L_016D
inc dword ptr [ebp-16]
inc dword ptr [ebp-20]
.L_016D:
.L_016C:
jmp .L_016A
.L_016B:
mov dword ptr [ebp-16], 2
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.L_016A:
jmp .L_0161
.L_016E:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_016F
mov dword ptr [ebp-40], 1
jmp .L_03D3
.L_016F:
mov dword ptr [ebp-40], 2
.L_03D3:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0161
.L_0162:
mov ebx, dword ptr [ebp-36]
add ebx, 4294967294
cmp ebx, 12
ja .L_016E
mov ebx, dword ptr [ebp-36]
jmp dword ptr [.L_0171+ebx*4-8]
.L_0171:
.int .L_0168
.int .L_016E
.int .L_0164
.int .L_0167
.int .L_0164
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_0168
.int .L_016E
.int .L_0169
.L_0161:
mov ebx, dword ptr [ebp+16]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-12], 0
je .L_0172
mov dword ptr [ebp-32], 1
jmp .L_03D4
.L_0172:
mov dword ptr [ebp-32], 0
.L_03D4:
mov eax, dword ptr [ebp-24]
sub eax, dword ptr [ebp-32]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
cmp eax, dword ptr [ebp-16]
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
cmp ebx, dword ptr [ebp-20]
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0175
sub esp, 4
push 0
push -1
push 1
call ERRREPORT
add esp, 16
jmp .L_0160
.L_0175:
.L_0174:
cmp dword ptr [ebp-24], 0
jle .L_0177
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .L_0179
sub esp, 4
push 143
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_0179:
.L_0178:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .L_017B
sub esp, 4
push 145
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_017B:
.L_017A:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax]
mov dword ptr [ebp-40], ebx
jmp .L_017D
.L_017F:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 20
je .L_0183
.L_0184:
cmp dword ptr [ebp-44], 10
jne .L_0182
.L_0183:
jmp .L_0180
.L_0182:
sub esp, 4
push 137
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_0185:
.L_0180:
jmp .L_017C
.L_0186:
cmp dword ptr [ebp-24], 1
jle .L_0188
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+56], 4
jne .L_018A
sub esp, 4
push 143
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_018A:
.L_0189:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+64], 0
je .L_018C
sub esp, 4
push 145
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_018C:
.L_018B:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 20
je .L_0190
.L_0191:
cmp dword ptr [ebp-48], 10
jne .L_018F
.L_0190:
jmp .L_018D
.L_018F:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 20
je .L_0196
.L_0197:
cmp dword ptr [ebp-52], 10
jne .L_0195
.L_0196:
jmp .L_0193
.L_0195:
sub esp, 4
push 137
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_0198:
.L_0193:
.L_0192:
.L_018D:
.L_0188:
.L_0187:
jmp .L_017C
.L_0199:
cmp dword ptr [ebp+12], 18
je .L_019C
.L_019D:
cmp dword ptr [ebp+12], 19
jne .L_019B
.L_019C:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .L_019E
mov dword ptr [ebp-44], 24
jmp .L_03D5
.L_019E:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_03D5:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_01A1
mov dword ptr [ebp-48], -1
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
je .L_01A3
mov dword ptr [ebp-48], 0
.L_01A3:
.L_01A2:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 4
je .L_01A7
.L_01A8:
cmp dword ptr [ebp-52], 7
jne .L_01A6
.L_01A7:
mov dword ptr [ebp-48], 0
.L_01A6:
.L_01A4:
cmp dword ptr [ebp-48], 0
jne .L_01AA
sub esp, 4
push 235
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01AA:
.L_01A9:
jmp .L_01A0
.L_01A1:
sub esp, 4
push 235
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01A0:
jmp .L_019A
.L_019B:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .L_01AC
mov dword ptr [ebp-44], 24
jmp .L_03D6
.L_01AC:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_03D6:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_01AF
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
jne .L_01B1
sub esp, 4
push 236
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01B1:
.L_01B0:
jmp .L_01AE
.L_01AF:
sub esp, 4
push 236
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01AE:
.L_01AB:
.L_019A:
jmp .L_017C
.L_01B2:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
jmp .L_01B4
.L_01B6:
cmp dword ptr [ebp-24], 1
jle .L_01B8
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+56], 4
jne .L_01BA
sub esp, 4
push 143
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01BA:
.L_01B9:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+64], 0
je .L_01BC
sub esp, 4
push 145
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01BC:
.L_01BB:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 20
je .L_01C0
.L_01C1:
cmp dword ptr [ebp-52], 10
jne .L_01BF
.L_01C0:
jmp .L_01BD
.L_01BF:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 20
je .L_01C6
.L_01C7:
cmp dword ptr [ebp-56], 10
jne .L_01C5
.L_01C6:
jmp .L_01C3
.L_01C5:
sub esp, 4
push 137
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01C8:
.L_01C3:
.L_01C2:
.L_01BD:
.L_01B8:
.L_01B7:
jmp .L_01B3
.L_01C9:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .L_01CB
cmp dword ptr [ebp-24], 1
jle .L_01CD
cmp dword ptr [ebp-12], 0
je .L_01CF
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-36], ebx
.L_01CF:
.L_01CE:
cmp dword ptr [ebp-36], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01D1
sub esp, 4
push 142
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01D1:
.L_01D0:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .L_01D3
sub esp, 4
push 143
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01D3:
.L_01D2:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .L_01D5
sub esp, 4
push 145
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01D5:
.L_01D4:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ebx, ecx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ecx+32]
cmp eax, dword ptr [ebp+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_01D7
sub esp, 4
push 142
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 16
jmp .L_0160
.L_01D7:
.L_01D6:
.L_01CD:
.L_01CC:
.L_01CB:
.L_01CA:
jmp .L_01B3
.L_01D8:
jmp .L_01B3
.L_01B4:
mov ecx, dword ptr [ebp-44]
add ecx, 4294967272
cmp ecx, 26
ja .L_01D8
mov ecx, dword ptr [ebp-44]
jmp dword ptr [.L_01D9+ecx*4-96]
.L_01D9:
.int .L_01C9
.int .L_01C9
.int .L_01C9
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01D8
.int .L_01B6
.int .L_01B6
.int .L_01B6
.int .L_01B6
.int .L_01B6
.int .L_01B6
.L_01B3:
jmp .L_017C
.L_017D:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967293
cmp ecx, 11
ja .L_017C
mov ecx, dword ptr [ebp-40]
jmp dword ptr [.L_01DA+ecx*4-12]
.L_01DA:
.int .L_0186
.int .L_017F
.int .L_017F
.int .L_017F
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_0199
.int .L_017C
.int .L_01B2
.L_017C:
.L_0177:
.L_0176:
mov dword ptr [ebp-8], 0
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [AST_OPTB+ecx]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 5
jne .L_01DD
.L_01DE:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], ecx
jne .L_01E0
sub esp, 4
push 0
push -1
push 140
call ERRREPORT
add esp, 16
jmp .L_0160
.L_01E0:
.L_01DF:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01DB
.L_01DD:
cmp dword ptr [ebp-36], 4
jne .L_01E1
.L_01E2:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01DB
.L_01E1:
cmp dword ptr [ebp-36], 2
jne .L_01E3
.L_01E4:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01DB
.L_01E3:
cmp dword ptr [ebp-36], 6
jne .L_01E5
.L_01E6:
cmp dword ptr [ebp+12], 22
jne .L_01E8
.L_01E9:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01E7
.L_01E8:
cmp dword ptr [ebp+12], 77
jne .L_01EA
.L_01EB:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 20
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01E7
.L_01EA:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.L_01EC:
.L_01E7:
jmp .L_01DB
.L_01E5:
cmp dword ptr [ebp-36], 12
jne .L_01ED
.L_01EE:
cmp dword ptr [ebp+12], 18
je .L_01F1
.L_01F2:
cmp dword ptr [ebp+12], 19
jne .L_01F0
.L_01F1:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 480
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01EF
.L_01F0:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.L_01F3:
.L_01EF:
jmp .L_01DB
.L_01ED:
cmp dword ptr [ebp-36], 3
jne .L_01F4
.L_01F5:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-40], ecx
jmp .L_01F7
.L_01F9:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01F6
.L_01FA:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01F6
.L_01FB:
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [AST_OPTB+ecx+4]
and ebx, 1
test ebx, ebx
je .L_01FD
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01FC
.L_01FD:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.L_01FC:
jmp .L_01F6
.L_01F7:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967273
cmp ebx, 27
ja .L_01FB
mov ebx, dword ptr [ebp-40]
jmp dword ptr [.L_01FE+ebx*4-92]
.L_01FE:
.int .L_01FA
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01FB
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_01F9
.L_01F6:
jmp .L_01DB
.L_01F4:
cmp dword ptr [ebp-36], 14
jne .L_01FF
.L_0200:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [AST_OPTB+ebx+4]
and ecx, 1
test ecx, ecx
je .L_0202
cmp dword ptr [ebp+12], 26
jne .L_0204
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0203
.L_0204:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.L_0203:
jmp .L_0201
.L_0202:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.L_0201:
.L_01FF:
.L_01DB:
cmp dword ptr [ebp-8], 0
je .L_0206
sub esp, 4
push 0
push -1
push 141
call ERRREPORT
add esp, 16
jmp .L_0160
.L_0206:
.L_0205:
mov dword ptr [ebp-4], -1
.L_0160:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKOPOVLPARAMS, .-HCHECKOPOVLPARAMS
.cfi_endproc
.balign 16
HCHECKISSELFCLONEBYVAL:
.type HCHECKISSELFCLONEBYVAL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0207:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 1
je .L_020A
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.L_020A:
.L_0209:
cmp dword ptr [ebp-8], 0
jne .L_020C
jmp .L_0208
.L_020C:
.L_020B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
je .L_020E
jmp .L_0208
.L_020E:
.L_020D:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+32], eax
je .L_0210
jmp .L_0208
.L_0210:
.L_020F:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
je .L_0212
jmp .L_0208
.L_0212:
.L_0211:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
je .L_0213
mov dword ptr [ebp-12], 24
jmp .L_03ED
.L_0213:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov dword ptr [ebp-12], eax
.L_03ED:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .L_0216
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .L_0218
jmp .L_0208
.L_0218:
.L_0217:
.L_0216:
.L_0215:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.L_0219:
cmp dword ptr [ebp-8], 0
je .L_021A
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+64], 0
jne .L_021C
jmp .L_0208
.L_021C:
.L_021B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_0219
.L_021A:
mov dword ptr [ebp-4], -1
.L_0208:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKISSELFCLONEBYVAL, .-HCHECKISSELFCLONEBYVAL
.cfi_endproc
.balign 16
HCHECKPROPPARAMS:
.type HCHECKPROPPARAMS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_021D:
cmp dword ptr [ebp+12], 0
je .L_0220
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 1
jmp .L_021F
.L_0220:
mov dword ptr [ebp-4], 1
mov dword ptr [ebp-8], 2
.L_021F:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
mov eax, dword ptr [ebp-4]
inc eax
cmp ebx, eax
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
mov eax, dword ptr [ebp-8]
inc eax
cmp ecx, eax
setg cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0222
sub esp, 4
push 0
push -1
cmp dword ptr [ebp+12], 0
je .L_0223
mov dword ptr [ebp-20], 190
jmp .L_03EE
.L_0223:
mov dword ptr [ebp-20], 191
.L_03EE:
push dword ptr [ebp-20]
call ERRREPORT
add esp, 16
.L_0222:
.L_0221:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], 0
.L_0225:
cmp dword ptr [ebp-16], 0
je .L_0226
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+64], 0
je .L_0228
sub esp, 4
push 145
mov ebx, dword ptr [ebp-12]
inc ebx
push ebx
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
.L_0228:
.L_0227:
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-16], ecx
jmp .L_0225
.L_0226:
.L_021E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKPROPPARAMS, .-HCHECKPROPPARAMS
.cfi_endproc
.balign 16
HSETUDTPROPERTYFLAGS:
.type HSETUDTPROPERTYFLAGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0229:
cmp dword ptr [ebp+12], 0
je .L_022C
cmp dword ptr [ebp+16], 0
jne .L_022E
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 1024
jmp .L_022D
.L_022E:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 512
.L_022D:
jmp .L_022B
.L_022C:
cmp dword ptr [ebp+16], 0
jne .L_0230
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 256
jmp .L_022F
.L_0230:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 128
.L_022F:
.L_022B:
.L_022A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETUDTPROPERTYFLAGS, .-HSETUDTPROPERTYFLAGS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0094:	.ascii	"\"\0"
.balign 4
Lt_0122:	.ascii	"SSE\0"
.balign 4
Lt_0126:	.ascii	"FPU\0"
.balign 4
Lt_0149:	.ascii	"NAKED\0"
.balign 4
Lt_0150:	.ascii	"OVERRIDE\0"
.balign 4
Lt_0270:	.ascii	" (TODO)\0"
