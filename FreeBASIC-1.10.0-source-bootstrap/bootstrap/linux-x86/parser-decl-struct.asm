	.intel_syntax noprefix

.section .text
.balign 16

.globl HTYPESTATICVARDECL
HTYPESTATICVARDECL:
.type HTYPESTATICVARDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0100:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .L_0103
sub esp, 4
push 0
push 0
push 156
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0101
.L_0103:
.L_0102:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 16384
or dword ptr [ebp+12], 19
push 0
push 306
push 0
push dword ptr [ebp+12]
call CVARDECL
add esp, 16
.L_0101:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTYPESTATICVARDECL, .-HTYPESTATICVARDECL
.cfi_endproc
.balign 16

.globl CTYPEDECL
CTYPEDECL:
.type CTYPEDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 212
push ebx
.L_017A:
lea eax, [ebp-132]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 337
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-136], eax
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-140], -1
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-192], eax
jmp .L_017D
.L_017F:
jmp .L_017C
.L_0180:
cmp dword ptr [ebp-136], 0
jne .L_0182
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_0184
sub esp, 12
push dword ptr [ebp+8]
call CTYPEDEFMULTDECL
add esp, 16
jmp .L_017B
.L_0184:
.L_0183:
.L_0182:
.L_0181:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-140], 0
jmp .L_017C
.L_0185:
jmp .L_017C
.L_0186:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-140], 0
jmp .L_017C
.L_017D:
cmp dword ptr [ebp-192], 2
ja .L_0186
mov eax, dword ptr [ebp-192]
jmp dword ptr [.L_0187+eax*4]
.L_0187:
.int .L_017F
.int .L_0180
.int .L_0185
.L_017C:
cmp dword ptr [ebp-140], 0
je .L_0189
call CCURRENTPARENTID
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_018B
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_018D
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_018F
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.L_018F:
.L_018E:
.L_018D:
.L_018C:
.L_018B:
.L_018A:
sub esp, 8
push 0
lea ebx, [ebp-132]
push ebx
call LEXEATTOKEN
add esp, 16
jmp .L_0188
.L_0189:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 129
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 32
.L_0188:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_0191
cmp dword ptr [ebp-136], 0
je .L_0193
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0193:
.L_0192:
sub esp, 8
lea eax, [ebp-132]
push eax
push dword ptr [ebp+8]
call CTYPEDEFSINGLEDECL
add esp, 16
jmp .L_017B
.L_0191:
.L_0190:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0195
sub esp, 4
push 0
push -1
push 336
call HSKIPCOMPOUND
add esp, 16
jmp .L_017B
.L_0195:
.L_0194:
call CALIASATTRIBUTE
mov dword ptr [ebp-152], eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-164], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 351
jne .L_0197
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-196]
push eax
lea eax, [ebp-156]
push eax
lea eax, [ebp-160]
push eax
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-160], 20
je .L_019A
mov eax, dword ptr [ebp-160]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-160]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_019C
mov ebx, dword ptr [ebp-160]
mov dword ptr [ebp-164], ebx
mov dword ptr [ebp-160], 0
jmp .L_019B
.L_019C:
sub esp, 4
push 0
push 0
push 293
call ERRREPORT
add esp, 16
mov dword ptr [ebp-156], 0
.L_019B:
.L_019A:
.L_0199:
cmp dword ptr [ebp-164], 0
je .L_019E
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .L_01A0
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
push 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-204]
push eax
lea eax, [ebp-156]
push eax
lea eax, [ebp-160]
push eax
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-160], 20
je .L_01A3
sub esp, 4
push 0
push 0
push 293
call ERRREPORT
add esp, 16
mov dword ptr [ebp-156], 0
.L_01A3:
.L_01A2:
.L_01A0:
.L_019F:
.L_019E:
.L_019D:
sub esp, 4
push 0
push dword ptr [ebp-156]
push dword ptr [ebp-160]
call SYMBISPARENTNAMESPACE
add esp, 16
test eax, eax
je .L_01A5
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_01A5:
.L_01A4:
cmp dword ptr [ebp-156], 0
je .L_01A7
cmp dword ptr [ebp-164], 4
jne .L_01A9
.L_01AA:
mov eax, dword ptr [ebp-156]
mov ebx, dword ptr [eax+116]
and ebx, 65536
test ebx, ebx
je .L_01AC
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-164], 7
.L_01AC:
.L_01AB:
jmp .L_01A8
.L_01A9:
cmp dword ptr [ebp-164], 7
jne .L_01AD
.L_01AE:
mov ebx, dword ptr [ebp-156]
mov eax, dword ptr [ebx+116]
and eax, 131072
test eax, eax
je .L_01B0
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-164], 4
.L_01B0:
.L_01AF:
jmp .L_01A8
.L_01AD:
mov eax, dword ptr [ebp-156]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .L_01B3
mov dword ptr [ebp-164], 4
jmp .L_01B2
.L_01B3:
mov ebx, dword ptr [ebp-156]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .L_01B4
mov dword ptr [ebp-164], 7
.L_01B4:
.L_01B2:
.L_01B1:
.L_01A8:
.L_01A7:
.L_01A6:
.L_0197:
.L_0196:
call CFIELDALIGNMENTATTRIBUTE
mov dword ptr [ebp-168], eax
sub esp, 8
push -34
push 336
call CCOMPSTMTPUSH
add esp, 16
mov eax, dword ptr [AST+40]
mov dword ptr [ebp-172], eax
mov eax, dword ptr [AST+132]
mov dword ptr [ebp-176], eax
mov eax, dword ptr [PARSER+108]
mov dword ptr [ebp-180], eax
mov eax, dword ptr [PARSER+112]
mov dword ptr [ebp-184], eax
mov eax, dword ptr [PARSER+100]
mov dword ptr [ebp-188], eax
push dword ptr [ebp-164]
push dword ptr [ebp-156]
push dword ptr [ebp-160]
push dword ptr [ebp-168]
push dword ptr [ebp-136]
push dword ptr [ebp-152]
lea eax, [ebp-132]
push eax
push 0
call HTYPEADD
add esp, 32
mov dword ptr [ebp-144], eax
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [ebp+8]
and ebx, 2097152
or dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-144]
mov eax, dword ptr [ebp+8]
and eax, 4194304
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-172]
mov dword ptr [AST+40], eax
mov eax, dword ptr [ebp-176]
mov dword ptr [AST+132], eax
mov eax, dword ptr [ebp-180]
mov dword ptr [PARSER+108], eax
mov eax, dword ptr [ebp-184]
mov dword ptr [PARSER+112], eax
mov eax, dword ptr [ebp-188]
mov dword ptr [PARSER+100], eax
sub esp, 12
push dword ptr [ebp-144]
call HDISALLOWNESTEDCLASSES
add esp, 16
sub esp, 8
push -1
push 336
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-148], eax
cmp dword ptr [ebp-148], 0
je .L_01B6
sub esp, 12
push dword ptr [ebp-148]
call CCOMPSTMTPOP
add esp, 16
.L_01B6:
.L_01B5:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_01B8
push 0
push 0
lea ebx, [ebp-132]
push ebx
push dword ptr [SYMB+98528]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-192], eax
cmp dword ptr [ebp-192], 0
je .L_01BA
mov eax, dword ptr [ebp-192]
mov ebx, dword ptr [ebp-144]
cmp dword ptr [eax], ebx
je .L_01BC
sub esp, 12
push 0
push 1
push 0
lea ebx, [ebp-132]
push ebx
push 167
call ERRREPORTEX
add esp, 32
.L_01BC:
.L_01BB:
.L_01BA:
.L_01B9:
mov ebx, dword ptr [ebp-144]
mov eax, dword ptr [ebx+116]
and eax, 2048
test eax, eax
je .L_01BE
sub esp, 4
push 0
push 0
push 238
call ERRREPORT
add esp, 16
.L_01BE:
.L_01BD:
.L_01B8:
.L_01B7:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [eax+116]
and ebx, 32
test ebx, ebx
je .L_01C0
sub esp, 12
push dword ptr [ebp-144]
call SYMBCOMPISTRIVIAL
add esp, 16
test eax, eax
jne .L_01C2
sub esp, 12
push dword ptr [ebp-144]
call HPATCHBYVALPARAMSTOSELF
add esp, 16
.L_01C2:
.L_01C1:
.L_01C0:
.L_01BF:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [eax+116]
and ebx, 64
test ebx, ebx
je .L_01C4
sub esp, 12
push dword ptr [ebp-144]
call HPATCHBYVALRESULTTOSELF
add esp, 16
.L_01C4:
.L_01C3:
.L_017B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CTYPEDECL, .-CTYPEDECL
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
HBEGINNESTING:
.type HBEGINNESTING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0066:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .L_0069
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 262144
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 16
.L_0069:
.L_0068:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBEGINNESTING, .-HBEGINNESTING
.cfi_endproc
.balign 16
HTYPEPROTODECL:
.type HTYPEPROTODECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_006A:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .L_006D
sub esp, 4
push 0
push 0
push 154
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_006B
.L_006D:
.L_006C:
mov ebx, dword ptr [ENV+1040]
and ebx, 64
test ebx, ebx
jne .L_006F
sub esp, 4
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 16
.L_006F:
.L_006E:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 4
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp+8]
call CMETHODATTRIBUTES
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 347
jne .L_0071
.L_0072:
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWVIRTUALCTOR
add esp, 16
sub esp, 4
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call HDISALLOWCONSTCTORDTOR
add esp, 16
jmp .L_0070
.L_0071:
cmp dword ptr [ebp-8], 348
jne .L_0073
.L_0074:
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWABSTRACTDTOR
add esp, 16
sub esp, 4
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call HDISALLOWCONSTCTORDTOR
add esp, 16
jmp .L_0070
.L_0073:
cmp dword ptr [ebp-8], 350
jne .L_0075
.L_0076:
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
.L_0075:
.L_0070:
cmp dword ptr [ebp-8], 345
je .L_0079
.L_007A:
cmp dword ptr [ebp-8], 346
je .L_0079
.L_007B:
cmp dword ptr [ebp-8], 347
je .L_0079
.L_007C:
cmp dword ptr [ebp-8], 348
je .L_0079
.L_007D:
cmp dword ptr [ebp-8], 349
je .L_0079
.L_007E:
cmp dword ptr [ebp-8], 350
jne .L_0078
.L_0079:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
push 3
lea eax, [ebp-4]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call CPROCHEADER
add esp, 32
jmp .L_0077
.L_0078:
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
.L_007F:
.L_0077:
.L_006B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTYPEPROTODECL, .-HTYPEPROTODECL
.cfi_endproc
.balign 16
HTYPEENUMDECL:
.type HTYPEENUMDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0080:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .L_0083
sub esp, 4
push 0
push 0
push 155
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0081
.L_0083:
.L_0082:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
cmp dword ptr [ebp+12], 335
jne .L_0085
sub esp, 12
push dword ptr [ebp+16]
call CCONSTDECL
add esp, 16
jmp .L_0084
.L_0085:
sub esp, 12
push dword ptr [ebp+16]
call CENUMDECL
add esp, 16
.L_0084:
.L_0081:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTYPEENUMDECL, .-HTYPEENUMDECL
.cfi_endproc
.balign 16
HSETFIELDINITREE:
.type HSETFIELDINITREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0086:
cmp dword ptr [ebp+12], 0
je .L_0089
sub esp, 8
push 12288
push dword ptr [ebp+12]
call ASTTYPEINIUSESLOCALS
add esp, 16
test eax, eax
je .L_008B
sub esp, 4
push 0
push -1
push 272
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp+12], 0
.L_008B:
.L_008A:
.L_0089:
.L_0088:
sub esp, 12
push dword ptr [ebp+12]
call ASTFORGETBITFIELDS
add esp, 16
cmp dword ptr [ebp+12], 0
je .L_008D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
.L_008D:
.L_008C:
.L_0087:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETFIELDINITREE, .-HSETFIELDINITREE
.cfi_endproc
.balign 16
HFIELDINIT:
.type HFIELDINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_008E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
jne .L_0091
cmp dword ptr [ebp+12], 0
je .L_0093
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_0095
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .L_0097
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0099
sub esp, 12
push dword ptr [ebp-4]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_009B
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.L_009B:
.L_009A:
jmp .L_0098
.L_0099:
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.L_0098:
.L_0097:
.L_0096:
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETCOMPDTOR1
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_009D
sub esp, 12
push dword ptr [ebp-4]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_009F
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_0095:
.L_0094:
.L_0093:
.L_0092:
cmp dword ptr [ebp+16], 0
je .L_00A1
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 4096
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HSETFIELDINITREE
add esp, 16
.L_00A1:
.L_00A0:
jmp .L_008F
.L_0091:
.L_0090:
mov eax, dword ptr [ENV+1040]
and eax, 128
test eax, eax
jne .L_00A3
sub esp, 4
push 0
push 146
push 128
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_008F
.L_00A3:
.L_00A2:
cmp dword ptr [ebp+12], 0
je .L_00A5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 3
test ebx, ebx
je .L_00A7
sub esp, 4
push 0
push 0
push 163
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_008F
.L_00A7:
.L_00A6:
.L_00A5:
.L_00A4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+12], 0
jne .L_00A9
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_008F
.L_00A9:
.L_00A8:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 4096
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .L_00AB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_00AD
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_00AC
.L_00AD:
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx+12], 2048
.L_00AC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_008F
.L_00AB:
.L_00AA:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
sub esp, 8
sub esp, 8
push 0
push -2147483648
push 1
push dword ptr [ebp+12]
call CINITIALIZER
add esp, 24
push eax
push dword ptr [ebp+12]
call HSETFIELDINITREE
add esp, 16
.L_008F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFIELDINIT, .-HFIELDINIT
.cfi_endproc
.balign 16
HFIELDTYPE:
.type HFIELDTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00AE:
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSYMBOLTYPE
add esp, 32
sub esp, 4
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBISPARENTNAMESPACE
add esp, 16
test eax, eax
je .L_00B1
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_00B2
mov dword ptr [ebp-4], 24
jmp .L_01EB
.L_00B2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-4], eax
.L_01EB:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.L_00B1:
.L_00B0:
sub esp, 8
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.L_00AF:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFIELDTYPE, .-HFIELDTYPE
.cfi_endproc
.balign 16
HARRAYORBITFIELD:
.type HARRAYORBITFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00B4:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .L_00B8
sub esp, 12
push 0
push 0
push 0
push 0
push 8
call ASTTYPEINIBEGIN
add esp, 32
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
sub esp, 4
push offset Lt_01EC
lea eax, [ebp-4]
push eax
push dword ptr [ebp+20]
call CARRAYDECL
add esp, 16
cmp dword ptr [ebp-4], 0
je .L_00BA
sub esp, 4
push 77
push offset Lt_01EC
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call HCOMPLAINABOUTELLIPSIS
add esp, 16
push dword ptr [ebp+24]
push offset Lt_01EC
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
push dword ptr [ebp+12]
call HMAYBECONVERTEXPRTB2DIMTB
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 4
je .L_00BC
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00BE
.L_00C1:
sub esp, 8
push 0
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [Lt_01ED+eax*8]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 8
push 0
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [Lt_01ED+eax*8+4]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call ASTTYPEINIADDASSIGN
add esp, 32
.L_00BF:
inc dword ptr [ebp-8]
.L_00BE:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_00C1
.L_00C0:
.L_00BC:
.L_00BB:
jmp .L_00B9
.L_00BA:
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 4
.L_00B9:
sub esp, 8
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-4]
not eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
and ecx, 4
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_00C3
sub esp, 12
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
call ASTDELTREE
add esp, 16
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.L_00C3:
.L_00C2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00C5
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .L_00C4
.L_00C5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00C4:
jmp .L_00B7
.L_00B8:
cmp dword ptr [ebp+8], 310
jne .L_00C7
sub esp, 4
push 0
push 0
push 63
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_00C7:
.L_00C6:
.L_00B7:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
jne .L_00C9
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 16
cmp eax, 3
jne .L_00CB
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
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
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
test ecx, ecx
setle cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_00CD
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 0
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
.L_00B5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HARRAYORBITFIELD, .-HARRAYORBITFIELD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01ED,64

.section .data
.balign 4
Lt_01EC:
.int Lt_01ED
.int Lt_01ED
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

.section .text
.balign 16
HADDANDINITFIELD:
.type HADDANDINITFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00CE:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jle .L_00D1
sub esp, 12
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
push dword ptr [ebp+16]
call SYMBCHECKARRAYSIZE
add esp, 32
test eax, eax
jne .L_00D3
sub esp, 4
push 0
push 0
push 50
call ERRREPORT
add esp, 16
mov dword ptr [ebp+16], 1
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 0
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
cmp dword ptr [ebp+44], 0
jle .L_00D5
sub esp, 12
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+28]
push dword ptr [ebp+8]
call SYMBCHECKBITFIELD
add esp, 32
test eax, eax
jne .L_00D7
sub esp, 4
push 0
push -1
push 78
call ERRREPORT
add esp, 16
mov dword ptr [ebp+44], 0
.L_00D7:
.L_00D6:
.L_00D5:
.L_00D4:
cmp dword ptr [ebp+28], 20
jne .L_00D9
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+32], eax
jne .L_00DB
sub esp, 4
push 0
push 0
push 88
call ERRREPORT
add esp, 16
mov dword ptr [ebp+28], 8
mov dword ptr [ebp+32], 0
mov dword ptr [ebp+36], 0
mov dword ptr [ebp+40], 0
.L_00DB:
.L_00DA:
.L_00D9:
.L_00D8:
sub esp, 8
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDFIELD
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DD
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
jmp .L_00CF
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp+48]
and eax, 4
je .L_00DF
sub esp, 12
push dword ptr [ebp-8]
call HCOMPLAINABOUTCONSTDYNAMICARRAY
add esp, 16
.L_00DF:
.L_00DE:
sub esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HFIELDINIT
add esp, 16
mov dword ptr [ebp-4], -1
.L_00CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDANDINITFIELD, .-HADDANDINITFIELD
.cfi_endproc
.balign 16
HFIELDID:
.type HFIELDID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E0:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00E5
.L_00E6:
cmp dword ptr [ebp-8], 1
je .L_00E5
.L_00E7:
cmp dword ptr [ebp-8], 2
jne .L_00E4
.L_00E5:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .L_00E9
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_00E9:
.L_00E8:
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4120], 0
jle .L_00EB
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.L_00EB:
.L_00EA:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 1
jne .L_00ED
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_00EF
sub esp, 4
push 0
push 0
push 238
call ERRREPORT
add esp, 16
jmp .L_00EE
.L_00EF:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 2048
.L_00EE:
.L_00ED:
.L_00EC:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_01F1
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_00E2
.L_00E4:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 129
push offset Lt_01F1
call fb_StrAssign
add esp, 32
.L_00F0:
.L_00E2:
mov eax, offset Lt_01F1
mov dword ptr [ebp-4], eax
.L_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFIELDID, .-HFIELDID
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01F1,129

.section .text
.balign 16
HTYPEMULTELEMENTDECL:
.type HTYPEMULTELEMENTDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_00F1:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 4
lea eax, [ebp-32]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call HFIELDTYPE
add esp, 16
.L_00F4:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp+12]
call HFIELDID
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
lea eax, [ebp-36]
push eax
push offset Lt_01F2
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HARRAYORBITFIELD
add esp, 32
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push offset Lt_01F2
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call HADDANDINITFIELD
add esp, 48
.L_00F6:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_00F4
.L_00F5:
.L_00F2:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTYPEMULTELEMENTDECL, .-HTYPEMULTELEMENTDECL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01F3,128

.section .data
.balign 4
Lt_01F2:
.int Lt_01F3
.int Lt_01F3
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
HTYPEELEMENTDECL:
.type HTYPEELEMENTDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_00F7:
sub esp, 12
push dword ptr [ebp+12]
call HFIELDID
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
lea eax, [ebp-32]
push eax
push offset Lt_01F4
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp+16]
push eax
push dword ptr [ebp+8]
call HARRAYORBITFIELD
add esp, 32
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
je .L_00FB
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .L_00FA
.L_00FB:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_00FA:
sub esp, 4
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call HFIELDTYPE
add esp, 16
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
push offset Lt_01F4
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call HADDANDINITFIELD
add esp, 48
.L_00F8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTYPEELEMENTDECL, .-HTYPEELEMENTDECL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01F5,128

.section .data
.balign 4
Lt_01F4:
.int Lt_01F5
.int Lt_01F5
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
HFIELDDECLWITHEXPLICITDIM:
.type HFIELDDECLWITHEXPLICITDIM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00FC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_00FF
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HTYPEMULTELEMENTDECL
add esp, 16
jmp .L_00FE
.L_00FF:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HTYPEELEMENTDECL
add esp, 16
.L_00FE:
.L_00FD:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFIELDDECLWITHEXPLICITDIM, .-HFIELDDECLWITHEXPLICITDIM
.cfi_endproc
.balign 16
HTYPEADD:
.type HTYPEADD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0104:
sub esp, 8
push 0
push 0
cmp dword ptr [ebp+32], 0
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0107
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
sub esp, 8
push 0
push 0
cmp dword ptr [ebp+32], 0
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
call SYMBUNIQUELABEL
push eax
push dword ptr [ebp+8]
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-8], eax
.L_0107:
.L_0106:
cmp dword ptr [ebp+36], 4
jne .L_0109
.L_010A:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 131072
jmp .L_0108
.L_0109:
cmp dword ptr [ebp+36], 7
jne .L_010B
.L_010C:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 65536
.L_010B:
.L_0108:
cmp dword ptr [ebp+32], 0
je .L_010E
sub esp, 8
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call SYMBSTRUCTADDBASE
add esp, 16
.L_010E:
.L_010D:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .L_0110
cmp dword ptr [ENV+900], 0
jne .L_0112
sub esp, 12
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 16
.L_0112:
.L_0111:
.L_0110:
.L_010F:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .L_0114
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.L_0114:
.L_0113:
sub esp, 12
push dword ptr [ebp-8]
call HTYPEBODY
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-8]
call SYMBSTRUCTEND
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 340
je .L_0116
sub esp, 4
push 0
push 0
push 19
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0115
.L_0116:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+20], 0
je .L_0117
mov dword ptr [ebp-12], 337
jmp .L_01F6
.L_0117:
mov dword ptr [ebp-12], 336
.L_01F6:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
je .L_011A
sub esp, 4
push 0
push 0
push 19
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0119
.L_011A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0119:
.L_0115:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0105:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTYPEADD, .-HTYPEADD
.cfi_endproc
.balign 16
CFIELDALIGNMENTATTRIBUTE:
.type CFIELDALIGNMENTATTRIBUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_011B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 493
je .L_011E
mov dword ptr [ebp-4], 0
jmp .L_011C
.L_011E:
.L_011D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CASSIGNTOKEN
test eax, eax
jne .L_0120
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0120:
.L_011F:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0122
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0122:
.L_0121:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_0124
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0124:
.L_0123:
sub esp, 8
push 8
push dword ptr [ebp-8]
call ASTCONSTFLUSHTOINT
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .L_0126
jl .L_01FB
cmp dword ptr [ebp-16], 0
jae .L_0126
.L_01FB:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .L_0125
.L_0126:
mov edx, dword ptr [ENV+296]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-12], eax
jl .L_0127
jg .L_01FC
cmp dword ptr [ebp-16], edx
jbe .L_0127
.L_01FC:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .L_0125
.L_0127:
cmp dword ptr [ebp-12], 0
jne .L_0128
cmp dword ptr [ebp-16], 3
jne .L_0128
.L_01FD:
mov dword ptr [ebp-16], 2
mov dword ptr [ebp-12], 0
.L_0128:
.L_0125:
mov edx, dword ptr [ebp-16]
mov dword ptr [ebp-4], edx
.L_011C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CFIELDALIGNMENTATTRIBUTE, .-CFIELDALIGNMENTATTRIBUTE
.cfi_endproc
.balign 16
HTYPEBODY:
.type HTYPEBODY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0129:
mov dword ptr [ebp-8], 0
.L_012B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_012F
.L_0131:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .L_0133
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0133:
.L_0132:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 378
jne .L_0136
.L_0137:
mov dword ptr [ebp-8], 0
jmp .L_0134
.L_0136:
cmp dword ptr [ebp-20], 379
jne .L_0138
.L_0139:
mov dword ptr [ebp-8], 2097152
jmp .L_0134
.L_0138:
cmp dword ptr [ebp-20], 380
jne .L_013A
.L_013B:
mov dword ptr [ebp-8], 4194304
.L_013A:
.L_0134:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
je .L_013D
sub esp, 4
push 0
push 0
push 203
call ERRREPORT
add esp, 16
.L_013D:
.L_013C:
jmp .L_012E
.L_013E:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
jmp .L_012E
.L_013F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_012D
jmp .L_012E
.L_0140:
jmp .L_012C
jmp .L_012E
.L_0141:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 376
je .L_0145
.L_0146:
cmp dword ptr [ebp-20], 40
je .L_0145
.L_0147:
cmp dword ptr [ebp-20], 258
jne .L_0144
.L_0145:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .L_0142
.L_0144:
jmp .L_012C
.L_0148:
.L_0142:
jmp .L_012E
.L_0149:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_014B
.L_014D:
.L_014E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 337
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
cmp ebx, eax
jne .L_0150
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
not dword ptr [ebp-4]
.L_0150:
.L_014F:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CFIELDALIGNMENTATTRIBUTE
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0152
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
mov dword ptr [ebp-24], ebx
.L_0152:
.L_0151:
push 0
push 0
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push 0
sub esp, 4
push 0
call SYMBUNIQUEID
add esp, 8
push eax
push dword ptr [ebp+8]
call HTYPEADD
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-4], 0
je .L_0154
mov eax, dword ptr [ebp-12]
or dword ptr [eax+116], 1
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 8192
.L_0154:
.L_0153:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-28], ebx
.L_0155:
cmp dword ptr [ebp-28], 0
je .L_0156
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
jmp .L_0155
.L_0156:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call SYMBINSERTINNERUDT
add esp, 16
jmp .L_014A
.L_0157:
sub esp, 8
push 0
push 2
call LEXGETLOOKAHEADCLASS
add esp, 16
cmp eax, 3
je .L_0159
jmp .L_014E
.L_0159:
.L_0158:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .L_014A
.L_015A:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .L_014A
.L_015B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_015C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_01FE
.L_015C:
mov dword ptr [ebp-24], 0
.L_01FE:
cmp dword ptr [ebp-24], 0
je .L_015F
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .L_015E
.L_015F:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 262144
sub esp, 12
push dword ptr [ebp-8]
call CTYPEDECL
add esp, 16
.L_015E:
jmp .L_014A
.L_014B:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967040
cmp ebx, 237
ja .L_015B
mov ebx, dword ptr [ebp-20]
jmp dword ptr [.L_0160+ebx*4-1024]
.L_0160:
.int .L_014D
.int .L_014D
.int .L_0157
.int .L_014D
.int .L_014D
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015A
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_015B
.int .L_014D
.L_014A:
jmp .L_012E
.L_0161:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEMULTELEMENTDECL
add esp, 16
jmp .L_012E
.L_0162:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HTYPEPROTODECL
add esp, 16
jmp .L_012E
.L_0163:
sub esp, 4
push dword ptr [ebp-8]
sub esp, 4
push 0
call LEXGETTOKEN
add esp, 8
push eax
push dword ptr [ebp+8]
call HTYPEENUMDECL
add esp, 16
jmp .L_012E
.L_0164:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HFIELDDECLWITHEXPLICITDIM
add esp, 16
jmp .L_012E
.L_0165:
sub esp, 4
mov eax, dword ptr [ebp-8]
or eax, 4
push eax
push dword ptr [ebp+8]
push 310
call HFIELDDECLWITHEXPLICITDIM
add esp, 16
jmp .L_012E
.L_0166:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HTYPESTATICVARDECL
add esp, 16
jmp .L_012E
.L_0167:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .L_012E
.L_012F:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 124
ja .L_0167
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0168+eax*4-1024]
.L_0168:
.int .L_0140
.int .L_013F
.int .L_0167
.int .L_013E
.int .L_013E
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0166
.int .L_0164
.int .L_0167
.int .L_0165
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0162
.int .L_0163
.int .L_0149
.int .L_0149
.int .L_0163
.int .L_0167
.int .L_0141
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0161
.int .L_0167
.int .L_0131
.int .L_0131
.int .L_0131
.L_012E:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .L_016A
cmp dword ptr [ENV+900], 0
jne .L_016C
sub esp, 12
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 16
.L_016C:
.L_016B:
.L_016A:
.L_0169:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .L_016E
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.L_016E:
.L_016D:
.L_012D:
jmp .L_012B
.L_012C:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
test eax, eax
jne .L_0170
sub esp, 4
push 0
push 0
push 256
call ERRREPORT
add esp, 16
.L_0170:
.L_016F:
.L_012A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTYPEBODY, .-HTYPEBODY
.cfi_endproc
.balign 16
HDISALLOWNESTEDCLASSES:
.type HDISALLOWNESTEDCLASSES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0171:
cmp dword ptr [PARSER+100], 0
jbe .L_0174
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_0175:
cmp dword ptr [ebp-4], 0
je .L_0176
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .L_0178
sub esp, 12
push 0
push 1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
push 263
call ERRREPORTEX
add esp, 32
jmp .L_0177
.L_0178:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 16
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0179
sub esp, 12
push 0
push 1
push 0
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+16]
push 264
call ERRREPORTEX
add esp, 32
.L_0179:
.L_0177:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .L_0175
.L_0176:
.L_0174:
.L_0173:
.L_0172:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDISALLOWNESTEDCLASSES, .-HDISALLOWNESTEDCLASSES
.cfi_endproc
.balign 16
HPATCHBYVALPARAMSTOSELF:
.type HPATCHBYVALPARAMSTOSELF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_01C8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_01CA:
cmp dword ptr [ebp-4], 0
je .L_01CB
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .L_01CD
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
.L_01CE:
cmp dword ptr [ebp-8], 0
je .L_01CF
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
jne .L_01D1
sub esp, 4
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call SYMBISPARENTNAMESPACE
add esp, 16
test eax, eax
je .L_01D3
sub esp, 12
push dword ptr [ebp-8]
call SYMBRECALCLEN
add esp, 16
.L_01D3:
.L_01D2:
.L_01D1:
.L_01D0:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_01CE
.L_01CF:
.L_01CD:
.L_01CC:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .L_01CA
.L_01CB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 262144
test ebx, ebx
je .L_01D5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
.L_01D6:
cmp dword ptr [ebp-4], 0
je .L_01D7
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 10
jne .L_01D9
sub esp, 12
push dword ptr [ebp-4]
call HPATCHBYVALPARAMSTOSELF
add esp, 16
.L_01D9:
.L_01D8:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_01D6
.L_01D7:
.L_01D5:
.L_01D4:
.L_01C9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPATCHBYVALPARAMSTOSELF, .-HPATCHBYVALPARAMSTOSELF
.cfi_endproc
.balign 16
HPATCHBYVALRESULTTOSELF:
.type HPATCHBYVALRESULTTOSELF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_01DA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_01DC:
cmp dword ptr [ebp-4], 0
je .L_01DD
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
jne .L_01DF
sub esp, 4
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call SYMBISPARENTNAMESPACE
add esp, 16
test eax, eax
je .L_01E1
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 3
jne .L_01E3
sub esp, 12
push dword ptr [ebp-4]
call SYMBPROCRECALCREALTYPE
add esp, 16
jmp .L_01E2
.L_01E3:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_01E4
sub esp, 12
push dword ptr [ebp-4]
call SYMBRECALCLEN
add esp, 16
.L_01E4:
.L_01E2:
.L_01E1:
.L_01E0:
.L_01DF:
.L_01DE:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_01DC
.L_01DD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+116]
and eax, 262144
test eax, eax
je .L_01E6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_01E7:
cmp dword ptr [ebp-4], 0
je .L_01E8
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 10
jne .L_01EA
sub esp, 12
push dword ptr [ebp-4]
call HPATCHBYVALRESULTTOSELF
add esp, 16
.L_01EA:
.L_01E9:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .L_01E7
.L_01E8:
.L_01E6:
.L_01E5:
.L_01DB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPATCHBYVALRESULTTOSELF, .-HPATCHBYVALRESULTTOSELF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
