	.intel_syntax noprefix

.section .text
.balign 16

.globl FBMAINBEGIN
FBMAINBEGIN:
.type FBMAINBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0074:
cmp dword ptr [ENV+852], 0
je .L_0077
call HMAINBEGIN
jmp .L_0076
.L_0077:
call HMODLEVELBEGIN
.L_0076:
mov eax, dword ptr [ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ENV+852]
je .L_0079
cmp dword ptr [ENV+108], 0
jne .L_007B
call HBUILDDLLMAINWIN32
jmp .L_007A
.L_007B:
call HBUILDDLLMAINCTOR
.L_007A:
.L_0079:
.L_0078:
.L_0075:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBMAINBEGIN, .-FBMAINBEGIN
.cfi_endproc
.balign 16

.globl FBMAINEND
FBMAINEND:
.type FBMAINEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007D:
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+852], 0
je .L_0080
cmp dword ptr [AST+124], 0
je .L_0082
sub esp, 8
push dword ptr [ENV+1036]
push 0
call RTLDATARESTORE
add esp, 16
.L_0082:
.L_0081:
mov eax, dword ptr [ENV+96]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0080:
.L_007F:
sub esp, 12
push dword ptr [ebp-4]
call ASTPROCEND
add esp, 16
.L_007E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBMAINEND, .-FBMAINEND
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
HCALLMAIN:
.type HCALLMAIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005D:
sub esp, 8
push 0
push dword ptr [ENV+1032]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
push -1
push -2147483648
sub esp, 8
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
push -1
push -2147483648
sub esp, 8
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
sub esp, 4
push 0
push 0
push dword ptr [ebp-4]
call ASTSETTYPE
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.L_005E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCALLMAIN, .-HCALLMAIN
.cfi_endproc
.balign 16
HBUILDDLLMAINWIN32:
.type HBUILDDLLMAINWIN32, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_005F:
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset Lt_0061
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
push 0
push 0
push 1
push 0
push 0
push 9
push offset Lt_0062
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-12], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset Lt_0063
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
sub esp, 12
push 4
push dword ptr [ENV+280]
push 0
push 32
push 0
push 8
push offset Lt_0064
push 0
push dword ptr [ebp-4]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 16
sub esp, 12
sub esp, 8
push 0
sub esp, 8
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
push 0
push 1
call ASTNEWCONSTI
add esp, 24
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call SYMBGETPROCRESULT
add esp, 4
push eax
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push dword ptr [ebp-8]
sub esp, 12
push 0
push 9
push 0
push 1
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 24
push eax
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 16
call HCALLMAIN
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push 0
call ASTPROCEND
add esp, 16
.L_0060:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBUILDDLLMAINWIN32, .-HBUILDDLLMAINWIN32
.cfi_endproc
.balign 16
HBUILDDLLMAINCTOR:
.type HBUILDDLLMAINCTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0065:
sub esp, 12
push 4
push 3
push 0
push 64
push 0
push 0
push offset Lt_0067
push 0
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-4]
call SYMBADDGLOBALCTOR
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 16
call HCALLMAIN
sub esp, 12
push 0
call ASTPROCEND
add esp, 16
.L_0066:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBUILDDLLMAINCTOR, .-HBUILDDLLMAINCTOR
.cfi_endproc
.balign 16
HMAINBEGIN:
.type HMAINBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0068:
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 11
push offset Lt_006A
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
push 0
push 0
push 1
push 0
push 0
push 68
push offset Lt_006B
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 32
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETENTRYPOINT
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ENV+96], 2
jne .L_006D
mov dword ptr [ebp-12], 64
cmp dword ptr [ENV+104], 1
jne .L_006F
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_006F:
.L_006E:
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 524288
.L_006C:
sub esp, 12
push 4
push 3
push 0
push dword ptr [ebp-12]
push 0
push 11
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-4]
call SYMBADDPROC
add esp, 48
mov dword ptr [ENV+1032], eax
mov eax, dword ptr [ENV+1032]
or dword ptr [eax+12], 4096
sub esp, 8
push -1
push dword ptr [ENV+1032]
call ASTPROCBEGIN
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0069:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAINBEGIN, .-HMAINBEGIN
.cfi_endproc
.balign 16
HMODLEVELBEGIN:
.type HMODLEVELBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0070:
sub esp, 12
push 4
push 3
push 0
push 64
push 0
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
push -1
sub esp, 12
call FBGETMODULEENTRY
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 28
push dword ptr [ebp-12]
push offset Lt_0072
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 48
mov dword ptr [ENV+1032], eax
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ENV+1032]
call SYMBADDGLOBALCTOR
add esp, 16
mov eax, dword ptr [ENV+1032]
or dword ptr [eax+12], 2
mov eax, dword ptr [ENV+1032]
or dword ptr [eax+12], 8192
sub esp, 8
push -1
push dword ptr [ENV+1032]
call ASTPROCBEGIN
add esp, 16
.L_0071:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMODLEVELBEGIN, .-HMODLEVELBEGIN
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0061:	.ascii	"__FB_DLLINSTANCE__\0"
.balign 4
Lt_0062:	.ascii	"__FB_DLLREASON__\0"
.balign 4
Lt_0063:	.ascii	"__FB_DLLRESERVED__\0"
.balign 4
Lt_0064:	.ascii	"DllMain\0"
.balign 4
Lt_0067:	.ascii	"__fb_DllMain_ctor\0"
.balign 4
Lt_006A:	.ascii	"__FB_ARGC__\0"
.balign 4
Lt_006B:	.ascii	"__FB_ARGV__\0"
.balign 4
Lt_0072:	.ascii	"{modlevel}\0"
