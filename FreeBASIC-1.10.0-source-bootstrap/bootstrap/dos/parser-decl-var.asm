	.intel_syntax noprefix

.section .text
.balign 16

.globl _HCOMPLAINIFABSTRACTCLASS
_HCOMPLAINIFABSTRACTCLASS:
push ebp
mov ebp, esp
.L_0068:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .L_006B
push dword ptr [ebp+12]
call _SYMBCOMPGETABSTRACTCOUNT
add esp, 4
test eax, eax
jle .L_006D
push 0
push 0
push 306
call _ERRREPORT
add esp, 12
.L_006D:
.L_006C:
.L_006B:
.L_006A:
.L_0069:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HMAYBECOMPLAINTYPEUSAGE
_HMAYBECOMPLAINTYPEUSAGE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 20
jne .L_0072
.L_0073:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _SYMBCHECKACCESSSTRUCT
add esp, 4
test eax, eax
jne .L_0075
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0076
mov dword ptr [ebp-8], 24
jmp .L_0078
.L_0076:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0078:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.L_0075:
.L_0074:
.L_0072:
.L_0070:
.L_006F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCOMPLAINABOUTCONSTDYNAMICARRAY
_HCOMPLAINABOUTCONSTDYNAMICARRAY:
push ebp
mov ebp, esp
push ebx
.L_0079:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 512
test ebx, ebx
je .L_007C
push 0
push 0
push 275
call _ERRREPORT
add esp, 12
.L_007C:
.L_007B:
.L_007A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSYMBOLTYPE
_HSYMBOLTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_007D:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp+20], 0
je .L_0080
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.L_0080:
.L_007F:
cmp dword ptr [ebp+24], 0
je .L_0082
and dword ptr [ebp-4], -2
.L_0082:
.L_0081:
push dword ptr [ebp-4]
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_0085
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0086
mov dword ptr [ebp-12], 24
jmp .L_0090
.L_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0090:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.L_0085:
.L_0084:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 0
jne .L_0089
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .L_008A
mov dword ptr [ebp-12], 24
jmp .L_0091
.L_008A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0091:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov dword ptr [ebx+4], eax
.L_0089:
.L_0088:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 32505856
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_008D
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 32505856
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 480
je .L_008E
mov dword ptr [ebp-12], 24
jmp .L_0092
.L_008E:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0092:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
.L_008D:
.L_008C:
.L_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCHECKSCOPE
_HCHECKSCOPE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0095:
cmp dword ptr [_PARSER+100], 0
jbe .L_0098
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_009A
push 0
push 0
push 61
call _ERRREPORT
add esp, 12
jmp .L_0099
.L_009A:
push 0
push 0
push 96
call _ERRREPORT
add esp, 12
.L_0099:
mov dword ptr [ebp-4], 0
jmp .L_0097
.L_0098:
mov dword ptr [ebp-4], -1
.L_0097:
.L_0096:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARIABLEDECL
_CVARIABLEDECL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_009B:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_009E
.L_00A0:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00A2
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009C
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .L_00A4
push 0
push 0
push 216
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -33
.L_00A4:
.L_00A3:
push 2048
call _LEXSKIPTOKEN
add esp, 4
or dword ptr [ebp+8], 4
push 2048
push 313
call _HMATCH
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_009D
.L_00A5:
or dword ptr [ebp+8], 10
or dword ptr [ebp+8], 4
call _HCHECKSCOPE
test eax, eax
jne .L_00A7
and dword ptr [ebp+8], -9
.L_00A7:
.L_00A6:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .L_00A9
push 0
push 0
push 216
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -33
.L_00A9:
.L_00A8:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_009D
.L_00AA:
cmp dword ptr [ebp+8], 0
jne .L_00AC
push 0
push 1
call _LEXGETLOOKAHEADCLASS
add esp, 8
cmp eax, 4
jne .L_00AE
mov dword ptr [ebp-4], 0
jmp .L_009C
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
or dword ptr [ebp+8], 16
or dword ptr [ebp+8], 3
call _HCHECKSCOPE
test eax, eax
jne .L_00B0
and dword ptr [ebp+8], -18
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .L_00B2
push 0
push 0
push 216
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -33
.L_00B2:
.L_00B1:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_009D
.L_00B3:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00B5
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009C
.L_00B5:
.L_00B4:
push 2048
call _LEXSKIPTOKEN
add esp, 4
or dword ptr [ebp+8], 2
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 309
jne .L_00B7
push dword ptr [ebp+8]
call _CAUTOVARDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_009C
.L_00B7:
.L_00B6:
jmp .L_009D
.L_00B8:
push dword ptr [ebp+8]
call _CAUTOVARDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_009C
jmp .L_009D
.L_00B9:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00BB
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009C
.L_00BB:
.L_00BA:
push 4096
call _LEXSKIPTOKEN
add esp, 4
jmp .L_009D
.L_009E:
mov eax, dword ptr [ebp-16]
add eax, 4294966990
cmp eax, 5
ja .L_00B9
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_00BC+eax*4-1224]
_.L_00BC:
.int .L_00AA
.int .L_00B3
.int .L_00B9
.int .L_00B8
.int .L_00A0
.int .L_00A5
.L_009D:
cmp dword ptr [_ENV+1096], 0
je .L_00BE
or dword ptr [ebp+8], 4
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+8]
and eax, 16
test eax, eax
jne .L_00C0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 312
jne .L_00C2
call _HCHECKSCOPE
test eax, eax
jne .L_00C4
or dword ptr [ebp+8], 2
jmp .L_00C3
.L_00C4:
or dword ptr [ebp+8], 3
.L_00C3:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.L_00C2:
.L_00C1:
jmp .L_00BF
.L_00C0:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 342
jne .L_00C6
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_00CA
.L_00CB:
cmp dword ptr [ebp-16], 1
jne .L_00C9
.L_00CA:
or dword ptr [ebp+8], 512
.L_00C9:
.L_00C7:
.L_00C6:
.L_00C5:
.L_00BF:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .L_00CD
or dword ptr [ebp+8], 2
.L_00CD:
.L_00CC:
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _CVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
.L_009C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HMAYBECONVERTEXPRTB2DIMTB
_HMAYBECONVERTEXPRTB2DIMTB:
push ebp
mov ebp, esp
push ebx
.L_016C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HEXPRTBISCONST
add esp, 8
test eax, eax
je .L_016F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 4
test ebx, ebx
jne .L_0171
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HMAKEARRAYDIMTB
add esp, 12
.L_0171:
.L_0170:
jmp .L_016E
.L_016F:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 4
.L_016E:
.L_016D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCOMPLAINABOUTELLIPSIS
_HCOMPLAINABOUTELLIPSIS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0172:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_0175
.L_0178:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .L_017A
push 0
push 0
push dword ptr [ebp+16]
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+12]
add ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.L_017A:
.L_0179:
.L_0176:
inc dword ptr [ebp-4]
.L_0175:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_0178
.L_0177:
.L_0173:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARDECL
_CVARDECL:
push ebp
mov ebp, esp
sub esp, 120
push ebx
mov dword ptr [ebp-4], 0
.L_0222:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_0227
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_0229
or dword ptr [ebp+8], 3
.L_0229:
.L_0228:
.L_0227:
.L_0226:
push 2048
push 320
call _HMATCH
add esp, 8
mov dword ptr [ebp-96], eax
mov dword ptr [ebp-40], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_022B
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp-96]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HSYMBOLTYPE
add esp, 20
cmp dword ptr [ebp-96], 0
jne .L_022D
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.L_022D:
.L_022C:
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HMAYBECOMPLAINTYPEUSAGE
add esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], -1
cmp dword ptr [ebp-96], 0
je .L_022F
mov dword ptr [ebp-96], 0
or dword ptr [ebp+8], 262144
.L_022F:
.L_022E:
.L_022B:
.L_022A:
.L_0230:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-100], eax
cmp dword ptr [ebp-40], 0
jne .L_0234
cmp dword ptr [ebp-96], 0
je .L_0236
mov dword ptr [ebp-96], 0
or dword ptr [ebp-100], 262144
jmp .L_0235
.L_0236:
push 2048
push 320
call _HMATCH
add esp, 8
test eax, eax
je .L_0237
or dword ptr [ebp-100], 262144
.L_0237:
.L_0235:
.L_0234:
.L_0233:
mov eax, dword ptr [ebp+16]
cmp eax, 310
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-100]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
je .L_0238
mov dword ptr [ebp-104], 0
jmp .L_02D0
.L_0238:
mov dword ptr [ebp-104], 4
.L_02D0:
mov eax, dword ptr [ebp-104]
or eax, 114
or eax, 256
push eax
call _CPARENTID
add esp, 4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 0
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-56]
je .L_023B
mov dword ptr [ebp-64], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_023D
mov dword ptr [ebp-64], -1
jmp .L_023C
.L_023D:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 40
je .L_0241
.L_0242:
cmp dword ptr [ebp-116], 44
je .L_0241
.L_0243:
cmp dword ptr [ebp-116], 376
je .L_0241
.L_0244:
cmp dword ptr [ebp-116], 258
je .L_0241
.L_0245:
cmp dword ptr [ebp-116], 257
je .L_0241
.L_0246:
cmp dword ptr [ebp-116], 256
jne .L_0240
.L_0241:
jmp .L_023E
.L_0240:
mov dword ptr [ebp-64], -1
.L_0247:
.L_023E:
.L_023C:
cmp dword ptr [ebp-64], 0
je .L_0249
call _HIDXINPARENSONLYEXPR
push eax
call _HCHECKDYNAMICARRAYEXPR
add esp, 4
mov dword ptr [ebp-24], eax
.L_0249:
.L_0248:
.L_023B:
.L_023A:
cmp dword ptr [ebp-24], 0
je .L_024B
mov dword ptr [ebp-8], 0
push 0
push 0
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 129
push offset _Lt_02D5
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-80], -2147483648
jmp .L_024A
.L_024B:
push dword ptr [ebp-56]
lea ebx, [ebp-80]
push ebx
push offset _Lt_02D5
push dword ptr [ebp-20]
call _HGETID
add esp, 16
mov dword ptr [ebp-8], eax
.L_024A:
mov dword ptr [ebp-48], 0
cmp dword ptr [ebp-40], 0
jne .L_024D
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov eax, dword ptr [ebp-80]
cmp eax, -2147483648
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_024C
.L_024D:
cmp dword ptr [ebp-80], -2147483648
je .L_024F
push 0
push 1
push 0
push offset _Lt_02D5
push 17
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-80], -2147483648
.L_024F:
.L_024E:
.L_024C:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-44], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [ebp+20]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_0251
mov edx, dword ptr [ebp-100]
and edx, 262144
je .L_0253
push 0
push 0
push 322
call _ERRREPORT
add esp, 12
and dword ptr [ebp-100], -262145
.L_0253:
.L_0252:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .L_0255
mov dword ptr [ebp-76], -1
or dword ptr [ebp-100], 4
jmp .L_0254
.L_0255:
push offset _Lt_02D9
lea eax, [ebp-44]
push eax
lea eax, [ebp-76]
push eax
call _CARRAYDECL
add esp, 12
cmp dword ptr [ebp-44], 0
je .L_0257
mov eax, dword ptr [ebp-100]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [ebp-100]
and edx, 16
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov ebx, dword ptr [ebp-100]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and edx, ebx
or eax, edx
je .L_0259
push 0
push 0
push 136
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-76], -1
mov dword ptr [ebp-44], 0
.L_0259:
.L_0258:
jmp .L_0256
.L_0257:
or dword ptr [ebp-100], 4
.L_0256:
.L_0254:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_025B
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
jmp .L_025A
.L_025B:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_025A:
jmp .L_0250
.L_0251:
cmp dword ptr [ebp+16], 310
jne .L_025C
push 0
push 1
push 0
push offset _Lt_02D5
push 63
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-76], -1
jmp .L_0250
.L_025C:
and dword ptr [ebp-100], -5
.L_0250:
mov eax, dword ptr [ebp-44]
and dword ptr [ebp-56], eax
mov dword ptr [ebp-84], 0
mov eax, dword ptr [ebp-100]
and eax, 48
test eax, eax
je .L_025E
call _CALIASATTRIBUTE
mov dword ptr [ebp-84], eax
.L_025E:
.L_025D:
cmp dword ptr [ebp-40], 0
jne .L_0260
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .L_0262
cmp dword ptr [ebp-60], -2147483648
je .L_0264
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-60], -2147483648
.L_0264:
.L_0263:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-100]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
push 0
push dword ptr [ebp-116]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HSYMBOLTYPE
add esp, 20
cmp dword ptr [ebp-116], 0
jne .L_0266
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.L_0266:
.L_0265:
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HMAYBECOMPLAINTYPEUSAGE
add esp, 12
mov dword ptr [ebp-36], 0
jmp .L_0261
.L_0262:
cmp dword ptr [ebp-60], -2147483648
jne .L_0267
mov eax, dword ptr [_ENV+1040]
and eax, 4194304
test eax, eax
je .L_0269
push offset _Lt_02D5
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov dword ptr [ebp-36], -1
.L_0269:
.L_0268:
cmp dword ptr [ebp-56], 0
je .L_026B
mov dword ptr [ebp-48], -1
jmp .L_026A
.L_026B:
cmp dword ptr [ebp-60], -2147483648
jne .L_026D
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HERRORDEFTYPENOTALLOWED
add esp, 12
.L_026D:
.L_026C:
.L_026A:
.L_0267:
.L_0261:
.L_0260:
.L_025F:
cmp dword ptr [ebp-24], 0
je .L_026F
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [eax+12]
mov dword ptr [ebp-12], edx
jmp .L_026E
.L_026F:
push dword ptr [ebp-56]
mov edx, dword ptr [ebp-80]
cmp edx, -2147483648
setne dl
shr edx, 1
sbb edx, edx
push edx
push dword ptr [ebp-48]
push dword ptr [ebp-60]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _HLOOKUPVARANDCHECKPARENT
add esp, 24
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0271
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .L_0273
push dword ptr [ebp-56]
push dword ptr [ebp-12]
call _HMAYBEBUILDFIELDACCESS
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_0275
push dword ptr [ebp-24]
call _ASTNEWNIDXARRAY
add esp, 4
push eax
call _HCHECKDYNAMICARRAYEXPR
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0274
.L_0275:
mov dword ptr [ebp-12], 0
.L_0274:
.L_0273:
.L_0272:
.L_0271:
.L_0270:
.L_026E:
cmp dword ptr [ebp-48], 0
je .L_0277
cmp dword ptr [ebp-12], 0
je .L_0279
push dword ptr [ebp-12]
call _SYMBISARRAY
add esp, 4
test eax, eax
je .L_027B
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+28]
and edx, 511
mov dword ptr [ebp-60], edx
mov edx, dword ptr [ebp-12]
mov eax, dword ptr [edx+32]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-72], ebx
mov dword ptr [ebp-68], edx
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebx+4]
and edx, 4
test edx, edx
jne .L_027D
mov edx, dword ptr [ebp-12]
mov ebx, dword ptr [edx+4]
and ebx, 16384
test ebx, ebx
jne .L_027F
push 0
push 1
push 0
push offset _Lt_02D5
push 54
call _ERRREPORTEX
add esp, 20
.L_027F:
.L_027E:
.L_027D:
.L_027C:
jmp .L_027A
.L_027B:
lea ebx, [ebp-72]
push ebx
lea ebx, [ebp-16]
push ebx
lea ebx, [ebp-60]
push ebx
call _HERRORDEFTYPENOTALLOWED
add esp, 12
.L_027A:
jmp .L_0278
.L_0279:
mov ebx, dword ptr [_ENV+1040]
and ebx, 4194304
test ebx, ebx
je .L_0280
jmp .L_0278
.L_0280:
lea ebx, [ebp-72]
push ebx
lea ebx, [ebp-16]
push ebx
lea ebx, [ebp-60]
push ebx
call _HERRORDEFTYPENOTALLOWED
add esp, 12
.L_0278:
.L_0277:
.L_0276:
cmp dword ptr [ebp-44], 0
je .L_0282
cmp dword ptr [ebp+16], 308
jne .L_0284
mov ebx, dword ptr [ebp-100]
and ebx, 4
test ebx, ebx
jne .L_0286
cmp dword ptr [ebp-12], 0
je .L_0288
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebx+4]
and edx, 8
test edx, edx
je .L_028A
mov edx, dword ptr [ebp-12]
cmp dword ptr [edx+60], 0
je .L_028C
or dword ptr [ebp-100], 4
mov dword ptr [ebp-56], -1
.L_028C:
.L_028B:
.L_028A:
.L_0289:
.L_0288:
.L_0287:
.L_0286:
.L_0285:
.L_0284:
.L_0283:
push offset _Lt_02DF
push offset _Lt_02D9
push dword ptr [ebp-76]
lea edx, [ebp-100]
push edx
call _HMAYBECONVERTEXPRTB2DIMTB
add esp, 16
mov edx, dword ptr [ebp-100]
and edx, 4
je .L_028E
push 76
push offset _Lt_02D9
push dword ptr [ebp-76]
call _HCOMPLAINABOUTELLIPSIS
add esp, 12
jmp .L_028D
.L_028E:
mov edx, dword ptr [ebp-100]
and edx, 3
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
push edx
push dword ptr [ebp-68]
push dword ptr [ebp-72]
push offset _Lt_02E1
push dword ptr [ebp-76]
call _SYMBCHECKARRAYSIZE
add esp, 20
test eax, eax
jne .L_0290
push 0
push 0
push 50
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-76], 1
mov dword ptr [_Lt_02E1], 0
mov dword ptr [_Lt_02E1+4], 0
mov dword ptr [_Lt_02E1+8], 0
mov dword ptr [_Lt_02E1+12], 0
.L_0290:
.L_028F:
.L_028D:
jmp .L_0281
.L_0282:
cmp dword ptr [ebp-76], 0
jne .L_0291
mov eax, dword ptr [ebp-100]
and eax, 3
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+244]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp-68], edx
mov ecx, -1
jg .L_02E3
jl .L_02E4
cmp dword ptr [ebp-72], ebx
ja .L_02E3
.L_02E4:
xor ecx, ecx
.L_02E3:
and eax, ecx
je .L_0293
push 0
push 1
push 0
push 24
call _ERRREPORTWARN
add esp, 16
.L_0293:
.L_0292:
.L_0291:
.L_0281:
mov ecx, dword ptr [ebp-100]
and ecx, 8
je .L_0295
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _TYPEHASCTOR
add esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
mov ebx, eax
call _TYPEHASDTOR
add esp, 8
or ebx, eax
je .L_0297
push 0
push -1
push 270
call _ERRREPORT
add esp, 12
.L_0297:
.L_0296:
.L_0295:
.L_0294:
mov eax, dword ptr [ebp-100]
and eax, 4
je .L_0299
mov eax, dword ptr [ebp+16]
cmp eax, 310
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .L_029B
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_029D
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0223
.L_029D:
.L_029C:
.L_029B:
.L_029A:
cmp dword ptr [ebp-12], 0
je .L_029F
push dword ptr [ebp-12]
call _HCOMPLAINABOUTCONSTDYNAMICARRAY
add esp, 4
.L_029F:
.L_029E:
.L_0299:
.L_0298:
push dword ptr [ebp+16]
push offset _Lt_02DF
lea eax, [ebp-44]
push eax
lea eax, [ebp-76]
push eax
push dword ptr [ebp-100]
push dword ptr [ebp-36]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
push dword ptr [ebp-84]
push offset _Lt_02D5
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call _HADDVAR
add esp, 52
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
cmp dword ptr [ebp-12], 0
je .L_02A1
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .L_02A2
mov dword ptr [ebp-116], -1
jmp .L_02D1
.L_02A2:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-116], ebx
.L_02D1:
mov ebx, dword ptr [ebp-116]
mov dword ptr [ebp-52], ebx
push dword ptr [ebp-12]
call _SYMBHASDEFCTOR
add esp, 4
mov dword ptr [ebp-108], eax
push dword ptr [ebp-12]
call _SYMBHASDTOR
add esp, 4
mov dword ptr [ebp-112], eax
jmp .L_02A0
.L_02A1:
mov dword ptr [ebp-52], 0
.L_02A0:
cmp dword ptr [ebp+20], 0
jne .L_02A5
mov dword ptr [ebp-88], 0
push 0
call _LEXGETTOKEN
add esp, 4
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .L_02A7
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HVARINIT
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+1040]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_02A9
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 11
test eax, eax
jne .L_02AB
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-88], eax
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HVARINITDEFAULT
add esp, 12
mov dword ptr [ebp-28], eax
.L_02AB:
.L_02AA:
.L_02A9:
.L_02A8:
jmp .L_02A6
.L_02A7:
cmp dword ptr [ebp-12], 0
je .L_02AD
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 262144
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_02AF
push 0
push 0
push 320
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0223
.L_02AF:
.L_02AE:
push dword ptr [ebp-12]
call _SYMBARRAYHASUNKNOWNBOUNDS
add esp, 4
test eax, eax
je .L_02B1
push 0
push 0
push 281
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0223
.L_02B1:
.L_02B0:
.L_02AD:
.L_02AC:
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HVARINITDEFAULT
add esp, 12
mov dword ptr [ebp-28], eax
.L_02A6:
jmp .L_02A4
.L_02A5:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-88], 0
.L_02A4:
cmp dword ptr [ebp-12], 0
je .L_02B3
cmp dword ptr [ebp+16], 306
je .L_02B5
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-52], 0
jne .L_02B7
mov dword ptr [ebp-120], 0
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+20]
not ecx
and eax, ecx
push eax
push dword ptr [ebp-12]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-120], ecx
cmp dword ptr [ebp-120], 0
je .L_02B9
push 0
mov ecx, dword ptr [ebp-120]
cmp dword ptr [ecx+56], 0
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-120]
call _ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.L_02B9:
.L_02B8:
mov eax, dword ptr [ebp-100]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-76]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_02BB
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 11
test eax, eax
jne .L_02BD
push dword ptr [ebp-116]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-120], 0
je .L_02BF
push 0
push 64
push 0
mov eax, dword ptr [ebp-120]
push dword ptr [eax+56]
push dword ptr [ebp-120]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-120]
mov dword ptr [eax+56], 0
.L_02BF:
.L_02BE:
.L_02BD:
.L_02BC:
.L_02BB:
.L_02BA:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 8
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
je .L_02C1
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call _HFLUSHINITIALIZER
add esp, 16
mov dword ptr [ebp-116], eax
jmp .L_02C0
.L_02C1:
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call _HFLUSHINITIALIZER
add esp, 16
push eax
call _ASTADDUNSCOPED
add esp, 4
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-88], 0
je .L_02C3
push dword ptr [ebp-12]
call _SYMBGETVARHASDTOR
add esp, 4
test eax, eax
je .L_02C5
push 0
push -1
push dword ptr [ebp-12]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.L_02C5:
.L_02C4:
push 0
push 64
push 0
push dword ptr [ebp-88]
push dword ptr [ebp-12]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.L_02C3:
.L_02C2:
.L_02C0:
.L_02B7:
.L_02B6:
mov eax, dword ptr [ebp-100]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .L_02C7
cmp dword ptr [ebp-24], 0
jne .L_02C9
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
.L_02C9:
.L_02C8:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp+12]
push offset _Lt_02D9
push dword ptr [ebp-76]
push dword ptr [ebp-24]
call _RTLARRAYREDIM
add esp, 20
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 9
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
mov eax, dword ptr [ebp-52]
not eax
and ecx, eax
je .L_02CB
push dword ptr [ebp-32]
call _HWRAPINSTATICFLAG
add esp, 4
mov dword ptr [ebp-32], eax
.L_02CB:
.L_02CA:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.L_02C7:
.L_02C6:
push dword ptr [ebp-116]
call _ASTADD
add esp, 4
.L_02B5:
.L_02B4:
.L_02B3:
.L_02B2:
cmp dword ptr [ebp+20], 0
je .L_02CD
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0223
.L_02CD:
.L_02CC:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_02CF
jmp .L_0231
.L_02CF:
.L_02CE:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0232:
jmp .L_0230
.L_0231:
.L_0223:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02D5,129
.balign 4
	.lcomm	_Lt_02F4,64

.section .data
.balign 4
_Lt_02D9:
.int _Lt_02F4
.int _Lt_02F4
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

.section .bss
.balign 4
	.lcomm	_Lt_02E1,128

.section .data
.balign 4
_Lt_02DF:
.int _Lt_02E1
.int _Lt_02E1
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl _CARRAYDECL
_CARRAYDECL:
push ebp
mov ebp, esp
push ebx
push esi
.L_0319:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
.L_031B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 8
jl .L_031F
push 0
push 0
push 49
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_031C
.L_031F:
.L_031E:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx]
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and eax, ecx
je .L_0321
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0320
.L_0321:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .L_0322
push 0
push 0
push 94
call _ERRREPORT
add esp, 12
jmp .L_0320
.L_0322:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _CARRAYDIMENSION
add esp, 8
.L_0320:
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
.L_031D:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .L_031B
.L_031C:
.L_031A:
pop esi
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
_HEXPRTBISCONST:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00CE:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00D1
.L_00D4:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 16
je .L_00D6
mov dword ptr [ebp-4], 0
jmp .L_00CF
jmp .L_00D5
.L_00D6:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .L_00D7
jmp .L_00D5
.L_00D7:
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
cmp dword ptr [ebx], 16
je .L_00D8
mov dword ptr [ebp-4], 0
jmp .L_00CF
.L_00D8:
.L_00D5:
.L_00D2:
inc dword ptr [ebp-8]
.L_00D1:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .L_00D4
.L_00D3:
mov dword ptr [ebp-4], -1
.L_00CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKEXTERNVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_00D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
cmp ebx, dword ptr [ebp+16]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+20]
cmp ecx, dword ptr [eax+32]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .L_00DC
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call _ERRREPORTEX
add esp, 20
jmp .L_00DA
.L_00DC:
.L_00DB:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp+32]
and esi, 262144
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
cmp ebx, esi
je .L_00DE
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call _ERRREPORTEX
add esp, 20
jmp .L_00DA
.L_00DE:
.L_00DD:
mov esi, dword ptr [ebp+16]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 18
je .L_00E2
.L_00E3:
cmp dword ptr [ebp-8], 4
je .L_00E2
.L_00E4:
cmp dword ptr [ebp-8], 7
jne .L_00E1
.L_00E2:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [ebp+28], ebx
jne .L_036C
cmp dword ptr [ebp+24], eax
je .L_00E6
.L_036C:
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call _ERRREPORTEX
add esp, 20
jmp .L_00DA
.L_00E6:
.L_00E5:
.L_00E1:
.L_00DF:
mov eax, dword ptr [ebp+32]
and eax, 4
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 4
cmp eax, esi
je .L_00E8
push 0
push 1
push 0
push dword ptr [ebp+12]
push 54
call _ERRREPORTEX
add esp, 20
jmp .L_00DA
.L_00E8:
.L_00E7:
mov esi, dword ptr [ebp+36]
cmp esi, -1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
or esi, ebx
je .L_00EA
mov ebx, dword ptr [ebp+36]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
cmp ebx, eax
je .L_00EC
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call _ERRREPORTEX
add esp, 20
jmp .L_00DA
.L_00EC:
.L_00EB:
mov dword ptr [ebp-4], -1
jmp .L_00DA
.L_00EA:
.L_00E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+36], ebx
je .L_00EE
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call _ERRREPORTEX
add esp, 20
jmp .L_00DA
.L_00EE:
.L_00ED:
mov ebx, dword ptr [ebp+32]
and ebx, 4
test ebx, ebx
jne .L_00F0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+36]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .L_00F2
.L_00F5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
sal eax, 4
mov esi, dword ptr [ebx+64]
add esi, eax
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+40]
add eax, dword ptr [ebx]
mov ecx, dword ptr [esi]
mov ebx, dword ptr [esi+4]
cmp ebx, dword ptr [eax+4]
mov esi, -1
jne .L_0371
cmp ecx, dword ptr [eax]
jne .L_0371
.L_0372:
xor esi, esi
.L_0371:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov ebx, dword ptr [eax+64]
add ebx, ecx
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov eax, dword ptr [ebp+40]
add ecx, dword ptr [eax]
mov edi, dword ptr [ebx+8]
mov eax, dword ptr [ebx+12]
cmp eax, dword ptr [ecx+12]
mov ebx, -1
jne .L_0373
cmp edi, dword ptr [ecx+8]
jne .L_0373
.L_0374:
xor ebx, ebx
.L_0373:
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov edi, dword ptr [ebp+40]
add ecx, dword ptr [edi]
cmp dword ptr [ecx+12], 2147483648
mov edi, -1
jne .L_0375
cmp dword ptr [ecx+8], 0
jne .L_0375
.L_0376:
xor edi, edi
.L_0375:
and ebx, edi
or esi, ebx
je .L_00F7
push 0
push 1
push 0
push dword ptr [ebp+12]
push 37
call _ERRREPORTEX
add esp, 20
.L_00F7:
.L_00F6:
.L_00F3:
inc dword ptr [ebp-8]
.L_00F2:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .L_00F5
.L_00F4:
.L_00F0:
.L_00EF:
mov dword ptr [ebp-4], -1
.L_00DA:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKEXTERNVARANDRECOVER:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.L_00F8:
push dword ptr [ebp+40]
mov eax, dword ptr [ebp+32]
push dword ptr [eax]
push dword ptr [ebp+28]
mov eax, dword ptr [ebp+24]
push dword ptr [eax+4]
push dword ptr [eax]
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKEXTERNVAR
add esp, 36
test eax, eax
jne .L_00FB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
mov esi, dword ptr [ebp+28]
and esi, -262149
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 262148
or esi, ebx
mov dword ptr [ebp+28], esi
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+32]
mov ecx, dword ptr [esi+60]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
and ecx, 4
je .L_00FD
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], 0
jmp .L_00FC
.L_00FD:
mov ecx, dword ptr [ebp+32]
cmp dword ptr [ecx], 0
jle .L_00FE
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], -1
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+32]
mov ebx, dword ptr [ecx]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_0100
.L_0103:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov esi, dword ptr [ebx+64]
add esi, ecx
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov ebx, dword ptr [ebp+40]
add ecx, dword ptr [ebx]
mov eax, dword ptr [esi]
mov ebx, dword ptr [esi+4]
mov dword ptr [ecx], eax
mov dword ptr [ecx+4], ebx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [ebp+40]
add ebx, dword ptr [eax]
mov esi, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebx+8], esi
mov dword ptr [ebx+12], eax
.L_0101:
inc dword ptr [ebp-4]
.L_0100:
mov esi, dword ptr [ebp-8]
cmp dword ptr [ebp-4], esi
jle .L_0103
.L_0102:
.L_00FE:
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F9:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDVAR:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0104:
cmp dword ptr [ebp+8], 0
je .L_0107
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+40]
and eax, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
cmp dword ptr [_PARSER+100], 0
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0109
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HCHECKEXTERNVARANDRECOVER
add esp, 36
mov eax, dword ptr [ebp+8]
and dword ptr [eax+4], -17
mov eax, dword ptr [ebp+8]
or dword ptr [eax+4], 33
mov eax, dword ptr [ebp+44]
cmp dword ptr [eax], 0
je .L_010B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
and dword ptr [ebx+4], -17
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+4], 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
jne .L_010D
mov eax, dword ptr [ebp-12]
and dword ptr [eax+4], -33
jmp .L_010C
.L_010D:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+4], 32
.L_010C:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _ASTBUILDARRAYDESCINITREE
add esp, 12
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+56], eax
.L_010B:
.L_010A:
mov dword ptr [ebp-8], -1
jmp .L_0108
.L_0109:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+40]
and eax, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_010E
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HCHECKEXTERNVARANDRECOVER
add esp, 36
mov dword ptr [ebp-8], -1
jmp .L_0108
.L_010E:
mov eax, dword ptr [ebp+40]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+48]
and eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 16388
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov ecx, dword ptr [ebp+56]
cmp ecx, 310
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 8
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and eax, ecx
je .L_010F
mov dword ptr [ebp-8], -1
jmp .L_0108
.L_010F:
mov dword ptr [ebp-8], 0
.L_0108:
jmp .L_0106
.L_0107:
mov dword ptr [ebp-8], 0
.L_0106:
cmp dword ptr [ebp-8], 0
je .L_0111
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 4
test eax, eax
je .L_0113
mov eax, dword ptr [ebp+44]
mov ecx, dword ptr [eax]
cmp ecx, -1
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+60]
cmp esi, -1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .L_0115
mov esi, dword ptr [ebp+44]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov dword ptr [ecx+60], eax
.L_0115:
.L_0114:
.L_0113:
.L_0112:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .L_0117
mov ecx, dword ptr [ebp+44]
push dword ptr [ecx]
push dword ptr [ebp+8]
call _SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 8
.L_0117:
.L_0116:
jmp .L_0110
.L_0111:
cmp dword ptr [ebp+12], 0
je .L_0119
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call _ERRREPORTEX
add esp, 20
.L_0119:
.L_0118:
cmp dword ptr [ebp+36], 0
je .L_011B
or dword ptr [ebp+40], 1048576
.L_011B:
.L_011A:
mov ecx, dword ptr [_ENV+1040]
and ecx, 2
test ecx, ecx
je .L_011C
mov dword ptr [ebp-12], 0
jmp .L_0377
.L_011C:
mov dword ptr [ebp-12], 2
.L_0377:
push dword ptr [ebp-12]
push dword ptr [ebp+40]
push dword ptr [ebp+52]
mov ecx, dword ptr [ebp+44]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+32]
push dword ptr [ecx+4]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+24]
push dword ptr [ecx]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_011F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 57
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 0
je .L_0121
cmp dword ptr [ebp+16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+140]
lea eax, [_SYMB+98352]
cmp dword ptr [esi], eax
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_0123
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 0
push dword ptr [ebp+16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call _PARSERISGLOBALASMKEYWORD
add esp, 4
mov dword ptr [ebp-32], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-32], 0
je .L_0126
push 0
push 1
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4280]
push dword ptr [ebp+16]
push 47
call _ERRREPORTWARNEX
add esp, 20
.L_0126:
.L_0125:
.L_0123:
.L_0122:
.L_0121:
.L_0120:
.L_011F:
.L_011E:
.L_0110:
cmp dword ptr [ebp+8], 0
jne .L_0129
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call _ERRREPORTEX
add esp, 20
.L_0129:
.L_0128:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0105:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKFORIDTOKEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_012A:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_012D
.L_012F:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_0131
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_0133
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .L_0135
mov dword ptr [ebp-4], 90
.L_0135:
.L_0134:
.L_0133:
.L_0132:
.L_0131:
.L_0130:
jmp .L_012C
.L_0136:
cmp dword ptr [_ENV+136], 3
je .L_0138
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [_PARSER+100], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_013A
mov dword ptr [ebp-4], 4
.L_013A:
.L_0139:
.L_0138:
.L_0137:
jmp .L_012C
.L_013B:
cmp dword ptr [_ENV+136], 3
je .L_013D
mov dword ptr [ebp-4], 4
jmp .L_013C
.L_013D:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], -2147483648
jne .L_013F
mov dword ptr [ebp-4], 4
.L_013F:
.L_013E:
.L_013C:
jmp .L_012C
.L_0140:
mov dword ptr [ebp-4], 14
jmp .L_012C
.L_012D:
cmp dword ptr [ebp-8], 5
ja .L_0140
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_0141+ebx*4]
_.L_0141:
.int .L_012F
.int .L_013B
.int .L_0136
.int .L_0140
.int .L_0140
.int .L_013B
.L_012C:
.L_012B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0142:
push dword ptr [ebp+8]
call _HCHECKFORIDTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0145
push 0
push 0
call _LEXGETTEXT
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 4096
call _LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+8], 0
jne .L_0147
mov ecx, dword ptr [_LEX+213384]
mov eax, dword ptr [ecx+4260]
mov ecx, dword ptr [eax+1044]
mov dword ptr [ebp-4], ecx
jmp .L_0146
.L_0147:
push dword ptr [ebp+20]
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.L_0146:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0144
.L_0145:
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORT
add esp, 12
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
mov dword ptr [ebp-4], 0
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0144:
.L_0143:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPVAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0148:
cmp dword ptr [ebp+8], 0
jne .L_014B
jmp .L_0149
.L_014B:
.L_014A:
cmp dword ptr [ebp+16], 0
je .L_014D
mov eax, dword ptr [_ENV+1040]
and eax, 4194304
test eax, eax
je .L_014F
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDVARBYDEFTYPE
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_014E
.L_014F:
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0151
push 12
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
.L_0151:
.L_0150:
.L_014E:
jmp .L_014C
.L_014D:
cmp dword ptr [ebp+20], 0
je .L_0152
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDVARBYSUFFIX
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_014C
.L_0152:
push dword ptr [ebp+12]
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASSANDTYPE
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0154
push dword ptr [ebp+12]
push 12
push dword ptr [ebp+8]
call _SYMBFINDBYCLASSANDTYPE
add esp, 12
mov dword ptr [ebp-8], eax
.L_0154:
.L_0153:
.L_014C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0149:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPVARANDCHECKPARENT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0155:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HLOOKUPVAR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
setne al
shr eax, 1
sbb eax, eax
lea ebx, [_SYMB+98352]
cmp dword ptr [ebp+8], ebx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0158
cmp dword ptr [ebp-8], 0
je .L_015A
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+4]
and eax, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+140]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [ebp+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+28]
not ebx
and eax, ebx
je .L_015C
push 0
push 0
push 158
call _ERRREPORT
add esp, 12
.L_015C:
.L_015B:
jmp .L_0159
.L_015A:
push 0
push -1
push 131
call _ERRREPORT
add esp, 12
.L_0159:
jmp .L_0157
.L_0158:
cmp dword ptr [ebp-8], 0
je .L_015E
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
cmp ebx, dword ptr [_SYMB+98528]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+28]
not ebx
and eax, ebx
je .L_0160
mov dword ptr [ebp-8], 0
.L_0160:
.L_015F:
.L_015E:
.L_015D:
.L_0157:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0156:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAKEARRAYDIMTB:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0161:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_0164
.L_0167:
push 8
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp+12]
add eax, 36
mov edx, dword ptr [eax]
imul edx, dword ptr [ebp-4]
sal edx, 2
mov eax, dword ptr [ebp+12]
add edx, dword ptr [eax]
mov eax, dword ptr [edx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0169
mov eax, dword ptr [ebp-4]
sal eax, 4
mov edx, dword ptr [ebp+16]
add eax, dword ptr [edx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 2147483648
jmp .L_0168
.L_0169:
push 8
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx]
mov dword ptr [ebx+8], eax
mov dword ptr [ebx+12], edx
mov eax, dword ptr [ebp-4]
sal eax, 4
mov edx, dword ptr [ebp+16]
add eax, dword ptr [edx]
mov edx, dword ptr [ebp-4]
sal edx, 4
mov ebx, dword ptr [ebp+16]
add edx, dword ptr [ebx]
mov ecx, dword ptr [eax+8]
mov ebx, dword ptr [eax+12]
cmp ebx, dword ptr [edx+4]
mov eax, -1
jl .L_038D
jg .L_038E
cmp ecx, dword ptr [edx]
jb .L_038D
.L_038E:
xor eax, eax
.L_038D:
mov edx, dword ptr [ebp-4]
sal edx, 4
mov ecx, dword ptr [ebp+16]
add edx, dword ptr [ecx]
cmp dword ptr [edx+12], 2147483648
mov ecx, -1
jne .L_0390
cmp dword ptr [edx+8], 0
je .L_038F
.L_0390:
xor ecx, ecx
.L_038F:
or eax, ecx
je .L_016B
push 0
push 0
push 182
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov dword ptr [ecx], 0
mov dword ptr [ecx+4], 0
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov dword ptr [ecx+8], 0
mov dword ptr [ecx+12], 0
.L_016B:
.L_016A:
.L_0168:
.L_0165:
inc dword ptr [ebp-4]
.L_0164:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_0167
.L_0166:
.L_0162:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARINITDEFAULT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_017B:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_017E
jmp .L_017C
.L_017E:
.L_017D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_0180
jmp .L_017C
.L_0180:
.L_017F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_0182
push 0
push 0
push 237
call _ERRREPORT
add esp, 12
jmp .L_017C
.L_0182:
.L_0181:
cmp dword ptr [ebp+16], 0
je .L_0184
mov eax, dword ptr [ebp+12]
not eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 12
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0186
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call _SYMBGETCOMPDEFCTOR
add esp, 4
push eax
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0188
push 0
push 0
push 204
call _ERRREPORT
add esp, 12
.L_0188:
.L_0187:
push dword ptr [ebp+8]
call _ASTBUILDTYPEINICTORLIST
add esp, 4
mov dword ptr [ebp-4], eax
.L_0186:
.L_0185:
jmp .L_0183
.L_0184:
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
test eax, eax
je .L_018A
push 0
push 0
push 183
call _ERRREPORT
add esp, 12
.L_018A:
.L_0189:
.L_0183:
.L_017C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKVARSUSEDINGLOBALINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_018B:
mov dword ptr [ebp-4], 12288
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .L_018E
or dword ptr [ebp-4], 2
.L_018E:
.L_018D:
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _ASTTYPEINIUSESLOCALS
add esp, 8
test eax, eax
je .L_0190
push 0
push 0
push 272
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.L_0190:
.L_018F:
.L_018C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVALIDATEGLOBALVARINIT:
push ebp
mov ebp, esp
push ebx
.L_0191:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 3
test ebx, ebx
jne .L_0194
jmp .L_0192
.L_0194:
.L_0193:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 262144
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0196
push 0
push -1
push 87
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call _ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
jmp .L_0192
.L_0196:
.L_0195:
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
not eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0198
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _ASTTYPEINIISCONST
add esp, 4
test eax, eax
jne .L_019A
push 0
push 0
push 11
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .L_0192
.L_019A:
.L_0199:
.L_0198:
.L_0197:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKVARSUSEDINGLOBALINIT
add esp, 8
.L_0192:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDFAKEBYREFINITEXPR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_019B:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
push eax
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_019C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRESOLVEREFTOREFINITIALIZER:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_019D:
cmp dword ptr [ebp+12], 0
je .L_019F
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0395
.L_019F:
mov dword ptr [ebp-16], 0
.L_0395:
cmp dword ptr [ebp-16], 0
je .L_01A2
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 0
je .L_01A3
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 17
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_0396
.L_01A3:
mov dword ptr [ebp-20], 0
.L_0396:
cmp dword ptr [ebp-20], 0
je .L_01A6
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+12], 0
je .L_01A7
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0397
.L_01A7:
mov dword ptr [ebp-24], 0
.L_0397:
cmp dword ptr [ebp-24], 0
je .L_01A9
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_0398
.L_01A9:
mov dword ptr [ebp-28], 0
.L_0398:
cmp dword ptr [ebp-28], 0
je .L_01AC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_01AD
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 36
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
jmp .L_0399
.L_01AD:
mov dword ptr [ebp-32], 0
.L_0399:
cmp dword ptr [ebp-32], 0
je .L_01B0
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 0
je .L_01B1
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 38
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_039A
.L_01B1:
mov dword ptr [ebp-36], 0
.L_039A:
cmp dword ptr [ebp-36], 0
je .L_01B4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_01B6
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 23
jne .L_01B9
.L_01BA:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_01BB
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 17
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_039B
.L_01BB:
mov dword ptr [ebp-44], 0
.L_039B:
cmp dword ptr [ebp-44], 0
je .L_01BE
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_01C0
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp+12], eax
.L_01C0:
.L_01BF:
.L_01BE:
.L_01BD:
.L_01B9:
.L_01B7:
.L_01B6:
.L_01B5:
.L_01B4:
.L_01B3:
.L_01B0:
.L_01AF:
.L_01AC:
.L_01AB:
.L_01A6:
.L_01A5:
.L_01A2:
.L_01A1:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_019E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKANDBUILDBYREFINITIALIZER:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01C1:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _ASTCHECKBYREFASSIGN
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTCANTAKEADDROF
add esp, 4
and dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01C4
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _HBUILDFAKEBYREFINITEXPR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_01C3
.L_01C4:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _HRESOLVEREFTOREFINITIALIZER
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_01C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-16], ecx
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-20]
call _ASTTYPEINIADDASSIGN
add esp, 24
push -1
push dword ptr [ebp-20]
call _ASTTYPEINIEND
add esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call _HVALIDATEGLOBALVARINIT
add esp, 8
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_01C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARINIT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01C5:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01C8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .L_01C7
.L_01C8:
mov dword ptr [ebp-8], 0
.L_01C7:
mov ebx, dword ptr [ebp-8]
and ebx, 24
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+12]
je .L_01CA
push 0
push 0
push 135
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .L_01C6
.L_01CA:
.L_01C9:
mov ebx, dword ptr [_ENV+1040]
and ebx, 128
test ebx, ebx
jne .L_01CC
push 0
push 146
push 128
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .L_01C6
.L_01CC:
.L_01CB:
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
jne .L_01CE
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .L_01C6
.L_01CE:
.L_01CD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_01D0
push 4
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01D2
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_01C6
.L_01D2:
.L_01D1:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCHECKANDBUILDBYREFINITIALIZER
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_01C6
.L_01D0:
.L_01CF:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
jne .L_01D4
push dword ptr [ebp+8]
call _SYMBARRAYHASUNKNOWNBOUNDS
add esp, 4
test eax, eax
je .L_01D6
push 0
push 0
push 280
call _ERRREPORT
add esp, 12
jmp .L_01C6
.L_01D6:
.L_01D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_01D8
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .L_01D7
.L_01D8:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 2048
.L_01D7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_01DA
push 0
push 0
push 237
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_01C6
.L_01DA:
.L_01D9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_01C6
.L_01D4:
.L_01D3:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01DC
mov dword ptr [ebp-4], 0
jmp .L_01C6
.L_01DC:
.L_01DB:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HVALIDATEGLOBALVARINIT
add esp, 8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_01C6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHDECL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01DD:
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
je .L_01E0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01DF
.L_01E0:
push dword ptr [ebp+8]
call _ASTADDUNSCOPED
add esp, 4
mov dword ptr [ebp-4], 0
.L_01DF:
.L_01DE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HWRAPINSTATICFLAG:
push ebp
mov ebp, esp
sub esp, 68
mov dword ptr [ebp-4], 0
.L_01E1:
lea eax, [ebp-24]
mov dword ptr [ebp-60], eax
lea eax, [ebp-24]
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], 16
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 1
mov dword ptr [ebp-40], 49
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 2
lea eax, [ebp-60]
push eax
push 0
push 0
push 0
push 0
push 8
push 0
call _SYMBUNIQUELABEL
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-64]
or dword ptr [eax+12], 16
push -1
push dword ptr [ebp-64]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push -1
push 0
push dword ptr [ebp-68]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-64]
call _ASTNEWVAR
add esp, 20
push eax
push 45
call _ASTNEWBOP
add esp, 20
push eax
call _ASTBUILDBRANCH
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 0
push 1
push dword ptr [ebp-64]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLll
add esp, 12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 0
call _ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp-68]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_01E2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLSTATICCTOR:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_01E4:
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
je .L_01E7
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp-12], eax
.L_01E7:
.L_01E6:
cmp dword ptr [ebp+20], 0
je .L_01E9
push dword ptr [ebp+8]
call _ASTPROCADDSTATICINSTANCE
add esp, 4
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-16]
call _ASTBUILDPROCADDROF
add esp, 4
push eax
call _RTLATEXIT
add esp, 4
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
.L_01E9:
.L_01E8:
cmp dword ptr [ebp-12], 0
je .L_01EB
push 0
push dword ptr [ebp-12]
call _HWRAPINSTATICFLAG
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.L_01EB:
.L_01EA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01E5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLGLOBALCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01EC:
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+16], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .L_01EF
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTPROCADDGLOBALINSTANCE
add esp, 12
.L_01EF:
.L_01EE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_01ED:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHINITIALIZER:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01F0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp+20]
je .L_01F3
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBGETCOMPDTOR1
add esp, 4
push eax
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_01F5
push 0
push 0
push 206
call _ERRREPORT
add esp, 12
.L_01F5:
.L_01F4:
.L_01F3:
.L_01F2:
cmp dword ptr [ebp+16], 0
jne .L_01F7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
je .L_01F9
cmp dword ptr [ebp+20], 0
je .L_01FB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_01FD
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp+12], eax
jmp .L_01FC
.L_01FD:
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp+12], eax
.L_01FC:
.L_01FB:
.L_01FA:
.L_01F9:
.L_01F8:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01F1
.L_01F7:
.L_01F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
jne .L_01FF
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp+12], eax
push 0
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
push dword ptr [ebp+12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_01F1
.L_01FF:
.L_01FE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
not eax
or ebx, eax
je .L_0201
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
not ebx
or eax, ebx
je .L_0203
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01F1
.L_0203:
.L_0202:
mov dword ptr [ebp+16], 0
.L_0201:
.L_0200:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0205
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0204
.L_0205:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.L_0204:
.L_01F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HIDXINPARENSONLYEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0206:
mov eax, dword ptr [_PARSER+152]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [_PARSER+152], 4096
jmp .L_0208
.L_0209:
and dword ptr [_PARSER+152], -4097
.L_0208:
push -1
call _CEXPRESSIONWITHNIDXARRAY
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .L_020B
or dword ptr [_PARSER+152], 4096
jmp .L_020A
.L_020B:
and dword ptr [_PARSER+152], -4097
.L_020A:
.L_0207:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKDYNAMICARRAYEXPR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_020C:
cmp dword ptr [ebp+8], 0
je .L_020E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_03B0
.L_020E:
mov dword ptr [ebp-8], 0
.L_03B0:
cmp dword ptr [ebp-8], 0
je .L_0211
push dword ptr [ebp+8]
call _ASTREMOVENIDXARRAY
add esp, 4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 19
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0213
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax]
cmp ebx, 12
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_0215
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 16388
test ebx, ebx
je .L_0217
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_020D
.L_0217:
.L_0216:
.L_0215:
.L_0214:
.L_0213:
.L_0212:
.L_0211:
.L_0210:
push 0
push -1
push 54
call _ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.L_020D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HERRORDEFTYPENOTALLOWED:
push ebp
mov ebp, esp
push ebx
.L_0218:
push 0
push 147
push 4194304
call _ERRREPORTNOTALLOWED
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBCALCLEN
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_0219:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEBUILDFIELDACCESS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_021A:
cmp dword ptr [ebp+12], 0
jne .L_021D
jmp .L_021B
.L_021D:
.L_021C:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .L_021F
jmp .L_021B
.L_021F:
.L_021E:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0221
jmp .L_021B
.L_0221:
.L_0220:
push 0
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+60]
call _ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.L_021B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMATCHELLIPSIS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02F5:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_02F8
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_02FA
push 0
push 2
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_02FC
push 0
push 3
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 44
je .L_0300
.L_0301:
cmp dword ptr [ebp-8], 41
je .L_0300
.L_0302:
cmp dword ptr [ebp-8], 284
jne .L_02FF
.L_0300:
mov dword ptr [ebp-4], -1
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_02FF:
.L_02FD:
.L_02FC:
.L_02FB:
.L_02FA:
.L_02F9:
.L_02F8:
.L_02F7:
.L_02F6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HINTEXPR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0303:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0306
push 0
push 0
push dword ptr [ebp-8]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0308
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0307
.L_0308:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.L_0307:
jmp .L_0305
.L_0306:
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 284
je .L_030A
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.L_030A:
.L_0309:
.L_0305:
cmp dword ptr [ebp-8], 0
jne .L_030C
cmp dword ptr [ebp+8], 0
je .L_030E
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_030D
.L_030E:
push 0
push 8
mov ebx, dword ptr [_ENV+1076]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_030D:
.L_030C:
.L_030B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0304:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CARRAYDIMENSION:
push ebp
mov ebp, esp
push ebx
push esi
.L_030F:
call _HMATCHELLIPSIS
test eax, eax
je .L_0312
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx], 0
jmp .L_0311
.L_0312:
push 0
call _HINTEXPR
add esp, 4
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov esi, dword ptr [ebx]
imul esi, dword ptr [ecx]
sal esi, 2
mov ecx, dword ptr [ebp+12]
add esi, dword ptr [ecx]
mov dword ptr [esi], eax
.L_0311:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 284
jne .L_0314
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ecx, dword ptr [esi]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
cmp dword ptr [ecx], 0
jne .L_0316
push 0
push 0
push 282
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ebx, dword ptr [esi]
imul ebx, dword ptr [ecx]
sal ebx, 2
mov ecx, dword ptr [ebp+12]
add ebx, dword ptr [ecx]
mov dword ptr [ebx], eax
.L_0316:
.L_0315:
call _HMATCHELLIPSIS
test eax, eax
je .L_0318
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx+4], 0
jmp .L_0317
.L_0318:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ecx]
sal ebx, 2
mov ecx, dword ptr [ebp+12]
add ebx, dword ptr [ecx]
push dword ptr [ebx]
call _HINTEXPR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov esi, dword ptr [ecx]
imul esi, dword ptr [ebx]
sal esi, 2
mov ebx, dword ptr [ebp+12]
add esi, dword ptr [ebx]
mov dword ptr [esi+4], eax
.L_0317:
jmp .L_0313
.L_0314:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ebx, dword ptr [esi]
imul ebx, dword ptr [eax]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ecx, dword ptr [esi]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ecx+4], eax
push 0
push 8
mov ecx, dword ptr [_ENV+1076]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _ASTNEWCONSTI
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov esi, dword ptr [ebx]
imul esi, dword ptr [ecx]
sal esi, 2
mov ecx, dword ptr [ebp+12]
add esi, dword ptr [ecx]
mov dword ptr [esi], eax
.L_0313:
.L_0310:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDAUTOVARINITIALIZER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0326:
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
test eax, eax
jne .L_0329
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
add esp, 24
jmp .L_0328
.L_0329:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _CBYDESCARRAYARGPARENS
add esp, 4
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .L_032B
cmp dword ptr [ebp-12], 0
je .L_032D
push 0
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINIADDCTORCALL
add esp, 20
jmp .L_032C
.L_032D:
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
add esp, 24
.L_032C:
.L_032B:
.L_032A:
.L_0328:
push -1
push dword ptr [ebp-8]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0327:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKANDBUILDAUTOVARINITIALIZER:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_032E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDAUTOVARINITIALIZER
add esp, 8
mov dword ptr [ebp-8], eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
call _HVALIDATEGLOBALVARINIT
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_032F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_CAUTOVARDECL:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.L_0330:
mov eax, dword ptr [_ENV+1040]
and eax, 2048
test eax, eax
jne .L_0334
push 0
push 150
push 2048
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0331
.L_0334:
.L_0333:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0336
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0331
.L_0336:
.L_0335:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 312
jne .L_0338
call _HCHECKSCOPE
test eax, eax
jne .L_033A
or dword ptr [ebp+8], 2
jmp .L_0339
.L_033A:
or dword ptr [ebp+8], 3
.L_0339:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.L_0338:
.L_0337:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .L_033C
or dword ptr [ebp+8], 2
.L_033C:
.L_033B:
lea ebx, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], ebx
je .L_033E
mov ebx, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], ebx
jne .L_0340
or dword ptr [ebp+8], 3
.L_0340:
.L_033F:
.L_033E:
.L_033D:
.L_0341:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ebx
push 2048
push 320
call _HMATCH
add esp, 8
test eax, eax
je .L_0345
or dword ptr [ebp-12], 262144
.L_0345:
.L_0344:
push 374
call _CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
push 0
lea eax, [ebp-16]
push eax
push offset _Lt_03BA
push dword ptr [ebp-4]
call _HGETID
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -2147483648
je .L_0347
push 0
push 1
push 0
push offset _Lt_03BA
push 17
call _ERRREPORTEX
add esp, 20
.L_0347:
.L_0346:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0349
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
.L_0349:
.L_0348:
push 0
push 0
push -1
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HLOOKUPVARANDCHECKPARENT
add esp, 24
mov dword ptr [ebp-8], eax
call _CASSIGNTOKEN
test eax, eax
jne .L_034B
push 0
push 0
push 10
call _ERRREPORT
add esp, 12
.L_034B:
.L_034A:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-12]
and eax, 262144
test eax, eax
jne .L_034E
cmp dword ptr [ebp-8], 0
je .L_034C
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
jmp .L_03B9
.L_034C:
mov dword ptr [ebp-28], 0
.L_03B9:
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
jmp .L_03B8
.L_034E:
mov dword ptr [ebp-32], -1
.L_03B8:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .L_0351
push 4
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0350
.L_0351:
call _CEXPRESSION
mov dword ptr [ebp-24], eax
.L_0350:
cmp dword ptr [ebp-24], 0
jne .L_0353
push 0
push 0
push 237
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
cmp dword ptr [ebp-36], 0
je .L_0355
push 0
push 8
call _HBUILDFAKEBYREFINITEXPR
add esp, 8
mov dword ptr [ebp-24], eax
jmp .L_0354
.L_0355:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
.L_0354:
.L_0353:
.L_0352:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-36], 0
jne .L_0357
mov eax, dword ptr [ebp-40]
and eax, 511
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 7
jne .L_035A
.L_035B:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-40], 8
mov dword ptr [ebp-44], 0
jmp .L_0358
.L_035A:
cmp dword ptr [ebp-64], 4
je .L_035D
.L_035E:
cmp dword ptr [ebp-64], 18
jne .L_035C
.L_035D:
mov dword ptr [ebp-40], 17
.L_035C:
.L_0358:
.L_0357:
.L_0356:
push 309
push offset _Lt_03BE
mov dword ptr [ebp-60], 0
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
lea eax, [ebp-52]
push eax
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push 0
push offset _Lt_03BA
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _HADDVAR
add esp, 52
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0363
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 262144
test edx, edx
je .L_0365
lea edx, [ebp-24]
push edx
push dword ptr [ebp-8]
call _HCHECKANDBUILDBYREFINITIALIZER
add esp, 8
mov dword ptr [ebp-24], eax
jmp .L_0364
.L_0365:
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _HCHECKANDBUILDAUTOVARINITIALIZER
add esp, 8
mov dword ptr [ebp-24], eax
.L_0364:
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 8
push dword ptr [ebp-8]
call _SYMBHASDTOR
add esp, 4
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-64]
push dword ptr [ebp-8]
call _HFLUSHINITIALIZER
add esp, 16
push eax
call _ASTADD
add esp, 4
.L_0363:
.L_0362:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0367
jmp .L_0342
.L_0367:
.L_0366:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0343:
jmp .L_0341
.L_0342:
.L_0331:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_03BF,128

.section .data
.balign 4
_Lt_03BE:
.int _Lt_03BF
.int _Lt_03BF
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .bss
.balign 4
	.lcomm	_Lt_03BA,129
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
