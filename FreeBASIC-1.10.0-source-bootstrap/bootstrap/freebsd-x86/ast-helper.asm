	.intel_syntax noprefix

.section .text
.balign 16

.globl _Z17ASTBUILDVARASSIGNP8FBSYMBOLll
_Z17ASTBUILDVARASSIGNP8FBSYMBOLll:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
push dword ptr [ebp+16]
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
_Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0068:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDFAKEWSTRINGACCESS
ASTBUILDFAKEWSTRINGACCESS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_006A:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDFAKEWSTRINGASSIGN
ASTBUILDFAKEWSTRINGASSIGN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006C:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_006F
push 2
lea eax, [ebp+12]
push eax
call ASTREMSIDEFX
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.L_006F:
.L_006E:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRLEN
add esp, 4
push eax
call RTLWSTRALLOC
add esp, 4
push eax
push dword ptr [ebp+8]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 2
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDVARINC
ASTBUILDVARINC:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0070:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .L_0073
or dword ptr [ebp-8], 2
.L_0073:
.L_0072:
cmp dword ptr [ebp+12], 0
jle .L_0075
mov dword ptr [ebp-12], 1
jmp .L_0074
.L_0075:
mov dword ptr [ebp-12], 2
neg dword ptr [ebp+12]
.L_0074:
push dword ptr [ebp-8]
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-12]
call ASTNEWSELFBOP
add esp, 20
mov dword ptr [ebp-4], eax
.L_0071:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDVARDEREF
ASTBUILDVARDEREF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0076:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDVARADDROF
ASTBUILDVARADDROF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0078:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_0079:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z19ASTBUILDVARDTORCALLP7ASTNODE
_Z19ASTBUILDVARDTORCALLP7ASTNODE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 17
jne .L_007D
push dword ptr [ebp+8]
call RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_007C
.L_007D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call TYPEHASDTOR
add esp, 8
test eax, eax
je .L_007E
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTBUILDDTORCALL
add esp, 12
mov dword ptr [ebp-4], eax
.L_007E:
.L_007C:
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
_Z19ASTBUILDVARDTORCALLP8FBSYMBOLl:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0082
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call RTLARRAYERASE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0085
.L_0086:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0083
.L_0085:
cmp dword ptr [ebp-8], 39
jne .L_0087
.L_0088:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0083
.L_0087:
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 4
test eax, eax
je .L_008B
cmp dword ptr [ebp+12], 0
je .L_008D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETCOMPDTOR1
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_008F
push 0
push 0
push 206
call ERRREPORT
add esp, 12
.L_008F:
.L_008E:
.L_008D:
.L_008C:
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 12
mov dword ptr [ebp-4], eax
.L_008B:
.L_008A:
.L_0089:
.L_0083:
.L_0081:
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_
_Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0091:
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .L_0094
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_0094:
.L_0093:
push 0
push 24
push dword ptr [ebp+8]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
and eax, 31
mov ebx, dword ptr [ebp+16]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 32505856
or eax, ebx
push eax
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+24], 0
je .L_0096
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 12
jne .L_0098
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call ASTNEWFIELD
add esp, 8
mov dword ptr [ebp+8], eax
.L_0098:
.L_0097:
.L_0096:
.L_0095:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0092:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
_Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0099:
cmp dword ptr [ebp+16], 0
jne .L_009C
cmp dword ptr [ebp+12], 0
jne .L_009C
.L_009D:
mov dword ptr [ebp-8], 0
jmp .L_009B
.L_009C:
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_009B:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_
add esp, 20
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDVARFIELD
ASTBUILDVARFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_009E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00A1
push 0
push 0
push 0
push -2147483648
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 32505856
or ebx, eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_00A0
.L_00A1:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
.L_00A0:
cmp dword ptr [ebp+12], 0
je .L_00A3
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
add dword ptr [ebp+16], ecx
adc dword ptr [ebp+20], ebx
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-8], eax
jmp .L_00A2
.L_00A3:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-8], eax
.L_00A2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDTEMPVARCLEAR
ASTBUILDTEMPVARCLEAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_00A9
mov dword ptr [ebp-4], 0
jmp .L_00A7
.L_00A9:
.L_00A8:
push 0
push 0
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.L_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDWHILECOUNTERBEGIN
ASTBUILDWHILECOUNTERBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00AA:
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+28]
push dword ptr [ebp+16]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push 0
push -1
push dword ptr [ebp+20]
push 1
push 0
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 16
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDWHILECOUNTEREND
ASTBUILDWHILECOUNTEREND:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00AC:
push 0
push -1
push dword ptr [ebp+12]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+16]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00AD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDFORBEGIN
ASTBUILDFORBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00AE:
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLll
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDFOREND
ASTBUILDFOREND:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B0:
push 0
push 1
push dword ptr [ebp+12]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push dword ptr [ebp+16]
push 1
push 0
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 16
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDVTABLELOOKUP
ASTBUILDVTABLELOOKUP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .L_00B5
push dword ptr [ebp+8]
call SYMBPROCGETVTABLEINDEX
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push 8
push dword ptr [ebp-8]
push 0
push 96
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
push 7
push 0
push 0
push 8
mov eax, dword ptr [ebp-12]
add eax, -2
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBADDPROCPTRFROMFUNCTION
add esp, 4
push eax
push 54
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ENV+176], 0
je .L_00B7
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .L_00B9
push dword ptr [ebp-8]
call ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp-8], eax
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
jmp .L_00B4
.L_00B5:
mov dword ptr [ebp-8], 0
.L_00B4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDCALL
ASTBUILDCALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .L_00BD
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVTABLELOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BC
.L_00BD:
mov dword ptr [ebp-12], 0
.L_00BC:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 0
je .L_00BF
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C1
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00C1:
.L_00C0:
.L_00BF:
.L_00BE:
cmp dword ptr [ebp+16], 0
je .L_00C3
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C5
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00C5:
.L_00C4:
.L_00C3:
.L_00C2:
cmp dword ptr [ebp+20], 0
je .L_00C7
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C9
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
push dword ptr [ebp-8]
call ASTBUILDBYREFRESULTDEREF
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDCTORCALL
ASTBUILDCTORCALL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00CA:
push dword ptr [ebp+8]
call SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00CD
mov dword ptr [ebp-4], 0
jmp .L_00CB
.L_00CD:
.L_00CC:
push 0
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
dec ebx
mov dword ptr [ebp-16], ebx
.L_00CE:
cmp dword ptr [ebp-16], 0
jle .L_00CF
push -1
push -2147483648
push 0
push dword ptr [ebp-12]
call ASTNEWARG
add esp, 16
dec dword ptr [ebp-16]
jmp .L_00CE
.L_00CF:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_00CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDDTORCALL
ASTBUILDDTORCALL:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00D0:
push dword ptr [ebp+8]
call SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_00D3
push 0
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00D2
.L_00D3:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTBUILDVTABLELOOKUP
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-12], eax
.L_00D2:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00D1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPATCHCTORCALL
ASTPATCHCTORCALL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00D6:
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTREPLACEINSTANCEARG
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00D7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCALLCTORTOCALL
ASTCALLCTORTOCALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
push 1
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
call ASTFAKEINSTPTR
add esp, 4
push eax
push dword ptr [ebp-12]
call ASTREPLACEINSTANCEARG
add esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-8]
call ASTDTORLISTDEL
add esp, 4
push 0
push dword ptr [ebp-8]
call SYMBDELSYMBOL
add esp, 8
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDIMPLICITCTORCALL
ASTBUILDIMPLICITCTORCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00DA:
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDCTOROVLPROC
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00DD
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp-8], 0
je .L_00DF
push dword ptr [ebp-8]
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETCOMPCTORHEAD
add esp, 4
push eax
call ERRREPORTPARAM
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_00DB
.L_00DF:
.L_00DE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_00DB
.L_00DD:
.L_00DC:
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00E1
push 0
push 0
push 205
call ERRREPORT
add esp, 12
.L_00E1:
.L_00E0:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-16], eax
push 1
push -2147483648
push dword ptr [ebp+8]
call ASTFAKEINSTPTR
add esp, 4
push eax
push dword ptr [ebp-16]
call ASTNEWARG
add esp, 16
push dword ptr [ebp+16]
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
movsx ebx, word ptr [eax+68]
add ebx, -2
mov dword ptr [ebp-20], ebx
.L_00E2:
cmp dword ptr [ebp-20], 0
jle .L_00E3
push -1
push -2147483648
push 0
push dword ptr [ebp-16]
call ASTNEWARG
add esp, 16
dec dword ptr [ebp-20]
jmp .L_00E2
.L_00E3:
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDIMPLICITCTORCALLEX
ASTBUILDIMPLICITCTORCALLEX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 10
jne .L_00E7
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx+8], eax
jne .L_00E9
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
push dword ptr [ebp+12]
call ASTCALLCTORTOCALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E5
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTBUILDIMPLICITCTORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDPROCADDROF
ASTBUILDPROCADDROF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00EA:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_00EB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDPROCRESULTVAR
ASTBUILDPROCRESULTVAR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00EC:
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_00EF
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push 52
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00EE
.L_00EF:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.L_00EE:
.L_00ED:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDTYPEINICTORLIST
ASTBUILDTYPEINICTORLIST:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F0:
mov dword ptr [ebp-8], 0
push 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINIADDCTORLIST
add esp, 24
push -1
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDMULTIDEREF
ASTBUILDMULTIDEREF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F2:
.L_00F4:
cmp dword ptr [ebp+8], 0
jle .L_00F5
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .L_00F7
cmp dword ptr [SYMB+99424], 0
jne .L_00F9
push 0
push -1
push 28
call ERRREPORT
add esp, 12
jmp .L_00F5
.L_00F9:
.L_00F8:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
push 76
call SYMBFINDUOPOVLPROC
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00FB
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_00FD
mov dword ptr [ebp-4], 0
jmp .L_00F3
.L_00FD:
.L_00FC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+20], eax
jmp .L_00FA
.L_00FB:
push 0
push -1
push 28
call ERRREPORT
add esp, 12
jmp .L_00F5
.L_00FA:
jmp .L_00F6
.L_00F7:
mov eax, dword ptr [ebp+16]
and eax, 31
mov ebx, dword ptr [ebp+16]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00FE
mov dword ptr [ebp-8], 24
jmp .L_0109
.L_00FE:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0109:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0103
.L_0104:
cmp dword ptr [ebp-12], 23
jne .L_0102
.L_0103:
push 0
push -1
push 71
call ERRREPORT
add esp, 12
mov dword ptr [ebp+16], 2
jmp .L_0100
.L_0102:
cmp dword ptr [ebp-12], 22
jne .L_0105
.L_0106:
push 0
push -1
push 20
call ERRREPORT
add esp, 12
mov dword ptr [ebp+16], 2
.L_0105:
.L_0100:
cmp dword ptr [ENV+176], 0
je .L_0108
push dword ptr [ebp+12]
call ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+12], eax
.L_0108:
.L_0107:
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+12], eax
.L_00F6:
dec dword ptr [ebp+8]
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDARRAYDESCINITREE
ASTBUILDARRAYDESCINITREE:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_010A:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 16
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_010D
mov dword ptr [ebp-4], 0
jmp .L_010B
.L_010D:
.L_010C:
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_010F
push dword ptr [ebp-36]
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov eax, dword ptr [ebp-12]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 32505856
or ebx, eax
push ebx
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
jmp .L_010E
.L_010F:
cmp dword ptr [ebp+16], 0
je .L_0111
jmp .L_0110
.L_0111:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp+16], eax
.L_0110:
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
or dword ptr [ebp-24], 32
.L_010E:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 12
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0112
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
jmp .L_0121
.L_0112:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+68]
mov eax, dword ptr [ebx+72]
mov dword ptr [ebp-44], ecx
mov dword ptr [ebp-40], eax
.L_0121:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
call ASTCLONETREE
add esp, 4
push eax
push 28
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-28], ecx
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-28], eax
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
je .L_0114
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
jmp .L_0122
.L_0114:
push dword ptr [ebp+12]
call SYMBGETREALSIZE
add esp, 4
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
.L_0122:
push dword ptr [ebp-48]
push dword ptr [ebp-52]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp+12]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_0117
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 8
jmp .L_0116
.L_0117:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
or dword ptr [ebp-24], 16
.L_0116:
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp-16]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp-20]
and edx, 15
or dword ptr [ebp-24], edx
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov eax, dword ptr [ebp-24]
mov edx, eax
sar edx, 31
push edx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp-28]
mov dword ptr [ebp-56], edx
mov edx, dword ptr [ebp-28]
mov eax, dword ptr [edx+32]
mov edx, dword ptr [eax+60]
mov dword ptr [ebp-32], edx
push -1
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 12
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 16388
test eax, eax
jne .L_0119
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+60]
dec edx
mov dword ptr [ebp-64], edx
jmp .L_011B
.L_011E:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-28], edx
push 0
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 12
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov ecx, dword ptr [edx+64]
add ecx, eax
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [ebp-60]
sal edx, 4
mov ebx, dword ptr [eax+64]
add ebx, edx
mov eax, dword ptr [ecx+8]
mov edx, dword ptr [ecx+12]
sub eax, dword ptr [ebx]
sbb edx, dword ptr [ebx+4]
add eax, 1
adc edx, 0
push edx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov ebx, dword ptr [edx+64]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
push 0
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov edx, dword ptr [ebx+64]
add edx, eax
push dword ptr [edx+12]
push dword ptr [edx+8]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 8
.L_011C:
inc dword ptr [ebp-60]
.L_011B:
mov eax, dword ptr [ebp-64]
cmp dword ptr [ebp-60], eax
jle .L_011E
.L_011D:
jmp .L_0118
.L_0119:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+60]
mov dword ptr [ebp-16], edx
cmp dword ptr [ebp-16], -1
jne .L_0120
mov dword ptr [ebp-16], 8
.L_0120:
.L_011F:
mov eax, dword ptr [ebp-16]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [SYMB+99620]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
push edx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop edx
add esp, 8
push edx
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDPAD
add esp, 12
.L_0118:
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDARRAYBOUND
ASTBUILDARRAYBOUND:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0140:
push offset Lt_0142
push 2
push dword ptr [ebp+16]
push 0
call ERRPUSHPARAMLOCATION
add esp, 16
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
call ERRPOPPARAMLOCATION
mov eax, dword ptr [ebp+16]
cmp eax, 495
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCONSTBOUND
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0144
mov eax, dword ptr [ebp+16]
cmp eax, 495
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLARRAYBOUND
add esp, 12
mov dword ptr [ebp-8], eax
.L_0144:
.L_0143:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0141:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDSTRPTR
ASTBUILDSTRPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0147:
mov dword ptr [ebp-12], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_014A
or dword ptr [ebp-12], 512
.L_014A:
.L_0149:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov eax, dword ptr [ebp-12]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 32505856
or ebx, eax
or ebx, 512
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov eax, dword ptr [ebp-12]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-12], ebx
push 0
push 0
push 0
push -2147483648
push 0
push 16
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 4
push eax
push 0
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0148:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
ASTFAKEINSTPTR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00D4:
push dword ptr [ebp+8]
push 52
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00D5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCONSTBOUND:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0126:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 17
je .L_012B
.L_012C:
cmp dword ptr [ebp-24], 19
jne .L_012A
.L_012B:
jmp .L_0128
.L_012A:
jmp .L_0127
.L_012D:
.L_0128:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_012F
jmp .L_0127
.L_012F:
.L_012E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_0131
jmp .L_0127
.L_0131:
.L_0130:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
je .L_0133
jmp .L_0127
.L_0133:
.L_0132:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
add ecx, 4294967295
adc eax, 4294967295
mov ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
test ebx, ebx
setge bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ecx+60]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0135
cmp dword ptr [ebp+16], 0
je .L_0137
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .L_0136
.L_0137:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 2147483648
jne .L_0139
cmp dword ptr [ebp-20], 0
jne .L_0139
.L_014F:
jmp .L_0127
.L_0139:
.L_0138:
.L_0136:
jmp .L_0134
.L_0135:
cmp dword ptr [ebp-12], -1
jne .L_013B
cmp dword ptr [ebp+16], 0
je .L_013C
mov dword ptr [ebp-24], 1
jmp .L_014B
.L_013C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-24], ebx
.L_014B:
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .L_013A
.L_013B:
cmp dword ptr [ebp+16], 0
je .L_013E
mov dword ptr [ebp-24], 0
jmp .L_014C
.L_013E:
mov dword ptr [ebp-24], -1
.L_014C:
mov ebx, dword ptr [ebp-24]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.L_013A:
.L_0134:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0127:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_0142:	.ascii	"dimension\0"
