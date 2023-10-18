	.intel_syntax noprefix

.section .text
.balign 16

.globl _HTYPESTATICVARDECL@8
_HTYPESTATICVARDECL@8:
push ebp
mov ebp, esp
push ebx
.L_0101:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 2
test ebx, ebx
je .L_0104
push 0
push 0
push 156
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0102
.L_0104:
.L_0103:
push dword ptr [ebp+8]
call _HBEGINNESTING@4
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+120], 16384
or dword ptr [ebp+12], 19
push 0
push 306
push 0
push dword ptr [ebp+12]
call _CVARDECL@16
.L_0102:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CTYPEDECL@4
_CTYPEDECL@4:
push ebp
mov ebp, esp
sub esp, 204
push ebx
.L_017B:
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
push 0
call _LEXGETTOKEN@4
cmp eax, 337
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-136], eax
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-140], -1
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-192], eax
jmp .L_017E
.L_0180:
jmp .L_017D
.L_0181:
cmp dword ptr [ebp-136], 0
jne .L_0183
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .L_0185
push dword ptr [ebp+8]
call _CTYPEDEFMULTDECL@4
jmp .L_017C
.L_0185:
.L_0184:
.L_0183:
.L_0182:
push 0
push 0
push 14
call _ERRREPORT@12
mov dword ptr [ebp-140], 0
jmp .L_017D
.L_0186:
jmp .L_017D
.L_0187:
push 0
push 0
push 14
call _ERRREPORT@12
mov dword ptr [ebp-140], 0
jmp .L_017D
.L_017E:
cmp dword ptr [ebp-192], 2
ja .L_0187
mov eax, dword ptr [ebp-192]
jmp dword ptr [_.L_0188+eax*4]
_.L_0188:
.int .L_0180
.int .L_0181
.int .L_0186
.L_017D:
cmp dword ptr [ebp-140], 0
je .L_018A
call _CCURRENTPARENTID@0
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_018C
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .L_018E
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
jle .L_0190
push 0
push 0
push 90
call _ERRREPORT@12
.L_0190:
.L_018F:
.L_018E:
.L_018D:
.L_018C:
.L_018B:
push 0
lea ebx, [ebp-132]
push ebx
call _LEXEATTOKEN@8
jmp .L_0189
.L_018A:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 129
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
.L_0189:
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .L_0192
cmp dword ptr [ebp-136], 0
je .L_0194
push 0
push 0
push 17
call _ERRREPORT@12
.L_0194:
.L_0193:
lea eax, [ebp-132]
push eax
push dword ptr [ebp+8]
call _CTYPEDEFSINGLEDECL@8
jmp .L_017C
.L_0192:
.L_0191:
push 9
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0196
push 0
push -1
push 336
call _HSKIPCOMPOUND@12
jmp .L_017C
.L_0196:
.L_0195:
call _CALIASATTRIBUTE@0
mov dword ptr [ebp-152], eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-164], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 351
jne .L_0198
push 2048
call _LEXSKIPTOKEN@4
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
call _HSYMBOLTYPE@20
cmp dword ptr [ebp-160], 20
je .L_019B
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
je .L_019D
mov ebx, dword ptr [ebp-160]
mov dword ptr [ebp-164], ebx
mov dword ptr [ebp-160], 0
jmp .L_019C
.L_019D:
push 0
push 0
push 293
call _ERRREPORT@12
mov dword ptr [ebp-156], 0
.L_019C:
.L_019B:
.L_019A:
cmp dword ptr [ebp-164], 0
je .L_019F
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_01A1
push 0
call _LEXSKIPTOKEN@4
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
call _HSYMBOLTYPE@20
cmp dword ptr [ebp-160], 20
je .L_01A4
push 0
push 0
push 293
call _ERRREPORT@12
mov dword ptr [ebp-156], 0
.L_01A4:
.L_01A3:
.L_01A1:
.L_01A0:
.L_019F:
.L_019E:
push 0
push dword ptr [ebp-156]
push dword ptr [ebp-160]
call _SYMBISPARENTNAMESPACE@12
test eax, eax
je .L_01A6
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 0
push 24
call _ERRREPORT@12
.L_01A6:
.L_01A5:
cmp dword ptr [ebp-156], 0
je .L_01A8
cmp dword ptr [ebp-164], 4
jne .L_01AA
.L_01AB:
mov eax, dword ptr [ebp-156]
mov ebx, dword ptr [eax+120]
and ebx, 65536
test ebx, ebx
je .L_01AD
push 0
push 0
push 24
call _ERRREPORT@12
mov dword ptr [ebp-164], 7
.L_01AD:
.L_01AC:
jmp .L_01A9
.L_01AA:
cmp dword ptr [ebp-164], 7
jne .L_01AE
.L_01AF:
mov ebx, dword ptr [ebp-156]
mov eax, dword ptr [ebx+120]
and eax, 131072
test eax, eax
je .L_01B1
push 0
push 0
push 24
call _ERRREPORT@12
mov dword ptr [ebp-164], 4
.L_01B1:
.L_01B0:
jmp .L_01A9
.L_01AE:
mov eax, dword ptr [ebp-156]
mov ebx, dword ptr [eax+120]
and ebx, 131072
test ebx, ebx
je .L_01B4
mov dword ptr [ebp-164], 4
jmp .L_01B3
.L_01B4:
mov ebx, dword ptr [ebp-156]
mov eax, dword ptr [ebx+120]
and eax, 65536
test eax, eax
je .L_01B5
mov dword ptr [ebp-164], 7
.L_01B5:
.L_01B3:
.L_01B2:
.L_01A9:
.L_01A8:
.L_01A7:
.L_0198:
.L_0197:
call _CFIELDALIGNMENTATTRIBUTE@0
mov dword ptr [ebp-168], eax
push -34
push 336
call _CCOMPSTMTPUSH@8
mov eax, dword ptr [_AST+40]
mov dword ptr [ebp-172], eax
mov eax, dword ptr [_AST+132]
mov dword ptr [ebp-176], eax
mov eax, dword ptr [_PARSER+108]
mov dword ptr [ebp-180], eax
mov eax, dword ptr [_PARSER+112]
mov dword ptr [ebp-184], eax
mov eax, dword ptr [_PARSER+100]
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
call _HTYPEADD@32
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
mov dword ptr [_AST+40], eax
mov eax, dword ptr [ebp-176]
mov dword ptr [_AST+132], eax
mov eax, dword ptr [ebp-180]
mov dword ptr [_PARSER+108], eax
mov eax, dword ptr [ebp-184]
mov dword ptr [_PARSER+112], eax
mov eax, dword ptr [ebp-188]
mov dword ptr [_PARSER+100], eax
push dword ptr [ebp-144]
call _HDISALLOWNESTEDCLASSES@4
push -1
push 336
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-148], eax
cmp dword ptr [ebp-148], 0
je .L_01B7
push dword ptr [ebp-148]
call _CCOMPSTMTPOP@4
.L_01B7:
.L_01B6:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_01B9
push 0
push 0
lea ebx, [ebp-132]
push ebx
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPAT@16
mov dword ptr [ebp-192], eax
cmp dword ptr [ebp-192], 0
je .L_01BB
mov eax, dword ptr [ebp-192]
mov ebx, dword ptr [ebp-144]
cmp dword ptr [eax], ebx
je .L_01BD
push 0
push 1
push 0
lea ebx, [ebp-132]
push ebx
push 167
call _ERRREPORTEX@20
.L_01BD:
.L_01BC:
.L_01BB:
.L_01BA:
mov ebx, dword ptr [ebp-144]
mov eax, dword ptr [ebx+120]
and eax, 2048
test eax, eax
je .L_01BF
push 0
push 0
push 238
call _ERRREPORT@12
.L_01BF:
.L_01BE:
.L_01B9:
.L_01B8:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [eax+120]
and ebx, 32
test ebx, ebx
je .L_01C1
push dword ptr [ebp-144]
call _SYMBCOMPISTRIVIAL@4
test eax, eax
jne .L_01C3
push dword ptr [ebp-144]
call _HPATCHBYVALPARAMSTOSELF@4
.L_01C3:
.L_01C2:
.L_01C1:
.L_01C0:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [eax+120]
and ebx, 64
test ebx, ebx
je .L_01C5
push dword ptr [ebp-144]
call _HPATCHBYVALRESULTTOSELF@4
.L_01C5:
.L_01C4:
.L_017C:
pop ebx
mov esp, ebp
pop ebp
ret 4
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
_HBEGINNESTING@4:
push ebp
mov ebp, esp
push ebx
.L_0067:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .L_006A
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 262144
push 0
push dword ptr [ebp+8]
call _SYMBNESTBEGIN@8
.L_006A:
.L_0069:
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HTYPEPROTODECL@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_006B:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 2
test ebx, ebx
je .L_006E
push 0
push 0
push 154
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_006C
.L_006E:
.L_006D:
mov ebx, dword ptr [_ENV+1040]
and ebx, 64
test ebx, ebx
jne .L_0070
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED@12
.L_0070:
.L_006F:
push dword ptr [ebp+8]
call _HBEGINNESTING@4
push 2048
call _LEXSKIPTOKEN@4
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp+8]
call _CMETHODATTRIBUTES@12
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 347
jne .L_0072
.L_0073:
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWSTATICATTRIB@8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWVIRTUALCTOR@8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call _HDISALLOWCONSTCTORDTOR@12
jmp .L_0071
.L_0072:
cmp dword ptr [ebp-8], 348
jne .L_0074
.L_0075:
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWSTATICATTRIB@8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWABSTRACTDTOR@8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call _HDISALLOWCONSTCTORDTOR@12
jmp .L_0071
.L_0074:
cmp dword ptr [ebp-8], 350
jne .L_0076
.L_0077:
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWSTATICATTRIB@8
.L_0076:
.L_0071:
cmp dword ptr [ebp-8], 345
je .L_007A
.L_007B:
cmp dword ptr [ebp-8], 346
je .L_007A
.L_007C:
cmp dword ptr [ebp-8], 347
je .L_007A
.L_007D:
cmp dword ptr [ebp-8], 348
je .L_007A
.L_007E:
cmp dword ptr [ebp-8], 349
je .L_007A
.L_007F:
cmp dword ptr [ebp-8], 350
jne .L_0079
.L_007A:
push 2048
call _LEXSKIPTOKEN@4
push dword ptr [ebp-8]
push 3
lea eax, [ebp-4]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call _CPROCHEADER@20
jmp .L_0078
.L_0079:
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.L_0080:
.L_0078:
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HTYPEENUMDECL@12:
push ebp
mov ebp, esp
push ebx
.L_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 2
test ebx, ebx
je .L_0084
push 0
push 0
push 155
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0082
.L_0084:
.L_0083:
push dword ptr [ebp+8]
call _HBEGINNESTING@4
cmp dword ptr [ebp+12], 335
jne .L_0086
push dword ptr [ebp+16]
call _CCONSTDECL@4
jmp .L_0085
.L_0086:
push dword ptr [ebp+16]
call _CENUMDECL@4
.L_0085:
.L_0082:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HSETFIELDINITREE@8:
push ebp
mov ebp, esp
push ebx
.L_0087:
cmp dword ptr [ebp+12], 0
je .L_008A
push 12288
push dword ptr [ebp+12]
call _ASTTYPEINIUSESLOCALS@8
test eax, eax
je .L_008C
push 0
push -1
push 272
call _ERRREPORT@12
push dword ptr [ebp+12]
call _ASTDELTREE@4
mov dword ptr [ebp+12], 0
.L_008C:
.L_008B:
.L_008A:
.L_0089:
push dword ptr [ebp+12]
call _ASTFORGETBITFIELDS@4
cmp dword ptr [ebp+12], 0
je .L_008E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
.L_008E:
.L_008D:
.L_0088:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFIELDINIT@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_008F:
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
jne .L_0092
cmp dword ptr [ebp+12], 0
je .L_0094
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_0096
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
je .L_0098
push dword ptr [ebp-8]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_009A
push dword ptr [ebp-4]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_009C
push 0
push 0
push 204
call _ERRREPORT@12
.L_009C:
.L_009B:
jmp .L_0099
.L_009A:
push 0
push 0
push 183
call _ERRREPORT@12
.L_0099:
.L_0098:
.L_0097:
push dword ptr [ebp-8]
call _SYMBGETCOMPDTOR1@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_009E
push dword ptr [ebp-4]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_00A0
push 0
push 0
push 206
call _ERRREPORT@12
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_0096:
.L_0095:
.L_0094:
.L_0093:
cmp dword ptr [ebp+16], 0
je .L_00A2
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 4096
push dword ptr [ebp+8]
call _HBEGINNESTING@4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HSETFIELDINITREE@8
.L_00A2:
.L_00A1:
jmp .L_0090
.L_0092:
.L_0091:
mov eax, dword ptr [_ENV+1040]
and eax, 128
test eax, eax
jne .L_00A4
push 0
push 146
push 128
call _ERRREPORTNOTALLOWED@12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .L_0090
.L_00A4:
.L_00A3:
cmp dword ptr [ebp+12], 0
je .L_00A6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 3
test ebx, ebx
je .L_00A8
push 0
push 0
push 163
call _ERRREPORT@12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .L_0090
.L_00A8:
.L_00A7:
.L_00A6:
.L_00A5:
push 0
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp+12], 0
jne .L_00AA
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0090
.L_00AA:
.L_00A9:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+120], 4096
push 0
call _LEXGETTOKEN@4
cmp eax, 372
jne .L_00AC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_00AE
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_00AD
.L_00AE:
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx+12], 2048
.L_00AD:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0090
.L_00AC:
.L_00AB:
push dword ptr [ebp+8]
call _HBEGINNESTING@4
push 0
push -2147483648
push 1
push dword ptr [ebp+12]
call _CINITIALIZER@16
push eax
push dword ptr [ebp+12]
call _HSETFIELDINITREE@8
.L_0090:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFIELDTYPE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00AF:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSYMBOLTYPE@20
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBISPARENTNAMESPACE@12
test eax, eax
je .L_00B2
push 0
push 0
push 24
call _ERRREPORT@12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_00B3
mov dword ptr [ebp-4], 24
jmp .L_01EC
.L_00B3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-4], eax
.L_01EC:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.L_00B2:
.L_00B1:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx]
call _HCOMPLAINIFABSTRACTCLASS@8
.L_00B0:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HARRAYORBITFIELD@24:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00B5:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
push 0
push 40
call _HMATCH@8
test eax, eax
je .L_00B9
push 0
push 0
push 0
push 0
push 8
call _ASTTYPEINIBEGIN@20
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
push offset _Lt_01ED
lea eax, [ebp-4]
push eax
push dword ptr [ebp+20]
call _CARRAYDECL@12
cmp dword ptr [ebp-4], 0
je .L_00BB
push 77
push offset _Lt_01ED
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _HCOMPLAINABOUTELLIPSIS@12
push dword ptr [ebp+24]
push offset _Lt_01ED
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
push dword ptr [ebp+12]
call _HMAYBECONVERTEXPRTB2DIMTB@16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 4
je .L_00BD
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00BF
.L_00C2:
push 0
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_Lt_01EE+eax*8]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _ASTTYPEINIADDASSIGN@24
push 0
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_Lt_01EE+eax*8+4]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _ASTTYPEINIADDASSIGN@24
.L_00C0:
inc dword ptr [ebp-8]
.L_00BF:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_00C2
.L_00C1:
.L_00BD:
.L_00BC:
jmp .L_00BA
.L_00BB:
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 4
.L_00BA:
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _ASTTYPEINIEND@8
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
je .L_00C4
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
call _ASTDELTREE@4
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.L_00C4:
.L_00C3:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00C6
push 0
push 0
push 7
call _ERRREPORT@12
jmp .L_00C5
.L_00C6:
push 0
call _LEXSKIPTOKEN@4
.L_00C5:
jmp .L_00B8
.L_00B9:
cmp dword ptr [ebp+8], 310
jne .L_00C8
push 0
push 0
push 63
call _ERRREPORT@12
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_00C8:
.L_00C7:
.L_00B8:
push 0
call _LEXGETTOKEN@4
cmp eax, 258
jne .L_00CA
push 0
push 1
call _LEXGETLOOKAHEADCLASS@8
cmp eax, 3
jne .L_00CC
push 0
call _LEXSKIPTOKEN@4
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VALINT@4
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], eax
push 0
call _LEXSKIPTOKEN@4
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
je .L_00CE
push 0
push -1
push 17
call _ERRREPORT@12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 0
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
.L_00B6:
pop ebx
mov esp, ebp
pop ebp
ret 24

.section .bss
.balign 4
	.lcomm	_Lt_01EE,64

.section .data
.balign 4
_Lt_01ED:
.int _Lt_01EE
.int _Lt_01EE
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
_HADDANDINITFIELD@44:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00CF:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jle .L_00D2
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
push dword ptr [ebp+16]
call _SYMBCHECKARRAYSIZE@20
test eax, eax
jne .L_00D4
push 0
push 0
push 50
call _ERRREPORT@12
mov dword ptr [ebp+16], 1
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 0
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
cmp dword ptr [ebp+44], 0
jle .L_00D6
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+28]
push dword ptr [ebp+8]
call _SYMBCHECKBITFIELD@20
test eax, eax
jne .L_00D8
push 0
push -1
push 78
call _ERRREPORT@12
mov dword ptr [ebp+44], 0
.L_00D8:
.L_00D7:
.L_00D6:
.L_00D5:
cmp dword ptr [ebp+28], 20
jne .L_00DA
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+32], eax
jne .L_00DC
push 0
push 0
push 88
call _ERRREPORT@12
mov dword ptr [ebp+28], 8
mov dword ptr [ebp+32], 0
mov dword ptr [ebp+36], 0
mov dword ptr [ebp+40], 0
.L_00DC:
.L_00DB:
.L_00DA:
.L_00D9:
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
call _SYMBADDFIELD@40
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DE
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX@20
jmp .L_00D0
.L_00DE:
.L_00DD:
mov eax, dword ptr [ebp+48]
and eax, 4
je .L_00E0
push dword ptr [ebp-8]
call _HCOMPLAINABOUTCONSTDYNAMICARRAY@4
.L_00E0:
.L_00DF:
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HFIELDINIT@12
mov dword ptr [ebp-4], -1
.L_00D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 44
.balign 16
_HFIELDID@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E1:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00E6
.L_00E7:
cmp dword ptr [ebp-8], 1
je .L_00E6
.L_00E8:
cmp dword ptr [ebp-8], 2
jne .L_00E5
.L_00E6:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], -2147483648
je .L_00EA
push 0
push 0
push 17
call _ERRREPORT@12
.L_00EA:
.L_00E9:
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2072], 0
jle .L_00EC
push 0
push 0
push 90
call _ERRREPORT@12
.L_00EC:
.L_00EB:
push 0
call _LEXGETCLASS@4
cmp eax, 1
jne .L_00EE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .L_00F0
push 0
push 0
push 238
call _ERRREPORT@12
jmp .L_00EF
.L_00F0:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+120], 2048
.L_00EF:
.L_00EE:
.L_00ED:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_01F2
call _fb_StrAssign@20
push 0
call _LEXSKIPTOKEN@4
jmp .L_00E3
.L_00E5:
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push 129
push offset _Lt_01F2
call _fb_StrAssign@20
.L_00F1:
.L_00E3:
mov eax, offset _Lt_01F2
mov dword ptr [ebp-4], eax
.L_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01F2,129

.section .text
.balign 16
_HTYPEMULTELEMENTDECL@12:
push ebp
mov ebp, esp
sub esp, 36
.L_00F2:
push 2048
call _LEXSKIPTOKEN@4
lea eax, [ebp-32]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call _HFIELDTYPE@12
.L_00F5:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+12]
call _HFIELDID@4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
push offset _Lt_01F3
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HARRAYORBITFIELD@24
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push offset _Lt_01F3
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _HADDANDINITFIELD@44
.L_00F7:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_00F5
.L_00F6:
.L_00F3:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_01F4,128

.section .data
.balign 4
_Lt_01F3:
.int _Lt_01F4
.int _Lt_01F4
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
_HTYPEELEMENTDECL@12:
push ebp
mov ebp, esp
sub esp, 32
.L_00F8:
push dword ptr [ebp+12]
call _HFIELDID@4
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
push offset _Lt_01F5
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp+16]
push eax
push dword ptr [ebp+8]
call _HARRAYORBITFIELD@24
push 0
call _LEXGETTOKEN@4
cmp eax, 376
je .L_00FC
push 0
push 0
push 17
call _ERRREPORT@12
jmp .L_00FB
.L_00FC:
push 2048
call _LEXSKIPTOKEN@4
.L_00FB:
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call _HFIELDTYPE@12
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
push offset _Lt_01F5
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _HADDANDINITFIELD@44
.L_00F9:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_01F6,128

.section .data
.balign 4
_Lt_01F5:
.int _Lt_01F6
.int _Lt_01F6
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
_HFIELDDECLWITHEXPLICITDIM@12:
push ebp
mov ebp, esp
.L_00FD:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .L_0100
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HTYPEMULTELEMENTDECL@12
jmp .L_00FF
.L_0100:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HTYPEELEMENTDECL@12
.L_00FF:
.L_00FE:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HTYPEADD@32:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0105:
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
call _SYMBSTRUCTBEGIN@40
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0108
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX@20
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
call _SYMBUNIQUELABEL@0
push eax
push dword ptr [ebp+8]
push 0
push 0
call _SYMBSTRUCTBEGIN@40
mov dword ptr [ebp-8], eax
.L_0108:
.L_0107:
cmp dword ptr [ebp+36], 4
jne .L_010A
.L_010B:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+120], 131072
jmp .L_0109
.L_010A:
cmp dword ptr [ebp+36], 7
jne .L_010C
.L_010D:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+120], 65536
.L_010C:
.L_0109:
cmp dword ptr [ebp+32], 0
je .L_010F
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _SYMBSTRUCTADDBASE@8
.L_010F:
.L_010E:
push 0
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .L_0111
cmp dword ptr [_ENV+900], 0
jne .L_0113
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+24824]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRRESET@4
.L_0113:
.L_0112:
.L_0111:
.L_0110:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .L_0115
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL@16
.L_0115:
.L_0114:
push dword ptr [ebp-8]
call _HTYPEBODY@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-8]
call _SYMBSTRUCTEND@8
push 0
call _LEXGETTOKEN@4
cmp eax, 340
je .L_0117
push 0
push 0
push 19
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0116
.L_0117:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+20], 0
je .L_0118
mov dword ptr [ebp-12], 337
jmp .L_01F7
.L_0118:
mov dword ptr [ebp-12], 336
.L_01F7:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
je .L_011B
push 0
push 0
push 19
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_011A
.L_011B:
push 2048
call _LEXSKIPTOKEN@4
.L_011A:
.L_0116:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 32
.balign 16
_CFIELDALIGNMENTATTRIBUTE@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_011C:
push 0
call _LEXGETTOKEN@4
cmp eax, 493
je .L_011F
mov dword ptr [ebp-4], 0
jmp .L_011D
.L_011F:
.L_011E:
push 2048
call _LEXSKIPTOKEN@4
call _CASSIGNTOKEN@0
test eax, eax
jne .L_0121
push 0
push 0
push 17
call _ERRREPORT@12
.L_0121:
.L_0120:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0123
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0123:
.L_0122:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_0125
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0125:
.L_0124:
push 8
push dword ptr [ebp-8]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .L_0127
jl .L_01FC
cmp dword ptr [ebp-16], 0
jae .L_0127
.L_01FC:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .L_0126
.L_0127:
mov edx, dword ptr [_ENV+296]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-12], eax
jl .L_0128
jg .L_01FD
cmp dword ptr [ebp-16], edx
jbe .L_0128
.L_01FD:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .L_0126
.L_0128:
cmp dword ptr [ebp-12], 0
jne .L_0129
cmp dword ptr [ebp-16], 3
jne .L_0129
.L_01FE:
mov dword ptr [ebp-16], 2
mov dword ptr [ebp-12], 0
.L_0129:
.L_0126:
mov edx, dword ptr [ebp-16]
mov dword ptr [ebp-4], edx
.L_011D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HTYPEBODY@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_012A:
mov dword ptr [ebp-8], 0
.L_012C:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-16], eax
jmp .L_0130
.L_0132:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
je .L_0134
push 0
push 0
push 17
call _ERRREPORT@12
.L_0134:
.L_0133:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 378
jne .L_0137
.L_0138:
mov dword ptr [ebp-8], 0
jmp .L_0135
.L_0137:
cmp dword ptr [ebp-20], 379
jne .L_0139
.L_013A:
mov dword ptr [ebp-8], 2097152
jmp .L_0135
.L_0139:
cmp dword ptr [ebp-20], 380
jne .L_013B
.L_013C:
mov dword ptr [ebp-8], 4194304
.L_013B:
.L_0135:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 258
je .L_013E
push 0
push 0
push 203
call _ERRREPORT@12
.L_013E:
.L_013D:
jmp .L_012F
.L_013F:
push 0
call _CCOMMENT@4
jmp .L_012F
.L_0140:
push 0
call _LEXSKIPTOKEN@4
jmp .L_012E
jmp .L_012F
.L_0141:
jmp .L_012D
jmp .L_012F
.L_0142:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 376
je .L_0146
.L_0147:
cmp dword ptr [ebp-20], 40
je .L_0146
.L_0148:
cmp dword ptr [ebp-20], 258
jne .L_0145
.L_0146:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL@12
jmp .L_0143
.L_0145:
jmp .L_012D
.L_0149:
.L_0143:
jmp .L_012F
.L_014A:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-20], eax
jmp .L_014C
.L_014E:
.L_014F:
push 0
call _LEXGETTOKEN@4
cmp eax, 337
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
cmp ebx, eax
jne .L_0151
push 0
push 0
push 17
call _ERRREPORT@12
not dword ptr [ebp-4]
.L_0151:
.L_0150:
push 2048
call _LEXSKIPTOKEN@4
call _CFIELDALIGNMENTATTRIBUTE@0
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0153
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+125]
mov dword ptr [ebp-24], ebx
.L_0153:
.L_0152:
push 0
push 0
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push dword ptr [ebp+8]
call _HTYPEADD@32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-4], 0
je .L_0155
mov eax, dword ptr [ebp-12]
or dword ptr [eax+120], 1
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 8192
.L_0155:
.L_0154:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-28], ebx
.L_0156:
cmp dword ptr [ebp-28], 0
je .L_0157
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-28], ebx
jmp .L_0156
.L_0157:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _SYMBINSERTINNERUDT@8
jmp .L_014B
.L_0158:
push 0
push 2
call _LEXGETLOOKAHEADCLASS@8
cmp eax, 3
je .L_015A
jmp .L_014F
.L_015A:
.L_0159:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL@12
jmp .L_014B
.L_015B:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL@12
jmp .L_014B
.L_015C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_015D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_01FF
.L_015D:
mov dword ptr [ebp-24], 0
.L_01FF:
cmp dword ptr [ebp-24], 0
je .L_0160
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL@12
jmp .L_015F
.L_0160:
push dword ptr [ebp+8]
call _HBEGINNESTING@4
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+120], 262144
push dword ptr [ebp-8]
call _CTYPEDECL@4
.L_015F:
jmp .L_014B
.L_014C:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967040
cmp ebx, 237
ja .L_015C
mov ebx, dword ptr [ebp-20]
jmp dword ptr [_.L_0161+ebx*4-1024]
_.L_0161:
.int .L_014E
.int .L_014E
.int .L_0158
.int .L_014E
.int .L_014E
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015B
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_015C
.int .L_014E
.L_014B:
jmp .L_012F
.L_0162:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEMULTELEMENTDECL@12
jmp .L_012F
.L_0163:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HTYPEPROTODECL@8
jmp .L_012F
.L_0164:
push dword ptr [ebp-8]
push 0
call _LEXGETTOKEN@4
push eax
push dword ptr [ebp+8]
call _HTYPEENUMDECL@12
jmp .L_012F
.L_0165:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HFIELDDECLWITHEXPLICITDIM@12
jmp .L_012F
.L_0166:
mov eax, dword ptr [ebp-8]
or eax, 4
push eax
push dword ptr [ebp+8]
push 310
call _HFIELDDECLWITHEXPLICITDIM@12
jmp .L_012F
.L_0167:
push 2048
call _LEXSKIPTOKEN@4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HTYPESTATICVARDECL@8
jmp .L_012F
.L_0168:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL@12
jmp .L_012F
.L_0130:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 124
ja .L_0168
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0169+eax*4-1024]
_.L_0169:
.int .L_0141
.int .L_0140
.int .L_0168
.int .L_013F
.int .L_013F
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0167
.int .L_0165
.int .L_0168
.int .L_0166
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0163
.int .L_0164
.int .L_014A
.int .L_014A
.int .L_0164
.int .L_0168
.int .L_0142
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0162
.int .L_0168
.int .L_0132
.int .L_0132
.int .L_0132
.L_012F:
push 0
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .L_016B
cmp dword ptr [_ENV+900], 0
jne .L_016D
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+24824]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRRESET@4
.L_016D:
.L_016C:
.L_016B:
.L_016A:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .L_016F
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL@16
.L_016F:
.L_016E:
.L_012E:
jmp .L_012C
.L_012D:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
test eax, eax
jne .L_0171
push 0
push 0
push 256
call _ERRREPORT@12
.L_0171:
.L_0170:
.L_012B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDISALLOWNESTEDCLASSES@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0172:
cmp dword ptr [_PARSER+100], 0
jbe .L_0175
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_0176:
cmp dword ptr [ebp-4], 0
je .L_0177
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .L_0179
push 0
push 1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
push 263
call _ERRREPORTEX@20
jmp .L_0178
.L_0179:
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
je .L_017A
push 0
push 1
push 0
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+16]
push 264
call _ERRREPORTEX@20
.L_017A:
.L_0178:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-4], eax
jmp .L_0176
.L_0177:
.L_0175:
.L_0174:
.L_0173:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPATCHBYVALPARAMSTOSELF@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_01C9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_01CB:
cmp dword ptr [ebp-4], 0
je .L_01CC
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .L_01CE
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
.L_01CF:
cmp dword ptr [ebp-8], 0
je .L_01D0
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
jne .L_01D2
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _SYMBISPARENTNAMESPACE@12
test eax, eax
je .L_01D4
push dword ptr [ebp-8]
call _SYMBRECALCLEN@4
.L_01D4:
.L_01D3:
.L_01D2:
.L_01D1:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .L_01CF
.L_01D0:
.L_01CE:
.L_01CD:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-4], eax
jmp .L_01CB
.L_01CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 262144
test ebx, ebx
je .L_01D6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
.L_01D7:
cmp dword ptr [ebp-4], 0
je .L_01D8
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 10
jne .L_01DA
push dword ptr [ebp-4]
call _HPATCHBYVALPARAMSTOSELF@4
.L_01DA:
.L_01D9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
jmp .L_01D7
.L_01D8:
.L_01D6:
.L_01D5:
.L_01CA:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPATCHBYVALRESULTTOSELF@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_01DD:
cmp dword ptr [ebp-4], 0
je .L_01DE
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
jne .L_01E0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _SYMBISPARENTNAMESPACE@12
test eax, eax
je .L_01E2
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 3
jne .L_01E4
push dword ptr [ebp-4]
call _SYMBPROCRECALCREALTYPE@4
jmp .L_01E3
.L_01E4:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .L_01E5
push dword ptr [ebp-4]
call _SYMBRECALCLEN@4
.L_01E5:
.L_01E3:
.L_01E2:
.L_01E1:
.L_01E0:
.L_01DF:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
jmp .L_01DD
.L_01DE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+120]
and eax, 262144
test eax, eax
je .L_01E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_01E8:
cmp dword ptr [ebp-4], 0
je .L_01E9
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 10
jne .L_01EB
push dword ptr [ebp-4]
call _HPATCHBYVALRESULTTOSELF@4
.L_01EB:
.L_01EA:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-4], eax
jmp .L_01E8
.L_01E9:
.L_01E7:
.L_01E6:
.L_01DC:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
