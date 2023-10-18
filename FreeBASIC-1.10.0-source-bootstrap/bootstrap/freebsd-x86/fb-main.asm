	.intel_syntax noprefix

.section .text
.balign 16

.globl FBMAINBEGIN
FBMAINBEGIN:
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
ret
.balign 16

.globl FBMAINEND
FBMAINEND:
push ebp
mov ebp, esp
sub esp, 4
.L_007D:
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+852], 0
je .L_0080
cmp dword ptr [AST+124], 0
je .L_0082
push dword ptr [ENV+1036]
push 0
call RTLDATARESTORE
add esp, 8
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
push dword ptr [ebp-4]
call ASTPROCEND
add esp, 4
.L_007E:
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
HCALLMAIN:
push ebp
mov ebp, esp
sub esp, 4
.L_005D:
push 0
push dword ptr [ENV+1032]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
push -1
push -2147483648
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
push 0
push 0
push dword ptr [ebp-4]
call ASTSETTYPE
add esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.L_005E:
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDDLLMAINWIN32:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_005F:
push 0
call SYMBPREADDPROC
add esp, 4
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
add esp, 36
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 8
push 0
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
push 0
push 1
call ASTNEWCONSTI
add esp, 16
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
add esp, 12
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 9
push 0
push 1
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 4
call HCALLMAIN
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push 0
call ASTPROCEND
add esp, 4
.L_0060:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDDLLMAINCTOR:
push ebp
mov ebp, esp
sub esp, 4
.L_0065:
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
add esp, 36
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call SYMBADDGLOBALCTOR
add esp, 4
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 8
call HCALLMAIN
push 0
call ASTPROCEND
add esp, 4
.L_0066:
mov esp, ebp
pop ebp
ret
.balign 16
HMAINBEGIN:
push ebp
mov ebp, esp
sub esp, 24
.L_0068:
push 0
call SYMBPREADDPROC
add esp, 4
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
push 0
push -1
call FBGETENTRYPOINT
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
cmp dword ptr [ENV+96], 2
jne .L_006D
mov dword ptr [ebp-12], 64
cmp dword ptr [ENV+104], 1
jne .L_006F
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_006F:
.L_006E:
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 524288
.L_006C:
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
add esp, 36
mov dword ptr [ENV+1032], eax
mov eax, dword ptr [ENV+1032]
or dword ptr [eax+12], 4096
push -1
push dword ptr [ENV+1032]
call ASTPROCBEGIN
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0069:
mov esp, ebp
pop ebp
ret
.balign 16
HMODLEVELBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.L_0070:
push 4
push 3
push 0
push 64
push 0
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call FBGETMODULEENTRY
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-12]
push offset Lt_0072
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 36
mov dword ptr [ENV+1032], eax
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ENV+1032]
call SYMBADDGLOBALCTOR
add esp, 4
mov eax, dword ptr [ENV+1032]
or dword ptr [eax+12], 2
mov eax, dword ptr [ENV+1032]
or dword ptr [eax+12], 8192
push -1
push dword ptr [ENV+1032]
call ASTPROCBEGIN
add esp, 8
.L_0071:
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
