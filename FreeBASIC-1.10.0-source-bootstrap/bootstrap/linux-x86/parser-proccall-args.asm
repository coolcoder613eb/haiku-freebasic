	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERPROCCALLINIT
PARSERPROCCALLINIT:
.type PARSERPROCCALLINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
push 6
push 12
push 128
lea eax, [PARSER+116]
push eax
call LISTINIT
add esp, 16
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERPROCCALLINIT, .-PARSERPROCCALLINIT
.cfi_endproc
.balign 16

.globl PARSERPROCCALLEND
PARSERPROCCALLEND:
.type PARSERPROCCALLEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0068:
sub esp, 12
lea eax, [PARSER+116]
push eax
call LISTEND
add esp, 16
.L_0069:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERPROCCALLEND, .-PARSERPROCCALLEND
.cfi_endproc
.balign 16

.globl CPROCARGLIST
CPROCARGLIST:
.type CPROCARGLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00E7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jle .L_00EA
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+108], 0
je .L_00EC
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HOVLPROCARGLIST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_00EE
sub esp, 12
push 0
push 1
push 0
sub esp, 4
push dword ptr [ebp+12]
call SYMBGETFULLPROCNAME
add esp, 8
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_00EF
mov dword ptr [ebp-40], 205
jmp .L_0120
.L_00EF:
mov dword ptr [ebp-40], 202
.L_0120:
push dword ptr [ebp-40]
call ERRREPORTEX
add esp, 32
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00EE:
.L_00ED:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_00F2
mov ebx, dword ptr [ebp+24]
and ebx, 64
test ebx, ebx
jne .L_00F4
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00F6
sub esp, 4
push 0
push -1
push 214
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00F6:
.L_00F5:
sub esp, 4
push -1
push dword ptr [ebp+20]
lea eax, [PARSER+116]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.L_00F4:
.L_00F3:
sub esp, 4
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call HGETVTABLELOOKUPIFNEEDED
add esp, 16
mov dword ptr [ebp+16], eax
jmp .L_00F1
.L_00F2:
mov eax, dword ptr [ebp+24]
and eax, 64
test eax, eax
je .L_00F8
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
sub esp, 12
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call ASTDELTREE
add esp, 16
sub esp, 8
push dword ptr [ebp-36]
lea ebx, [PARSER+116]
push ebx
call LISTDELNODE
add esp, 16
.L_00F8:
.L_00F7:
.L_00F1:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWCALL
add esp, 16
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
.L_00F9:
cmp dword ptr [ebp-36], 0
je .L_00FA
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-36]
push dword ptr [eax+4]
push -2147483648
mov eax, dword ptr [ebp-36]
push dword ptr [eax]
push dword ptr [ebp-28]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FC
sub esp, 12
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00FC:
.L_00FB:
sub esp, 8
push dword ptr [ebp-36]
lea eax, [PARSER+116]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
dec dword ptr [ebp-12]
jmp .L_00F9
.L_00FA:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp-12], 0
jne .L_00FE
mov ebx, dword ptr [ebp+24]
and ebx, 16
test ebx, ebx
jne .L_0100
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0102
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0104
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
jmp .L_0103
.L_0104:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0103:
.L_0102:
.L_0101:
.L_0100:
.L_00FF:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00FE:
.L_00FD:
mov eax, dword ptr [ebp+24]
and eax, 32
test eax, eax
jne .L_0106
.L_0107:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jl .L_010B
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
je .L_010D
sub esp, 4
push 0
push 0
push 1
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .L_010F
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_010E
.L_010F:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_010E:
dec dword ptr [ebp-8]
jmp .L_0108
.L_010D:
.L_010C:
.L_010B:
.L_010A:
sub esp, 4
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
call HPROCARG
add esp, 32
test eax, eax
jne .L_0111
jmp .L_0108
.L_0111:
.L_0110:
push dword ptr [ebp-16]
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0113
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .L_0115
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0114
.L_0115:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_0114:
sub esp, 12
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_0113:
.L_0112:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .L_0117
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
.L_0117:
.L_0116:
.L_0109:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_0107
.L_0108:
.L_0106:
.L_0105:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 16
.L_0118:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .L_0119
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
jne .L_011B
jmp .L_0119
.L_011B:
.L_011A:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+64], 0
jne .L_011D
sub esp, 4
push 0
push 0
push 1
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_011D:
.L_011C:
push -1
push -2147483648
push 0
push dword ptr [ebp-28]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_011F
sub esp, 12
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_011F:
.L_011E:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
jmp .L_0118
.L_0119:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-4], ebx
.L_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCARGLIST, .-CPROCARGLIST
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
HPROCARG:
.type HPROCARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_006A:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 319
jne .L_006D
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
.L_006D:
.L_006C:
mov eax, dword ptr [PARSER+160]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [PARSER+160], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [PARSER+156], eax
mov dword ptr [PARSER+164], 0
call CEXPRESSION
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [PARSER+164]
or dword ptr [eax], ebx
jmp .L_006F
or dword ptr [PARSER+152], 1
jmp .L_006E
.L_006F:
and dword ptr [PARSER+152], -2
.L_006E:
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 0
jne .L_0071
mov ebx, dword ptr [ebp+32]
and ebx, 16
test ebx, ebx
je .L_0073
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
jmp .L_0072
.L_0073:
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
je .L_0075
sub esp, 8
push 2048
push 319
call HMATCH
add esp, 16
test eax, eax
je .L_0077
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
call CEXPRESSION
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.L_0077:
.L_0076:
.L_0075:
.L_0074:
.L_0072:
.L_0071:
.L_0070:
mov eax, dword ptr [ebp-16]
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_0079
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
jne .L_007B
cmp dword ptr [ebp-8], 4
jne .L_007D
jmp .L_006B
.L_007D:
.L_007C:
sub esp, 4
push 0
push 0
push 1
call ERRREPORT
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
push ecx
call ASTNEWCONSTZ
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.L_007B:
.L_007A:
jmp .L_0078
.L_0079:
cmp dword ptr [ebp-8], 3
jne .L_007F
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0081
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .L_0083
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .L_0085
sub esp, 4
push 0
push 0
push 22
call ERRREPORT
add esp, 16
.L_0085:
.L_0084:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 3
.L_0083:
.L_0082:
.L_0081:
.L_0080:
.L_007F:
.L_007E:
.L_0078:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .L_0087
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
cmp dword ptr [eax], ecx
je .L_0089
cmp dword ptr [ebp-8], 4
je .L_008B
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx], 1
je .L_008D
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ecx], eax
je .L_008F
sub esp, 4
push 0
push 0
push 22
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax], ecx
.L_008F:
.L_008E:
.L_008D:
.L_008C:
.L_008B:
.L_008A:
.L_0089:
.L_0088:
.L_0087:
.L_0086:
mov dword ptr [ebp-4], -1
.L_006B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPROCARG, .-HPROCARG
.cfi_endproc
.balign 16
HOVLPROCARG:
.type HOVLPROCARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0090:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], -1
sub esp, 8
push 2048
push 319
call HMATCH
add esp, 16
test eax, eax
je .L_0093
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
.L_0093:
.L_0092:
mov eax, dword ptr [PARSER+160]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-8], eax
mov dword ptr [PARSER+160], 0
mov dword ptr [PARSER+156], -2147483648
mov dword ptr [PARSER+164], 0
call CEXPRESSION
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0095
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .L_0097
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .L_0096
.L_0097:
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
je .L_0099
sub esp, 8
push 2048
push 319
call HMATCH
add esp, 16
test eax, eax
je .L_009B
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
call CEXPRESSION
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.L_009B:
.L_009A:
.L_0099:
.L_0098:
.L_0096:
.L_0095:
.L_0094:
mov eax, dword ptr [ebp-4]
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [PARSER+164]
or dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
je .L_009D
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_009F
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .L_00A1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], -1
je .L_00A3
sub esp, 4
push 0
push 0
push 22
call ERRREPORT
add esp, 16
.L_00A3:
.L_00A2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 3
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_0091:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HOVLPROCARG, .-HOVLPROCARG
.cfi_endproc
.balign 16
HMAYBEWARNABOUTEQOUTSIDEPARENS:
.type HMAYBEWARNABOUTEQOUTSIDEPARENS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00A4:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_00A7
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 1
test eax, eax
jle .L_00A9
.L_00AA:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp+16], ebx
cmp dword ptr [ebp+16], 0
jne .L_00AE
jmp .L_00AB
.L_00AE:
.L_00AD:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00AC:
cmp dword ptr [ebp-4], 0
je .L_00AA
.L_00AB:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
and dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00B0
push 0
push 1
push 0
push 34
call ERRREPORTWARN
add esp, 16
.L_00B0:
.L_00AF:
.L_00A5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAYBEWARNABOUTEQOUTSIDEPARENS, .-HMAYBEWARNABOUTEQOUTSIDEPARENS
.cfi_endproc
.balign 16
HGETVTABLELOOKUPIFNEEDED:
.type HGETVTABLELOOKUPIFNEEDED, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B1:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
and eax, 2048
je .L_00B4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .L_00B6
sub esp, 4
push 0
push 0
push 307
call ERRREPORT
add esp, 16
.L_00B6:
.L_00B5:
jmp .L_00B3
.L_00B4:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVTABLELOOKUP
add esp, 16
mov dword ptr [ebp-4], eax
.L_00B3:
.L_00B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETVTABLELOOKUPIFNEEDED, .-HGETVTABLELOOKUPIFNEEDED
.cfi_endproc
.balign 16
HOVLPROCARGLIST:
.type HOVLPROCARGLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_00B7:
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
je .L_00BA
dec dword ptr [ebp-16]
.L_00BA:
.L_00B9:
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .L_00BC
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-56], eax
.L_00BD:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jle .L_00C1
sub esp, 4
push 0
push 0
push 1
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .L_00C3
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00C2
.L_00C3:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_00C2:
dec dword ptr [ebp-16]
jmp .L_00BE
.L_00C1:
.L_00C0:
sub esp, 4
push 0
push dword ptr [ebp+16]
lea eax, [PARSER+116]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-36], eax
push dword ptr [ebp+20]
lea eax, [ebp-20]
push eax
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-16]
sub eax, dword ptr [ebp-56]
push eax
call HOVLPROCARG
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_00C5
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 0
je .L_00C7
inc dword ptr [ebp-16]
.L_00C7:
.L_00C6:
jmp .L_00BE
.L_00C5:
.L_00C4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [ebp-16]
.L_00BF:
jmp .L_00BD
.L_00BE:
.L_00BC:
.L_00BB:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 16
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00C9
mov ebx, dword ptr [ebp+20]
and ebx, 128
test ebx, ebx
je .L_00CB
mov dword ptr [ebp-48], 1
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
sub esp, 12
push dword ptr [ebp-48]
lea ebx, [ebp-44]
push ebx
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
je .L_00CC
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-52], ebx
jmp .L_012A
.L_00CC:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-52], eax
.L_012A:
push dword ptr [ebp-52]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call SYMBFINDCLOSESTOVLPROC
add esp, 32
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00CF
sub esp, 8
push dword ptr [ebp+16]
lea eax, [PARSER+116]
push eax
call SYMBFREEOVLCALLARGS
add esp, 16
cmp dword ptr [ebp-44], 0
jne .L_00D1
mov dword ptr [ebp-44], 99
.L_00D1:
.L_00D0:
push dword ptr [ebp-44]
push 0
push 0
push dword ptr [ebp+12]
call ERRREPORTPARAM
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B8
.L_00CF:
.L_00CE:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp+12], eax
sub esp, 12
push dword ptr [ebp+12]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_00D3
sub esp, 12
push 0
push 1
push 0
sub esp, 4
push dword ptr [ebp+12]
call SYMBGETFULLPROCNAME
add esp, 8
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_00D4
mov dword ptr [ebp-56], 205
jmp .L_012B
.L_00D4:
mov dword ptr [ebp-56], 202
.L_012B:
push dword ptr [ebp-56]
call ERRREPORTEX
add esp, 32
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B8
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_00D7
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
jne .L_00D9
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00DB
sub esp, 4
push 0
push -1
push 214
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B8
.L_00DB:
.L_00DA:
sub esp, 4
push -1
push dword ptr [ebp+16]
lea eax, [PARSER+116]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.L_00D9:
.L_00D8:
inc dword ptr [ebp-16]
sub esp, 4
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call HGETVTABLELOOKUPIFNEEDED
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_00D6
.L_00D7:
mov eax, dword ptr [ebp+20]
and eax, 64
test eax, eax
je .L_00DD
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
sub esp, 12
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call ASTDELTREE
add esp, 16
sub esp, 8
push dword ptr [ebp-36]
lea ebx, [PARSER+116]
push ebx
call LISTDELNODE
add esp, 16
.L_00DD:
.L_00DC:
mov dword ptr [ebp-24], 0
.L_00D6:
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call ASTNEWCALL
add esp, 16
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
jmp .L_00DF
.L_00E2:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
push dword ptr [ebp-24]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E4
sub esp, 4
push 0
push 0
push 22
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B8
.L_00E4:
.L_00E3:
sub esp, 8
push dword ptr [ebp-36]
lea eax, [PARSER+116]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_00E0:
inc dword ptr [ebp-8]
.L_00DF:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-8], ebx
jle .L_00E2
.L_00E1:
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-12], eax
.L_00E5:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jge .L_00E6
push -1
push -2147483648
push 0
push dword ptr [ebp-24]
call ASTNEWARG
add esp, 16
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
jmp .L_00E5
.L_00E6:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
.L_00B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HOVLPROCARGLIST, .-HOVLPROCARGLIST
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
