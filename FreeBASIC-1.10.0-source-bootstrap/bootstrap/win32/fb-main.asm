	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBMAINBEGIN@0
_FBMAINBEGIN@0:
.L_0075:
cmp dword ptr [_ENV+852], 0
je .L_0078
call _HMAINBEGIN@0
jmp .L_0077
.L_0078:
call _HMODLEVELBEGIN@0
.L_0077:
mov eax, dword ptr [_ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [_ENV+852]
je .L_007A
cmp dword ptr [_ENV+108], 0
jne .L_007C
call _HBUILDDLLMAINWIN32@0
jmp .L_007B
.L_007C:
call _HBUILDDLLMAINCTOR@0
.L_007B:
.L_007A:
.L_0079:
.L_0076:
ret
.balign 16

.globl _FBMAINEND@0
_FBMAINEND@0:
push ebp
mov ebp, esp
sub esp, 4
.L_007E:
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+852], 0
je .L_0081
cmp dword ptr [_AST+124], 0
je .L_0083
push dword ptr [_ENV+1036]
push 0
call _RTLDATARESTORE@8
.L_0083:
.L_0082:
mov eax, dword ptr [_ENV+96]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0081:
.L_0080:
push dword ptr [ebp-4]
call _ASTPROCEND@4
.L_007F:
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
_HCALLMAIN@0:
push ebp
mov ebp, esp
sub esp, 4
.L_005E:
push 0
push dword ptr [_ENV+1032]
call _ASTNEWCALL@8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
call _ASTNEWARG@16
push -1
push -2147483648
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
call _ASTNEWARG@16
push 0
push 0
push dword ptr [ebp-4]
call _ASTSETTYPE@12
push dword ptr [ebp-4]
call _ASTADD@4
.L_005F:
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDDLLMAINWIN32@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0060:
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset _Lt_0062
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM@32
push 0
push 0
push 1
push 0
push 0
push 9
push offset _Lt_0063
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM@32
mov dword ptr [ebp-12], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset _Lt_0064
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM@32
push 4
push dword ptr [_ENV+280]
push 0
push 32
push 0
push 8
push offset _Lt_0065
push 0
push dword ptr [ebp-4]
call _SYMBADDPROC@36
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
call _ASTPROCBEGIN@8
push 0
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
push 0
push 1
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _SYMBGETPROCRESULT@4
push eax
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 9
push 0
push 1
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
push 48
call _ASTNEWBOP@20
push eax
call _ASTADD@4
call _HCALLMAIN@0
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
call _ASTPROCEND@4
.L_0061:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDDLLMAINCTOR@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0066:
push 4
push 3
push 0
push 64
push 0
push 0
push offset _Lt_0068
push 0
push 0
call _SYMBPREADDPROC@4
push eax
call _SYMBADDPROC@36
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call _SYMBADDGLOBALCTOR@4
push 0
push dword ptr [ebp-4]
call _ASTPROCBEGIN@8
call _HCALLMAIN@0
push 0
call _ASTPROCEND@4
.L_0067:
mov esp, ebp
pop ebp
ret
.balign 16
_HMAINBEGIN@0:
push ebp
mov ebp, esp
sub esp, 24
.L_0069:
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 11
push offset _Lt_006B
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM@32
push 0
push 0
push 1
push 0
push 0
push 68
push offset _Lt_006C
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM@32
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 32
push 0
push -1
call _FBGETENTRYPOINT@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
cmp dword ptr [_ENV+96], 2
jne .L_006E
mov dword ptr [ebp-12], 64
cmp dword ptr [_ENV+104], 1
jne .L_0070
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0070:
.L_006F:
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 524288
.L_006D:
push 4
push 3
push 0
push dword ptr [ebp-12]
push 0
push 11
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-4]
call _SYMBADDPROC@36
mov dword ptr [_ENV+1032], eax
mov eax, dword ptr [_ENV+1032]
or dword ptr [eax+12], 4096
push -1
push dword ptr [_ENV+1032]
call _ASTPROCBEGIN@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_006A:
mov esp, ebp
pop ebp
ret
.balign 16
_HMODLEVELBEGIN@0:
push ebp
mov ebp, esp
sub esp, 12
.L_0071:
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
call _FBGETMODULEENTRY@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-12]
push offset _Lt_0073
push 0
call _SYMBPREADDPROC@4
push eax
call _SYMBADDPROC@36
mov dword ptr [_ENV+1032], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push dword ptr [_ENV+1032]
call _SYMBADDGLOBALCTOR@4
mov eax, dword ptr [_ENV+1032]
or dword ptr [eax+12], 2
mov eax, dword ptr [_ENV+1032]
or dword ptr [eax+12], 8192
push -1
push dword ptr [_ENV+1032]
call _ASTPROCBEGIN@8
.L_0072:
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
_Lt_0062:	.ascii	"__FB_DLLINSTANCE__\0"
.balign 4
_Lt_0063:	.ascii	"__FB_DLLREASON__\0"
.balign 4
_Lt_0064:	.ascii	"__FB_DLLRESERVED__\0"
.balign 4
_Lt_0065:	.ascii	"DllMain\0"
.balign 4
_Lt_0068:	.ascii	"__fb_DllMain_ctor\0"
.balign 4
_Lt_006B:	.ascii	"__FB_ARGC__\0"
.balign 4
_Lt_006C:	.ascii	"__FB_ARGV__\0"
.balign 4
_Lt_0073:	.ascii	"{modlevel}\0"
