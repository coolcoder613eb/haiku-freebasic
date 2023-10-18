	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTPROCLISTINIT
ASTPROCLISTINIT:
.L_0067:
mov dword ptr [AST+32], 0
mov dword ptr [AST+36], 0
mov dword ptr [AST+40], 0
push 6
push 12
push 32
lea eax, [AST+76]
push eax
call LISTINIT
add esp, 16
mov dword ptr [AST+108], 0
mov dword ptr [AST+112], 0
.L_0068:
ret
.balign 16

.globl ASTPROCLISTEND
ASTPROCLISTEND:
.L_0069:
mov dword ptr [AST+112], 0
mov dword ptr [AST+108], 0
lea eax, [AST+76]
push eax
call LISTEND
add esp, 4
mov dword ptr [AST+32], 0
mov dword ptr [AST+36], 0
mov dword ptr [AST+40], 0
.L_006A:
ret
.balign 16

.globl ASTADD
ASTADD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_009B:
push dword ptr [ebp+8]
call ASTUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_009E
mov dword ptr [ebp-4], 0
jmp .L_009C
.L_009E:
.L_009D:
mov eax, dword ptr [AST+40]
cmp dword ptr [eax+60], 0
je .L_00A0
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
jmp .L_009F
.L_00A0:
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
.L_009F:
mov ebx, dword ptr [AST+40]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+60]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [AST+40]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_009C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTADDAFTER
ASTADDAFTER:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
push dword ptr [ebp+8]
call ASTUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_00A4
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00A4:
.L_00A3:
cmp dword ptr [ebp+12], 0
je .L_00A6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+68]
mov dword ptr [eax+68], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+68], 0
je .L_00A8
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+68]
cmp dword ptr [eax+64], 0
je .L_00AA
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
.L_00AA:
.L_00A9:
jmp .L_00A7
.L_00A8:
mov eax, dword ptr [AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+60], ecx
.L_00A7:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+68], eax
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [AST+40]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ecx+68], ebx
mov ebx, dword ptr [AST+40]
cmp dword ptr [ebx+56], 0
je .L_00AC
mov ebx, dword ptr [AST+40]
mov ecx, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+64], ebx
jmp .L_00AB
.L_00AC:
mov ebx, dword ptr [AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+60], ecx
.L_00AB:
mov ecx, dword ptr [AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+56], ebx
.L_00A5:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTADDUNSCOPED
ASTADDUNSCOPED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00AD:
cmp dword ptr [ebp+8], 0
jne .L_00B0
jmp .L_00AE
.L_00B0:
.L_00AF:
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_00B2
mov ebx, dword ptr [AST+40]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.L_00B2:
.L_00B1:
mov dword ptr [AST+196], 0
cmp dword ptr [ebp-4], 0
jne .L_00B4
push dword ptr [ebp+8]
call ASTADD
add esp, 4
mov dword ptr [ebp+8], eax
jmp .L_00B3
.L_00B4:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.L_00B3:
mov dword ptr [AST+196], -1
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+52], ebx
.L_00AE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTFINDFIRSTCODE
ASTFINDFIRSTCODE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.L_00B7:
cmp dword ptr [ebp-8], 0
je .L_00B8
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_00BC
.L_00BD:
cmp dword ptr [ebp-12], 21
je .L_00BC
.L_00BE:
cmp dword ptr [ebp-12], 24
je .L_00BC
.L_00BF:
cmp dword ptr [ebp-12], 27
je .L_00BC
.L_00C0:
cmp dword ptr [ebp-12], 29
je .L_00BC
.L_00C1:
cmp dword ptr [ebp-12], 30
jne .L_00BB
.L_00BC:
jmp .L_00B9
.L_00BB:
jmp .L_00B8
.L_00C2:
.L_00B9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .L_00B7
.L_00B8:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPROCBEGIN
ASTPROCBEGIN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00C3:
call HNEWPROCNODE
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ENV+568]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [AST+40], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [AST+132], ebx
cmp dword ptr [ebp+12], 0
je .L_00C5
mov dword ptr [ebp-12], 0
jmp .L_00CF
.L_00C5:
mov dword ptr [ebp-12], 1
.L_00CF:
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+100], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [PARSER+108], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [PARSER+112], ebx
push 0
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+32], eax
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+36], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+48], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+40], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+52], 0
push dword ptr [ebp+8]
call dword ptr [IR+24]
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00C8
push dword ptr [ebp+8]
call HDECLVARSFORPROCPARAMS
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_00CA
push dword ptr [ebp+8]
call SYMBADDPROCRESULTVAR
add esp, 4
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
lea ebx, [eax+28]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .L_00CD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-20], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-20]
push dword ptr [eax+60]
call ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+60]
call ASTNEWVAR
add esp, 20
push eax
call RTLINITAPP
add esp, 8
mov dword ptr [ENV+1036], eax
jmp .L_00CC
.L_00CD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4096
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
and ebx, dword ptr [ebp-8]
je .L_00CE
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+140]
push dword ptr [ecx]
call HINITVPTR
add esp, 8
push eax
call ASTADD
add esp, 4
.L_00CE:
.L_00CC:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.L_00C4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPROCEND
ASTPROCEND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00F0:
mov eax, dword ptr [AST+40]
mov dword ptr [ebp-24], eax
inc dword ptr [Lt_011A]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
call ERRGETCOUNT
test eax, eax
jne .L_00F3
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .L_00F5
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 4
test eax, eax
jne .L_00F7
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 4
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HCALLCTORS
add esp, 8
.L_00F7:
.L_00F6:
.L_00F5:
.L_00F4:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+64]
call ASTSCOPEDESTROYVARS
add esp, 4
.L_00F3:
.L_00F2:
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+36]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [PARSER+108]
push dword ptr [eax+60]
call SYMBCHECKLABELS
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00F9
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .L_00FB
push dword ptr [ebp-20]
call HCALLDTORS
add esp, 4
.L_00FB:
.L_00FA:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+8]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .L_00FD
push dword ptr [ebp-20]
call HCALLDELETEDTOR
add esp, 4
.L_00FD:
.L_00FC:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+40], 0
je .L_00FF
push dword ptr [ebp-24]
call ASTSCOPEUPDBREAKLIST
add esp, 4
mov dword ptr [ebp-8], eax
.L_00FF:
.L_00FE:
push dword ptr [ebp-20]
call ASTGOSUBADDEXIT
add esp, 4
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-16], 0
je .L_0101
push dword ptr [ebp-28]
call HCALLPROFILER
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call HCHECKERRHND
add esp, 8
mov dword ptr [ebp-28], eax
.L_0101:
.L_0100:
cmp dword ptr [ebp+8], 0
je .L_0103
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
je .L_0105
push 0
call RTLEXITAPP
add esp, 4
.L_0105:
.L_0104:
.L_0103:
.L_0102:
cmp dword ptr [ebp-16], 0
je .L_0107
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0109
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call HMAYBECALLRESULTCTOR
add esp, 8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
call HLOADPROCRESULT
add esp, 4
.L_0109:
.L_0108:
.L_0107:
.L_0106:
.L_00F9:
.L_00F8:
push dword ptr [ebp-20]
call dword ptr [IR+28]
add esp, 4
mov dword ptr [ebp-12], 0
call ERRGETCOUNT
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-8]
je .L_010B
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 128
cmp dword ptr [Lt_011A], 1
jne .L_010D
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
jne .L_010F
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp-20]
call SYMBPROCHASFWDREFINSIGNATURE
add esp, 4
not eax
mov ecx, dword ptr [ENV+104]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .L_0111
mov dword ptr [ebp-12], -1
jmp .L_0110
.L_0111:
push -1
mov eax, dword ptr [ebp-20]
lea ebx, [eax+56]
push ebx
call SYMBDELSYMBOLTB
add esp, 8
.L_0110:
jmp .L_010E
.L_010F:
mov dword ptr [ebp-12], -1
.L_010E:
.L_010D:
.L_010C:
jmp .L_010A
.L_010B:
push 0
mov ebx, dword ptr [ebp-20]
lea eax, [ebx+56]
push eax
call SYMBDELSYMBOLTB
add esp, 8
.L_010A:
push 0
call SYMBNESTEND
add esp, 4
cmp dword ptr [ENV+124], 1
jl .L_0113
cmp dword ptr [ENV+104], 0
jne .L_0115
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call ASTPROCVECTORIZE
add esp, 4
.L_0115:
.L_0114:
.L_0113:
.L_0112:
cmp dword ptr [ebp-12], 0
je .L_0117
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
jne .L_0119
push -1
push dword ptr [ebp-24]
call HPROCFLUSH
add esp, 8
jmp .L_0118
.L_0119:
call HPROCFLUSHALL
.L_0118:
.L_0117:
.L_0116:
mov eax, dword ptr [AST+32]
mov dword ptr [AST+40], eax
mov eax, dword ptr [AST+32]
mov dword ptr [AST+132], eax
mov dword ptr [PARSER+100], 0
mov eax, dword ptr [ENV+1032]
mov dword ptr [PARSER+108], eax
mov eax, dword ptr [ENV+1032]
mov dword ptr [PARSER+112], eax
dec dword ptr [Lt_011A]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_011A:
.int 0

.section .text
.balign 16

.globl ASTPROCADDSTATICINSTANCE
ASTPROCADDSTATICINSTANCE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01BF:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01C2
push 32
call XCALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+44], eax
push 6
push 8
push 16
push dword ptr [ebp-8]
call LISTINIT
add esp, 16
.L_01C2:
.L_01C1:
push dword ptr [ebp-8]
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-12], eax
push 4
push 3
push 0
push 64
push 0
push 0
push 0
call SYMBUNIQUELABEL
push eax
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 8388608
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_01C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPROCADDGLOBALINSTANCE
ASTPROCADDGLOBALINSTANCE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01C3:
lea eax, [AST+76]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 8388608
cmp dword ptr [ebp+12], 0
je .L_01C6
inc dword ptr [AST+108]
.L_01C6:
.L_01C5:
cmp dword ptr [ebp+16], 0
je .L_01C8
inc dword ptr [AST+112]
.L_01C8:
.L_01C7:
.L_01C4:
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
HNEWPROCNODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
push 0
push -2147483648
push 43
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [AST+36], 0
je .L_006E
mov eax, dword ptr [AST+36]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
jmp .L_006D
.L_006E:
mov ebx, dword ptr [ebp-8]
mov dword ptr [AST+32], ebx
.L_006D:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [AST+36]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+68], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [AST+36], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDELPROCNODE:
push ebp
mov ebp, esp
push ebx
.L_006F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_0072
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+64]
mov ebx, dword ptr [eax+68]
mov dword ptr [ecx+68], ebx
jmp .L_0071
.L_0072:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+68]
mov dword ptr [AST+32], ecx
.L_0071:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+68], 0
je .L_0074
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov ebx, dword ptr [ecx+64]
mov dword ptr [eax+64], ebx
jmp .L_0073
.L_0074:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [AST+36], eax
.L_0073:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPROCFLUSH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp+12], 0
je .L_0078
push dword ptr [ebp-12]
call HGENSTATICINSTANCESDTORS
add esp, 4
.L_0078:
.L_0077:
mov ebx, dword ptr [ebp+8]
mov dword ptr [AST+40], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [AST+132], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [AST+136], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+48], 0
je .L_0079
mov dword ptr [ebp-16], 0
jmp .L_01DD
.L_0079:
mov dword ptr [ebp-16], 1
.L_01DD:
mov ebx, dword ptr [ebp-16]
mov dword ptr [PARSER+100], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+108], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+112], ebx
push 0
push dword ptr [ebp-12]
call SYMBNESTBEGIN
add esp, 8
cmp dword ptr [AST+136], 0
je .L_007C
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 16777216
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-12]
call dword ptr [IR+72]
add esp, 8
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call ASTSCOPEALLOCLOCALS
add esp, 4
.L_007C:
.L_007B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.L_007D:
cmp dword ptr [ebp-4], 0
je .L_007E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
call ASTLOAD
add esp, 4
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_007D
.L_007E:
cmp dword ptr [AST+136], 0
je .L_0080
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-12]
call dword ptr [IR+76]
add esp, 12
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call dword ptr [IR+52]
add esp, 4
.L_0080:
.L_007F:
push 0
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+56]
push eax
call SYMBDELSYMBOLTB
add esp, 8
push 0
call SYMBNESTEND
add esp, 4
push dword ptr [ebp+8]
call HDELPROCNODE
add esp, 4
mov dword ptr [AST+136], -1
.L_0076:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPROCFLUSHALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0081:
call HGENGLOBALINSTANCESCTOR
.L_0083:
mov eax, dword ptr [AST+32]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0087
jmp .L_0084
.L_0087:
.L_0086:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 128
test eax, eax
je .L_0089
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .L_008B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_008D
mov dword ptr [ebp-8], 0
jmp .L_008C
.L_008D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8192
test ebx, ebx
je .L_008E
push dword ptr [ebp-4]
call HMODLEVELISEMPTY
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.L_008E:
.L_008C:
.L_008B:
.L_008A:
jmp .L_0088
.L_0089:
mov dword ptr [ebp-8], 0
.L_0088:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call HPROCFLUSH
add esp, 8
.L_0085:
jmp .L_0083
.L_0084:
.L_0082:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASTUPDATE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_008F:
cmp dword ptr [ebp+8], 0
jne .L_0092
mov dword ptr [ebp-4], 0
jmp .L_0090
.L_0092:
.L_0091:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_0094
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_0096
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .L_0098
push 0
push 0
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 12
.L_0098:
.L_0097:
.L_0096:
.L_0095:
.L_0094:
.L_0093:
push dword ptr [ebp+8]
call ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTUPDATEBITFIELDS
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTOPTASSIGNMENT
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTUPDSTRCONCAT
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [AST+196], 0
je .L_009A
push 0
push 0
call ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_009A:
.L_0099:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0090:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKERRHND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00D3:
cmp dword ptr [ENV+168], 0
je .L_00D6
push dword ptr [ebp+8]
lea eax, [ENV+304]
push eax
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLERRORSETMODNAME
add esp, 8
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLERRORSETFUNCNAME
add esp, 8
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.L_00D6:
.L_00D5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .L_00D9
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call ASTNEWVAR
add esp, 20
push eax
push 0
call RTLERRORSETFUNCNAME
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.L_00D9:
.L_00D8:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 0
je .L_00DB
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call ASTNEWVAR
add esp, 20
push eax
push 0
call RTLERRORSETMODNAME
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], 0
.L_00DB:
.L_00DA:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 0
je .L_00DD
push 0
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call ASTNEWVAR
add esp, 20
push eax
call RTLERRORSETHANDLER
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 0
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBECALLRESULTCTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 20
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00E1
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .L_00DF
.L_00E1:
.L_00E0:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+112]
mov ecx, dword ptr [ebx+48]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+48]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_00E3
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_00DF
.L_00E3:
.L_00E2:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00E5
push dword ptr [ebp+12]
call SYMBHASCTOR
add esp, 4
test eax, eax
je .L_00E7
push 0
push 0
push 184
call ERRREPORT
add esp, 12
.L_00E7:
.L_00E6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00DF
.L_00E5:
.L_00E4:
push dword ptr [ebp+12]
call SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E9
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00DF
.L_00E9:
.L_00E8:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call ASTBUILDPROCRESULTVAR
add esp, 8
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call ASTBUILDCTORCALL
add esp, 8
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp-4], eax
.L_00DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLPROFILER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00EA:
cmp dword ptr [ENV+184], 0
je .L_00ED
cmp dword ptr [ENV+108], 3
je .L_00EF
push dword ptr [ebp+8]
call RTLPROFILECALL_MCOUNT
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.L_00EF:
.L_00EE:
.L_00ED:
.L_00EC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00EB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HDECLVARSFORPROCPARAMS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0123:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_0126
push dword ptr [ebp+8]
call SYMBADDVARFORPROCRESULTPARAM
add esp, 4
.L_0126:
.L_0125:
mov dword ptr [ebp-8], 1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+84], 4
jne .L_0127
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-16], eax
jmp .L_01E3
.L_0127:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
.L_01E3:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_0129:
cmp dword ptr [ebp-12], 0
je .L_012A
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+56], 4
je .L_012C
push dword ptr [ebp-12]
call SYMBADDVARFORPARAM
add esp, 4
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .L_012E
push 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ERRREPORTPARAM
add esp, 16
jmp .L_0124
.L_012E:
.L_012D:
.L_012C:
.L_012B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_012F
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-20], ebx
jmp .L_01E4
.L_012F:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-20], eax
.L_01E4:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-8]
jmp .L_0129
.L_012A:
mov dword ptr [ebp-4], -1
.L_0124:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADPROCRESULT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0131:
push dword ptr [ebp+8]
call SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0134
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call RTLSTRALLOCTMPRESULT
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ENV+104]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
mov ecx, dword ptr [ENV+104]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0136
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ebp-8]
call ASTNEWLOAD
add esp, 12
mov dword ptr [ebp-8], eax
.L_0136:
.L_0135:
jmp .L_0133
.L_0134:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWLOAD
add esp, 12
mov dword ptr [ebp-8], eax
.L_0133:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
.L_0132:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMODLEVELISEMPTY:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0137:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_013A
mov dword ptr [ebp-4], -1
jmp .L_0138
.L_013A:
.L_0139:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 21
je .L_013C
mov dword ptr [ebp-4], 0
jmp .L_0138
.L_013C:
.L_013B:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_013E
mov dword ptr [ebp-4], -1
jmp .L_0138
.L_013E:
.L_013D:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 21
je .L_0140
mov dword ptr [ebp-4], 0
jmp .L_0138
.L_0140:
.L_013F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0142
mov dword ptr [ebp-4], -1
jmp .L_0138
.L_0142:
.L_0141:
mov dword ptr [ebp-4], 0
.L_0138:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLCTORLIST:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0143:
cmp dword ptr [ebp+16], 0
je .L_0146
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+76]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], ebx
jmp .L_0145
.L_0146:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+28]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+76]
mov ebx, dword ptr [ecx+80]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], ebx
.L_0145:
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
and eax, 31
mov ebx, dword ptr [ebp-32]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-32]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-32]
and ebx, 32505856
or eax, ebx
push eax
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+16], 0
je .L_0148
cmp dword ptr [ebp+8], 0
je .L_014A
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_0149
.L_014A:
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-36]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push eax
push ebx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ebx
pop eax
add esp, 8
push eax
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
.L_0149:
jmp .L_0147
.L_0148:
cmp dword ptr [ebp+8], 0
je .L_014C
push 0
push 0
push 0
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_014B
.L_014C:
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-36]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, dword ptr [ebp-20]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push eax
push ebx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ebx
pop eax
add esp, 8
push eax
push ebx
push 0
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
.L_014B:
.L_0147:
push 64
push dword ptr [ebp-24]
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-16]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDFORBEGIN
add esp, 20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+8], 0
je .L_014E
push 0
push dword ptr [ebp-16]
call ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-20]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
jmp .L_014D
.L_014E:
push 0
push 0
push dword ptr [ebp-16]
call ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-20]
call ASTBUILDDTORCALL
add esp, 12
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
.L_014D:
push 0
cmp dword ptr [ebp+8], 0
je .L_014F
mov dword ptr [ebp-44], 1
jmp .L_01EA
.L_014F:
mov dword ptr [ebp-44], -1
.L_01EA:
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push 8
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDFOREND
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_0144:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0151:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0154
jmp .L_0152
.L_0154:
.L_0153:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
je .L_0156
jmp .L_0152
.L_0156:
.L_0155:
push dword ptr [ebp+12]
call SYMBHASDEFCTOR
add esp, 4
test eax, eax
je .L_0158
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
jne .L_015A
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call ASTBUILDCTORCALL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0159
.L_015A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push -1
call HCALLCTORLIST
add esp, 12
mov dword ptr [ebp-4], eax
.L_0159:
jmp .L_0152
.L_0158:
.L_0157:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+112], 0
jle .L_015C
push 64
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_015B
.L_015C:
push 0
push 0
push 0
push 8
push dword ptr [ebp+12]
call SYMBGETREALSIZE
add esp, 4
push edx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.L_015B:
.L_0152:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCLEARUNIONFIELDS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_015D:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.L_015F:
push dword ptr [ebp-8]
call SYMBGETREALSIZE
add esp, 4
mov ecx, dword ptr [ebp-8]
add eax, dword ptr [ecx+48]
adc edx, dword ptr [ecx+52]
sub eax, dword ptr [ebp-32]
sbb edx, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-20], eax
jl .L_0163
jg .L_01ED
cmp dword ptr [ebp-24], edx
jbe .L_0163
.L_01ED:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.L_0163:
.L_0162:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-8], edx
.L_0161:
cmp dword ptr [ebp-8], 0
je .L_0164
mov edx, dword ptr [ebp-8]
cmp dword ptr [edx], 12
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-36], edx
jmp .L_01EB
.L_0164:
mov dword ptr [ebp-36], 0
.L_01EB:
cmp dword ptr [ebp-36], 0
je .L_0166
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_01EC
.L_0166:
mov dword ptr [ebp-40], 0
.L_01EC:
cmp dword ptr [ebp-40], 0
jne .L_015F
.L_0160:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [ebp-8]
mov dword ptr [eax], edx
push 0
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.L_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HINITDYNAMICARRAYFIELD:
push ebp
mov ebp, esp
sub esp, 128
push ebx
mov dword ptr [ebp-4], 0
.L_0168:
lea eax, [ebp-68]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 16
rep stosd
pop edi
pop eax
lea eax, [ebp-68]
mov dword ptr [ebp-116], eax
lea eax, [ebp-68]
mov dword ptr [ebp-112], eax
mov dword ptr [ebp-108], 64
mov dword ptr [ebp-104], 4
mov dword ptr [ebp-100], 2
mov dword ptr [ebp-96], 50
mov dword ptr [ebp-92], 8
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 7
mov dword ptr [ebp-80], 2
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTTYPEINICLONE
add esp, 4
mov dword ptr [ebp-120], eax
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-124], ebx
.L_016B:
mov ebx, dword ptr [ebp-124]
mov eax, dword ptr [ebp-128]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp+eax*8-68], ecx
mov ecx, dword ptr [ebp-124]
mov dword ptr [ecx+56], 0
mov ecx, dword ptr [ebp-124]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-124]
mov ecx, dword ptr [ebp-128]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+ecx*8-64], ebx
mov ebx, dword ptr [ebp-124]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-124]
mov ecx, dword ptr [ebx+60]
mov dword ptr [ebp-124], ecx
inc dword ptr [ebp-128]
.L_016D:
cmp dword ptr [ebp-124], 0
jne .L_016B
.L_016C:
push dword ptr [ebp-120]
call ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+12]
and ebx, 2048
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push ebx
push 0
lea ebx, [ebp-116]
push ebx
push dword ptr [ebp-128]
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYREDIM
add esp, 20
mov dword ptr [ebp-4], eax
.L_0169:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDCTORS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_016E:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.L_0170:
cmp dword ptr [ebp-8], 0
je .L_0171
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .L_0173
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
cmp dword ptr [ebp-8], eax
je .L_0175
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_0177
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HCLEARUNIONFIELDS
add esp, 12
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .L_0170
jmp .L_0176
.L_0177:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 0
jne .L_0179
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HCALLFIELDCTOR
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .L_0178
.L_0179:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_017A
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HINITDYNAMICARRAYFIELD
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .L_0178
.L_017A:
push 0
push 64
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call ASTTYPEINICLONE
add esp, 4
push eax
push 0
push 0
push 0
push dword ptr [ebp-12]
call ASTBUILDVARFIELD
add esp, 16
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.L_0178:
.L_0176:
.L_0175:
.L_0174:
.L_0173:
.L_0172:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_0170
.L_0171:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_016F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLBASECTOR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_017B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_017E
jmp .L_017C
.L_017E:
.L_017D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0180
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+64], 0
push 64
push 0
push dword ptr [ebp-8]
push 0
push 0
push 0
push dword ptr [ebp-16]
call ASTBUILDVARFIELD
add esp, 16
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_017C
.L_0180:
.L_017F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
call SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_0182
push dword ptr [ebp-24]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0184
push 0
push 0
push 207
call ERRREPORT
add esp, 12
.L_0184:
.L_0183:
jmp .L_0181
.L_0182:
push dword ptr [ebp-20]
call SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .L_0185
push 0
push 0
push 185
call ERRREPORT
add esp, 12
.L_0185:
.L_0181:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HCALLFIELDCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.L_017C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HINITVPTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0186:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_0189
jmp .L_0187
.L_0189:
.L_0188:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
push 64
push 0
push 0
push 0
push -2147483648
mov ebx, dword ptr [ENV+296]
sal ebx, 1
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+136]
push dword ptr [eax+148]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
push 0
push 32
call ASTNEWCONV
add esp, 20
push eax
push 0
push 0
push dword ptr [SYMB+99636]
call SYMBUDTGETFIRSTFIELD
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_0187:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLCTORS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_018A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCALLBASECTOR
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCALLFIELDCTORS
add esp, 8
push eax
push dword ptr [ebp-4]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HINITVPTR
add esp, 8
push eax
push dword ptr [ebp-4]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
call ASTFINDFIRSTCODE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_018D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+8], ebx
.L_018D:
.L_018C:
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTADDAFTER
add esp, 8
.L_018B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDDTOR:
push ebp
mov ebp, esp
push ebx
.L_018E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0191
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYERASE
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .L_0190
.L_0191:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
jne .L_0192
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0194
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLSTRDELETE
add esp, 4
push eax
call ASTADD
add esp, 4
jmp .L_0193
.L_0194:
push dword ptr [ebp+12]
call SYMBHASDTOR
add esp, 4
test eax, eax
je .L_0195
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 12
push eax
call ASTADD
add esp, 4
.L_0195:
.L_0193:
jmp .L_0190
.L_0192:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0197
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYERASE
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .L_0196
.L_0197:
push dword ptr [ebp+12]
call SYMBHASDTOR
add esp, 4
test eax, eax
je .L_0198
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call HCALLCTORLIST
add esp, 12
push eax
call ASTADD
add esp, 4
.L_0198:
.L_0196:
.L_0190:
.L_018F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDDTORS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.L_0199:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_019B:
cmp dword ptr [ebp-4], 0
je .L_019C
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 12
jne .L_019E
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 8192
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
cmp ecx, dword ptr [ebx+96]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
mov esi, dword ptr [ebp-4]
mov ebx, dword ptr [esi+4]
and ebx, 262144
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01A0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call HCALLFIELDDTOR
add esp, 8
.L_01A0:
.L_019F:
.L_019E:
.L_019D:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-4], eax
jmp .L_019B
.L_019C:
.L_019A:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLDELETEDTOR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_01A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01A4
jmp .L_01A2
.L_01A4:
.L_01A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
push 0
push 0
push 0
push dword ptr [ebp-12]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 80
call ASTBUILDDELETEOP
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call ASTADD
add esp, 4
.L_01A2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLBASEDTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_01A8
jmp .L_01A6
.L_01A8:
.L_01A7:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
call SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01AA
jmp .L_01A6
.L_01AA:
.L_01A9:
push dword ptr [ebp-8]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_01AC
push 0
push 0
push 208
call ERRREPORT
add esp, 12
.L_01AC:
.L_01AB:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .L_01AE
jmp .L_01A6
.L_01AE:
.L_01AD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push -1
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 12
push eax
call ASTADD
add esp, 4
.L_01A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLDTORS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HCALLFIELDDTORS
add esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HCALLBASEDTOR
add esp, 8
.L_01B0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLSTATICCTOR:
push ebp
mov ebp, esp
.L_01B1:
push 64
push 0
push dword ptr [ebp+12]
call ASTTYPEINICLONE
add esp, 4
push eax
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
call ASTADD
add esp, 4
push dword ptr [ebp+12]
call ASTTYPEINIDELETE
add esp, 4
.L_01B2:
mov esp, ebp
pop ebp
ret
.balign 16
HCALLSTATICDTOR:
push ebp
mov ebp, esp
push ebx
.L_01B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_01B6
push 0
push -1
push 0
push 0
push 0
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYERASE
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .L_01B5
.L_01B6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .L_01B8
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .L_01B7
.L_01B8:
push 0
push dword ptr [ebp+8]
push 0
call HCALLCTORLIST
add esp, 12
push eax
call ASTADD
add esp, 4
.L_01B7:
.L_01B5:
.L_01B4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGENSTATICINSTANCESDTORS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_01BC
jmp .L_01BA
.L_01BC:
.L_01BB:
push dword ptr [ebp-4]
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_01BD:
cmp dword ptr [ebp-8], 0
je .L_01BE
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call ASTPROCBEGIN
add esp, 8
mov eax, dword ptr [AST+40]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call HCALLSTATICDTOR
add esp, 4
push 0
call ASTPROCEND
add esp, 4
push -1
push dword ptr [ebp-12]
call HPROCFLUSH
add esp, 8
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_01BD
.L_01BE:
push dword ptr [ebp-4]
call LISTEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+44]
call free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+44], 0
.L_01BA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGLOBCTORBEGIN:
push ebp
mov ebp, esp
sub esp, 8
.L_01C9:
push 4
push 3
push 0
push 64
push 0
push 0
cmp dword ptr [ebp+8], 0
je .L_01CB
mov eax, offset Lt_0020
mov dword ptr [ebp-8], eax
jmp .L_01F5
.L_01CB:
mov eax, offset Lt_0021
mov dword ptr [ebp-8], eax
.L_01F5:
push dword ptr [ebp-8]
call SYMBUNIQUELABEL
push eax
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .L_01CE
push dword ptr [ebp-4]
call SYMBADDGLOBALCTOR
add esp, 4
jmp .L_01CD
.L_01CE:
push dword ptr [ebp-4]
call SYMBADDGLOBALDTOR
add esp, 4
.L_01CD:
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 128
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 8
.L_01CA:
mov esp, ebp
pop ebp
ret
.balign 16
HGENGLOBALINSTANCESCTOR:
push ebp
mov ebp, esp
sub esp, 8
.L_01CF:
cmp dword ptr [AST+108], 0
jle .L_01D2
push -1
call HGLOBCTORBEGIN
add esp, 4
lea eax, [AST+76]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_01D3:
cmp dword ptr [ebp-4], 0
je .L_01D4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 0
je .L_01D6
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HCALLSTATICCTOR
add esp, 8
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
.L_01D6:
.L_01D5:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01D3
.L_01D4:
push 0
call ASTPROCEND
add esp, 4
.L_01D2:
.L_01D1:
cmp dword ptr [AST+112], 0
jle .L_01D8
push 0
call HGLOBCTORBEGIN
add esp, 4
lea eax, [AST+76]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_01D9:
cmp dword ptr [ebp-4], 0
je .L_01DA
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_01DC
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HCALLSTATICDTOR
add esp, 4
.L_01DC:
.L_01DB:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01D9
.L_01DA:
push 0
call ASTPROCEND
add esp, 4
.L_01D8:
.L_01D7:
.L_01D0:
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0020:	.ascii	"_GLOBAL__I\0"
.balign 4
Lt_0021:	.ascii	"_GLOBAL__D\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
