	.intel_syntax noprefix

.section .text
.balign 16

.globl _CALIASATTRIBUTE
_CALIASATTRIBUTE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0068:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 386
jne .L_006B
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
jne .L_006D
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_0070
call _fb_StrAssign
add esp, 20
push 0
call _LEXSKIPTOKEN
add esp, 4
push 129
push offset _Lt_0070
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_006F
mov eax, offset _Lt_0070
mov dword ptr [ebp-4], eax
jmp .L_006E
.L_006F:
push 0
push 0
push 304
call _ERRREPORT
add esp, 12
.L_006E:
jmp .L_006C
.L_006D:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_006C:
.L_006B:
.L_006A:
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0070,129

.section .text
.balign 16

.globl _CLIBATTRIBUTE
_CLIBATTRIBUTE:
push ebp
mov ebp, esp
sub esp, 4
.L_0071:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 387
jne .L_0074
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
jne .L_0076
call _LEXGETTEXT
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0078
push dword ptr [ebp-4]
call _FBADDLIB
add esp, 4
jmp .L_0077
.L_0078:
push 0
push 0
push 305
call _ERRREPORT
add esp, 12
.L_0077:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0075
.L_0076:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_0075:
.L_0074:
.L_0073:
.L_0072:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMETHODATTRIBUTES
_CMETHODATTRIBUTES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0079:
push 2048
push 307
call _HMATCH
add esp, 8
test eax, eax
je .L_007C
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2
jmp .L_007A
.L_007C:
.L_007B:
push 2048
push 335
call _HMATCH
add esp, 8
test eax, eax
je .L_007E
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2048
.L_007E:
.L_007D:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 355
jne .L_0081
.L_0082:
mov eax, dword ptr [ebp+16]
or dword ptr [eax], 768
cmp dword ptr [ebp+8], 0
je .L_0084
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_0086
push 0
push 0
push 222
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+16]
and dword ptr [ebx], -769
.L_0086:
.L_0085:
.L_0084:
.L_0083:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_007F
.L_0081:
cmp dword ptr [ebp-4], 354
jne .L_0087
.L_0088:
mov ebx, dword ptr [ebp+16]
or dword ptr [ebx], 256
cmp dword ptr [ebp+8], 0
je .L_008A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4194304
test eax, eax
jne .L_008C
push 0
push 0
push 221
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+16]
and dword ptr [eax], -257
.L_008C:
.L_008B:
.L_008A:
.L_0089:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.L_0087:
.L_007F:
.L_007A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCRETTYPE
_CPROCRETTYPE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_00EB:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+12]
and eax, 2048
je .L_00EE
cmp dword ptr [ebp+20], 0
je .L_00F0
or dword ptr [ebp-4], 2
.L_00F0:
.L_00EF:
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.L_00EE:
.L_00ED:
cmp dword ptr [ebp+20], 0
je .L_00F2
and dword ptr [ebp-4], -2
.L_00F2:
.L_00F1:
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
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00F6
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .L_00F5
.L_00F6:
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 7
jne .L_00F9
.L_00FA:
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
je .L_00FC
push 0
push 0
push 55
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
.L_00FC:
.L_00FB:
jmp .L_00F7
.L_00F9:
cmp dword ptr [ebp-20], 18
je .L_00FE
.L_00FF:
cmp dword ptr [ebp-20], 4
jne .L_00FD
.L_00FE:
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
je .L_0101
push 0
push 0
push 55
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.L_0101:
.L_0100:
jmp .L_00F7
.L_00FD:
cmp dword ptr [ebp-20], 0
jne .L_0102
.L_0103:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
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
jmp .L_00F7
.L_0102:
cmp dword ptr [ebp-20], 20
jne .L_0104
.L_0105:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 0
je .L_0107
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 15728640
sar eax, 20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 3
je .L_010B
.L_010C:
cmp dword ptr [ebp-24], 5
jne .L_010A
.L_010B:
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
je .L_010E
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
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
.L_010E:
.L_010D:
.L_010A:
.L_0108:
.L_0107:
.L_0106:
.L_0104:
.L_00F7:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
jne .L_0110
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.L_0110:
.L_010F:
.L_00F5:
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _CPROCRETURNMETHOD
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+96], eax
.L_00EC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCRETURNMETHOD
_CPROCRETURNMETHOD:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_0117:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 2
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0119
mov dword ptr [ebp-20], 24
jmp .L_012A
.L_0119:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_012A:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
je .L_011C
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0118
.L_011C:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 343
jne .L_011E
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_0120
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .L_011F
.L_0120:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_011F:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_0122
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
jmp .L_0121
.L_0122:
push 0
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 4
push offset _Lt_0123
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0125
mov dword ptr [ebp-4], 1
jmp .L_0124
.L_0125:
push 4
push offset _Lt_0127
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0126
mov dword ptr [ebp-4], 0
.L_0126:
.L_0124:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0121:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0129
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0128
.L_0129:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0128:
.L_011E:
.L_011D:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0118:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCCALLINGCONV
_CPROCCALLINGCONV:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_012B:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], -1
jne .L_012E
mov eax, dword ptr [_ENV+276]
mov dword ptr [ebp+8], eax
.L_012E:
.L_012D:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0130
.L_0132:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov dword ptr [ebp-4], 3
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_012F
.L_0133:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [_ENV+280]
mov dword ptr [ebp-4], eax
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_012F
.L_0134:
mov dword ptr [ebp-4], 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_012F
.L_0135:
cmp dword ptr [_ENV+212], 0
jne .L_0137
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov dword ptr [ebp-4], 5
.L_0137:
.L_0136:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_012F
.L_0138:
cmp dword ptr [_ENV+216], 0
jne .L_013A
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov dword ptr [ebp-4], 6
.L_013A:
.L_0139:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_012F
.L_0130:
mov eax, dword ptr [ebp-8]
add eax, 4294966915
cmp eax, 4
ja .L_012F
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_013B+eax*4-1524]
_.L_013B:
.int .L_0134
.int .L_0132
.int .L_0133
.int .L_0135
.int .L_0138
.L_012F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_013D
mov eax, dword ptr [_PARSER+104]
mov dword ptr [ebp-8], eax
jmp .L_013F
.L_0141:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0142:
cmp dword ptr [ebp+8], 5
jne .L_0144
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0143
.L_0144:
mov dword ptr [ebp-4], 3
.L_0143:
jmp .L_013E
.L_0145:
mov eax, dword ptr [_ENV+280]
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0146:
mov dword ptr [ebp-4], 2
jmp .L_013E
.L_013F:
cmp dword ptr [ebp-8], 6
ja .L_013E
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0147+eax*4]
_.L_0147:
.int .L_0141
.int .L_0142
.int .L_0145
.int .L_0146
.int .L_0142
.int .L_013E
.int .L_0141
.L_013E:
.L_013D:
.L_013C:
.L_012C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CBYREFATTRIBUTE
_CBYREFATTRIBUTE:
push ebp
mov ebp, esp
.L_0156:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 320
jne .L_0159
cmp dword ptr [ebp+12], 0
jne .L_015B
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_015B:
.L_015A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 2048
.L_0159:
.L_0158:
.L_0157:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCHEADER
_CPROCHEADER:
push ebp
mov ebp, esp
sub esp, 76
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0232:
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
je .L_0236
.L_0237:
cmp dword ptr [ebp+24], 348
jne .L_0235
.L_0236:
or dword ptr [ebp+12], 2
cmp dword ptr [ebp+24], 347
jne .L_0239
or dword ptr [ebp+12], 5
jmp .L_0238
.L_0239:
or dword ptr [ebp+12], 8
.L_0238:
jmp .L_0234
.L_0235:
cmp dword ptr [ebp+24], 349
jne .L_023A
.L_023B:
or dword ptr [ebp+12], 17
jmp .L_0234
.L_023A:
cmp dword ptr [ebp+24], 350
jne .L_023C
.L_023D:
or dword ptr [ebp+12], 35
.L_023C:
.L_0234:
mov eax, dword ptr [ebp+20]
and eax, 2
je .L_023F
mov dword ptr [ebp-20], 0
jmp .L_023E
.L_023F:
mov dword ptr [ebp-68], 22
cmp dword ptr [ebp+24], 349
jne .L_0241
.L_0242:
or dword ptr [ebp-68], 8
jmp .L_0240
.L_0241:
cmp dword ptr [ebp+24], 347
je .L_0244
.L_0245:
cmp dword ptr [ebp+24], 348
jne .L_0243
.L_0244:
or dword ptr [ebp-68], 1
.L_0243:
.L_0240:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0247
mov eax, dword ptr [ebp-68]
or eax, 256
or dword ptr [ebp-68], eax
.L_0247:
.L_0246:
push dword ptr [ebp-68]
call _CPARENTID
add esp, 4
mov dword ptr [ebp-20], eax
.L_023E:
cmp dword ptr [ebp-20], 0
je .L_0249
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_024B
push 0
push 0
push 158
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 0
jmp .L_024A
.L_024B:
mov dword ptr [ebp-36], -1
.L_024A:
jmp .L_0248
.L_0249:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_024D
mov eax, dword ptr [_SYMB+98528]
mov dword ptr [ebp-20], eax
.L_024D:
.L_024C:
.L_0248:
cmp dword ptr [ebp-20], 0
je .L_024F
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
.L_024F:
.L_024E:
cmp dword ptr [ebp-40], 0
je .L_0251
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
je .L_0253
or dword ptr [ebp+12], 2
.L_0253:
.L_0252:
jmp .L_0250
.L_0251:
cmp dword ptr [ebp+24], 347
je .L_0256
.L_0257:
cmp dword ptr [ebp+24], 348
je .L_0256
.L_0258:
cmp dword ptr [ebp+24], 350
jne .L_0255
.L_0256:
cmp dword ptr [ebp-20], 0
jne .L_025A
push 0
push 0
push 160
call _ERRREPORT
add esp, 12
jmp .L_0259
.L_025A:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 10
je .L_025B
push 0
push 0
push 168
call _ERRREPORT
add esp, 12
.L_025B:
.L_0259:
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_025D
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_025C
.L_025D:
push 0
push -1
push dword ptr [ebp+24]
call _HSKIPCOMPOUND
add esp, 12
.L_025C:
jmp .L_0233
.L_0255:
.L_0254:
push 258
push 2
lea eax, [ebp+8]
push eax
call _HCHECKATTRIB
add esp, 12
push 259
push 2048
lea eax, [ebp+8]
push eax
call _HCHECKATTRIB
add esp, 12
push 260
push 512
lea eax, [ebp+12]
push eax
call _HCHECKATTRIB
add esp, 12
push 261
push 256
lea eax, [ebp+12]
push eax
call _HCHECKATTRIB
add esp, 12
.L_0250:
cmp dword ptr [ebp+24], 347
je .L_0260
.L_0261:
cmp dword ptr [ebp+24], 348
jne .L_025F
.L_0260:
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_025E
.L_025F:
cmp dword ptr [ebp+24], 349
jne .L_0262
.L_0263:
push -1
call _COPERATOR
add esp, 4
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], -1
je .L_0266
.L_0267:
cmp dword ptr [ebp-52], 36
je .L_0266
.L_0268:
cmp dword ptr [ebp-52], 9
je .L_0266
.L_0269:
cmp dword ptr [ebp-52], 37
je .L_0266
.L_026A:
cmp dword ptr [ebp-52], 10
jne .L_0265
.L_0266:
push 0
push 0
push 157
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-52], 28
.L_0265:
.L_0264:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_026C
cmp dword ptr [ebp-40], 0
jne .L_026E
push 0
push -1
push 152
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-52], 28
.L_026E:
.L_026D:
jmp .L_026B
.L_026C:
cmp dword ptr [ebp-40], 0
je .L_0270
push offset _Lt_0271
push -1
push 153
call _ERRREPORT
add esp, 12
.L_0270:
.L_026F:
.L_026B:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp-76], ebx
jmp .L_0273
.L_0275:
mov ebx, dword ptr [ebp+12]
and ebx, 768
je .L_0277
push 0
push -1
push 233
call _ERRREPORT
add esp, 12
and dword ptr [ebp+12], -769
.L_0277:
.L_0276:
mov ebx, dword ptr [ebp+8]
and ebx, 2048
je .L_0279
push 0
push -1
push 234
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -2049
.L_0279:
.L_0278:
or dword ptr [ebp+8], 2
and dword ptr [ebp+12], -3
jmp .L_0272
.L_027A:
cmp dword ptr [ebp-40], 0
je .L_027C
mov ebx, dword ptr [ebp+8]
and ebx, 2
je .L_027E
push 0
push -1
push 232
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -3
.L_027E:
.L_027D:
or dword ptr [ebp+12], 2
.L_027C:
.L_027B:
jmp .L_0272
.L_0273:
mov ebx, dword ptr [ebp-76]
add ebx, 4294967278
cmp ebx, 3
ja .L_027A
mov ebx, dword ptr [ebp-76]
jmp dword ptr [_.L_027F+ebx*4-72]
_.L_027F:
.int .L_0275
.int .L_0275
.int .L_0275
.int .L_0275
.L_0272:
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_025E
.L_0262:
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
push offset _Lt_0355
push dword ptr [ebp-20]
call _HGETID
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_ENV+1040]
and eax, 8388608
test eax, eax
je .L_0282
cmp dword ptr [ebp-32], -2147483648
je .L_0284
or dword ptr [ebp+8], 1048576
.L_0284:
.L_0283:
.L_0282:
.L_0281:
push offset _Lt_0355
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
.L_0280:
.L_025E:
lea eax, [ebp+12]
push eax
call _CNAKEDATTRIBUTE
add esp, 4
cmp dword ptr [ebp+24], 347
je .L_0287
.L_0288:
cmp dword ptr [ebp+24], 348
jne .L_0286
.L_0287:
mov dword ptr [ebp-44], 3
jmp .L_0285
.L_0286:
mov dword ptr [ebp-44], -1
.L_0289:
.L_0285:
cmp dword ptr [ebp-40], 0
je .L_028B
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
jne .L_028D
cmp dword ptr [_PARSER+104], 4
jne .L_028F
cmp dword ptr [_ENV+108], 0
jne .L_0291
call _FBIS64BIT
test eax, eax
jne .L_0293
cmp dword ptr [_ENV+212], 0
jne .L_0295
mov dword ptr [ebp-44], 5
.L_0295:
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
lea eax, [ebp-72]
push eax
push dword ptr [ebp-44]
call _CPROCCALLINGCONV
add esp, 8
mov dword ptr [ebp-44], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 388
jne .L_0297
mov eax, dword ptr [_ENV+1040]
and eax, 16
test eax, eax
jne .L_0299
push 0
push 146
push 16
call _ERRREPORTNOTALLOWED
add esp, 12
jmp .L_0298
.L_0299:
or dword ptr [ebp+12], 1
.L_0298:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.L_0297:
.L_0296:
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_029B
call _CLIBATTRIBUTE
.L_029B:
.L_029A:
call _CALIASATTRIBUTE
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
je .L_029D
mov ebx, dword ptr [_SYMB+98528]
cmp dword ptr [ebp-20], ebx
je .L_029F
push -1
push dword ptr [ebp-20]
call _SYMBNESTBEGIN
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
.L_029F:
.L_029E:
.L_029D:
.L_029C:
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
call _CPARAMETERS
add esp, 16
cmp dword ptr [ebp+24], 348
jne .L_02A1
.L_02A2:
mov ebx, dword ptr [ebp-16]
movsx eax, word ptr [ebx+68]
cmp eax, 1
jle .L_02A4
push 0
push 0
push 159
call _ERRREPORT
add esp, 12
.L_02A4:
.L_02A3:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .L_02A0
.L_02A1:
cmp dword ptr [ebp+24], 347
jne .L_02A5
.L_02A6:
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HCHECKISSELFCLONEBYVAL
add esp, 12
test eax, eax
je .L_02A8
push 0
push -1
push 271
call _ERRREPORT
add esp, 12
jmp .L_0233
.L_02A8:
.L_02A7:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+80]
cmp dword ptr [ebx+56], 4
jne .L_02AA
push 143
push 0
push dword ptr [ebp-16]
call _HPARAMERROR
add esp, 12
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebx+80], ecx
mov ecx, dword ptr [ebp-28]
cmp dword ptr [ecx+168], 0
je .L_02AC
mov ecx, dword ptr [ebp-28]
mov ebx, dword ptr [ecx+168]
mov dword ptr [ebx+172], 0
.L_02AC:
.L_02AB:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
dec ecx
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+68], cx
push dword ptr [ebp-28]
call _SYMBFREESYMBOL
add esp, 4
.L_02AA:
.L_02A9:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .L_02A0
.L_02A5:
cmp dword ptr [ebp+24], 349
jne .L_02AD
.L_02AE:
cmp dword ptr [ebp-52], 29
jne .L_02B0
.L_02B1:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .L_02B3
mov dword ptr [ebp-52], 54
.L_02B3:
.L_02B2:
jmp .L_02AF
.L_02B0:
cmp dword ptr [ebp-52], 28
jne .L_02B4
.L_02B5:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
cmp ecx, 1
jne .L_02B7
mov dword ptr [ebp-52], 53
.L_02B7:
.L_02B6:
jmp .L_02AF
.L_02B4:
cmp dword ptr [ebp-52], 30
jne .L_02B8
.L_02B9:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .L_02BB
mov dword ptr [ebp-52], 76
.L_02BB:
.L_02BA:
.L_02B8:
.L_02AF:
mov ebx, dword ptr [ebp-52]
sal ebx, 4
mov ecx, dword ptr [_AST_OPTB+ebx+4]
and ecx, 4
test ecx, ecx
je .L_02BD
mov dword ptr [ebp-32], 0
jmp .L_02BC
.L_02BD:
push -1
lea ecx, [ebp+12]
push ecx
call _CBYREFATTRIBUTE
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_02BF
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
call _CPROCRETTYPE
add esp, 24
jmp .L_02BE
.L_02BF:
push 0
push 0
push 68
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-32], 8
.L_02BE:
.L_02BC:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
push dword ptr [ebp-16]
call _SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], eax
cmp dword ptr [ebp-52], 0
jne .L_02C1
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HCHECKISSELFCLONEBYVAL
add esp, 12
test eax, eax
je .L_02C3
push 0
push -1
push 271
call _ERRREPORT
add esp, 12
jmp .L_0233
.L_02C3:
.L_02C2:
.L_02C1:
.L_02C0:
push dword ptr [ebp-16]
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call _HCHECKOPOVLPARAMS
add esp, 12
test eax, eax
jne .L_02C5
jmp .L_0233
.L_02C5:
.L_02C4:
jmp .L_02A0
.L_02AD:
cmp dword ptr [ebp+24], 350
jne .L_02C6
.L_02C7:
push -1
lea eax, [ebp+12]
push eax
call _CBYREFATTRIBUTE
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_02C9
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
call _CPROCRETTYPE
add esp, 24
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-60], ecx
mov dword ptr [ebp-56], -1
jmp .L_02C8
.L_02C9:
mov ecx, dword ptr [ebp+12]
and ecx, 2048
je .L_02CB
push 0
push 0
push 68
call _ERRREPORT
add esp, 12
and dword ptr [ebp+12], -2049
.L_02CB:
.L_02CA:
mov dword ptr [ebp-32], 0
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-60], eax
.L_02C8:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
push dword ptr [ebp-56]
push dword ptr [ebp-16]
call _HCHECKPROPPARAMS
add esp, 8
jmp .L_02A0
.L_02C6:
cmp dword ptr [ebp-40], 0
je .L_02CE
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_02CF
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+80]
mov ecx, dword ptr [eax+56]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-76], ecx
jmp .L_034E
.L_02CF:
mov dword ptr [ebp-76], -1
.L_034E:
cmp dword ptr [ebp-76], 0
je .L_02D2
or dword ptr [ebp+12], 1
.L_02D2:
.L_02D1:
.L_02CE:
.L_02CD:
mov ecx, dword ptr [ebp+24]
cmp ecx, 346
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
lea ecx, [ebp+12]
push ecx
call _CBYREFATTRIBUTE
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_02D4
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
je .L_02D6
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_02D6:
.L_02D5:
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
call _CPROCRETTYPE
add esp, 24
jmp .L_02D3
.L_02D4:
cmp dword ptr [ebp+24], 346
jne .L_02D8
mov ecx, dword ptr [_ENV+1040]
and ecx, 4194304
test ecx, ecx
je .L_02DA
cmp dword ptr [ebp-32], -2147483648
jne .L_02DC
push offset _Lt_0355
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-32], eax
.L_02DC:
.L_02DB:
jmp .L_02D9
.L_02DA:
push 0
push 147
push 4194304
call _ERRREPORTNOTALLOWED
add esp, 12
mov dword ptr [ebp-32], 8
.L_02D9:
jmp .L_02D7
.L_02D8:
mov dword ptr [ebp-32], 0
.L_02D7:
.L_02D3:
.L_02CC:
.L_02A0:
mov eax, dword ptr [ebp+20]
and eax, 1
je .L_02DE
cmp dword ptr [ebp+24], 347
je .L_02E1
.L_02E2:
cmp dword ptr [ebp+24], 348
jne .L_02E0
.L_02E1:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-16], eax
jmp .L_02DF
.L_02E0:
cmp dword ptr [ebp+24], 349
jne .L_02E3
.L_02E4:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call _SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-16], eax
jmp .L_02DF
.L_02E3:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset _Lt_0355
push dword ptr [ebp-16]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
.L_02E5:
.L_02DF:
cmp dword ptr [ebp-16], 0
jne .L_02E7
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
jmp .L_0233
.L_02E7:
.L_02E6:
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
je .L_02E9
push dword ptr [ebp-16]
call _COVERRIDEATTRIBUTE
add esp, 4
.L_02E9:
.L_02E8:
cmp dword ptr [ebp+24], 348
jne .L_02EB
mov ecx, dword ptr [ebp-20]
movsx eax, word ptr [ecx+38]
cmp eax, 4
jne .L_02ED
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-76], eax
push dword ptr [ebp-76]
push dword ptr [ebp-20]
call _SYMBADDPROCINSTANCEPARAM
add esp, 8
push 0
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+12]
and eax, -9
or eax, 4096
push eax
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-76]
call _SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-76], eax
.L_02ED:
.L_02EC:
.L_02EB:
.L_02EA:
cmp dword ptr [ebp+24], 350
jne .L_02EF
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call _HSETUDTPROPERTYFLAGS
add esp, 12
.L_02EF:
.L_02EE:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0233
.L_02DE:
.L_02DD:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 347
je .L_02F3
.L_02F4:
cmp dword ptr [ebp-76], 348
jne .L_02F2
.L_02F3:
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
je .L_02F6
push 0
push -1
push 17
call _ERRREPORT
add esp, 12
jmp .L_02F5
.L_02F6:
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
test eax, eax
je .L_02F7
push 0
push -1
push 1
call _ERRREPORT
add esp, 12
jmp .L_02F5
.L_02F7:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 347
jne .L_02F9
or dword ptr [ebp-48], 65536
jmp .L_02F8
.L_02F9:
or dword ptr [ebp-48], 131072
.L_02F8:
.L_02F5:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 3
jne .L_02FB
mov eax, dword ptr [_LEX+213384]
mov ecx, dword ptr [eax+4260]
cmp dword ptr [ecx+8], 8
je .L_02FD
push 0
push 0
push 189
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_02FC
.L_02FD:
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VALINT
add esp, 4
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
je .L_02FF
push 0
push 0
push 189
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_02FE
.L_02FF:
and dword ptr [ebp-64], 65535
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_02FE:
.L_02FC:
.L_02FB:
.L_02FA:
.L_02F2:
.L_02F0:
push 2048
push 307
call _HMATCH
add esp, 8
test eax, eax
je .L_0301
or dword ptr [ebp+12], 64
.L_0301:
.L_0300:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 341
jne .L_0303
mov eax, dword ptr [ebp-48]
and eax, 196608
test eax, eax
je .L_0305
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_0305:
.L_0304:
mov eax, dword ptr [ebp+8]
and eax, 64
je .L_0307
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -65
.L_0307:
.L_0306:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push -1
push 33
call _FBSETOPTION
add esp, 8
or dword ptr [ebp+8], 288
.L_0303:
.L_0302:
cmp dword ptr [ebp+24], 347
jne .L_0309
.L_030A:
push dword ptr [ebp-20]
call _SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0308
.L_0309:
cmp dword ptr [ebp+24], 348
jne .L_030B
.L_030C:
push dword ptr [ebp-20]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0308
.L_030B:
cmp dword ptr [ebp+24], 349
jne .L_030D
.L_030E:
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
.L_030D:
.L_0308:
cmp dword ptr [ebp-12], 0
jne .L_0310
cmp dword ptr [ebp-36], 0
je .L_0312
push 0
push 0
push 158
call _ERRREPORT
add esp, 12
.L_0312:
.L_0311:
cmp dword ptr [ebp+24], 347
je .L_0315
.L_0316:
cmp dword ptr [ebp+24], 348
jne .L_0314
.L_0315:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-12], eax
jmp .L_0313
.L_0314:
cmp dword ptr [ebp+24], 349
jne .L_0317
.L_0318:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call _SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-12], eax
jmp .L_0313
.L_0317:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset _Lt_0355
push dword ptr [ebp-16]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-12], eax
.L_0319:
.L_0313:
cmp dword ptr [ebp-12], 0
jne .L_031B
push 0
push -1
push 4
call _ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
jmp .L_031A
.L_031B:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_031A:
jmp .L_030F
.L_0310:
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
je .L_031D
push 0
push -1
push 4
call _ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
jmp .L_0233
.L_031D:
.L_031C:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
and ecx, 1
test ecx, ecx
jle .L_031F
cmp dword ptr [ebp+24], 347
jne .L_0321
.L_0322:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _SYMBFINDCTORPROC
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0320
.L_0321:
cmp dword ptr [ebp+24], 349
jne .L_0323
.L_0324:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-52]
call _SYMBFINDOPOVLPROC
add esp, 12
mov dword ptr [ebp-12], eax
jmp .L_0320
.L_0323:
cmp dword ptr [ebp-56], 0
je .L_0326
mov dword ptr [ebp-76], 1
jmp .L_034F
.L_0326:
mov dword ptr [ebp-76], 0
.L_034F:
push dword ptr [ebp-76]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-12], eax
.L_0325:
.L_0320:
or dword ptr [ebp+12], 1
.L_031F:
.L_031E:
cmp dword ptr [ebp-12], 0
jne .L_0329
cmp dword ptr [ebp-36], 0
je .L_032B
push 0
push 0
push 158
call _ERRREPORT
add esp, 12
.L_032B:
.L_032A:
cmp dword ptr [ebp+24], 347
je .L_032E
.L_032F:
cmp dword ptr [ebp+24], 348
jne .L_032D
.L_032E:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-12], eax
jmp .L_032C
.L_032D:
cmp dword ptr [ebp+24], 349
jne .L_0330
.L_0331:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call _SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-12], eax
jmp .L_032C
.L_0330:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset _Lt_0355
push dword ptr [ebp-16]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-12], eax
.L_0332:
.L_032C:
cmp dword ptr [ebp-12], 0
jne .L_0334
push 0
push -1
push 4
call _ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
jmp .L_0233
.L_0334:
.L_0333:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_0328
.L_0329:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 8
test ecx, ecx
je .L_0336
push 0
push -1
push 4
call _ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
jmp .L_0233
.L_0336:
.L_0335:
cmp dword ptr [ebp-72], 0
jne .L_0338
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-44], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-44]
mov dword ptr [ecx+84], eax
.L_0338:
.L_0337:
push dword ptr [ebp-44]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _HCHECKPROTOTYPE
add esp, 24
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _HCHECKATTRIBS
add esp, 12
mov eax, dword ptr [ebp-48]
and eax, 196608
je .L_033A
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .L_033C
push 0
push -1
push 17
call _ERRREPORT
add esp, 12
.L_033C:
.L_033B:
.L_033A:
.L_0339:
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 8
.L_0328:
.L_030F:
cmp dword ptr [ebp-16], 0
je .L_033E
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+4]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .L_0340
push 129
push offset _Lt_0355
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+140]
lea ecx, [_SYMB+98352]
cmp dword ptr [ebx], ecx
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
je .L_0342
push offset _Lt_0355
call _PARSERISGLOBALASMKEYWORD
add esp, 4
test eax, eax
je .L_0344
push 0
push 1
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4280]
push offset _Lt_0355
push 47
call _ERRREPORTWARNEX
add esp, 20
.L_0344:
.L_0343:
.L_0342:
.L_0341:
.L_0340:
.L_033F:
.L_033E:
.L_033D:
mov eax, dword ptr [ebp-48]
and eax, 65536
je .L_0346
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
and esi, 6291456
je .L_0348
push 0
push -1
push 205
call _ERRREPORT
add esp, 12
.L_0348:
.L_0347:
push dword ptr [ebp-16]
call _SYMBADDGLOBALCTOR
add esp, 4
push dword ptr [ebp-16]
call _SYMBPROCALLOCEXT
add esp, 4
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+112]
mov esi, dword ptr [ebp-64]
mov dword ptr [eax+56], esi
jmp .L_0345
.L_0346:
mov esi, dword ptr [ebp-48]
and esi, 131072
je .L_0349
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
and eax, 6291456
je .L_034B
push 0
push -1
push 206
call _ERRREPORT
add esp, 12
.L_034B:
.L_034A:
push dword ptr [ebp-16]
call _SYMBADDGLOBALDTOR
add esp, 4
push dword ptr [ebp-16]
call _SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+112]
mov eax, dword ptr [ebp-64]
mov dword ptr [esi+56], eax
.L_0349:
.L_0345:
cmp dword ptr [ebp+24], 350
jne .L_034D
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call _HSETUDTPROPERTYFLAGS
add esp, 12
.L_034D:
.L_034C:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0233:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0355,129

.section .text
.balign 16

.globl _HDISALLOWSTATICATTRIB
_HDISALLOWSTATICATTRIB:
push ebp
mov ebp, esp
push ebx
.L_036D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 2
test ebx, ebx
je .L_0370
push 0
push 0
push 213
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx], -3
.L_0370:
.L_036F:
.L_036E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HDISALLOWVIRTUALCTOR
_HDISALLOWVIRTUALCTOR:
push ebp
mov ebp, esp
push ebx
.L_0371:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 768
je .L_0374
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 512
je .L_0376
push 0
push 0
push 210
call _ERRREPORT
add esp, 12
jmp .L_0375
.L_0376:
push 0
push 0
push 211
call _ERRREPORT
add esp, 12
.L_0375:
mov eax, dword ptr [ebp+12]
and dword ptr [eax], -724
.L_0374:
.L_0373:
.L_0372:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HDISALLOWABSTRACTDTOR
_HDISALLOWABSTRACTDTOR:
push ebp
mov ebp, esp
push ebx
.L_0377:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 512
je .L_037A
push 0
push 0
push 212
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -513
.L_037A:
.L_0379:
.L_0378:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HDISALLOWCONSTCTORDTOR
_HDISALLOWCONSTCTORDTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_037B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 2048
je .L_037E
push 0
push 0
cmp dword ptr [ebp+8], 347
jne .L_037F
mov dword ptr [ebp-4], 314
jmp .L_0381
.L_037F:
mov dword ptr [ebp-4], 315
.L_0381:
push dword ptr [ebp-4]
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -2049
.L_037E:
.L_037D:
.L_037C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCSTMTBEGIN
_CPROCSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0382:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
jne .L_0385
cmp dword ptr [_ENV+1088], 0
je .L_0387
or dword ptr [ebp+8], 32
jmp .L_0386
.L_0387:
or dword ptr [ebp+8], 64
.L_0386:
.L_0385:
.L_0384:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push 0
call _CMETHODATTRIBUTES
add esp, 12
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .L_0389
.L_038B:
jmp .L_0388
.L_038C:
mov eax, dword ptr [_ENV+1040]
and eax, 64
test eax, eax
jne .L_038E
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED
add esp, 12
jmp .L_038D
.L_038E:
or dword ptr [ebp+12], 4
.L_038D:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWSTATICATTRIB
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWVIRTUALCTOR
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call _HDISALLOWCONSTCTORDTOR
add esp, 12
jmp .L_0388
.L_038F:
mov eax, dword ptr [_ENV+1040]
and eax, 64
test eax, eax
jne .L_0391
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED
add esp, 12
jmp .L_0390
.L_0391:
or dword ptr [ebp+12], 8
.L_0390:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWSTATICATTRIB
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWABSTRACTDTOR
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call _HDISALLOWCONSTCTORDTOR
add esp, 12
jmp .L_0388
.L_0392:
mov eax, dword ptr [_ENV+1040]
and eax, 32
test eax, eax
jne .L_0394
push 0
push 146
push 32
call _ERRREPORTNOTALLOWED
add esp, 12
.L_0394:
.L_0393:
jmp .L_0388
.L_0395:
mov eax, dword ptr [_ENV+1040]
and eax, 64
test eax, eax
jne .L_0397
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED
add esp, 12
.L_0397:
.L_0396:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWSTATICATTRIB
add esp, 8
jmp .L_0388
.L_0398:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0383
jmp .L_0388
.L_0389:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .L_0398
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0399+eax*4-1380]
_.L_0399:
.int .L_038B
.int .L_038B
.int .L_038C
.int .L_038F
.int .L_0392
.int .L_0395
.L_0388:
push 2
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_039B
push 0
push -1
push dword ptr [ebp-4]
call _HSKIPCOMPOUND
add esp, 12
jmp .L_0383
.L_039B:
.L_039A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-4]
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCHEADER
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_039D
cmp dword ptr [ebp-8], 0
je .L_039F
push -1
call _SYMBNESTEND
add esp, 4
.L_039F:
.L_039E:
push 0
push -1
push dword ptr [ebp-4]
call _HSKIPCOMPOUND
add esp, 12
jmp .L_0383
.L_039D:
.L_039C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .L_03A1
push 0
push 0
push 224
call _ERRREPORT
add esp, 12
.L_03A1:
.L_03A0:
push 0
push dword ptr [ebp-12]
call _ASTPROCBEGIN
add esp, 8
push 33
push 346
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+36]
mov dword ptr [ebx+20], ecx
.L_0383:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCSTMTEND
_CPROCSTMTEND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_03A2:
push -1
push 346
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_03A5
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_03A3
.L_03A5:
.L_03A4:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
call _HMATCH
add esp, 8
test eax, eax
jne .L_03A7
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 345
jne .L_03AA
.L_03AB:
push 0
push 0
push 125
call _ERRREPORT
add esp, 12
jmp .L_03A8
.L_03AA:
cmp dword ptr [ebp-12], 346
jne .L_03AC
.L_03AD:
push 0
push 0
push 126
call _ERRREPORT
add esp, 12
jmp .L_03A8
.L_03AC:
cmp dword ptr [ebp-12], 347
jne .L_03AE
.L_03AF:
push 0
push 0
push 127
call _ERRREPORT
add esp, 12
jmp .L_03A8
.L_03AE:
cmp dword ptr [ebp-12], 348
jne .L_03B0
.L_03B1:
push 0
push 0
push 128
call _ERRREPORT
add esp, 12
jmp .L_03A8
.L_03B0:
cmp dword ptr [ebp-12], 349
jne .L_03B2
.L_03B3:
push 0
push 0
push 129
call _ERRREPORT
add esp, 12
jmp .L_03A8
.L_03B2:
cmp dword ptr [ebp-12], 350
jne .L_03B4
.L_03B5:
push 0
push 0
push 130
call _ERRREPORT
add esp, 12
.L_03B4:
.L_03A8:
.L_03A7:
.L_03A6:
push dword ptr [_PARSER+108]
call _SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_03B7
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_03B9
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 128
test eax, eax
jne .L_03BB
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_03BD
push 0
push 0
push 316
call _ERRREPORT
add esp, 12
jmp .L_03BC
.L_03BD:
push 0
push 1
push 0
push 13
call _ERRREPORTWARN
add esp, 16
.L_03BC:
.L_03BB:
.L_03BA:
.L_03B9:
.L_03B8:
.L_03B7:
.L_03B6:
push 0
call _ASTPROCEND
add esp, 4
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+16], 0
je .L_03BF
push -1
call _SYMBNESTEND
add esp, 4
.L_03BF:
.L_03BE:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
.L_03A3:
pop ebx
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
_HPARAMERROR:
push ebp
mov ebp, esp
.L_008D:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ERRREPORTPARAM
add esp, 16
.L_008E:
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKPROTOTYPE:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
.L_008F:
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
je .L_0092
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+20]
push 0
push dword ptr [ebp+16]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0094
push 0
push 1
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_0095
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_0095
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
push 311
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.L_0094:
.L_0093:
.L_0092:
.L_0091:
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
je .L_009A
push 0
push -1
push 40
call _ERRREPORT
add esp, 12
.L_009A:
.L_0099:
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
je .L_009C
push 0
push 1
push 0
push 28
call _ERRREPORTWARN
add esp, 16
.L_009C:
.L_009B:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+28]
cmp dword ptr [esi+84], ecx
je .L_009E
push 0
push -1
push 41
call _ERRREPORT
add esp, 12
.L_009E:
.L_009D:
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
je .L_00A0
dec dword ptr [ebp-12]
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+172]
mov dword ptr [ebp-4], ecx
.L_00A0:
.L_009F:
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
je .L_00A2
dec dword ptr [ebp-16]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+172]
mov dword ptr [ebp-8], ecx
.L_00A2:
.L_00A1:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-16], ecx
je .L_00A4
push 0
push -1
push 1
call _ERRREPORT
add esp, 12
.L_00A4:
.L_00A3:
mov dword ptr [ebp-20], 1
.L_00A5:
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
je .L_00A6
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+28]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .L_00A7
mov dword ptr [ebp-28], 24
jmp .L_03C0
.L_00A7:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-28], ecx
.L_03C0:
cmp dword ptr [ebp-28], 0
jne .L_00AA
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
mov dword ptr [esi+28], eax
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [esi+32], ecx
jmp .L_00A9
.L_00AA:
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-24]
cmp dword ptr [ecx+28], esi
je .L_00AC
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR
add esp, 12
jmp .L_00AB
.L_00AC:
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
cmp dword ptr [esi+32], eax
je .L_00AD
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR
add esp, 12
.L_00AD:
.L_00AB:
.L_00A9:
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+56]
cmp dword ptr [eax+56], ecx
je .L_00AF
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR
add esp, 12
.L_00AF:
.L_00AE:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+56], 3
jne .L_00B1
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+68]
cmp dword ptr [ecx+68], esi
je .L_00B3
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR
add esp, 12
.L_00B3:
.L_00B2:
.L_00B1:
.L_00B0:
mov esi, dword ptr [ebp-4]
cmp dword ptr [esi+56], 4
je .L_00B5
mov esi, dword ptr [ebp-4]
push dword ptr [esi+16]
push dword ptr [ebp-8]
call _SYMBSETNAME
add esp, 8
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+4]
and ecx, 1048576
test ecx, ecx
je .L_00B7
mov ecx, dword ptr [ebp-8]
or dword ptr [ecx+4], 1048576
jmp .L_00B6
.L_00B7:
mov ecx, dword ptr [ebp-8]
and dword ptr [ecx+4], -1048577
.L_00B6:
.L_00B5:
.L_00B4:
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
je .L_00B9
mov eax, dword ptr [ebp-4]
push dword ptr [eax+64]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .L_00BB
push 36
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _ERRREPORTPARAMWARN
add esp, 16
.L_00BB:
.L_00BA:
.L_00B9:
.L_00B8:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+172]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp-4]
mov eax, dword ptr [esi+172]
mov dword ptr [ebp-4], eax
inc dword ptr [ebp-20]
jmp .L_00A5
.L_00A6:
.L_0090:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKATTRIBS:
push ebp
mov ebp, esp
push ebx
.L_00BC:
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
je .L_00BF
push 0
push -1
push 20
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 2048
test eax, eax
je .L_00C1
or dword ptr [ebp+16], 2048
jmp .L_00C0
.L_00C1:
and dword ptr [ebp+16], -2049
.L_00C0:
.L_00BF:
.L_00BE:
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
je .L_00C3
push 0
push 0
push 217
call _ERRREPORT
add esp, 12
.L_00C3:
.L_00C2:
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
je .L_00C5
push 0
push 0
push 218
call _ERRREPORT
add esp, 12
.L_00C5:
.L_00C4:
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
je .L_00C7
push 0
push 0
push 220
call _ERRREPORT
add esp, 12
jmp .L_00C6
.L_00C7:
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
je .L_00C8
push 0
push 0
push 219
call _ERRREPORT
add esp, 12
.L_00C8:
.L_00C6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
or dword ptr [eax+8], ebx
.L_00BD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKIDTOKEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00C9:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00CC
.L_00CE:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_00D0
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_00D2
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .L_00D4
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
.L_00CF:
jmp .L_00CB
.L_00D5:
cmp dword ptr [_ENV+136], 3
je .L_00D7
mov ebx, dword ptr [ebp+8]
not ebx
cmp dword ptr [_PARSER+100], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00D9
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
jmp .L_00CA
.L_00D9:
.L_00D8:
.L_00D7:
.L_00D6:
jmp .L_00CB
.L_00DA:
cmp dword ptr [_ENV+136], 3
je .L_00DC
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
jmp .L_00CA
.L_00DC:
.L_00DB:
jmp .L_00CB
.L_00DD:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .L_00CA
jmp .L_00CB
.L_00CC:
cmp dword ptr [ebp-8], 5
ja .L_00DD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00DE+eax*4]
_.L_00DE:
.int .L_00CE
.int .L_00DA
.int .L_00D5
.int .L_00DD
.int .L_00DD
.int .L_00DA
.L_00CB:
mov dword ptr [ebp-4], -1
.L_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETID:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DF:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_00E2
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-8], eax
jmp .L_00E1
.L_00E2:
push 0
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
.L_00E1:
cmp dword ptr [ebp-8], 0
je .L_00E4
push 3
push dword ptr [ebp-8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00E3
.L_00E4:
mov dword ptr [ebp-12], 0
.L_00E3:
cmp dword ptr [ebp+8], 0
setne al
shr eax, 1
sbb eax, eax
push eax
call _HCHECKIDTOKEN
add esp, 4
test eax, eax
jne .L_00E6
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
push 0
push 0
push 0
push 40
call _HSKIPUNTIL
add esp, 16
jmp .L_00E0
.L_00E6:
.L_00E5:
push 0
push 0
call _LEXGETTEXT
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+20], 0
je .L_00E8
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], -2147483648
je .L_00EA
push 0
push 0
push 25
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], -2147483648
mov ecx, dword ptr [_LEX+213384]
mov eax, dword ptr [ecx+4260]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [_LEX+213384]
mov ecx, dword ptr [eax+4260]
mov dword ptr [ecx+1052], 0
.L_00EA:
.L_00E9:
.L_00E8:
.L_00E7:
push 4096
call _LEXSKIPTOKEN
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
.L_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CNAKEDATTRIBUTE:
push ebp
mov ebp, esp
.L_0148:
push 6
push offset _Lt_014A
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_014C
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 128
.L_014C:
.L_014B:
.L_0149:
mov esp, ebp
pop ebp
ret
.balign 16
_COVERRIDEATTRIBUTE:
push ebp
mov ebp, esp
.L_014D:
push 0
push dword ptr [ebp+8]
call _SYMBPROCCHECKOVERRIDDEN
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .L_0150
jmp .L_014E
.L_0150:
.L_014F:
push 9
push offset _Lt_0151
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0153
push dword ptr [ebp+8]
call _SYMBPROCGETOVERRIDDEN
add esp, 4
test eax, eax
jne .L_0155
push 0
push 0
push 223
call _ERRREPORT
add esp, 12
.L_0155:
.L_0154:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.L_0153:
.L_0152:
.L_014E:
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKATTRIB:
push ebp
mov ebp, esp
push ebx
.L_015C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax]
je .L_015F
push 0
push -1
push dword ptr [ebp+16]
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
not ebx
and dword ptr [eax], ebx
.L_015F:
.L_015E:
.L_015D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKOPOVLPARAMS:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_0160:
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
mov eax, dword ptr [_AST_OPTB+ebx]
mov dword ptr [ebp-36], eax
jmp .L_0163
.L_0165:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_0166
mov dword ptr [ebp-40], 0
jmp .L_03D3
.L_0166:
mov dword ptr [ebp-40], 1
.L_03D3:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0162
.L_0168:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0162
.L_0169:
mov dword ptr [ebp-16], 1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0162
.L_016A:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [_AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .L_016C
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 1
cmp dword ptr [ebp+12], 26
jne .L_016E
inc dword ptr [ebp-16]
inc dword ptr [ebp-20]
.L_016E:
.L_016D:
jmp .L_016B
.L_016C:
mov dword ptr [ebp-16], 2
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.L_016B:
jmp .L_0162
.L_016F:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .L_0170
mov dword ptr [ebp-40], 1
jmp .L_03D4
.L_0170:
mov dword ptr [ebp-40], 2
.L_03D4:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .L_0162
.L_0163:
mov ebx, dword ptr [ebp-36]
add ebx, 4294967294
cmp ebx, 12
ja .L_016F
mov ebx, dword ptr [ebp-36]
jmp dword ptr [_.L_0172+ebx*4-8]
_.L_0172:
.int .L_0169
.int .L_016F
.int .L_0165
.int .L_0168
.int .L_0165
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_016F
.int .L_0169
.int .L_016F
.int .L_016A
.L_0162:
mov ebx, dword ptr [ebp+16]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-12], 0
je .L_0173
mov dword ptr [ebp-32], 1
jmp .L_03D5
.L_0173:
mov dword ptr [ebp-32], 0
.L_03D5:
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
je .L_0176
push 0
push -1
push 1
call _ERRREPORT
add esp, 12
jmp .L_0161
.L_0176:
.L_0175:
cmp dword ptr [ebp-24], 0
jle .L_0178
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .L_017A
push 143
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_017A:
.L_0179:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .L_017C
push 145
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_017C:
.L_017B:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax]
mov dword ptr [ebp-40], ebx
jmp .L_017E
.L_0180:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 20
je .L_0184
.L_0185:
cmp dword ptr [ebp-44], 10
jne .L_0183
.L_0184:
jmp .L_0181
.L_0183:
push 137
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_0186:
.L_0181:
jmp .L_017D
.L_0187:
cmp dword ptr [ebp-24], 1
jle .L_0189
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+56], 4
jne .L_018B
push 143
push 2
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_018B:
.L_018A:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+64], 0
je .L_018D
push 145
push 2
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_018D:
.L_018C:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 20
je .L_0191
.L_0192:
cmp dword ptr [ebp-48], 10
jne .L_0190
.L_0191:
jmp .L_018E
.L_0190:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 20
je .L_0197
.L_0198:
cmp dword ptr [ebp-52], 10
jne .L_0196
.L_0197:
jmp .L_0194
.L_0196:
push 137
push 2
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_0199:
.L_0194:
.L_0193:
.L_018E:
.L_0189:
.L_0188:
jmp .L_017D
.L_019A:
cmp dword ptr [ebp+12], 18
je .L_019D
.L_019E:
cmp dword ptr [ebp+12], 19
jne .L_019C
.L_019D:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .L_019F
mov dword ptr [ebp-44], 24
jmp .L_03D6
.L_019F:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_03D6:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_01A2
mov dword ptr [ebp-48], -1
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
je .L_01A4
mov dword ptr [ebp-48], 0
.L_01A4:
.L_01A3:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 4
je .L_01A8
.L_01A9:
cmp dword ptr [ebp-52], 7
jne .L_01A7
.L_01A8:
mov dword ptr [ebp-48], 0
.L_01A7:
.L_01A5:
cmp dword ptr [ebp-48], 0
jne .L_01AB
push 235
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01AB:
.L_01AA:
jmp .L_01A1
.L_01A2:
push 235
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01A1:
jmp .L_019B
.L_019C:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .L_01AD
mov dword ptr [ebp-44], 24
jmp .L_03D7
.L_01AD:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_03D7:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_01B0
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
jne .L_01B2
push 236
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01B2:
.L_01B1:
jmp .L_01AF
.L_01B0:
push 236
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01AF:
.L_01AC:
.L_019B:
jmp .L_017D
.L_01B3:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
jmp .L_01B5
.L_01B7:
cmp dword ptr [ebp-24], 1
jle .L_01B9
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+56], 4
jne .L_01BB
push 143
push 2
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01BB:
.L_01BA:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+64], 0
je .L_01BD
push 145
push 2
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01BD:
.L_01BC:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 20
je .L_01C1
.L_01C2:
cmp dword ptr [ebp-52], 10
jne .L_01C0
.L_01C1:
jmp .L_01BE
.L_01C0:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 20
je .L_01C7
.L_01C8:
cmp dword ptr [ebp-56], 10
jne .L_01C6
.L_01C7:
jmp .L_01C4
.L_01C6:
push 137
push 2
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01C9:
.L_01C4:
.L_01C3:
.L_01BE:
.L_01B9:
.L_01B8:
jmp .L_01B4
.L_01CA:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [_AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .L_01CC
cmp dword ptr [ebp-24], 1
jle .L_01CE
cmp dword ptr [ebp-12], 0
je .L_01D0
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-36], ebx
.L_01D0:
.L_01CF:
cmp dword ptr [ebp-36], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01D2
push 142
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01D2:
.L_01D1:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .L_01D4
push 143
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01D4:
.L_01D3:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .L_01D6
push 145
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01D6:
.L_01D5:
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
je .L_01D8
push 142
push 1
push dword ptr [ebp+16]
call _HPARAMERROR
add esp, 12
jmp .L_0161
.L_01D8:
.L_01D7:
.L_01CE:
.L_01CD:
.L_01CC:
.L_01CB:
jmp .L_01B4
.L_01D9:
jmp .L_01B4
.L_01B5:
mov ecx, dword ptr [ebp-44]
add ecx, 4294967272
cmp ecx, 26
ja .L_01D9
mov ecx, dword ptr [ebp-44]
jmp dword ptr [_.L_01DA+ecx*4-96]
_.L_01DA:
.int .L_01CA
.int .L_01CA
.int .L_01CA
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01D9
.int .L_01B7
.int .L_01B7
.int .L_01B7
.int .L_01B7
.int .L_01B7
.int .L_01B7
.L_01B4:
jmp .L_017D
.L_017E:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967293
cmp ecx, 11
ja .L_017D
mov ecx, dword ptr [ebp-40]
jmp dword ptr [_.L_01DB+ecx*4-12]
_.L_01DB:
.int .L_0187
.int .L_0180
.int .L_0180
.int .L_0180
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_019A
.int .L_017D
.int .L_01B3
.L_017D:
.L_0178:
.L_0177:
mov dword ptr [ebp-8], 0
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [_AST_OPTB+ecx]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 5
jne .L_01DE
.L_01DF:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], ecx
jne .L_01E1
push 0
push -1
push 140
call _ERRREPORT
add esp, 12
jmp .L_0161
.L_01E1:
.L_01E0:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01DC
.L_01DE:
cmp dword ptr [ebp-36], 4
jne .L_01E2
.L_01E3:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01DC
.L_01E2:
cmp dword ptr [ebp-36], 2
jne .L_01E4
.L_01E5:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01DC
.L_01E4:
cmp dword ptr [ebp-36], 6
jne .L_01E6
.L_01E7:
cmp dword ptr [ebp+12], 22
jne .L_01E9
.L_01EA:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01E8
.L_01E9:
cmp dword ptr [ebp+12], 77
jne .L_01EB
.L_01EC:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 20
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01E8
.L_01EB:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.L_01ED:
.L_01E8:
jmp .L_01DC
.L_01E6:
cmp dword ptr [ebp-36], 12
jne .L_01EE
.L_01EF:
cmp dword ptr [ebp+12], 18
je .L_01F2
.L_01F3:
cmp dword ptr [ebp+12], 19
jne .L_01F1
.L_01F2:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 480
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01F0
.L_01F1:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.L_01F4:
.L_01F0:
jmp .L_01DC
.L_01EE:
cmp dword ptr [ebp-36], 3
jne .L_01F5
.L_01F6:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-40], ecx
jmp .L_01F8
.L_01FA:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_01F7
.L_01FB:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01F7
.L_01FC:
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [_AST_OPTB+ecx+4]
and ebx, 1
test ebx, ebx
je .L_01FE
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .L_01FD
.L_01FE:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.L_01FD:
jmp .L_01F7
.L_01F8:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967273
cmp ebx, 27
ja .L_01FC
mov ebx, dword ptr [ebp-40]
jmp dword ptr [_.L_01FF+ebx*4-92]
_.L_01FF:
.int .L_01FB
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_01FA
.L_01F7:
jmp .L_01DC
.L_01F5:
cmp dword ptr [ebp-36], 14
jne .L_0200
.L_0201:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [_AST_OPTB+ebx+4]
and ecx, 1
test ecx, ecx
je .L_0203
cmp dword ptr [ebp+12], 26
jne .L_0205
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0204
.L_0205:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.L_0204:
jmp .L_0202
.L_0203:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.L_0202:
.L_0200:
.L_01DC:
cmp dword ptr [ebp-8], 0
je .L_0207
push 0
push -1
push 141
call _ERRREPORT
add esp, 12
jmp .L_0161
.L_0207:
.L_0206:
mov dword ptr [ebp-4], -1
.L_0161:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKISSELFCLONEBYVAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0208:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 1
je .L_020B
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.L_020B:
.L_020A:
cmp dword ptr [ebp-8], 0
jne .L_020D
jmp .L_0209
.L_020D:
.L_020C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
je .L_020F
jmp .L_0209
.L_020F:
.L_020E:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+32], eax
je .L_0211
jmp .L_0209
.L_0211:
.L_0210:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
je .L_0213
jmp .L_0209
.L_0213:
.L_0212:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
je .L_0214
mov dword ptr [ebp-12], 24
jmp .L_03EE
.L_0214:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov dword ptr [ebp-12], eax
.L_03EE:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_0217
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .L_0219
jmp .L_0209
.L_0219:
.L_0218:
.L_0217:
.L_0216:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.L_021A:
cmp dword ptr [ebp-8], 0
je .L_021B
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+64], 0
jne .L_021D
jmp .L_0209
.L_021D:
.L_021C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_021A
.L_021B:
mov dword ptr [ebp-4], -1
.L_0209:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKPROPPARAMS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_021E:
cmp dword ptr [ebp+12], 0
je .L_0221
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 1
jmp .L_0220
.L_0221:
mov dword ptr [ebp-4], 1
mov dword ptr [ebp-8], 2
.L_0220:
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
je .L_0223
push 0
push -1
cmp dword ptr [ebp+12], 0
je .L_0224
mov dword ptr [ebp-20], 190
jmp .L_03EF
.L_0224:
mov dword ptr [ebp-20], 191
.L_03EF:
push dword ptr [ebp-20]
call _ERRREPORT
add esp, 12
.L_0223:
.L_0222:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], 0
.L_0226:
cmp dword ptr [ebp-16], 0
je .L_0227
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+64], 0
je .L_0229
push 145
mov ebx, dword ptr [ebp-12]
inc ebx
push ebx
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 12
.L_0229:
.L_0228:
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-16], ecx
jmp .L_0226
.L_0227:
.L_021F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETUDTPROPERTYFLAGS:
push ebp
mov ebp, esp
.L_022A:
cmp dword ptr [ebp+12], 0
je .L_022D
cmp dword ptr [ebp+16], 0
jne .L_022F
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 1024
jmp .L_022E
.L_022F:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 512
.L_022E:
jmp .L_022C
.L_022D:
cmp dword ptr [ebp+16], 0
jne .L_0231
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 256
jmp .L_0230
.L_0231:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 128
.L_0230:
.L_022C:
.L_022B:
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

.section .data
.balign 4
_Lt_0095:	.ascii	"\"\0"
.balign 4
_Lt_0123:	.ascii	"SSE\0"
.balign 4
_Lt_0127:	.ascii	"FPU\0"
.balign 4
_Lt_014A:	.ascii	"NAKED\0"
.balign 4
_Lt_0151:	.ascii	"OVERRIDE\0"
.balign 4
_Lt_0271:	.ascii	" (TODO)\0"
