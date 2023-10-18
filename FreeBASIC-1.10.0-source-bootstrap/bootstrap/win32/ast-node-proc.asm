	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTPROCLISTINIT@0
_ASTPROCLISTINIT@0:
.L_0068:
mov dword ptr [_AST+32], 0
mov dword ptr [_AST+36], 0
mov dword ptr [_AST+40], 0
push 6
push 12
push 32
lea eax, [_AST+76]
push eax
call _LISTINIT@16
mov dword ptr [_AST+108], 0
mov dword ptr [_AST+112], 0
.L_0069:
ret
.balign 16

.globl _ASTPROCLISTEND@0
_ASTPROCLISTEND@0:
.L_006A:
mov dword ptr [_AST+112], 0
mov dword ptr [_AST+108], 0
lea eax, [_AST+76]
push eax
call _LISTEND@4
mov dword ptr [_AST+32], 0
mov dword ptr [_AST+36], 0
mov dword ptr [_AST+40], 0
.L_006B:
ret
.balign 16

.globl _ASTADD@4
_ASTADD@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_009C:
push dword ptr [ebp+8]
call _ASTUPDATE@4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_009F
mov dword ptr [ebp-4], 0
jmp .L_009D
.L_009F:
.L_009E:
mov eax, dword ptr [_AST+40]
cmp dword ptr [eax+68], 0
je .L_00A1
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
jmp .L_00A0
.L_00A1:
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
.L_00A0:
mov ebx, dword ptr [_AST+40]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+68]
mov dword ptr [eax+72], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+76], 0
mov ecx, dword ptr [_AST+40]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+68], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_009D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTADDAFTER@8
_ASTADDAFTER@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
push dword ptr [ebp+8]
call _ASTUPDATE@4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_00A5
mov dword ptr [ebp-4], 0
jmp .L_00A3
.L_00A5:
.L_00A4:
cmp dword ptr [ebp+12], 0
je .L_00A7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+72], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+76]
mov dword ptr [eax+76], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+76], 0
je .L_00A9
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+76]
cmp dword ptr [eax+72], 0
je .L_00AB
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+76]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+72], eax
.L_00AB:
.L_00AA:
jmp .L_00A8
.L_00A9:
mov eax, dword ptr [_AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+68], ecx
.L_00A8:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+76], eax
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+72], 0
mov eax, dword ptr [_AST+40]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ecx+76], ebx
mov ebx, dword ptr [_AST+40]
cmp dword ptr [ebx+64], 0
je .L_00AD
mov ebx, dword ptr [_AST+40]
mov ecx, dword ptr [ebx+64]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+72], ebx
jmp .L_00AC
.L_00AD:
mov ebx, dword ptr [_AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+68], ecx
.L_00AC:
mov ecx, dword ptr [_AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+64], ebx
.L_00A6:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTADDUNSCOPED@4
_ASTADDUNSCOPED@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00AE:
cmp dword ptr [ebp+8], 0
jne .L_00B1
jmp .L_00AF
.L_00B1:
.L_00B0:
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_00B3
mov ebx, dword ptr [_AST+40]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_00B3:
.L_00B2:
mov dword ptr [_AST+196], 0
cmp dword ptr [ebp-4], 0
jne .L_00B5
push dword ptr [ebp+8]
call _ASTADD@4
mov dword ptr [ebp+8], eax
jmp .L_00B4
.L_00B5:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ASTADDAFTER@8
mov dword ptr [ebp+8], eax
.L_00B4:
mov dword ptr [_AST+196], -1
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
.L_00AF:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTFINDFIRSTCODE@4
_ASTFINDFIRSTCODE@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
.L_00B8:
cmp dword ptr [ebp-8], 0
je .L_00B9
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_00BD
.L_00BE:
cmp dword ptr [ebp-12], 21
je .L_00BD
.L_00BF:
cmp dword ptr [ebp-12], 24
je .L_00BD
.L_00C0:
cmp dword ptr [ebp-12], 27
je .L_00BD
.L_00C1:
cmp dword ptr [ebp-12], 29
je .L_00BD
.L_00C2:
cmp dword ptr [ebp-12], 30
jne .L_00BC
.L_00BD:
jmp .L_00BA
.L_00BC:
jmp .L_00B9
.L_00C3:
.L_00BA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
jmp .L_00B8
.L_00B9:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTPROCBEGIN@8
_ASTPROCBEGIN@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00C4:
call _HNEWPROCNODE@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [_ENV+568]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [_AST+40], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [_AST+132], ebx
cmp dword ptr [ebp+12], 0
je .L_00C6
mov dword ptr [ebp-12], 0
jmp .L_00D0
.L_00C6:
mov dword ptr [ebp-12], 1
.L_00D0:
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+100], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_PARSER+108], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_PARSER+112], ebx
push 0
push dword ptr [ebp+8]
call _SYMBNESTBEGIN@8
push 4
push 0
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+36], eax
push 0
push 0
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+40], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+52], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+48], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+56], 0
push dword ptr [ebp+8]
call dword ptr [_IR+24]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00C9
push dword ptr [ebp+8]
call _HDECLVARSFORPROCPARAMS@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_00CB
push dword ptr [ebp+8]
call _SYMBADDPROCRESULTVAR@4
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
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
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .L_00CE
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
call _ASTNEWVAR@20
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+60]
call _ASTNEWVAR@20
push eax
call _RTLINITAPP@8
mov dword ptr [_ENV+1036], eax
jmp .L_00CD
.L_00CE:
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
je .L_00CF
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+144]
push dword ptr [ecx]
call _HINITVPTR@8
push eax
call _ASTADD@4
.L_00CF:
.L_00CD:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+36]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.L_00C5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTPROCEND@4
_ASTPROCEND@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00F1:
mov eax, dword ptr [_AST+40]
mov dword ptr [ebp-24], eax
inc dword ptr [_Lt_011B]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
call _ERRGETCOUNT@0
test eax, eax
jne .L_00F4
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .L_00F6
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 4
test eax, eax
jne .L_00F8
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 4
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HCALLCTORS@8
.L_00F8:
.L_00F7:
.L_00F6:
.L_00F5:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+64]
call _ASTSCOPEDESTROYVARS@4
.L_00F4:
.L_00F3:
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+40]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [_PARSER+108]
push dword ptr [eax+60]
call _SYMBCHECKLABELS@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00FA
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .L_00FC
push dword ptr [ebp-20]
call _HCALLDTORS@4
.L_00FC:
.L_00FB:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+8]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .L_00FE
push dword ptr [ebp-20]
call _HCALLDELETEDTOR@4
.L_00FE:
.L_00FD:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+44], 0
je .L_0100
push dword ptr [ebp-24]
call _ASTSCOPEUPDBREAKLIST@4
mov dword ptr [ebp-8], eax
.L_0100:
.L_00FF:
push dword ptr [ebp-20]
call _ASTGOSUBADDEXIT@4
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-16], 0
je .L_0102
push dword ptr [ebp-28]
call _HCALLPROFILER@4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call _HCHECKERRHND@8
mov dword ptr [ebp-28], eax
.L_0102:
.L_0101:
cmp dword ptr [ebp+8], 0
je .L_0104
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+52], 0
je .L_0106
push 0
call _RTLEXITAPP@4
.L_0106:
.L_0105:
.L_0104:
.L_0103:
cmp dword ptr [ebp-16], 0
je .L_0108
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_010A
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call _HMAYBECALLRESULTCTOR@8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
call _HLOADPROCRESULT@4
.L_010A:
.L_0109:
.L_0108:
.L_0107:
.L_00FA:
.L_00F9:
push dword ptr [ebp-20]
call dword ptr [_IR+28]
mov dword ptr [ebp-12], 0
call _ERRGETCOUNT@0
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-8]
je .L_010C
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 128
cmp dword ptr [_Lt_011B], 1
jne .L_010E
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+52], 0
jne .L_0110
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp-20]
call _SYMBPROCHASFWDREFINSIGNATURE@4
not eax
mov ecx, dword ptr [_ENV+104]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .L_0112
mov dword ptr [ebp-12], -1
jmp .L_0111
.L_0112:
push -1
mov eax, dword ptr [ebp-20]
lea ebx, [eax+56]
push ebx
call _SYMBDELSYMBOLTB@8
.L_0111:
jmp .L_010F
.L_0110:
mov dword ptr [ebp-12], -1
.L_010F:
.L_010E:
.L_010D:
jmp .L_010B
.L_010C:
push 0
mov ebx, dword ptr [ebp-20]
lea eax, [ebx+56]
push eax
call _SYMBDELSYMBOLTB@8
.L_010B:
push 0
call _SYMBNESTEND@4
cmp dword ptr [_ENV+124], 1
jl .L_0114
cmp dword ptr [_ENV+104], 0
jne .L_0116
mov eax, dword ptr [ebp-24]
push dword ptr [eax+64]
call _ASTPROCVECTORIZE@4
.L_0116:
.L_0115:
.L_0114:
.L_0113:
cmp dword ptr [ebp-12], 0
je .L_0118
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+52], 0
jne .L_011A
push -1
push dword ptr [ebp-24]
call _HPROCFLUSH@8
jmp .L_0119
.L_011A:
call _HPROCFLUSHALL@0
.L_0119:
.L_0118:
.L_0117:
mov eax, dword ptr [_AST+32]
mov dword ptr [_AST+40], eax
mov eax, dword ptr [_AST+32]
mov dword ptr [_AST+132], eax
mov dword ptr [_PARSER+100], 0
mov eax, dword ptr [_ENV+1032]
mov dword ptr [_PARSER+108], eax
mov eax, dword ptr [_ENV+1032]
mov dword ptr [_PARSER+112], eax
dec dword ptr [_Lt_011B]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_011B:
.int 0

.section .text
.balign 16

.globl _ASTPROCADDSTATICINSTANCE@4
_ASTPROCADDSTATICINSTANCE@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01C0:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01C3
push 32
call _XCALLOCATE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+44], eax
push 6
push 8
push 16
push dword ptr [ebp-8]
call _LISTINIT@16
.L_01C3:
.L_01C2:
push dword ptr [ebp-8]
call _LISTNEWNODE@4
mov dword ptr [ebp-12], eax
push 4
push 3
push 0
push 64
push 0
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push 0
call _SYMBPREADDPROC@4
push eax
call _SYMBADDPROC@36
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
.L_01C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTPROCADDGLOBALINSTANCE@12
_ASTPROCADDGLOBALINSTANCE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01C4:
lea eax, [_AST+76]
push eax
call _LISTNEWNODE@4
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
je .L_01C7
inc dword ptr [_AST+108]
.L_01C7:
.L_01C6:
cmp dword ptr [ebp+16], 0
je .L_01C9
inc dword ptr [_AST+112]
.L_01C9:
.L_01C8:
.L_01C5:
pop ebx
mov esp, ebp
pop ebp
ret 12
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
_HNEWPROCNODE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_006C:
push 0
push -2147483648
push 43
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
cmp dword ptr [_AST+36], 0
je .L_006F
mov eax, dword ptr [_AST+36]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+76], ebx
jmp .L_006E
.L_006F:
mov ebx, dword ptr [ebp-8]
mov dword ptr [_AST+32], ebx
.L_006E:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [_AST+36]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [_AST+36], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELPROCNODE@4:
push ebp
mov ebp, esp
push ebx
.L_0070:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+72], 0
je .L_0073
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
mov ebx, dword ptr [eax+76]
mov dword ptr [ecx+76], ebx
jmp .L_0072
.L_0073:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+76]
mov dword ptr [_AST+32], ecx
.L_0072:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+76], 0
je .L_0075
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [ecx+72]
mov dword ptr [eax+72], ebx
jmp .L_0074
.L_0075:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+72]
mov dword ptr [_AST+36], eax
.L_0074:
push dword ptr [ebp+8]
call _ASTDELNODE@4
.L_0071:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPROCFLUSH@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp+12], 0
je .L_0079
push dword ptr [ebp-12]
call _HGENSTATICINSTANCESDTORS@4
.L_0079:
.L_0078:
mov ebx, dword ptr [ebp+8]
mov dword ptr [_AST+40], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_AST+132], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [_AST+136], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_007A
mov dword ptr [ebp-16], 0
jmp .L_01DE
.L_007A:
mov dword ptr [ebp-16], 1
.L_01DE:
mov ebx, dword ptr [ebp-16]
mov dword ptr [_PARSER+100], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+108], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+112], ebx
push 0
push dword ptr [ebp-12]
call _SYMBNESTBEGIN@8
cmp dword ptr [_AST+136], 0
je .L_007D
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 16777216
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
push dword ptr [ebp-12]
call dword ptr [_IR+72]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call _ASTSCOPEALLOCLOCALS@4
.L_007D:
.L_007C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_007E:
cmp dword ptr [ebp-4], 0
je .L_007F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
call _ASTLOAD@4
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_007E
.L_007F:
cmp dword ptr [_AST+136], 0
je .L_0081
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
push dword ptr [ebp-12]
call dword ptr [_IR+76]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call dword ptr [_IR+52]
.L_0081:
.L_0080:
push 0
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+56]
push eax
call _SYMBDELSYMBOLTB@8
push 0
call _SYMBNESTEND@4
push dword ptr [ebp+8]
call _HDELPROCNODE@4
mov dword ptr [_AST+136], -1
.L_0077:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPROCFLUSHALL@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0082:
call _HGENGLOBALINSTANCESCTOR@0
.L_0084:
mov eax, dword ptr [_AST+32]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0088
jmp .L_0085
.L_0088:
.L_0087:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 128
test eax, eax
je .L_008A
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .L_008C
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_008E
mov dword ptr [ebp-8], 0
jmp .L_008D
.L_008E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8192
test ebx, ebx
je .L_008F
push dword ptr [ebp-4]
call _HMODLEVELISEMPTY@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.L_008F:
.L_008D:
.L_008C:
.L_008B:
jmp .L_0089
.L_008A:
mov dword ptr [ebp-8], 0
.L_0089:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _HPROCFLUSH@8
.L_0086:
jmp .L_0084
.L_0085:
.L_0083:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ASTUPDATE@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0090:
cmp dword ptr [ebp+8], 0
jne .L_0093
mov dword ptr [ebp-4], 0
jmp .L_0091
.L_0093:
.L_0092:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_0095
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_0097
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .L_0099
push 0
push 0
push dword ptr [ebp+8]
call _ASTSETTYPE@12
.L_0099:
.L_0098:
.L_0097:
.L_0096:
.L_0095:
.L_0094:
push dword ptr [ebp+8]
call _ASTTYPEINIUPDATE@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTUPDATEBITFIELDS@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTOPTIMIZETREE@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTOPTASSIGNMENT@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTUPDSTRCONCAT@4
mov dword ptr [ebp+8], eax
cmp dword ptr [_AST+196], 0
je .L_009B
push 0
push 0
call _ASTDTORLISTFLUSH@4
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
.L_009B:
.L_009A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0091:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCHECKERRHND@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00D4:
cmp dword ptr [_ENV+168], 0
je .L_00D7
push dword ptr [ebp+8]
lea eax, [_ENV+304]
push eax
call _ASTNEWCONSTSTR@4
push eax
push dword ptr [ebp+12]
call _RTLERRORSETMODNAME@8
push eax
call _ASTADDAFTER@8
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call _ASTNEWCONSTSTR@4
push eax
push dword ptr [ebp+12]
call _RTLERRORSETFUNCNAME@8
push eax
call _ASTADDAFTER@8
mov dword ptr [ebp+8], eax
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .L_00DA
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call _ASTNEWVAR@20
push eax
push 0
call _RTLERRORSETFUNCNAME@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.L_00DA:
.L_00D9:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 0
je .L_00DC
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _ASTNEWVAR@20
push eax
push 0
call _RTLERRORSETMODNAME@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], 0
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 0
je .L_00DE
push 0
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call _ASTNEWVAR@20
push eax
call _RTLERRORSETHANDLER@8
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 0
.L_00DE:
.L_00DD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMAYBECALLRESULTCTOR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DF:
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
je .L_00E2
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .L_00E0
.L_00E2:
.L_00E1:
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
je .L_00E4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_00E0
.L_00E4:
.L_00E3:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00E6
push dword ptr [ebp+12]
call _SYMBHASCTOR@4
test eax, eax
je .L_00E8
push 0
push 0
push 184
call _ERRREPORT@12
.L_00E8:
.L_00E7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00E0
.L_00E6:
.L_00E5:
push dword ptr [ebp+12]
call _SYMBGETPROCRESULT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00EA
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00E0
.L_00EA:
.L_00E9:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _ASTBUILDPROCRESULTVAR@8
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _ASTBUILDCTORCALL@8
push eax
call _ASTADDAFTER@8
mov dword ptr [ebp-4], eax
.L_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLPROFILER@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00EB:
cmp dword ptr [_ENV+184], 0
je .L_00EE
cmp dword ptr [_ENV+108], 3
je .L_00F0
push dword ptr [ebp+8]
call _RTLPROFILECALL_MCOUNT@0
push eax
call _ASTADDAFTER@8
mov dword ptr [ebp+8], eax
.L_00F0:
.L_00EF:
.L_00EE:
.L_00ED:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00EC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDECLVARSFORPROCPARAMS@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0124:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_0127
push dword ptr [ebp+8]
call _SYMBADDVARFORPROCRESULTPARAM@4
.L_0127:
.L_0126:
mov dword ptr [ebp-8], 1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+84], 4
jne .L_0128
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-16], eax
jmp .L_01E4
.L_0128:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
.L_01E4:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_012A:
cmp dword ptr [ebp-12], 0
je .L_012B
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+56], 4
je .L_012D
push dword ptr [ebp-12]
call _SYMBADDVARFORPARAM@4
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .L_012F
push 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ERRREPORTPARAM@16
jmp .L_0125
.L_012F:
.L_012E:
.L_012D:
.L_012C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_0130
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-20], ebx
jmp .L_01E5
.L_0130:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-20], eax
.L_01E5:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-8]
jmp .L_012A
.L_012B:
mov dword ptr [ebp-4], -1
.L_0125:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HLOADPROCRESULT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0132:
push dword ptr [ebp+8]
call _SYMBGETPROCRESULT@4
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
je .L_0135
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
call _RTLSTRALLOCTMPRESULT@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_ENV+104]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
mov ecx, dword ptr [_ENV+104]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0137
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ebp-8]
call _ASTNEWLOAD@12
mov dword ptr [ebp-8], eax
.L_0137:
.L_0136:
jmp .L_0134
.L_0135:
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
call _ASTNEWVAR@20
push eax
call _ASTNEWLOAD@12
mov dword ptr [ebp-8], eax
.L_0134:
push dword ptr [ebp-8]
call _ASTADD@4
.L_0133:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMODLEVELISEMPTY@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0138:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_013B
mov dword ptr [ebp-4], -1
jmp .L_0139
.L_013B:
.L_013A:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 21
je .L_013D
mov dword ptr [ebp-4], 0
jmp .L_0139
.L_013D:
.L_013C:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_013F
mov dword ptr [ebp-4], -1
jmp .L_0139
.L_013F:
.L_013E:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 21
je .L_0141
mov dword ptr [ebp-4], 0
jmp .L_0139
.L_0141:
.L_0140:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0143
mov dword ptr [ebp-4], -1
jmp .L_0139
.L_0143:
.L_0142:
mov dword ptr [ebp-4], 0
.L_0139:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCALLCTORLIST@12:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0144:
cmp dword ptr [ebp+16], 0
je .L_0147
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+80]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], ebx
jmp .L_0146
.L_0147:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+28]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+80]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], ebx
.L_0146:
push 0
push 8
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL@8
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
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+16], 0
je .L_0149
cmp dword ptr [ebp+8], 0
je .L_014B
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD@16
mov dword ptr [ebp-24], eax
jmp .L_014A
.L_014B:
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
call _ASTBUILDVARFIELD@16
mov dword ptr [ebp-24], eax
.L_014A:
jmp .L_0148
.L_0149:
cmp dword ptr [ebp+8], 0
je .L_014D
push 0
push 0
push 0
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD@16
mov dword ptr [ebp-24], eax
jmp .L_014C
.L_014D:
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
call _ASTBUILDVARFIELD@16
mov dword ptr [ebp-24], eax
.L_014C:
.L_0148:
push 64
push dword ptr [ebp-24]
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-16]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
mov dword ptr [ebp-28], eax
push -1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDFORBEGIN@20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+8], 0
je .L_014F
push 0
push dword ptr [ebp-16]
call _ASTBUILDVARDEREF@4
push eax
push dword ptr [ebp-20]
call _ASTBUILDCTORCALL@8
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
jmp .L_014E
.L_014F:
push 0
push 0
push dword ptr [ebp-16]
call _ASTBUILDVARDEREF@4
push eax
push dword ptr [ebp-20]
call _ASTBUILDDTORCALL@12
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
.L_014E:
push 0
cmp dword ptr [ebp+8], 0
je .L_0150
mov dword ptr [ebp-44], 1
jmp .L_01EB
.L_0150:
mov dword ptr [ebp-44], -1
.L_01EB:
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call _ASTBUILDVARINC@8
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
push 0
push 8
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDFOREND@16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_0145:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCALLFIELDCTOR@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0152:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0155
jmp .L_0153
.L_0155:
.L_0154:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
je .L_0157
jmp .L_0153
.L_0157:
.L_0156:
push dword ptr [ebp+12]
call _SYMBHASDEFCTOR@4
test eax, eax
je .L_0159
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
jne .L_015B
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _ASTBUILDCTORCALL@8
mov dword ptr [ebp-4], eax
jmp .L_015A
.L_015B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push -1
call _HCALLCTORLIST@12
mov dword ptr [ebp-4], eax
.L_015A:
jmp .L_0153
.L_0159:
.L_0158:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+116], 0
jle .L_015D
push 64
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_015C
.L_015D:
push 0
push 0
push 0
push 8
push dword ptr [ebp+12]
call _SYMBGETREALSIZE@4
push edx
push eax
call _ASTNEWCONSTI@16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-4], eax
.L_015C:
.L_0153:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCLEARUNIONFIELDS@12:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_015E:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.L_0160:
push dword ptr [ebp-8]
call _SYMBGETREALSIZE@4
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
jl .L_0164
jg .L_01EE
cmp dword ptr [ebp-24], edx
jbe .L_0164
.L_01EE:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.L_0164:
.L_0163:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+176]
mov dword ptr [ebp-8], edx
.L_0162:
cmp dword ptr [ebp-8], 0
je .L_0165
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
jmp .L_01EC
.L_0165:
mov dword ptr [ebp-36], 0
.L_01EC:
cmp dword ptr [ebp-36], 0
je .L_0167
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_01ED
.L_0167:
mov dword ptr [ebp-40], 0
.L_01ED:
cmp dword ptr [ebp-40], 0
jne .L_0160
.L_0161:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [ebp-8]
mov dword ptr [eax], edx
push 0
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI@16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-4], eax
.L_015F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HINITDYNAMICARRAYFIELD@8:
push ebp
mov ebp, esp
sub esp, 128
push ebx
mov dword ptr [ebp-4], 0
.L_0169:
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
call _ASTTYPEINICLONE@4
mov dword ptr [ebp-120], eax
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-124], ebx
.L_016C:
mov ebx, dword ptr [ebp-124]
mov eax, dword ptr [ebp-128]
mov ecx, dword ptr [ebx+64]
mov dword ptr [ebp+eax*8-68], ecx
mov ecx, dword ptr [ebp-124]
mov dword ptr [ecx+64], 0
mov ecx, dword ptr [ebp-124]
mov eax, dword ptr [ecx+68]
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-124]
mov ecx, dword ptr [ebp-128]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+ecx*8-64], ebx
mov ebx, dword ptr [ebp-124]
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-124]
mov ecx, dword ptr [ebx+68]
mov dword ptr [ebp-124], ecx
inc dword ptr [ebp-128]
.L_016E:
cmp dword ptr [ebp-124], 0
jne .L_016C
.L_016D:
push dword ptr [ebp-120]
call _ASTDELTREE@4
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
call _ASTBUILDVARFIELD@16
push eax
call _RTLARRAYREDIM@20
mov dword ptr [ebp-4], eax
.L_016A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLFIELDCTORS@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_016F:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.L_0171:
cmp dword ptr [ebp-8], 0
je .L_0172
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .L_0174
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
cmp dword ptr [ebp-8], eax
je .L_0176
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_0178
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HCLEARUNIONFIELDS@12
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .L_0171
jmp .L_0177
.L_0178:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 0
jne .L_017A
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HCALLFIELDCTOR@8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .L_0179
.L_017A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_017B
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HINITDYNAMICARRAYFIELD@8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .L_0179
.L_017B:
push 0
push 64
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _ASTTYPEINICLONE@4
push eax
push 0
push 0
push 0
push dword ptr [ebp-12]
call _ASTBUILDVARFIELD@16
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
.L_0179:
.L_0177:
.L_0176:
.L_0175:
.L_0174:
.L_0173:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .L_0171
.L_0172:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_0170:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLBASECTOR@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_017C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_017F
jmp .L_017D
.L_017F:
.L_017E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0181
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
call _ASTBUILDVARFIELD@16
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
mov dword ptr [ebp-4], eax
jmp .L_017D
.L_0181:
.L_0180:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_0183
push dword ptr [ebp-24]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_0185
push 0
push 0
push 207
call _ERRREPORT@12
.L_0185:
.L_0184:
jmp .L_0182
.L_0183:
push dword ptr [ebp-20]
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
je .L_0186
push 0
push 0
push 185
call _ERRREPORT@12
.L_0186:
.L_0182:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HCALLFIELDCTOR@8
mov dword ptr [ebp-4], eax
.L_017D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HINITVPTR@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0187:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_018A
jmp .L_0188
.L_018A:
.L_0189:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
push 64
push 0
push 0
push 0
push -2147483648
mov ebx, dword ptr [_ENV+296]
sal ebx, 1
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+140]
push dword ptr [eax+148]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
push 0
push 32
call _ASTNEWCONV@20
push eax
push 0
push 0
push dword ptr [_SYMB+99644]
call _SYMBUDTGETFIRSTFIELD@4
push eax
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
.L_0188:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLCTORS@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_018B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCALLBASECTOR@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCALLFIELDCTORS@8
push eax
push dword ptr [ebp-4]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HINITVPTR@8
push eax
push dword ptr [ebp-4]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
call _ASTFINDFIRSTCODE@4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_018E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
mov dword ptr [ebp+8], ebx
.L_018E:
.L_018D:
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTADDAFTER@8
.L_018C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLFIELDDTOR@8:
push ebp
mov ebp, esp
push ebx
.L_018F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0192
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
call _RTLARRAYERASE@12
push eax
call _ASTADD@4
jmp .L_0191
.L_0192:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
jne .L_0193
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0195
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
call _RTLSTRDELETE@4
push eax
call _ASTADD@4
jmp .L_0194
.L_0195:
push dword ptr [ebp+12]
call _SYMBHASDTOR@4
test eax, eax
je .L_0196
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL@12
push eax
call _ASTADD@4
.L_0196:
.L_0194:
jmp .L_0191
.L_0193:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0198
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
call _RTLARRAYERASE@12
push eax
call _ASTADD@4
jmp .L_0197
.L_0198:
push dword ptr [ebp+12]
call _SYMBHASDTOR@4
test eax, eax
je .L_0199
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _HCALLCTORLIST@12
push eax
call _ASTADD@4
.L_0199:
.L_0197:
.L_0191:
.L_0190:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLFIELDDTORS@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.L_019A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_019C:
cmp dword ptr [ebp-4], 0
je .L_019D
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 12
jne .L_019F
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
je .L_01A1
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _HCALLFIELDDTOR@8
.L_01A1:
.L_01A0:
.L_019F:
.L_019E:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .L_019C
.L_019D:
.L_019B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLDELETEDTOR@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_01A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call _SYMBGETCOMPDTOR1@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01A5
jmp .L_01A3
.L_01A5:
.L_01A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
push 0
push 0
push 0
push dword ptr [ebp-12]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 80
call _ASTBUILDDELETEOP@8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _ASTADD@4
.L_01A3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCALLBASEDTOR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_01A9
jmp .L_01A7
.L_01A9:
.L_01A8:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
call _SYMBGETCOMPDTOR1@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01AB
jmp .L_01A7
.L_01AB:
.L_01AA:
push dword ptr [ebp-8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_01AD
push 0
push 0
push 208
call _ERRREPORT@12
.L_01AD:
.L_01AC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .L_01AF
jmp .L_01A7
.L_01AF:
.L_01AE:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push -1
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _ASTBUILDVARFIELD@16
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL@12
push eax
call _ASTADD@4
.L_01A7:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLDTORS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HCALLFIELDDTORS@8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HCALLBASEDTOR@8
.L_01B1:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCALLSTATICCTOR@8:
push ebp
mov ebp, esp
.L_01B2:
push 64
push 0
push dword ptr [ebp+12]
call _ASTTYPEINICLONE@4
push eax
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
push eax
call _ASTADD@4
push dword ptr [ebp+12]
call _ASTTYPEINIDELETE@4
.L_01B3:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCALLSTATICDTOR@4:
push ebp
mov ebp, esp
push ebx
.L_01B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_01B7
push 0
push -1
push 0
push 0
push 0
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
call _RTLARRAYERASE@12
push eax
call _ASTADD@4
jmp .L_01B6
.L_01B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .L_01B9
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL@12
push eax
call _ASTADD@4
jmp .L_01B8
.L_01B9:
push 0
push dword ptr [ebp+8]
push 0
call _HCALLCTORLIST@12
push eax
call _ASTADD@4
.L_01B8:
.L_01B6:
.L_01B5:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGENSTATICINSTANCESDTORS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_01BD
jmp .L_01BB
.L_01BD:
.L_01BC:
push dword ptr [ebp-4]
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
.L_01BE:
cmp dword ptr [ebp-8], 0
je .L_01BF
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call _ASTPROCBEGIN@8
mov eax, dword ptr [_AST+40]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _HCALLSTATICDTOR@4
push 0
call _ASTPROCEND@4
push -1
push dword ptr [ebp-12]
call _HPROCFLUSH@8
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
jmp .L_01BE
.L_01BF:
push dword ptr [ebp-4]
call _LISTEND@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+44]
call _free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+44], 0
.L_01BB:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGLOBCTORBEGIN@4:
push ebp
mov ebp, esp
sub esp, 8
.L_01CA:
push 4
push 3
push 0
push 64
push 0
push 0
cmp dword ptr [ebp+8], 0
je .L_01CC
mov eax, offset _Lt_0021
mov dword ptr [ebp-8], eax
jmp .L_01F6
.L_01CC:
mov eax, offset _Lt_0022
mov dword ptr [ebp-8], eax
.L_01F6:
push dword ptr [ebp-8]
call _SYMBUNIQUELABEL@0
push eax
push 0
call _SYMBPREADDPROC@4
push eax
call _SYMBADDPROC@36
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .L_01CF
push dword ptr [ebp-4]
call _SYMBADDGLOBALCTOR@4
jmp .L_01CE
.L_01CF:
push dword ptr [ebp-4]
call _SYMBADDGLOBALDTOR@4
.L_01CE:
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 128
push 0
push dword ptr [ebp-4]
call _ASTPROCBEGIN@8
.L_01CB:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGENGLOBALINSTANCESCTOR@0:
push ebp
mov ebp, esp
sub esp, 8
.L_01D0:
cmp dword ptr [_AST+108], 0
jle .L_01D3
push -1
call _HGLOBCTORBEGIN@4
lea eax, [_AST+76]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_01D4:
cmp dword ptr [ebp-4], 0
je .L_01D5
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 0
je .L_01D7
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HCALLSTATICCTOR@8
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
.L_01D7:
.L_01D6:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_01D4
.L_01D5:
push 0
call _ASTPROCEND@4
.L_01D3:
.L_01D2:
cmp dword ptr [_AST+112], 0
jle .L_01D9
push 0
call _HGLOBCTORBEGIN@4
lea eax, [_AST+76]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-4], eax
.L_01DA:
cmp dword ptr [ebp-4], 0
je .L_01DB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_01DD
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HCALLSTATICDTOR@4
.L_01DD:
.L_01DC:
push dword ptr [ebp-4]
call _LISTGETPREV@4
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01DB:
push 0
call _ASTPROCEND@4
.L_01D9:
.L_01D8:
.L_01D1:
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0021:	.ascii	"_GLOBAL__I\0"
.balign 4
_Lt_0022:	.ascii	"_GLOBAL__D\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
