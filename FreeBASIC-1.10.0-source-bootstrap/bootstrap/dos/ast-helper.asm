	.intel_syntax noprefix

.section .text
.balign 16

.globl __Z17ASTBUILDVARASSIGNP8FBSYMBOLll
__Z17ASTBUILDVARASSIGNP8FBSYMBOLll:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
push dword ptr [ebp+16]
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
__Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0069:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDFAKEWSTRINGACCESS
_ASTBUILDFAKEWSTRINGACCESS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_006B:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDFAKEWSTRINGASSIGN
_ASTBUILDFAKEWSTRINGASSIGN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006D:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_0070
push 2
lea eax, [ebp+12]
push eax
call _ASTREMSIDEFX
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.L_0070:
.L_006F:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _RTLWSTRLEN
add esp, 4
push eax
call _RTLWSTRALLOC
add esp, 4
push eax
push dword ptr [ebp+8]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 2
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDFAKEWSTRINGACCESS
add esp, 4
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDVARINC
_ASTBUILDVARINC:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0071:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .L_0074
or dword ptr [ebp-8], 2
.L_0074:
.L_0073:
cmp dword ptr [ebp+12], 0
jle .L_0076
mov dword ptr [ebp-12], 1
jmp .L_0075
.L_0076:
mov dword ptr [ebp-12], 2
neg dword ptr [ebp+12]
.L_0075:
push dword ptr [ebp-8]
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-12]
call _ASTNEWSELFBOP
add esp, 20
mov dword ptr [ebp-4], eax
.L_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDVARDEREF
_ASTBUILDVARDEREF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0077:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDVARADDROF
_ASTBUILDVARADDROF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0079:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_007A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z19ASTBUILDVARDTORCALLP7ASTNODE
__Z19ASTBUILDVARDTORCALLP7ASTNODE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 17
jne .L_007E
push dword ptr [ebp+8]
call _RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_007D
.L_007E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _TYPEHASDTOR
add esp, 8
test eax, eax
je .L_007F
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTBUILDDTORCALL
add esp, 12
mov dword ptr [ebp-4], eax
.L_007F:
.L_007D:
.L_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
__Z19ASTBUILDVARDTORCALLP8FBSYMBOLl:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0083
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
call _ASTNEWVAR
add esp, 20
push eax
call _RTLARRAYERASE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0086
.L_0087:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0084
.L_0086:
cmp dword ptr [ebp-8], 39
jne .L_0088
.L_0089:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0084
.L_0088:
push dword ptr [ebp+8]
call _SYMBHASDTOR
add esp, 4
test eax, eax
je .L_008C
cmp dword ptr [ebp+12], 0
je .L_008E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETCOMPDTOR1
add esp, 4
push eax
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0090
push 0
push 0
push 206
call _ERRREPORT
add esp, 12
.L_0090:
.L_008F:
.L_008E:
.L_008D:
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL
add esp, 12
mov dword ptr [ebp-4], eax
.L_008C:
.L_008B:
.L_008A:
.L_0084:
.L_0082:
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_
__Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0092:
push dword ptr [ebp+8]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .L_0095
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
.L_0095:
.L_0094:
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
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+24], 0
je .L_0097
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 12
jne .L_0099
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call _ASTNEWFIELD
add esp, 8
mov dword ptr [ebp+8], eax
.L_0099:
.L_0098:
.L_0097:
.L_0096:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0093:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
__Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009A:
cmp dword ptr [ebp+16], 0
jne .L_009D
cmp dword ptr [ebp+12], 0
jne .L_009D
.L_009E:
mov dword ptr [ebp-8], 0
jmp .L_009C
.L_009D:
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_009C:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_
add esp, 20
mov dword ptr [ebp-4], eax
.L_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDVARFIELD
_ASTBUILDVARFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_009F:
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
je .L_00A2
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
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_00A1
.L_00A2:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
.L_00A1:
cmp dword ptr [ebp+12], 0
je .L_00A4
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
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-8], eax
jmp .L_00A3
.L_00A4:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-8], eax
.L_00A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDTEMPVARCLEAR
_ASTBUILDTEMPVARCLEAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_00AA
mov dword ptr [ebp-4], 0
jmp .L_00A8
.L_00AA:
.L_00A9:
push 0
push 0
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
push 107
call _ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.L_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDWHILECOUNTERBEGIN
_ASTBUILDWHILECOUNTERBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00AB:
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+28]
push dword ptr [ebp+16]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
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
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
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
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00AC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDWHILECOUNTEREND
_ASTBUILDWHILECOUNTEREND:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00AD:
push 0
push -1
push dword ptr [ebp+12]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+16]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00AE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDFORBEGIN
_ASTBUILDFORBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00AF:
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLll
add esp, 12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDFOREND
_ASTBUILDFOREND:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B1:
push 0
push 1
push dword ptr [ebp+12]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
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
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDVTABLELOOKUP
_ASTBUILDVTABLELOOKUP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .L_00B6
push dword ptr [ebp+8]
call _SYMBPROCGETVTABLEINDEX
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push 8
push dword ptr [ebp-8]
push 0
push 96
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBADDPROCPTRFROMFUNCTION
add esp, 4
push eax
push 54
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [_ENV+176], 0
je .L_00B8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .L_00BA
push dword ptr [ebp-8]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp-8], eax
.L_00BA:
.L_00B9:
.L_00B8:
.L_00B7:
jmp .L_00B5
.L_00B6:
mov dword ptr [ebp-8], 0
.L_00B5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDCALL
_ASTBUILDCALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .L_00BE
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVTABLELOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00BE:
mov dword ptr [ebp-12], 0
.L_00BD:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 0
je .L_00C0
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C2
mov dword ptr [ebp-4], 0
jmp .L_00BC
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
cmp dword ptr [ebp+16], 0
je .L_00C4
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C6
mov dword ptr [ebp-4], 0
jmp .L_00BC
.L_00C6:
.L_00C5:
.L_00C4:
.L_00C3:
cmp dword ptr [ebp+20], 0
je .L_00C8
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CA
mov dword ptr [ebp-4], 0
jmp .L_00BC
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
push dword ptr [ebp-8]
call _ASTBUILDBYREFRESULTDEREF
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDCTORCALL
_ASTBUILDCTORCALL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00CB:
push dword ptr [ebp+8]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00CE
mov dword ptr [ebp-4], 0
jmp .L_00CC
.L_00CE:
.L_00CD:
push 0
push dword ptr [ebp-8]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
dec ebx
mov dword ptr [ebp-16], ebx
.L_00CF:
cmp dword ptr [ebp-16], 0
jle .L_00D0
push -1
push -2147483648
push 0
push dword ptr [ebp-12]
call _ASTNEWARG
add esp, 16
dec dword ptr [ebp-16]
jmp .L_00CF
.L_00D0:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.L_00CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDDTORCALL
_ASTBUILDDTORCALL:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00D1:
push dword ptr [ebp+8]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_00D4
push 0
push dword ptr [ebp-8]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00D3
.L_00D4:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTBUILDVTABLELOOKUP
add esp, 8
push eax
push dword ptr [ebp-8]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-12], eax
.L_00D3:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00D2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTPATCHCTORCALL
_ASTPATCHCTORCALL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00D7:
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTREPLACEINSTANCEARG
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00D8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTCALLCTORTOCALL
_ASTCALLCTORTOCALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00D9:
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
call _ASTFAKEINSTPTR
add esp, 4
push eax
push dword ptr [ebp-12]
call _ASTREPLACEINSTANCEARG
add esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-8]
call _ASTDTORLISTDEL
add esp, 4
push 0
push dword ptr [ebp-8]
call _SYMBDELSYMBOL
add esp, 8
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDIMPLICITCTORCALL
_ASTBUILDIMPLICITCTORCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00DB:
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDCTOROVLPROC
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00DE
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp-8], 0
je .L_00E0
push dword ptr [ebp-8]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
push eax
call _ERRREPORTPARAM
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_00DC
.L_00E0:
.L_00DF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_00DC
.L_00DE:
.L_00DD:
push dword ptr [ebp-12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00E2
push 0
push 0
push 205
call _ERRREPORT
add esp, 12
.L_00E2:
.L_00E1:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-16], eax
push 1
push -2147483648
push dword ptr [ebp+8]
call _ASTFAKEINSTPTR
add esp, 4
push eax
push dword ptr [ebp-16]
call _ASTNEWARG
add esp, 16
push dword ptr [ebp+16]
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
movsx ebx, word ptr [eax+68]
add ebx, -2
mov dword ptr [ebp-20], ebx
.L_00E3:
cmp dword ptr [ebp-20], 0
jle .L_00E4
push -1
push -2147483648
push 0
push dword ptr [ebp-16]
call _ASTNEWARG
add esp, 16
dec dword ptr [ebp-20]
jmp .L_00E3
.L_00E4:
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDIMPLICITCTORCALLEX
_ASTBUILDIMPLICITCTORCALLEX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 10
jne .L_00E8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx+8], eax
jne .L_00EA
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
push dword ptr [ebp+12]
call _ASTCALLCTORTOCALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E6
.L_00EA:
.L_00E9:
.L_00E8:
.L_00E7:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTBUILDIMPLICITCTORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDPROCADDROF
_ASTBUILDPROCADDROF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00EB:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_00EC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDPROCRESULTVAR
_ASTBUILDPROCRESULTVAR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00ED:
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_00F0
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
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00EF
.L_00F0:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.L_00EF:
.L_00EE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDTYPEINICTORLIST
_ASTBUILDTYPEINICTORLIST:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F1:
mov dword ptr [ebp-8], 0
push 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINIADDCTORLIST
add esp, 24
push -1
push dword ptr [ebp-8]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDMULTIDEREF
_ASTBUILDMULTIDEREF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F3:
.L_00F5:
cmp dword ptr [ebp+8], 0
jle .L_00F6
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .L_00F8
cmp dword ptr [_SYMB+99424], 0
jne .L_00FA
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .L_00F6
.L_00FA:
.L_00F9:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
push 76
call _SYMBFINDUOPOVLPROC
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00FC
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_00FE
mov dword ptr [ebp-4], 0
jmp .L_00F4
.L_00FE:
.L_00FD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+20], eax
jmp .L_00FB
.L_00FC:
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .L_00F6
.L_00FB:
jmp .L_00F7
.L_00F8:
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
je .L_00FF
mov dword ptr [ebp-8], 24
jmp .L_010A
.L_00FF:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.L_010A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0104
.L_0105:
cmp dword ptr [ebp-12], 23
jne .L_0103
.L_0104:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+16], 2
jmp .L_0101
.L_0103:
cmp dword ptr [ebp-12], 22
jne .L_0106
.L_0107:
push 0
push -1
push 20
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+16], 2
.L_0106:
.L_0101:
cmp dword ptr [_ENV+176], 0
je .L_0109
push dword ptr [ebp+12]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+12], eax
.L_0109:
.L_0108:
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+12], eax
.L_00F7:
dec dword ptr [ebp+8]
jmp .L_00F5
.L_00F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00F4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDARRAYDESCINITREE
_ASTBUILDARRAYDESCINITREE:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_010B:
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
je .L_010E
mov dword ptr [ebp-4], 0
jmp .L_010C
.L_010E:
.L_010D:
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
call _ASTTYPEINIBEGIN
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
je .L_0110
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
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
jmp .L_010F
.L_0110:
cmp dword ptr [ebp+16], 0
je .L_0112
jmp .L_0111
.L_0112:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp+16], eax
.L_0111:
push dword ptr [ebp+16]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
or dword ptr [ebp-24], 32
.L_010F:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEBEGIN
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
je .L_0113
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
jmp .L_0122
.L_0113:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+68]
mov eax, dword ptr [ebx+72]
mov dword ptr [ebp-44], ecx
mov dword ptr [ebp-40], eax
.L_0122:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
call _ASTCLONETREE
add esp, 4
push eax
push 28
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
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
call _ASTTYPEINIADDASSIGN
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
je .L_0115
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
jmp .L_0123
.L_0115:
push dword ptr [ebp+12]
call _SYMBGETREALSIZE
add esp, 4
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
.L_0123:
push dword ptr [ebp-48]
push dword ptr [ebp-52]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
add esp, 24
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_0118
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 8
jmp .L_0117
.L_0118:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
or dword ptr [ebp-24], 16
.L_0117:
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
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
call _ASTTYPEINISCOPEBEGIN
add esp, 12
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 16388
test eax, eax
jne .L_011A
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+60]
dec edx
mov dword ptr [ebp-64], edx
jmp .L_011C
.L_011F:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-28], edx
push 0
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEBEGIN
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND
add esp, 8
.L_011D:
inc dword ptr [ebp-60]
.L_011C:
mov eax, dword ptr [ebp-64]
cmp dword ptr [ebp-60], eax
jle .L_011F
.L_011E:
jmp .L_0119
.L_011A:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+60]
mov dword ptr [ebp-16], edx
cmp dword ptr [ebp-16], -1
jne .L_0121
mov dword ptr [ebp-16], 8
.L_0121:
.L_0120:
mov eax, dword ptr [ebp-16]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [_SYMB+99620]
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
call _ASTTYPEINIADDPAD
add esp, 12
.L_0119:
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND
add esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-8]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDARRAYBOUND
_ASTBUILDARRAYBOUND:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0141:
push offset _Lt_0143
push 2
push dword ptr [ebp+16]
push 0
call _ERRPUSHPARAMLOCATION
add esp, 16
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
call _ERRPOPPARAMLOCATION
mov eax, dword ptr [ebp+16]
cmp eax, 495
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCONSTBOUND
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0145
mov eax, dword ptr [ebp+16]
cmp eax, 495
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLARRAYBOUND
add esp, 12
mov dword ptr [ebp-8], eax
.L_0145:
.L_0144:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0142:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDSTRPTR
_ASTBUILDSTRPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0148:
mov dword ptr [ebp-12], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_014B
or dword ptr [ebp-12], 512
.L_014B:
.L_014A:
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
call _ASTNEWADDROF
add esp, 4
push eax
push 0
push dword ptr [ebp-12]
call _ASTNEWCONV
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0149:
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
_ASTFAKEINSTPTR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00D5:
push dword ptr [ebp+8]
push 52
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00D6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCONSTBOUND:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0127:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 17
je .L_012C
.L_012D:
cmp dword ptr [ebp-24], 19
jne .L_012B
.L_012C:
jmp .L_0129
.L_012B:
jmp .L_0128
.L_012E:
.L_0129:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0130
jmp .L_0128
.L_0130:
.L_012F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_0132
jmp .L_0128
.L_0132:
.L_0131:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
je .L_0134
jmp .L_0128
.L_0134:
.L_0133:
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
je .L_0136
cmp dword ptr [ebp+16], 0
je .L_0138
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .L_0137
.L_0138:
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
jne .L_013A
cmp dword ptr [ebp-20], 0
jne .L_013A
.L_0150:
jmp .L_0128
.L_013A:
.L_0139:
.L_0137:
jmp .L_0135
.L_0136:
cmp dword ptr [ebp-12], -1
jne .L_013C
cmp dword ptr [ebp+16], 0
je .L_013D
mov dword ptr [ebp-24], 1
jmp .L_014C
.L_013D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-24], ebx
.L_014C:
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .L_013B
.L_013C:
cmp dword ptr [ebp+16], 0
je .L_013F
mov dword ptr [ebp-24], 0
jmp .L_014D
.L_013F:
mov dword ptr [ebp-24], -1
.L_014D:
mov ebx, dword ptr [ebp-24]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.L_013B:
.L_0135:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0128:
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

.section .data
.balign 4
_Lt_0143:	.ascii	"dimension\0"
