	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPARAMETERS
_CPARAMETERS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_006A
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDPROCINSTANCEPARAM
add esp, 8
mov eax, dword ptr [_ENV+296]
mov ebx, eax
sar ebx, 31
add dword ptr [ebp-8], eax
adc dword ptr [ebp-4], ebx
.L_006A:
.L_0069:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_006C
jmp .L_0068
.L_006C:
.L_006B:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .L_006E
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0068
.L_006E:
.L_006D:
.L_006F:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HPARAMDECL
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0073
jmp .L_0070
.L_0073:
.L_0072:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-8], ecx
adc dword ptr [ebp-4], ebx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+56], 4
jne .L_0075
jmp .L_0070
.L_0075:
.L_0074:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0077
jmp .L_0070
.L_0077:
.L_0076:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0071:
jmp .L_006F
.L_0070:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0079
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
jmp .L_0078
.L_0079:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0078:
mov eax, dword ptr [_ENV+296]
sal eax, 6
mov ebx, eax
mov ecx, ebx
sar ecx, 31
cmp dword ptr [ebp-4], ecx
jl .L_007B
jg .L_007C
cmp dword ptr [ebp-8], ebx
jbe .L_007B
.L_007C:
push 0
push 1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 18
call _ERRREPORTWARN
add esp, 16
.L_007B:
.L_007A:
.L_0068:
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
push ebx
.L_007D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call _ERRREPORTPARAM
add esp, 16
.L_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARAMWARNING:
push ebp
mov ebp, esp
push ebx
.L_007F:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call _ERRREPORTPARAMWARN
add esp, 16
.L_0080:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTIONALEXPR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0081:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 1
je .L_0084
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 2
je .L_0086
jmp .L_0082
.L_0086:
.L_0085:
.L_0084:
.L_0083:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_008A
.L_008B:
cmp dword ptr [ebp-16], 23
jne .L_0089
.L_008A:
push 0
push 0
push 71
call _ERRREPORT
add esp, 12
push -1
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0089:
.L_0087:
push 0
push -2147483648
push 1
push dword ptr [ebp+16]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_008D
jmp .L_0082
.L_008D:
.L_008C:
push dword ptr [ebp-8]
call _ASTFORGETBITFIELDS
add esp, 4
push 12288
push dword ptr [ebp-8]
call _ASTTYPEINIUSESLOCALS
add esp, 8
test eax, eax
je .L_008F
push 0
push 272
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.L_008F:
.L_008E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMOCKPARAM:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0090:
cmp dword ptr [ebp+12], -1
jne .L_0093
mov eax, dword ptr [_ENV+1080]
mov dword ptr [ebp+12], eax
.L_0093:
.L_0092:
cmp dword ptr [ebp+12], 4
jne .L_0095
mov dword ptr [ebp-8], -2147483648
jmp .L_0094
.L_0095:
mov dword ptr [ebp-8], 8
.L_0094:
push 0
push 0
push dword ptr [ebp+12]
cmp dword ptr [ebp+12], 3
jne .L_0096
mov dword ptr [ebp-12], -1
jmp .L_010D
.L_0096:
mov dword ptr [ebp-12], 0
.L_010D:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+8]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
.L_0091:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPARAMDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0098:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_009D
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_009F
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_00A1
push 1
push 59
push offset _Lt_00A2
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
jmp .L_00A0
.L_00A1:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00A0:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .L_00A4
push 1
push 313
push offset _Lt_00A2
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_00A4:
.L_00A3:
cmp dword ptr [ebp+12], 3
je .L_00A6
push 1
push 312
push offset _Lt_00A2
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_00A6:
.L_00A5:
push 0
push 0
push 4
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_0099
jmp .L_009E
.L_009F:
push 1
push 59
push offset _Lt_00A2
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_009E:
.L_009D:
.L_009C:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 319
jne .L_00A9
.L_00AA:
mov dword ptr [ebp-16], 1
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00A7
.L_00A9:
cmp dword ptr [ebp-60], 320
jne .L_00AB
.L_00AC:
mov dword ptr [ebp-16], 2
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00A7
.L_00AB:
mov dword ptr [ebp-16], -1
.L_00AD:
.L_00A7:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_00B0
.L_00B1:
mov dword ptr [ebp-28], -1
jmp .L_00AE
.L_00B0:
cmp dword ptr [ebp-60], 1
je .L_00B3
.L_00B4:
cmp dword ptr [ebp-60], 2
jne .L_00B2
.L_00B3:
cmp dword ptr [ebp+16], 0
jne .L_00B6
push 1
push 59
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_00B6:
.L_00B5:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_00AE
.L_00B2:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00B9
push 1
push 59
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_00B9:
.L_00B8:
mov dword ptr [ebp-28], 0
.L_00B7:
.L_00AE:
cmp dword ptr [_Lt_0115], 8
jl .L_00BB
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0099
.L_00BB:
.L_00BA:
mov eax, dword ptr [_Lt_0115]
imul eax, 129
lea ebx, [_Lt_0116+eax]
mov dword ptr [ebp-8], ebx
push 0
push 1
push offset _Lt_0000
push 0
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-28], 0
je .L_00BD
push 0
push 0
call _LEXGETTEXT
push eax
push 0
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1048]
mov dword ptr [ebp-32], eax
push 4096
call _LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_00BC
.L_00BD:
mov dword ptr [ebp-12], -2147483648
.L_00BC:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-44], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_00BF
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-16], -1
je .L_00C1
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
.L_00C1:
.L_00C0:
mov dword ptr [ebp-16], 3
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .L_00C3
mov dword ptr [ebp-24], -1
jmp .L_00C2
.L_00C3:
push offset _Lt_0117
lea eax, [ebp-44]
push eax
lea eax, [ebp-24]
push eax
call _CARRAYDECL
add esp, 12
cmp dword ptr [ebp-44], 0
je .L_00C5
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
.L_00C5:
.L_00C4:
.L_00C2:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_00C7
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.L_00C7:
.L_00C6:
.L_00BF:
.L_00BE:
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-16], -1
jne .L_00C9
mov eax, dword ptr [_ENV+1080]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-40], -1
mov eax, dword ptr [_ENV+200]
and eax, 2
test eax, eax
je .L_00CB
push 1
push 15
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMWARNING
add esp, 16
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
mov dword ptr [ebp-36], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_00CD
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-12], -2147483648
je .L_00CF
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
jmp .L_0099
.L_00CF:
.L_00CE:
inc dword ptr [_Lt_0115]
mov dword ptr [ebp-60], 1
cmp dword ptr [ebp-16], 2
jne .L_00D1
cmp dword ptr [ebp+16], 0
je .L_00D3
or dword ptr [ebp-60], 2
.L_00D3:
.L_00D2:
and dword ptr [ebp-60], -2
or dword ptr [ebp-60], 4
.L_00D1:
.L_00D0:
push dword ptr [ebp-60]
mov dword ptr [ebp-72], 0
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-68]
push eax
lea eax, [ebp-48]
push eax
lea eax, [ebp-12]
push eax
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00D7
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov dword ptr [ebp-12], 8
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-36], -1
.L_00D7:
.L_00D6:
cmp dword ptr [ebp-16], 1
jne .L_00D9
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.L_00D9:
.L_00D8:
dec dword ptr [_Lt_0115]
jmp .L_00CC
.L_00CD:
mov eax, dword ptr [_ENV+1040]
and eax, 4194304
test eax, eax
jne .L_00DB
push 0
push 147
push 4194304
call _ERRREPORTNOTALLOWED
add esp, 12
mov dword ptr [ebp-36], -1
jmp .L_00DA
.L_00DB:
cmp dword ptr [ebp-28], 0
jne .L_00DD
push 1
push 59
push 0
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov dword ptr [ebp-36], -1
.L_00DD:
.L_00DC:
.L_00DA:
mov dword ptr [ebp-48], 0
or dword ptr [ebp-20], 1048576
.L_00CC:
cmp dword ptr [_ENV+136], 0
jne .L_00DF
cmp dword ptr [ebp-40], 0
je .L_00E1
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call _SYMBGETDEFAULTPARAMMODE
add esp, 8
mov dword ptr [ebp-16], eax
.L_00E1:
.L_00E0:
.L_00DF:
.L_00DE:
cmp dword ptr [ebp-12], -2147483648
jne .L_00E3
push dword ptr [ebp-8]
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-12], eax
.L_00E3:
.L_00E2:
cmp dword ptr [ebp-36], 0
je .L_00E5
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.L_00E5:
.L_00E4:
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_00E6
mov dword ptr [ebp-60], 24
jmp .L_010E
.L_00E6:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-60], eax
.L_010E:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
jmp .L_00E9
.L_00EB:
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_00EC
mov dword ptr [ebp-68], 24
jmp .L_010F
.L_00EC:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-68], eax
.L_010F:
mov eax, dword ptr [ebp-68]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-72]
je .L_00EF
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.L_00EF:
.L_00EE:
jmp .L_00E8
.L_00F0:
cmp dword ptr [ebp+16], 0
jne .L_00F2
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .L_00F1
.L_00F2:
cmp dword ptr [ebp-16], 1
jne .L_00F4
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.L_00F4:
.L_00F3:
.L_00F1:
jmp .L_00E8
.L_00F5:
cmp dword ptr [ebp+16], 0
jne .L_00F7
cmp dword ptr [ebp-32], 0
jle .L_00F9
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
.L_00F9:
.L_00F8:
.L_00F7:
.L_00F6:
jmp .L_00E8
.L_00E9:
cmp dword ptr [ebp-64], 20
ja .L_00E8
mov eax, dword ptr [ebp-64]
jmp dword ptr [_.L_00FA+eax*4]
_.L_00FA:
.int .L_00F0
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00EB
.int .L_00E8
.int .L_00E8
.int .L_00EB
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00EB
.int .L_00E8
.int .L_00F5
.L_00E8:
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-48]
push dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .L_00FB
mov dword ptr [ebp-56], 0
jmp .L_0111
.L_00FB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-56], eax
.L_0111:
push dword ptr [ebp-56]
push dword ptr [ebp+8]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_00FE
jmp .L_0099
.L_00FE:
.L_00FD:
cmp dword ptr [ebp+16], 0
jne .L_0100
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [_ENV+296]
sal ebx, 2
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jl .L_0102
jg .L_011A
cmp dword ptr [eax+40], esi
jbe .L_0102
.L_011A:
mov esi, dword ptr [_ENV+200]
and esi, 4
test esi, esi
je .L_0104
push 0
push 17
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMWARNING
add esp, 16
.L_0104:
.L_0103:
.L_0102:
.L_0101:
.L_0100:
.L_00FF:
call _CASSIGNTOKEN
test eax, eax
je .L_0106
cmp dword ptr [ebp-16], 3
jne .L_0108
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
jne .L_010A
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-52]
or dword ptr [eax+12], 2048
jmp .L_0109
.L_010A:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.L_0109:
jmp .L_0107
.L_0108:
push dword ptr [ebp-52]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HOPTIONALEXPR
add esp, 12
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_010C
push dword ptr [ebp-60]
push dword ptr [ebp-52]
push dword ptr [ebp+8]
call _SYMBMAKEPARAMOPTIONAL
add esp, 12
jmp .L_010B
.L_010C:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.L_010B:
.L_0107:
.L_0106:
.L_0105:
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
.L_0099:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0116,1032

.section .data
.balign 4
_Lt_0115:
.int 0

.section .bss
.balign 4
	.lcomm	_Lt_011B,64

.section .data
.balign 4
_Lt_0117:
.int _Lt_011B
.int _Lt_011B
.int 64
.int 4
.int 2
.int 50
.int 8
.int 0
.int 7
.int 2
.int 0
.int 1
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_00A2:	.ascii	"...\0"
