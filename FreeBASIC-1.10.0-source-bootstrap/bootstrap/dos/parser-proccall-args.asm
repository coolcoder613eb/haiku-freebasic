	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERPROCCALLINIT
_PARSERPROCCALLINIT:
.L_0067:
push 6
push 12
push 128
lea eax, [_PARSER+116]
push eax
call _LISTINIT
add esp, 16
.L_0068:
ret
.balign 16

.globl _PARSERPROCCALLEND
_PARSERPROCCALLEND:
.L_0069:
lea eax, [_PARSER+116]
push eax
call _LISTEND
add esp, 4
.L_006A:
ret
.balign 16

.globl _CPROCARGLIST
_CPROCARGLIST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00E8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jle .L_00EB
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+108], 0
je .L_00ED
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HOVLPROCARGLIST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00ED:
.L_00EC:
.L_00EB:
.L_00EA:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00EF
push 0
push 1
push 0
push dword ptr [ebp+12]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_00F0
mov dword ptr [ebp-40], 205
jmp .L_0121
.L_00F0:
mov dword ptr [ebp-40], 202
.L_0121:
push dword ptr [ebp-40]
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00EF:
.L_00EE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_00F3
mov ebx, dword ptr [ebp+24]
and ebx, 64
test ebx, ebx
jne .L_00F5
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00F7
push 0
push -1
push 214
call _ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00F7:
.L_00F6:
push -1
push dword ptr [ebp+20]
lea eax, [_PARSER+116]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call _ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.L_00F5:
.L_00F4:
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call _HGETVTABLELOOKUPIFNEEDED
add esp, 12
mov dword ptr [ebp+16], eax
jmp .L_00F2
.L_00F3:
mov eax, dword ptr [ebp+24]
and eax, 64
test eax, eax
je .L_00F9
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-36]
lea ebx, [_PARSER+116]
push ebx
call _LISTDELNODE
add esp, 8
.L_00F9:
.L_00F8:
.L_00F2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-36], ebx
.L_00FA:
cmp dword ptr [ebp-36], 0
je .L_00FB
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-36]
push dword ptr [eax+4]
push -2147483648
mov eax, dword ptr [ebp-36]
push dword ptr [eax]
push dword ptr [ebp-28]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FD
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00FD:
.L_00FC:
push dword ptr [ebp-36]
lea eax, [_PARSER+116]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
dec dword ptr [ebp-12]
jmp .L_00FA
.L_00FB:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp-12], 0
jne .L_00FF
mov ebx, dword ptr [ebp+24]
and ebx, 16
test ebx, ebx
jne .L_0101
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0103
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0105
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
jmp .L_0104
.L_0105:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0104:
.L_0103:
.L_0102:
.L_0101:
.L_0100:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00FF:
.L_00FE:
mov eax, dword ptr [ebp+24]
and eax, 32
test eax, eax
jne .L_0107
.L_0108:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jl .L_010C
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
je .L_010E
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .L_0110
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_010F
.L_0110:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.L_010F:
dec dword ptr [ebp-8]
jmp .L_0109
.L_010E:
.L_010D:
.L_010C:
.L_010B:
push dword ptr [ebp+24]
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-32]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _HPROCARG
add esp, 28
test eax, eax
jne .L_0112
jmp .L_0109
.L_0112:
.L_0111:
push dword ptr [ebp-16]
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0114
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .L_0116
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0115
.L_0116:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.L_0115:
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_0114:
.L_0113:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .L_0118
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
.L_0118:
.L_0117:
.L_010A:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_0108
.L_0109:
.L_0107:
.L_0106:
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call _HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 12
.L_0119:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .L_011A
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
jne .L_011C
jmp .L_011A
.L_011C:
.L_011B:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+64], 0
jne .L_011E
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_011E:
.L_011D:
push -1
push -2147483648
push 0
push dword ptr [ebp-28]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0120
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_0120:
.L_011F:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
jmp .L_0119
.L_011A:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-4], ebx
.L_00E9:
mov eax, dword ptr [ebp-4]
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
_HPROCARG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 319
jne .L_006E
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
.L_006E:
.L_006D:
mov eax, dword ptr [_PARSER+160]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [_PARSER+160], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [_PARSER+156], eax
mov dword ptr [_PARSER+164], 0
call _CEXPRESSION
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [_PARSER+164]
or dword ptr [eax], ebx
jmp .L_0070
or dword ptr [_PARSER+152], 1
jmp .L_006F
.L_0070:
and dword ptr [_PARSER+152], -2
.L_006F:
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 0
jne .L_0072
mov ebx, dword ptr [ebp+32]
and ebx, 16
test ebx, ebx
je .L_0074
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
jmp .L_0073
.L_0074:
mov ebx, dword ptr [ebp+16]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [eax]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0076
push 2048
push 319
call _HMATCH
add esp, 8
test eax, eax
je .L_0078
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
call _CEXPRESSION
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.L_0078:
.L_0077:
.L_0076:
.L_0075:
.L_0073:
.L_0072:
.L_0071:
mov eax, dword ptr [ebp-16]
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_007A
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
jne .L_007C
cmp dword ptr [ebp-8], 4
jne .L_007E
jmp .L_006C
.L_007E:
.L_007D:
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
push ecx
call _ASTNEWCONSTZ
add esp, 8
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.L_007C:
.L_007B:
jmp .L_0079
.L_007A:
cmp dword ptr [ebp-8], 3
jne .L_0080
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0082
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .L_0084
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .L_0086
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
.L_0086:
.L_0085:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 3
.L_0084:
.L_0083:
.L_0082:
.L_0081:
.L_0080:
.L_007F:
.L_0079:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .L_0088
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
cmp dword ptr [eax], ecx
je .L_008A
cmp dword ptr [ebp-8], 4
je .L_008C
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx], 1
je .L_008E
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ecx], eax
je .L_0090
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax], ecx
.L_0090:
.L_008F:
.L_008E:
.L_008D:
.L_008C:
.L_008B:
.L_008A:
.L_0089:
.L_0088:
.L_0087:
mov dword ptr [ebp-4], -1
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOVLPROCARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0091:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], -1
push 2048
push 319
call _HMATCH
add esp, 8
test eax, eax
je .L_0094
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
.L_0094:
.L_0093:
mov eax, dword ptr [_PARSER+160]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-8], eax
mov dword ptr [_PARSER+160], 0
mov dword ptr [_PARSER+156], -2147483648
mov dword ptr [_PARSER+164], 0
call _CEXPRESSION
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0096
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .L_0098
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .L_0097
.L_0098:
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_009A
push 2048
push 319
call _HMATCH
add esp, 8
test eax, eax
je .L_009C
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
call _CEXPRESSION
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.L_009C:
.L_009B:
.L_009A:
.L_0099:
.L_0097:
.L_0096:
.L_0095:
mov eax, dword ptr [ebp-4]
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [_PARSER+164]
or dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
je .L_009E
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_00A0
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .L_00A2
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], -1
je .L_00A4
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
.L_00A4:
.L_00A3:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 3
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_0092:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEWARNABOUTEQOUTSIDEPARENS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00A5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_00A8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 1
test eax, eax
jle .L_00AA
.L_00AB:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp+16], ebx
cmp dword ptr [ebp+16], 0
jne .L_00AF
jmp .L_00AC
.L_00AF:
.L_00AE:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00AD:
cmp dword ptr [ebp-4], 0
je .L_00AB
.L_00AC:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
and dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00B1
push 0
push 1
push 0
push 34
call _ERRREPORTWARN
add esp, 16
.L_00B1:
.L_00B0:
.L_00A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETVTABLELOOKUPIFNEEDED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
and eax, 2048
je .L_00B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .L_00B7
push 0
push 0
push 307
call _ERRREPORT
add esp, 12
.L_00B7:
.L_00B6:
jmp .L_00B4
.L_00B5:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVTABLELOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
.L_00B4:
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOVLPROCARGLIST:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_00B8:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+106]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+20]
and eax, 64
test eax, eax
je .L_00BB
dec dword ptr [ebp-16]
.L_00BB:
.L_00BA:
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .L_00BD
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-56], eax
.L_00BE:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jle .L_00C2
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .L_00C4
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_00C3
.L_00C4:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.L_00C3:
dec dword ptr [ebp-16]
jmp .L_00BF
.L_00C2:
.L_00C1:
push 0
push dword ptr [ebp+16]
lea eax, [_PARSER+116]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push dword ptr [ebp+20]
lea eax, [ebp-20]
push eax
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-16]
sub eax, dword ptr [ebp-56]
push eax
call _HOVLPROCARG
add esp, 16
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00C6
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 0
je .L_00C8
inc dword ptr [ebp-16]
.L_00C8:
.L_00C7:
jmp .L_00BF
.L_00C6:
.L_00C5:
push 0
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-16]
.L_00C0:
jmp .L_00BE
.L_00BF:
.L_00BD:
.L_00BC:
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 12
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00CA
mov ebx, dword ptr [ebp+20]
and ebx, 128
test ebx, ebx
je .L_00CC
mov dword ptr [ebp-48], 1
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
push dword ptr [ebp-48]
lea ebx, [ebp-44]
push ebx
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
je .L_00CD
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-52], ebx
jmp .L_012B
.L_00CD:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-52], eax
.L_012B:
push dword ptr [ebp-52]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00D0
push dword ptr [ebp+16]
lea eax, [_PARSER+116]
push eax
call _SYMBFREEOVLCALLARGS
add esp, 8
cmp dword ptr [ebp-44], 0
jne .L_00D2
mov dword ptr [ebp-44], 99
.L_00D2:
.L_00D1:
push dword ptr [ebp-44]
push 0
push 0
push dword ptr [ebp+12]
call _ERRREPORTPARAM
add esp, 16
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00B9
.L_00D0:
.L_00CF:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp+12], eax
push dword ptr [ebp+12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00D4
push 0
push 1
push 0
push dword ptr [ebp+12]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_00D5
mov dword ptr [ebp-56], 205
jmp .L_012C
.L_00D5:
mov dword ptr [ebp-56], 202
.L_012C:
push dword ptr [ebp-56]
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00B9
.L_00D4:
.L_00D3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_00D8
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
jne .L_00DA
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00DC
push 0
push -1
push 214
call _ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00B9
.L_00DC:
.L_00DB:
push -1
push dword ptr [ebp+16]
lea eax, [_PARSER+116]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call _ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.L_00DA:
.L_00D9:
inc dword ptr [ebp-16]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call _HGETVTABLELOOKUPIFNEEDED
add esp, 12
mov dword ptr [ebp-24], eax
jmp .L_00D7
.L_00D8:
mov eax, dword ptr [ebp+20]
and eax, 64
test eax, eax
je .L_00DE
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-36]
lea ebx, [_PARSER+116]
push ebx
call _LISTDELNODE
add esp, 8
.L_00DE:
.L_00DD:
mov dword ptr [ebp-24], 0
.L_00D7:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-56], eax
jmp .L_00E0
.L_00E3:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
push dword ptr [ebp-24]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E5
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00B9
.L_00E5:
.L_00E4:
push dword ptr [ebp-36]
lea eax, [_PARSER+116]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_00E1:
inc dword ptr [ebp-8]
.L_00E0:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-8], ebx
jle .L_00E3
.L_00E2:
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-12], eax
.L_00E6:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jge .L_00E7
push -1
push -2147483648
push 0
push dword ptr [ebp-24]
call _ASTNEWARG
add esp, 16
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
jmp .L_00E6
.L_00E7:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
.L_00B9:
mov eax, dword ptr [ebp-4]
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
