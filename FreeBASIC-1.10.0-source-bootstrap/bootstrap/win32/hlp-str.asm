	.intel_syntax noprefix

.section .text
.balign 16

.globl _ZSTRASSIGN@8
_ZSTRASSIGN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_005D:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_0060
mov dword ptr [ebp-8], 0
jmp .L_005F
.L_0060:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
.L_005F:
cmp dword ptr [ebp-8], 0
jne .L_0062
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0064
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_005E
.L_0064:
.L_0063:
.L_0062:
.L_0061:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0066
mov dword ptr [ebp-4], 0
jmp .L_0065
.L_0066:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
.L_0065:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_0068
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0068:
.L_0067:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_006A
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrAssign@20
.L_006A:
.L_0069:
.L_005E:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ZSTRASSIGNW@8
_ZSTRASSIGNW@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_006E
mov dword ptr [ebp-8], 0
jmp .L_006D
.L_006E:
push dword ptr [ebp+12]
call _fb_WstrLen@4
mov dword ptr [ebp-8], eax
.L_006D:
cmp dword ptr [ebp-8], 0
jne .L_0070
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0072
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_006C
.L_0072:
.L_0071:
.L_0070:
.L_006F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0074
mov dword ptr [ebp-4], 0
jmp .L_0073
.L_0074:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
.L_0073:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_0076
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0076:
.L_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0078
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrAssignToA@16
.L_0078:
.L_0077:
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ZSTRCONCATASSIGN@8
_ZSTRCONCATASSIGN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0079:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_007C
jmp .L_007A
.L_007C:
.L_007B:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007E
jmp .L_007A
.L_007E:
.L_007D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0080
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_007F
.L_0080:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_007F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0082
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call _fb_StrAssign@20
.L_0082:
.L_0081:
.L_007A:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ZSTRCONCATASSIGNW@8
_ZSTRCONCATASSIGNW@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0083:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_0086
jmp .L_0084
.L_0086:
.L_0085:
push dword ptr [ebp+12]
call _fb_WstrLen@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0088
jmp .L_0084
.L_0088:
.L_0087:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_008A
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_0089
.L_008A:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0089:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_008C
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call _fb_WstrAssignToA@16
.L_008C:
.L_008B:
.L_0084:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _WSTRASSIGN@8
_WSTRASSIGN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_008D:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_0090
mov dword ptr [ebp-8], 0
jmp .L_008F
.L_0090:
push dword ptr [ebp+12]
call _fb_WstrLen@4
mov dword ptr [ebp-8], eax
.L_008F:
cmp dword ptr [ebp-8], 0
jne .L_0092
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0094
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_008E
.L_0094:
.L_0093:
.L_0092:
.L_0091:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0096
mov dword ptr [ebp-4], 0
jmp .L_0095
.L_0096:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen@4
mov dword ptr [ebp-4], eax
.L_0095:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_0098
mov eax, dword ptr [ebp-8]
sal eax, 1
add eax, 2
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0098:
.L_0097:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_009A
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrAssign@12
.L_009A:
.L_0099:
.L_008E:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _WSTRASSIGNA@8
_WSTRASSIGNA@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_009B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_009E
mov dword ptr [ebp-8], 0
jmp .L_009D
.L_009E:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
.L_009D:
cmp dword ptr [ebp-8], 0
jne .L_00A0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00A2
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_009C
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00A4
mov dword ptr [ebp-4], 0
jmp .L_00A3
.L_00A4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen@4
mov dword ptr [ebp-4], eax
.L_00A3:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_00A6
mov eax, dword ptr [ebp-8]
sal eax, 1
add eax, 2
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00A6:
.L_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00A8
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrAssignFromA@16
.L_00A8:
.L_00A7:
.L_009C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _WSTRCONCATASSIGN@8
_WSTRCONCATASSIGN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00A9:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_00AC
jmp .L_00AA
.L_00AC:
.L_00AB:
push dword ptr [ebp+12]
call _fb_WstrLen@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AE
jmp .L_00AA
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00B0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
sal eax, 1
add eax, 2
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_00AF
.L_00B0:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
sal eax, 1
add eax, 2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00AF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00B2
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 1
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call _fb_WstrAssign@12
.L_00B2:
.L_00B1:
.L_00AA:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _WSTRCONCATASSIGNW@8
_WSTRCONCATASSIGNW@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00B3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_00B6
jmp .L_00B4
.L_00B6:
.L_00B5:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B8
jmp .L_00B4
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00BA
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
sal eax, 1
add eax, 2
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_00B9
.L_00BA:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
sal eax, 1
add eax, 2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00B9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00BC
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 1
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call _fb_WstrAssignFromA@16
.L_00BC:
.L_00BB:
.L_00B4:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ZSTRDUP@4
_ZSTRDUP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BD:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _WSTRDUP@4
_WSTRDUP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BF:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call _fb_WstrLen@4
sal eax, 1
add eax, 2
push eax
call _XALLOCATE@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call _fb_WstrAssign@12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00C0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HREPLACE@12
_HREPLACE@12:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00C1:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
mov dword ptr [_Lt_00C9], eax
push 0
push dword ptr [ebp+16]
call _fb_StrLen@8
mov dword ptr [_Lt_00CA], eax
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_00CB
call _fb_StrAssign@20
mov dword ptr [_Lt_00CC], 0
.L_00C3:
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ@4
push eax
push offset _Lt_00CB
mov eax, dword ptr [_Lt_00CC]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_00CC], eax
cmp dword ptr [_Lt_00CC], 0
jne .L_00C7
jmp .L_00C4
.L_00C7:
.L_00C6:
push 0
push -1
push -1
mov eax, dword ptr [_Lt_00C9]
add eax, dword ptr [_Lt_00CC]
push eax
push offset _Lt_00CB
call _fb_StrMid@12
push eax
push -1
push offset _Lt_00CD
call _fb_StrAssign@20
push 0
push -1
mov eax, dword ptr [_Lt_00CC]
dec eax
push eax
push offset _Lt_00CB
call _fb_LEFT@8
push eax
push -1
push offset _Lt_00CB
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+16]
push -1
push offset _Lt_00CB
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_00CB
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_00CD
push -1
push offset _Lt_00CB
call _fb_StrConcatAssign@20
mov eax, dword ptr [_Lt_00CA]
add eax, dword ptr [_Lt_00CC]
dec eax
mov dword ptr [_Lt_00CC], eax
.L_00C5:
jmp .L_00C3
.L_00C4:
push 0
push -1
push offset _Lt_00CB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00C2:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_00C9,4
.balign 4
	.lcomm	_Lt_00CA,4
.balign 4
	.lcomm	_Lt_00CC,4
.balign 4
	.lcomm	_Lt_00CB,12
.balign 4
	.lcomm	_Lt_00CD,12

.section .text
.balign 16

.globl _HREPLACEW@12
_HREPLACEW@12:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00CE:
push dword ptr [ebp+12]
call _fb_WstrLen@4
mov dword ptr [_Lt_00D7], eax
push dword ptr [ebp+16]
call _fb_WstrLen@4
mov dword ptr [_Lt_00D8], eax
push dword ptr [ebp+8]
push offset _Lt_00D9
call _DWSTRASSIGN@8
mov dword ptr [_Lt_00DA], 0
.L_00D0:
push dword ptr [ebp+12]
push dword ptr [_Lt_00D9]
mov eax, dword ptr [_Lt_00DA]
inc eax
push eax
call _fb_WstrInstr@12
mov dword ptr [_Lt_00DA], eax
cmp dword ptr [_Lt_00DA], 0
jne .L_00D4
jmp .L_00D1
.L_00D4:
.L_00D3:
push -1
mov eax, dword ptr [_Lt_00D7]
add eax, dword ptr [_Lt_00DA]
push eax
push dword ptr [_Lt_00D9]
call _fb_WstrMid@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push offset _Lt_00DB
call _DWSTRASSIGN@8
push dword ptr [ebp-8]
call _fb_WstrDelete@4
mov eax, dword ptr [_Lt_00DA]
dec eax
push eax
push dword ptr [_Lt_00D9]
call _fb_WstrLeft@8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_00D9
call _DWSTRASSIGN@8
push dword ptr [ebp-12]
call _fb_WstrDelete@4
push dword ptr [ebp+16]
push offset _Lt_00D9
call _DWSTRCONCATASSIGN@8
push dword ptr [_Lt_00DB]
push offset _Lt_00D9
call _DWSTRCONCATASSIGN@8
mov eax, dword ptr [_Lt_00D8]
add eax, dword ptr [_Lt_00DA]
dec eax
mov dword ptr [_Lt_00DA], eax
.L_00D2:
jmp .L_00D0
.L_00D1:
mov eax, dword ptr [_Lt_00D9]
mov dword ptr [ebp-4], eax
.L_00CF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_00D7,4
.balign 4
	.lcomm	_Lt_00D8,4
.balign 4
	.lcomm	_Lt_00DA,4
.balign 4
	.lcomm	_Lt_00D9,12
.balign 4
	.lcomm	_Lt_00DB,12

.section .text
.balign 16

.globl _HREPLACECHAR@12
_HREPLACECHAR@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DC:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00DF
.L_00E2:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp+12]
cmp ebx, eax
jne .L_00E4
mov al, byte ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-8]
mov byte ptr [ebx], al
.L_00E4:
.L_00E3:
.L_00E0:
inc dword ptr [ebp-8]
.L_00DF:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_00E2
.L_00E1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _HREESCAPE@12
_HREESCAPE@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [_Lt_0142], eax
cmp dword ptr [_Lt_0142], 0
jne .L_00E8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00E6
.L_00E8:
.L_00E7:
mov eax, dword ptr [_Lt_0142]
sal eax, 1
push eax
push offset _Lt_0143
call _DZSTRALLOCATE@8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_0144], eax
mov eax, dword ptr [_Lt_0143]
mov dword ptr [_Lt_0145], eax
mov eax, dword ptr [_Lt_0144]
add eax, dword ptr [_Lt_0142]
mov dword ptr [_Lt_0146], eax
.L_00E9:
mov eax, dword ptr [_Lt_0146]
cmp dword ptr [_Lt_0144], eax
jae .L_00EA
mov eax, dword ptr [_Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0147], ebx
inc dword ptr [_Lt_0144]
cmp dword ptr [_Lt_0147], 92
jne .L_00EC
mov ebx, dword ptr [_Lt_0146]
cmp dword ptr [_Lt_0144], ebx
jb .L_00EE
jmp .L_00EA
.L_00EE:
mov ebx, dword ptr [_Lt_0145]
mov byte ptr [ebx], 27
inc dword ptr [_Lt_0145]
mov dword ptr [_Lt_0148], 0
mov ebx, dword ptr [_Lt_0144]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0147], eax
inc dword ptr [_Lt_0144]
cmp dword ptr [_Lt_0147], 48
jl .L_00F0
cmp dword ptr [_Lt_0147], 57
jg .L_00F0
.L_00F1:
mov dword ptr [_Lt_0148], -1
mov eax, dword ptr [_Lt_0147]
add eax, -48
mov dword ptr [_Lt_0149], eax
mov dword ptr [_Lt_014A], 2
.L_00F5:
mov eax, dword ptr [_Lt_0146]
cmp dword ptr [_Lt_0144], eax
jb .L_00F7
jmp .L_00F4
.L_00F7:
mov eax, dword ptr [_Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0147], ebx
mov ebx, dword ptr [_Lt_0147]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0147]
cmp eax, 57
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00F9
jmp .L_00F4
.L_00F9:
.L_00F8:
mov eax, dword ptr [_Lt_0149]
imul eax, 10
add eax, dword ptr [_Lt_0147]
add eax, -48
mov dword ptr [_Lt_0149], eax
inc dword ptr [_Lt_0144]
.L_00F3:
inc dword ptr [_Lt_014A]
.L_00F2:
cmp dword ptr [_Lt_014A], 3
jle .L_00F5
.L_00F4:
jmp .L_00EF
.L_00F0:
cmp dword ptr [_Lt_0147], 38
je .L_00FB
.L_00FC:
cmp dword ptr [_Lt_0147], 88
je .L_00FB
.L_00FD:
cmp dword ptr [_Lt_0147], 120
jne .L_00FA
.L_00FB:
mov eax, dword ptr [_Lt_0146]
cmp dword ptr [_Lt_0144], eax
jb .L_00FF
jmp .L_00EA
.L_00FF:
mov dword ptr [_Lt_0149], 0
cmp dword ptr [_Lt_0147], 38
jne .L_0101
mov eax, dword ptr [_Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0147], ebx
inc dword ptr [_Lt_0144]
jmp .L_0100
.L_0101:
mov dword ptr [_Lt_0147], 72
.L_0100:
mov ebx, dword ptr [_Lt_0147]
mov dword ptr [ebp-8], ebx
jmp .L_0103
.L_0105:
mov dword ptr [_Lt_0148], -1
mov dword ptr [_Lt_014A], 1
.L_0109:
mov ebx, dword ptr [_Lt_0146]
cmp dword ptr [_Lt_0144], ebx
jb .L_010B
jmp .L_0108
.L_010B:
mov ebx, dword ptr [_Lt_0144]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0147], eax
cmp dword ptr [_Lt_0147], 97
jl .L_010F
cmp dword ptr [_Lt_0147], 102
jle .L_010E
.L_010F:
cmp dword ptr [_Lt_0147], 65
jl .L_0110
cmp dword ptr [_Lt_0147], 70
jle .L_010E
.L_0110:
cmp dword ptr [_Lt_0147], 48
jl .L_010D
cmp dword ptr [_Lt_0147], 57
jg .L_010D
.L_010E:
add dword ptr [_Lt_0147], -48
cmp dword ptr [_Lt_0147], 9
jle .L_0112
add dword ptr [_Lt_0147], -7
.L_0112:
.L_0111:
cmp dword ptr [_Lt_0147], 16
jle .L_0114
add dword ptr [_Lt_0147], -32
.L_0114:
.L_0113:
mov eax, dword ptr [_Lt_0149]
sal eax, 4
add eax, dword ptr [_Lt_0147]
mov dword ptr [_Lt_0149], eax
jmp .L_010C
.L_010D:
jmp .L_0108
.L_0115:
.L_010C:
inc dword ptr [_Lt_0144]
.L_0107:
inc dword ptr [_Lt_014A]
.L_0106:
cmp dword ptr [_Lt_014A], 2
jle .L_0109
.L_0108:
jmp .L_0102
.L_0116:
mov dword ptr [_Lt_0148], -1
mov dword ptr [_Lt_014A], 1
.L_011A:
mov eax, dword ptr [_Lt_0146]
cmp dword ptr [_Lt_0144], eax
jb .L_011C
jmp .L_0119
.L_011C:
mov eax, dword ptr [_Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0147], ebx
mov ebx, dword ptr [_Lt_0147]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0147]
cmp eax, 55
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_011E
jmp .L_0119
.L_011E:
.L_011D:
mov eax, dword ptr [_Lt_0149]
sal eax, 3
add eax, dword ptr [_Lt_0147]
add eax, -48
mov dword ptr [_Lt_0149], eax
inc dword ptr [_Lt_0144]
.L_0118:
inc dword ptr [_Lt_014A]
.L_0117:
cmp dword ptr [_Lt_014A], 3
jle .L_011A
.L_0119:
jmp .L_0102
.L_011F:
mov dword ptr [_Lt_0148], -1
mov dword ptr [_Lt_014A], 1
.L_0123:
mov eax, dword ptr [_Lt_0146]
cmp dword ptr [_Lt_0144], eax
jb .L_0125
jmp .L_0122
.L_0125:
mov eax, dword ptr [_Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0147], ebx
mov ebx, dword ptr [_Lt_0147]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0147]
cmp eax, 49
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0127
jmp .L_0122
.L_0127:
.L_0126:
mov eax, dword ptr [_Lt_0149]
sal eax, 1
add eax, dword ptr [_Lt_0147]
add eax, -48
mov dword ptr [_Lt_0149], eax
inc dword ptr [_Lt_0144]
.L_0121:
inc dword ptr [_Lt_014A]
.L_0120:
cmp dword ptr [_Lt_014A], 8
jle .L_0123
.L_0122:
jmp .L_0102
.L_0103:
mov eax, dword ptr [ebp-8]
add eax, 4294967230
cmp eax, 45
ja .L_0102
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0128+eax*4-264]
_.L_0128:
.int .L_011F
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0105
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0116
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_011F
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0105
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0116
.L_0102:
jmp .L_00EF
.L_00FA:
cmp dword ptr [_Lt_0147], 97
jne .L_0129
.L_012A:
mov dword ptr [_Lt_0148], -1
mov dword ptr [_Lt_0149], 7
jmp .L_00EF
.L_0129:
cmp dword ptr [_Lt_0147], 117
jne .L_012B
.L_012C:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov al, byte ptr [_Lt_0147]
mov ebx, dword ptr [_Lt_0145]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0145]
mov dword ptr [_Lt_014A], 1
.L_0130:
push 0
push 0
push dword ptr [_Lt_0144]
push 0
push dword ptr [_Lt_0145]
call _fb_StrAssign@20
inc dword ptr [_Lt_0145]
inc dword ptr [_Lt_0144]
.L_012E:
inc dword ptr [_Lt_014A]
.L_012D:
cmp dword ptr [_Lt_014A], 4
jle .L_0130
.L_012F:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
jmp .L_00E9
jmp .L_00EF
.L_012B:
cmp dword ptr [_Lt_0147], 85
jne .L_0131
.L_0132:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [_Lt_0145]
mov byte ptr [eax], 85
inc dword ptr [_Lt_0145]
mov dword ptr [_Lt_014A], 1
.L_0136:
push 0
push 0
push dword ptr [_Lt_0144]
push 0
push dword ptr [_Lt_0145]
call _fb_StrAssign@20
inc dword ptr [_Lt_0145]
inc dword ptr [_Lt_0144]
.L_0134:
inc dword ptr [_Lt_014A]
.L_0133:
cmp dword ptr [_Lt_014A], 4
jle .L_0136
.L_0135:
mov eax, dword ptr [_Lt_0145]
mov byte ptr [eax], 27
mov eax, dword ptr [_Lt_0145]
mov byte ptr [eax+1], 85
add dword ptr [_Lt_0145], 2
mov dword ptr [_Lt_014A], 1
.L_013A:
push 0
push 0
push dword ptr [_Lt_0144]
push 0
push dword ptr [_Lt_0145]
call _fb_StrAssign@20
inc dword ptr [_Lt_0145]
inc dword ptr [_Lt_0144]
.L_0138:
inc dword ptr [_Lt_014A]
.L_0137:
cmp dword ptr [_Lt_014A], 4
jle .L_013A
.L_0139:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 4
jmp .L_00E9
.L_0131:
.L_00EF:
cmp dword ptr [_Lt_0148], 0
je .L_013C
cmp dword ptr [_Lt_0149], 255
jbe .L_013E
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov dword ptr [_Lt_0149], 255
.L_013E:
.L_013D:
cmp dword ptr [_Lt_0149], 8
jge .L_0140
mov dword ptr [_Lt_0142], 1
jmp .L_013F
.L_0140:
cmp dword ptr [_Lt_0149], 64
jge .L_0141
mov dword ptr [_Lt_0142], 2
jmp .L_013F
.L_0141:
mov dword ptr [_Lt_0142], 3
.L_013F:
mov al, byte ptr [_Lt_0142]
mov ebx, dword ptr [_Lt_0145]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0145]
push 0
push -1
push dword ptr [_Lt_0149]
call _fb_OCT_i@4
push eax
push 0
push dword ptr [_Lt_0145]
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_0142]
add dword ptr [_Lt_0145], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_00E9
.L_013C:
.L_013B:
.L_00EC:
.L_00EB:
mov al, byte ptr [_Lt_0147]
mov ebx, dword ptr [_Lt_0145]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0145]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_00E9
.L_00EA:
mov eax, dword ptr [_Lt_0145]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_0143]
mov dword ptr [ebp-4], eax
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0143,12
.balign 4
	.lcomm	_Lt_0147,4
.balign 4
	.lcomm	_Lt_0142,4
.balign 4
	.lcomm	_Lt_014A,4
.balign 4
	.lcomm	_Lt_0149,4
.balign 4
	.lcomm	_Lt_0148,4
.balign 4
	.lcomm	_Lt_0144,4
.balign 4
	.lcomm	_Lt_0145,4
.balign 4
	.lcomm	_Lt_0146,4

.section .text
.balign 16

.globl _HREESCAPEW@8
_HREESCAPEW@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0151:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push dword ptr [ebp+8]
call _fb_WstrLen@4
mov dword ptr [_Lt_01AC], eax
cmp dword ptr [_Lt_01AC], 0
jne .L_0154
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0152
.L_0154:
.L_0153:
mov eax, dword ptr [_Lt_01AC]
sal eax, 1
push eax
push offset _Lt_01AD
call _DWSTRALLOCATE@8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_01AE], eax
mov eax, dword ptr [_Lt_01AD]
mov dword ptr [_Lt_01AF], eax
mov eax, dword ptr [_Lt_01AC]
sal eax, 1
mov ebx, dword ptr [_Lt_01AE]
add ebx, eax
mov dword ptr [_Lt_01B0], ebx
.L_0155:
mov ebx, dword ptr [_Lt_01B0]
cmp dword ptr [_Lt_01AE], ebx
jae .L_0156
mov ebx, dword ptr [_Lt_01AE]
movzx eax, word ptr [ebx]
mov dword ptr [_Lt_01B1], eax
add dword ptr [_Lt_01AE], 2
cmp dword ptr [_Lt_01B1], 92
jne .L_0158
mov eax, dword ptr [_Lt_01B0]
cmp dword ptr [_Lt_01AE], eax
jb .L_015A
jmp .L_0156
.L_015A:
mov eax, dword ptr [_Lt_01AF]
mov word ptr [eax], 27
add dword ptr [_Lt_01AF], 2
mov dword ptr [_Lt_01B2], 0
mov eax, dword ptr [_Lt_01AE]
movzx ebx, word ptr [eax]
mov dword ptr [_Lt_01B1], ebx
add dword ptr [_Lt_01AE], 2
cmp dword ptr [_Lt_01B1], 48
jl .L_015C
cmp dword ptr [_Lt_01B1], 57
jg .L_015C
.L_015D:
mov dword ptr [_Lt_01B2], -1
mov ebx, dword ptr [_Lt_01B1]
add ebx, -48
mov eax, ebx
mov dword ptr [_Lt_01B3], eax
mov dword ptr [_Lt_01B4], 2
.L_0161:
mov eax, dword ptr [_Lt_01B0]
cmp dword ptr [_Lt_01AE], eax
jb .L_0163
jmp .L_0160
.L_0163:
mov eax, dword ptr [_Lt_01AE]
movzx ebx, word ptr [eax]
mov dword ptr [_Lt_01B1], ebx
mov ebx, dword ptr [_Lt_01B1]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_01B1]
cmp eax, 57
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0165
jmp .L_0160
.L_0165:
.L_0164:
mov eax, dword ptr [_Lt_01B3]
imul eax, 10
mov ebx, dword ptr [_Lt_01B1]
add ebx, -48
mov ecx, ebx
add eax, ecx
mov dword ptr [_Lt_01B3], eax
add dword ptr [_Lt_01AE], 2
.L_015F:
inc dword ptr [_Lt_01B4]
.L_015E:
cmp dword ptr [_Lt_01B4], 5
jle .L_0161
.L_0160:
jmp .L_015B
.L_015C:
cmp dword ptr [_Lt_01B1], 38
je .L_0167
.L_0168:
cmp dword ptr [_Lt_01B1], 88
je .L_0167
.L_0169:
cmp dword ptr [_Lt_01B1], 120
jne .L_0166
.L_0167:
mov eax, dword ptr [_Lt_01B0]
cmp dword ptr [_Lt_01AE], eax
jb .L_016B
jmp .L_0156
.L_016B:
mov dword ptr [_Lt_01B3], 0
cmp dword ptr [_Lt_01B1], 38
jne .L_016D
mov eax, dword ptr [_Lt_01AE]
movzx ecx, word ptr [eax]
mov dword ptr [_Lt_01B1], ecx
add dword ptr [_Lt_01AE], 2
jmp .L_016C
.L_016D:
mov dword ptr [_Lt_01B1], 72
.L_016C:
mov ecx, dword ptr [_Lt_01B1]
mov dword ptr [ebp-8], ecx
jmp .L_016F
.L_0171:
mov dword ptr [_Lt_01B2], -1
mov dword ptr [_Lt_01B4], 1
.L_0175:
mov ecx, dword ptr [_Lt_01B0]
cmp dword ptr [_Lt_01AE], ecx
jb .L_0177
jmp .L_0174
.L_0177:
mov ecx, dword ptr [_Lt_01AE]
movzx eax, word ptr [ecx]
mov dword ptr [_Lt_01B1], eax
cmp dword ptr [_Lt_01B1], 97
jl .L_017B
cmp dword ptr [_Lt_01B1], 102
jle .L_017A
.L_017B:
cmp dword ptr [_Lt_01B1], 65
jl .L_017C
cmp dword ptr [_Lt_01B1], 70
jle .L_017A
.L_017C:
cmp dword ptr [_Lt_01B1], 48
jl .L_0179
cmp dword ptr [_Lt_01B1], 57
jg .L_0179
.L_017A:
add dword ptr [_Lt_01B1], -48
cmp dword ptr [_Lt_01B1], 9
jle .L_017E
add dword ptr [_Lt_01B1], -7
.L_017E:
.L_017D:
cmp dword ptr [_Lt_01B1], 16
jle .L_0180
add dword ptr [_Lt_01B1], -32
.L_0180:
.L_017F:
mov eax, dword ptr [_Lt_01B3]
shl eax, 4
add eax, dword ptr [_Lt_01B1]
mov dword ptr [_Lt_01B3], eax
jmp .L_0178
.L_0179:
jmp .L_0174
.L_0181:
.L_0178:
add dword ptr [_Lt_01AE], 2
.L_0173:
inc dword ptr [_Lt_01B4]
.L_0172:
cmp dword ptr [_Lt_01B4], 4
jle .L_0175
.L_0174:
jmp .L_016E
.L_0182:
mov dword ptr [_Lt_01B2], -1
mov dword ptr [_Lt_01B4], 1
.L_0186:
mov eax, dword ptr [_Lt_01B0]
cmp dword ptr [_Lt_01AE], eax
jb .L_0188
jmp .L_0185
.L_0188:
mov eax, dword ptr [_Lt_01AE]
movzx ecx, word ptr [eax]
mov dword ptr [_Lt_01B1], ecx
mov ecx, dword ptr [_Lt_01B1]
cmp ecx, 48
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_01B1]
cmp eax, 55
setg al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_018A
jmp .L_0185
.L_018A:
.L_0189:
mov eax, dword ptr [_Lt_01B3]
shl eax, 3
mov ecx, dword ptr [_Lt_01B1]
add ecx, -48
mov ebx, ecx
add eax, ebx
mov dword ptr [_Lt_01B3], eax
add dword ptr [_Lt_01AE], 2
.L_0184:
inc dword ptr [_Lt_01B4]
.L_0183:
cmp dword ptr [_Lt_01B4], 6
jle .L_0186
.L_0185:
jmp .L_016E
.L_018B:
mov dword ptr [_Lt_01B2], -1
mov dword ptr [_Lt_01B4], 1
.L_018F:
mov eax, dword ptr [_Lt_01B0]
cmp dword ptr [_Lt_01AE], eax
jb .L_0191
jmp .L_018E
.L_0191:
mov eax, dword ptr [_Lt_01AE]
movzx ebx, word ptr [eax]
mov dword ptr [_Lt_01B1], ebx
mov ebx, dword ptr [_Lt_01B1]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_01B1]
cmp eax, 49
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0193
jmp .L_018E
.L_0193:
.L_0192:
mov eax, dword ptr [_Lt_01B3]
shl eax, 1
mov ebx, dword ptr [_Lt_01B1]
add ebx, -48
mov ecx, ebx
add eax, ecx
mov dword ptr [_Lt_01B3], eax
add dword ptr [_Lt_01AE], 2
.L_018D:
inc dword ptr [_Lt_01B4]
.L_018C:
cmp dword ptr [_Lt_01B4], 16
jle .L_018F
.L_018E:
jmp .L_016E
.L_016F:
mov eax, dword ptr [ebp-8]
add eax, 4294967230
cmp eax, 45
ja .L_016E
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0194+eax*4-264]
_.L_0194:
.int .L_018B
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_0171
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_0182
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_018B
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_0171
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_016E
.int .L_0182
.L_016E:
jmp .L_015B
.L_0166:
cmp dword ptr [_Lt_01B1], 117
jne .L_0195
.L_0196:
mov ax, word ptr [_Lt_01B1]
mov ecx, dword ptr [_Lt_01AF]
mov word ptr [ecx], ax
add dword ptr [_Lt_01AF], 2
mov dword ptr [_Lt_01B4], 1
.L_019A:
push dword ptr [_Lt_01AE]
push 0
push dword ptr [_Lt_01AF]
call _fb_WstrAssign@12
add dword ptr [_Lt_01AF], 2
add dword ptr [_Lt_01AE], 2
.L_0198:
inc dword ptr [_Lt_01B4]
.L_0197:
cmp dword ptr [_Lt_01B4], 4
jle .L_019A
.L_0199:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
jmp .L_0155
jmp .L_015B
.L_0195:
cmp dword ptr [_Lt_01B1], 85
jne .L_019B
.L_019C:
mov eax, dword ptr [_Lt_01AF]
mov word ptr [eax], 85
add dword ptr [_Lt_01AF], 2
mov dword ptr [_Lt_01B4], 1
.L_01A0:
push dword ptr [_Lt_01AE]
push 0
push dword ptr [_Lt_01AF]
call _fb_WstrAssign@12
add dword ptr [_Lt_01AF], 2
add dword ptr [_Lt_01AE], 2
.L_019E:
inc dword ptr [_Lt_01B4]
.L_019D:
cmp dword ptr [_Lt_01B4], 4
jle .L_01A0
.L_019F:
mov eax, dword ptr [_Lt_01AF]
mov word ptr [eax], 27
mov eax, dword ptr [_Lt_01AF]
mov word ptr [eax+2], 85
add dword ptr [_Lt_01AF], 4
mov dword ptr [_Lt_01B4], 1
.L_01A4:
push dword ptr [_Lt_01AE]
push 0
push dword ptr [_Lt_01AF]
call _fb_WstrAssign@12
add dword ptr [_Lt_01AF], 2
add dword ptr [_Lt_01AE], 2
.L_01A2:
inc dword ptr [_Lt_01B4]
.L_01A1:
cmp dword ptr [_Lt_01B4], 4
jle .L_01A4
.L_01A3:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 4
jmp .L_0155
.L_019B:
.L_015B:
cmp dword ptr [_Lt_01B2], 0
je .L_01A6
cmp dword ptr [_Lt_01B3], 65535
jbe .L_01A8
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov dword ptr [_Lt_01B3], 65535
.L_01A8:
.L_01A7:
mov dword ptr [_Lt_01AC], 1
mov eax, dword ptr [_Lt_01B3]
mov dword ptr [_Lt_01BB], eax
.L_01A9:
cmp dword ptr [_Lt_01BB], 7
jbe .L_01AA
shr dword ptr [_Lt_01BB], 3
inc dword ptr [_Lt_01AC]
jmp .L_01A9
.L_01AA:
mov ax, word ptr [_Lt_01AC]
mov ecx, dword ptr [_Lt_01AF]
mov word ptr [ecx], ax
add dword ptr [_Lt_01AF], 2
push dword ptr [_Lt_01B3]
call _fb_WstrOct_i@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 0
push dword ptr [_Lt_01AF]
call _fb_WstrAssign@12
push dword ptr [ebp-8]
call _fb_WstrDelete@4
mov eax, dword ptr [_Lt_01AC]
sal eax, 1
add dword ptr [_Lt_01AF], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_0155
.L_01A6:
.L_01A5:
.L_0158:
.L_0157:
mov ax, word ptr [_Lt_01B1]
mov ecx, dword ptr [_Lt_01AF]
mov word ptr [ecx], ax
add dword ptr [_Lt_01AF], 2
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_0155
.L_0156:
mov eax, dword ptr [_Lt_01AF]
mov word ptr [eax], 0
mov eax, dword ptr [_Lt_01AD]
mov dword ptr [ebp-4], eax
.L_0152:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_01AD,12
.balign 4
	.lcomm	_Lt_01B1,4
.balign 4
	.lcomm	_Lt_01AC,4
.balign 4
	.lcomm	_Lt_01B4,4
.balign 4
	.lcomm	_Lt_01B2,4
.balign 4
	.lcomm	_Lt_01B3,4
.balign 4
	.lcomm	_Lt_01AE,4
.balign 4
	.lcomm	_Lt_01AF,4
.balign 4
	.lcomm	_Lt_01B0,4
.balign 4
	.lcomm	_Lt_01BB,4

.section .text
.balign 16

.globl _HESCAPE@4
_HESCAPE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01BC:
mov dword ptr [_Lt_01D8], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [_Lt_01D9], eax
cmp dword ptr [_Lt_01D9], 0
jne .L_01BF
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01BD
.L_01BF:
.L_01BE:
mov eax, dword ptr [_Lt_01D9]
sal eax, 2
push eax
push offset _Lt_01DA
call _DZSTRALLOCATE@8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_01DB], eax
mov eax, dword ptr [_Lt_01DA]
mov dword ptr [_Lt_01DC], eax
mov eax, dword ptr [_Lt_01DB]
add eax, dword ptr [_Lt_01D9]
mov dword ptr [_Lt_01DD], eax
.L_01C0:
mov eax, dword ptr [_Lt_01DD]
cmp dword ptr [_Lt_01DB], eax
jae .L_01C1
mov eax, dword ptr [_Lt_01DB]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_01DE], ebx
inc dword ptr [_Lt_01DB]
cmp dword ptr [_Lt_01DE], 92
je .L_01C4
.L_01C5:
cmp dword ptr [_Lt_01DE], 34
jne .L_01C3
.L_01C4:
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 92
inc dword ptr [_Lt_01DC]
jmp .L_01C2
.L_01C3:
cmp dword ptr [_Lt_01DE], 27
jne .L_01C6
.L_01C7:
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 92
inc dword ptr [_Lt_01DC]
mov ebx, dword ptr [_Lt_01DD]
cmp dword ptr [_Lt_01DB], ebx
jb .L_01C9
jmp .L_01C1
.L_01C9:
mov ebx, dword ptr [_Lt_01DB]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_01DE], eax
inc dword ptr [_Lt_01DB]
mov eax, dword ptr [_Lt_01DE]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_01DE]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01CB
mov ebx, dword ptr [_Lt_01DE]
mov dword ptr [_Lt_01D8], ebx
mov ebx, dword ptr [_Lt_01DD]
cmp dword ptr [_Lt_01DB], ebx
jb .L_01CD
jmp .L_01C1
.L_01CD:
mov ebx, dword ptr [_Lt_01DB]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_01DE], eax
inc dword ptr [_Lt_01DB]
.L_01CB:
.L_01CA:
jmp .L_01C2
.L_01C6:
cmp dword ptr [_Lt_01DE], 0
jl .L_01D0
cmp dword ptr [_Lt_01DE], 31
jle .L_01CF
.L_01D0:
cmp dword ptr [_Lt_01DE], 128
jl .L_01CE
cmp dword ptr [_Lt_01DE], 255
jg .L_01CE
.L_01CF:
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], 92
inc dword ptr [_Lt_01DC]
cmp dword ptr [_Lt_01DE], 8
jge .L_01D2
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], 48
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax+1], 48
add dword ptr [_Lt_01DC], 2
add dword ptr [_Lt_01DE], 48
jmp .L_01D1
.L_01D2:
cmp dword ptr [_Lt_01DE], 64
jge .L_01D3
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], 48
mov eax, dword ptr [_Lt_01DE]
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax+1], bl
add dword ptr [_Lt_01DC], 2
mov ebx, dword ptr [_Lt_01DE]
and ebx, 7
add ebx, 48
mov dword ptr [_Lt_01DE], ebx
jmp .L_01D1
.L_01D3:
mov ebx, dword ptr [_Lt_01DE]
sar ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], al
mov eax, dword ptr [_Lt_01DE]
and eax, 56
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax+1], bl
add dword ptr [_Lt_01DC], 2
mov ebx, dword ptr [_Lt_01DE]
and ebx, 7
add ebx, 48
mov dword ptr [_Lt_01DE], ebx
.L_01D1:
.L_01CE:
.L_01C2:
mov bl, byte ptr [_Lt_01DE]
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], bl
inc dword ptr [_Lt_01DC]
cmp dword ptr [_Lt_01D8], 0
jle .L_01D5
dec dword ptr [_Lt_01D8]
cmp dword ptr [_Lt_01D8], 0
jne .L_01D7
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 34
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx+1], 34
add dword ptr [_Lt_01DC], 2
.L_01D7:
.L_01D6:
.L_01D5:
.L_01D4:
jmp .L_01C0
.L_01C1:
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 0
mov ebx, dword ptr [_Lt_01DA]
mov dword ptr [ebp-4], ebx
.L_01BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01DA,12
.balign 4
	.lcomm	_Lt_01DE,4
.balign 4
	.lcomm	_Lt_01D8,4
.balign 4
	.lcomm	_Lt_01D9,4
.balign 4
	.lcomm	_Lt_01DB,4
.balign 4
	.lcomm	_Lt_01DD,4
.balign 4
	.lcomm	_Lt_01DC,4

.section .text
.balign 16

.globl _HHASESCAPE@4
_HHASESCAPE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01F7:
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [_Lt_0202], eax
.L_01F9:
cmp dword ptr [_Lt_0202], 0
jle .L_01FA
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 92
jne .L_01FC
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0203], eax
mov eax, dword ptr [_Lt_0203]
mov dword ptr [ebp-8], eax
jmp .L_01FE
.L_0200:
mov dword ptr [ebp-4], -1
jmp .L_01F8
jmp .L_01FD
.L_01FE:
mov eax, dword ptr [ebp-8]
add eax, 4294967262
cmp eax, 84
ja .L_01FD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0201+eax*4-136]
_.L_0201:
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_01FD
.int .L_0200
.int .L_01FD
.int .L_01FD
.int .L_01FD
.int .L_0200
.int .L_01FD
.int .L_0200
.int .L_0200
.int .L_0200
.L_01FD:
.L_01FC:
.L_01FB:
inc dword ptr [ebp+8]
dec dword ptr [_Lt_0202]
jmp .L_01F9
.L_01FA:
mov dword ptr [ebp-4], 0
.L_01F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0203,4
.balign 4
	.lcomm	_Lt_0202,4

.section .text
.balign 16

.globl _HHASESCAPEW@4
_HHASESCAPEW@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0204:
push dword ptr [ebp+8]
call _fb_WstrLen@4
mov dword ptr [_Lt_020F], eax
.L_0206:
cmp dword ptr [_Lt_020F], 0
jle .L_0207
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax]
cmp ebx, 92
jne .L_0209
add dword ptr [ebp+8], 2
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx]
mov dword ptr [_Lt_0210], eax
mov eax, dword ptr [_Lt_0210]
mov dword ptr [ebp-8], eax
jmp .L_020B
.L_020D:
mov dword ptr [ebp-4], -1
jmp .L_0205
jmp .L_020A
.L_020B:
mov eax, dword ptr [ebp-8]
add eax, 4294967262
cmp eax, 84
ja .L_020A
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_020E+eax*4-136]
_.L_020E:
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020A
.int .L_020D
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020D
.int .L_020A
.int .L_020D
.int .L_020D
.int .L_020D
.L_020A:
.L_0209:
.L_0208:
add dword ptr [ebp+8], 2
dec dword ptr [_Lt_020F]
jmp .L_0206
.L_0207:
mov dword ptr [ebp-4], 0
.L_0205:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0210,4
.balign 4
	.lcomm	_Lt_020F,4

.section .text
.balign 16

.globl _HESCAPEW@4
_HESCAPEW@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_021B:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [_Lt_0238], eax
push dword ptr [ebp+8]
call _fb_WstrLen@4
mov dword ptr [_Lt_0239], eax
cmp dword ptr [_Lt_0239], 0
jne .L_021E
mov dword ptr [ebp-4], 0
jmp .L_021C
.L_021E:
.L_021D:
mov eax, dword ptr [_Lt_0238]
imul eax, dword ptr [_Lt_0239]
sal eax, 2
push eax
push offset _Lt_023A
call _DZSTRALLOCATE@8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_023B], eax
mov eax, dword ptr [_Lt_023A]
mov dword ptr [_Lt_023C], eax
mov eax, dword ptr [_Lt_0239]
sal eax, 1
mov ebx, dword ptr [_Lt_023B]
add ebx, eax
mov dword ptr [_Lt_023D], ebx
.L_021F:
mov ebx, dword ptr [_Lt_023D]
cmp dword ptr [_Lt_023B], ebx
jae .L_0220
mov ebx, dword ptr [_Lt_023B]
movzx eax, word ptr [ebx]
mov dword ptr [_Lt_023E], eax
add dword ptr [_Lt_023B], 2
cmp dword ptr [_Lt_023E], 27
jne .L_0222
mov eax, dword ptr [_Lt_023D]
cmp dword ptr [_Lt_023B], eax
jb .L_0224
jmp .L_0220
.L_0224:
mov eax, dword ptr [_Lt_023B]
movzx ebx, word ptr [eax]
mov dword ptr [_Lt_023E], ebx
add dword ptr [_Lt_023B], 2
cmp dword ptr [_Lt_023E], 1
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [_Lt_023E], 11
setbe al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0226
mov eax, dword ptr [_Lt_023E]
mov dword ptr [_Lt_0241], eax
mov dword ptr [_Lt_023E], 0
mov eax, dword ptr [_Lt_0241]
sal eax, 1
mov ebx, dword ptr [_Lt_023B]
add ebx, eax
mov eax, dword ptr [_Lt_023D]
cmp ebx, eax
jbe .L_0228
jmp .L_0220
.L_0228:
.L_0229:
cmp dword ptr [_Lt_0241], 0
jle .L_022A
mov eax, dword ptr [_Lt_023E]
shl eax, 3
mov ebx, dword ptr [_Lt_023B]
movzx ecx, word ptr [ebx]
add ecx, -48
mov ebx, ecx
add eax, ebx
mov dword ptr [_Lt_023E], eax
add dword ptr [_Lt_023B], 2
dec dword ptr [_Lt_0241]
jmp .L_0229
.L_022A:
jmp .L_0225
.L_0226:
cmp dword ptr [_Lt_023E], 117
jne .L_022D
mov eax, dword ptr [_Lt_023B]
add eax, 8
mov ebx, dword ptr [_Lt_023D]
cmp eax, ebx
jbe .L_022F
jmp .L_0220
.L_022F:
push dword ptr [_Lt_023B]
call _HU16TOWCHAR@4
mov dword ptr [_Lt_023E], eax
add dword ptr [_Lt_023B], 8
jmp .L_022C
.L_022D:
push dword ptr [_Lt_023E]
call _HREMAPCHAR@4
mov dword ptr [_Lt_023E], eax
.L_022C:
.L_0225:
.L_0222:
.L_0221:
mov dword ptr [_Lt_0241], 1
mov eax, dword ptr [_Lt_0238]
mov dword ptr [ebp-8], eax
jmp .L_0231
.L_0234:
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax], 92
inc dword ptr [_Lt_023C]
mov eax, dword ptr [_Lt_023E]
and eax, 255
mov dword ptr [_Lt_0242], eax
cmp dword ptr [_Lt_0242], 8
jae .L_0236
mov eax, dword ptr [_Lt_0242]
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax], bl
inc dword ptr [_Lt_023C]
jmp .L_0235
.L_0236:
cmp dword ptr [_Lt_0242], 64
jae .L_0237
mov ebx, dword ptr [_Lt_0242]
shr ebx, 3
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_023C]
mov byte ptr [ebx], al
mov eax, dword ptr [_Lt_0242]
and eax, 7
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax+1], bl
add dword ptr [_Lt_023C], 2
jmp .L_0235
.L_0237:
mov ebx, dword ptr [_Lt_0242]
shr ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_023C]
mov byte ptr [ebx], al
mov eax, dword ptr [_Lt_0242]
and eax, 56
shr eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax+1], bl
mov ebx, dword ptr [_Lt_0242]
and ebx, 7
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_023C]
mov byte ptr [ebx+2], al
add dword ptr [_Lt_023C], 3
.L_0235:
shr dword ptr [_Lt_023E], 8
.L_0232:
inc dword ptr [_Lt_0241]
.L_0231:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0241], eax
jle .L_0234
.L_0233:
jmp .L_021F
.L_0220:
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_023A]
mov dword ptr [ebp-4], eax
.L_021C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_023A,12
.balign 4
	.lcomm	_Lt_023E,4
.balign 4
	.lcomm	_Lt_0242,4
.balign 4
	.lcomm	_Lt_0239,4
.balign 4
	.lcomm	_Lt_0241,4
.balign 4
	.lcomm	_Lt_0238,4
.balign 4
	.lcomm	_Lt_023B,4
.balign 4
	.lcomm	_Lt_023D,4
.balign 4
	.lcomm	_Lt_023C,4

.section .text
.balign 16

.globl _HUNESCAPE@8
_HUNESCAPE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0243:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [_Lt_0251], eax
cmp dword ptr [_Lt_0251], 0
jne .L_0246
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0244
.L_0246:
.L_0245:
push dword ptr [_Lt_0251]
push offset _Lt_0252
call _DZSTRALLOCATE@8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_0253], eax
mov eax, dword ptr [_Lt_0252]
mov dword ptr [_Lt_0254], eax
mov eax, dword ptr [_Lt_0253]
add eax, dword ptr [_Lt_0251]
mov dword ptr [_Lt_0255], eax
.L_0247:
mov eax, dword ptr [_Lt_0255]
cmp dword ptr [_Lt_0253], eax
jae .L_0248
mov eax, dword ptr [_Lt_0253]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0256], ebx
inc dword ptr [_Lt_0253]
cmp dword ptr [_Lt_0256], 27
jne .L_024A
mov ebx, dword ptr [_Lt_0255]
cmp dword ptr [_Lt_0253], ebx
jb .L_024C
jmp .L_0248
.L_024C:
mov ebx, dword ptr [_Lt_0253]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0256], eax
inc dword ptr [_Lt_0253]
mov eax, dword ptr [_Lt_0256]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0256]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_024E
mov ebx, dword ptr [_Lt_0256]
mov dword ptr [_Lt_0259], ebx
mov dword ptr [_Lt_0256], 0
.L_024F:
cmp dword ptr [_Lt_0259], 0
jle .L_0250
mov ebx, dword ptr [_Lt_0256]
sal ebx, 3
mov eax, dword ptr [_Lt_0253]
movzx ecx, byte ptr [eax]
add ebx, ecx
add ebx, -48
mov dword ptr [_Lt_0256], ebx
inc dword ptr [_Lt_0253]
dec dword ptr [_Lt_0259]
jmp .L_024F
.L_0250:
jmp .L_024D
.L_024E:
push dword ptr [_Lt_0256]
call _HREMAPCHAR@4
mov dword ptr [_Lt_0256], eax
.L_024D:
.L_024A:
.L_0249:
mov al, byte ptr [_Lt_0256]
mov ebx, dword ptr [_Lt_0254]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0254]
jmp .L_0247
.L_0248:
mov eax, dword ptr [_Lt_0254]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_0254]
sub eax, dword ptr [_Lt_0252]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [_Lt_0252]
mov dword ptr [ebp-4], eax
.L_0244:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0252,12
.balign 4
	.lcomm	_Lt_0256,4
.balign 4
	.lcomm	_Lt_0251,4
.balign 4
	.lcomm	_Lt_0259,4
.balign 4
	.lcomm	_Lt_0253,4
.balign 4
	.lcomm	_Lt_0254,4
.balign 4
	.lcomm	_Lt_0255,4

.section .text
.balign 16

.globl _HUNESCAPEW@8
_HUNESCAPEW@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_025A:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push dword ptr [ebp+8]
call _fb_WstrLen@4
mov dword ptr [_Lt_026C], eax
cmp dword ptr [_Lt_026C], 0
jne .L_025D
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_025B
.L_025D:
.L_025C:
push dword ptr [_Lt_026C]
push offset _Lt_026D
call _DWSTRALLOCATE@8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_026E], eax
mov eax, dword ptr [_Lt_026D]
mov dword ptr [_Lt_026F], eax
mov eax, dword ptr [_Lt_026C]
sal eax, 1
mov ebx, dword ptr [_Lt_026E]
add ebx, eax
mov dword ptr [_Lt_0270], ebx
.L_025E:
mov ebx, dword ptr [_Lt_0270]
cmp dword ptr [_Lt_026E], ebx
jae .L_025F
mov ebx, dword ptr [_Lt_026E]
movzx eax, word ptr [ebx]
mov dword ptr [_Lt_0271], eax
add dword ptr [_Lt_026E], 2
cmp dword ptr [_Lt_0271], 27
jne .L_0261
mov eax, dword ptr [_Lt_0270]
cmp dword ptr [_Lt_026E], eax
jb .L_0263
jmp .L_025F
.L_0263:
mov eax, dword ptr [_Lt_026E]
movzx ebx, word ptr [eax]
mov dword ptr [_Lt_0271], ebx
add dword ptr [_Lt_026E], 2
mov ebx, dword ptr [_Lt_0271]
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0271]
cmp eax, 11
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0265
mov eax, dword ptr [_Lt_0271]
mov dword ptr [_Lt_0274], eax
mov dword ptr [_Lt_0271], 0
.L_0266:
cmp dword ptr [_Lt_0274], 0
jle .L_0267
mov eax, dword ptr [_Lt_0271]
sal eax, 3
mov ebx, dword ptr [_Lt_026E]
movzx ecx, word ptr [ebx]
add eax, ecx
add eax, -48
mov dword ptr [_Lt_0271], eax
add dword ptr [_Lt_026E], 2
dec dword ptr [_Lt_0274]
jmp .L_0266
.L_0267:
jmp .L_0264
.L_0265:
cmp dword ptr [_Lt_0271], 117
jne .L_0269
mov eax, dword ptr [_Lt_026E]
add eax, 8
mov ecx, dword ptr [_Lt_0270]
cmp eax, ecx
jbe .L_026B
jmp .L_025F
.L_026B:
push dword ptr [_Lt_026E]
call _HU16TOWCHAR@4
mov dword ptr [_Lt_0271], eax
add dword ptr [_Lt_026E], 8
jmp .L_0268
.L_0269:
push dword ptr [_Lt_0271]
call _HREMAPCHAR@4
mov dword ptr [_Lt_0271], eax
.L_0268:
.L_0264:
.L_0261:
.L_0260:
mov ax, word ptr [_Lt_0271]
mov ecx, dword ptr [_Lt_026F]
mov word ptr [ecx], ax
add dword ptr [_Lt_026F], 2
jmp .L_025E
.L_025F:
mov eax, dword ptr [_Lt_026F]
mov word ptr [eax], 0
mov eax, dword ptr [_Lt_026F]
sub eax, dword ptr [_Lt_026D]
mov ecx, 2
cdq
idiv ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], eax
mov eax, dword ptr [_Lt_026D]
mov dword ptr [ebp-4], eax
.L_025B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_026D,12
.balign 4
	.lcomm	_Lt_0271,4
.balign 4
	.lcomm	_Lt_026C,4
.balign 4
	.lcomm	_Lt_0274,4
.balign 4
	.lcomm	_Lt_026E,4
.balign 4
	.lcomm	_Lt_026F,4
.balign 4
	.lcomm	_Lt_0270,4

.section .text
.balign 16

.globl _HCHARNEEDSESCAPING@8
_HCHARNEEDSESCAPING@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0275:
mov eax, dword ptr [ebp+8]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 127
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
cmp dword ptr [ebp+8], 92
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.L_0276:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HISVALIDHEXDIGIT@4
_HISVALIDHEXDIGIT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_027C:
cmp dword ptr [ebp+8], 48
setae al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+8], 57
setbe bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp+8], 97
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 102
setbe cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
cmp dword ptr [ebp+8], 65
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 70
setbe cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
mov dword ptr [ebp-4], eax
.L_027D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HSTR2LONG@8
_HSTR2LONG@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0287:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .L_028A
mov dword ptr [ebp-4], 0
jmp .L_0288
.L_028A:
.L_0289:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_028B
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0297
.L_028B:
mov dword ptr [ebp-20], -1
.L_0297:
cmp dword ptr [ebp-20], 0
je .L_028E
mov dword ptr [ebp-4], 0
jmp .L_0288
.L_028E:
.L_028D:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 45
jne .L_0290
mov dword ptr [ebp-12], -1
inc dword ptr [ebp-16]
.L_0290:
.L_028F:
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_0292
mov dword ptr [ebp-4], 0
jmp .L_0288
.L_0292:
.L_0291:
.L_0293:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .L_0295
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0298
.L_0295:
mov dword ptr [ebp-24], 0
.L_0298:
cmp dword ptr [ebp-24], 0
je .L_0294
mov eax, dword ptr [ebp-8]
imul eax, 10
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
add eax, dword ptr [ebp-8]
add eax, 4294967248
mov ebx, eax
mov dword ptr [ebp-8], ebx
inc dword ptr [ebp-16]
jmp .L_0293
.L_0294:
mov ebx, dword ptr [ebp-12]
imul ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0288:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HSPLITSTR@12
_HSPLITSTR@12:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_029C:
mov dword ptr [ebp-4], 10
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 4
mov dword ptr [ebp-24], 1
mov dword ptr [ebp-20], 17
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-4]
dec eax
push eax
push 0
push 1
push 0
push -1
push 4
lea eax, [ebp-40]
push eax
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_029E
push 0
push 0
push offset _Lt_029F
push 1318
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_029E:
push -1
push dword ptr [ebp+12]
call _fb_StrLen@8
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 1
.L_02A0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-52]
call _fb_StrInstr@12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .L_02A4
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-48], eax
jl .L_02A6
add dword ptr [ebp-4], 10
mov eax, dword ptr [ebp-4]
dec eax
push eax
push 0
push 1
push 0
push -1
push 4
lea eax, [ebp-40]
push eax
call _fb_ArrayRedimPresvEx
add esp, 28
test eax, eax
je .L_02A7
push 0
push 0
push offset _Lt_029F
push 1329
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02A7:
.L_02A6:
.L_02A5:
mov eax, dword ptr [ebp-48]
sal eax, 2
add eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-52]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-44]
add dword ptr [ebp-52], ebx
.L_02A4:
.L_02A3:
inc dword ptr [ebp-48]
.L_02A2:
cmp dword ptr [ebp-52], 0
jne .L_02A0
.L_02A1:
dec dword ptr [ebp-48]
cmp dword ptr [ebp-48], 0
jne .L_02A9
push 0
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02AA
push 0
push 0
push offset _Lt_029F
push 1339
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02AA:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _fb_ArrayErase@4
jmp .L_029D
.L_02A9:
.L_02A8:
push dword ptr [ebp-48]
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02AB
push 0
push 0
push offset _Lt_029F
push 1344
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02AB:
push 0
push -1
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax]
dec ebx
push ebx
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-52], 1
.L_02AC:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-52], eax
je .L_02AD
push 0
push -1
mov eax, dword ptr [ebp-52]
sal eax, 2
add eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-52]
sal ebx, 2
add ebx, dword ptr [ebp-40]
mov ecx, dword ptr [eax]
sub ecx, dword ptr [ebx-4]
sub ecx, dword ptr [ebp-44]
push ecx
mov ecx, dword ptr [ebp-52]
sal ecx, 2
add ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ecx-4]
push ebx
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
mov eax, dword ptr [ebp-52]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-52]
jmp .L_02AC
.L_02AD:
push 0
push -1
push -1
mov ebx, dword ptr [ebp-48]
sal ebx, 2
add ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebx-4]
push eax
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-40]
push ebx
call _fb_ArrayErase@4
.L_029D:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _HSTR2TOK@8
_HSTR2TOK@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_02AE:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_02B0:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .L_02B1
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .L_02B3
mov dword ptr [ebp-24], 32
.L_02B3:
.L_02B2:
cmp dword ptr [ebp-24], 32
jne .L_02B5
cmp dword ptr [ebp-12], 32
je .L_02B7
inc dword ptr [ebp-8]
.L_02B7:
.L_02B6:
.L_02B5:
.L_02B4:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-16]
jmp .L_02B0
.L_02B1:
cmp dword ptr [ebp-12], 32
je .L_02B9
inc dword ptr [ebp-8]
.L_02B9:
.L_02B8:
cmp dword ptr [ebp-8], 0
jne .L_02BB
mov dword ptr [ebp-4], 0
jmp .L_02AF
.L_02BB:
.L_02BA:
mov eax, dword ptr [ebp-8]
dec eax
push eax
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+12]
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02BC
push 0
push 0
push offset _Lt_029F
push 1386
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02BC:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_02BD:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .L_02BE
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .L_02C0
mov dword ptr [ebp-24], 32
.L_02C0:
.L_02BF:
cmp dword ptr [ebp-24], 32
jne .L_02C2
cmp dword ptr [ebp-12], 32
je .L_02C4
inc dword ptr [ebp-8]
.L_02C4:
.L_02C3:
jmp .L_02C1
.L_02C2:
push 0
push -1
push -1
push dword ptr [ebp-24]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_02C1:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-12], ebx
inc dword ptr [ebp-16]
jmp .L_02BD
.L_02BE:
cmp dword ptr [ebp-12], 32
je .L_02C6
mov ebx, dword ptr [ebp-8]
inc ebx
mov dword ptr [ebp-20], ebx
jmp .L_02C8
.L_02C6:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-20], ebx
.L_02C8:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
.L_02AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HSTR2ARGS@8
_HSTR2ARGS@8:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_02C9:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 10
cmp dword ptr [ebp+8], 0
jne .L_02CC
mov dword ptr [ebp-4], 0
jmp .L_02CA
.L_02CC:
.L_02CB:
mov eax, dword ptr [ebp-24]
dec eax
push eax
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+12]
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02CD
push 0
push 0
push offset _Lt_029F
push 1433
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02CD:
.L_02CE:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 9
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-20], 32
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_02D2
inc dword ptr [ebp-12]
jmp .L_02D1
.L_02D2:
jmp .L_02CF
.L_02D1:
.L_02D0:
jmp .L_02CE
.L_02CF:
cmp dword ptr [ebp-20], 0
jne .L_02D4
mov dword ptr [ebp-4], 0
jmp .L_02CA
.L_02D4:
.L_02D3:
inc dword ptr [ebp-8]
.L_02D5:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_02D9
.L_02DA:
jmp .L_02D6
jmp .L_02D8
.L_02D9:
cmp dword ptr [ebp-20], 40
jne .L_02DB
.L_02DC:
inc dword ptr [ebp-16]
jmp .L_02D8
.L_02DB:
cmp dword ptr [ebp-20], 41
jne .L_02DD
.L_02DE:
cmp dword ptr [ebp-16], 0
jle .L_02E0
dec dword ptr [ebp-16]
.L_02E0:
.L_02DF:
jmp .L_02D8
.L_02DD:
cmp dword ptr [ebp-20], 44
jne .L_02E1
.L_02E2:
cmp dword ptr [ebp-16], 0
jne .L_02E4
inc dword ptr [ebp-8]
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-8], ebx
jle .L_02E6
add dword ptr [ebp-24], 10
mov ebx, dword ptr [ebp-24]
dec ebx
push ebx
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+12]
call _fb_ArrayRedimPresvEx
add esp, 28
test eax, eax
je .L_02E7
push 0
push 0
push offset _Lt_029F
push 1472
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02E7:
.L_02E6:
.L_02E5:
inc dword ptr [ebp-12]
jmp .L_02D7
.L_02E4:
.L_02E3:
jmp .L_02D8
.L_02E1:
cmp dword ptr [ebp-20], 34
je .L_02E9
.L_02EA:
cmp dword ptr [ebp-20], 33
je .L_02E9
.L_02EB:
cmp dword ptr [ebp-20], 36
jne .L_02E8
.L_02E9:
mov eax, dword ptr [_ENV+1092]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-20], 34
je .L_02ED
cmp dword ptr [ebp-20], 33
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_02F0
jmp .L_02D7
.L_02F0:
.L_02EF:
.L_02ED:
.L_02EC:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea ebx, [ebp-52]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
.L_02F2:
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_02F6
jmp .L_02F3
.L_02F6:
.L_02F5:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
cmp dword ptr [ebp-20], 34
jne .L_02F9
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_02FB
jmp .L_02F3
.L_02FB:
.L_02FA:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ebx, [ebp-76]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
jmp .L_02F8
.L_02F9:
cmp dword ptr [ebp-20], 92
jne .L_02FD
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_0300
.L_0301:
cmp dword ptr [ebp-20], 92
jne .L_02FF
.L_0300:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ebx, [ebp-76]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
.L_02FF:
.L_02FE:
.L_02FD:
.L_02F8:
.L_02F4:
jmp .L_02F2
.L_02F3:
jmp .L_02D7
jmp .L_02D8
.L_02E8:
cmp dword ptr [ebp-20], 47
jne .L_0303
.L_0304:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea ebx, [ebp-48]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 39
je .L_0307
jmp .L_02D7
.L_0307:
.L_0306:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
.L_0309:
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_030D
jmp .L_030A
.L_030D:
.L_030C:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
cmp dword ptr [ebp-20], 39
jne .L_0310
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 47
jne .L_0312
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea ebx, [ebp-84]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
jmp .L_030A
.L_0312:
.L_0311:
.L_0310:
.L_030F:
.L_030B:
jmp .L_0309
.L_030A:
jmp .L_02D7
jmp .L_02D8
.L_0303:
cmp dword ptr [ebp-20], 39
jne .L_0314
.L_0315:
.L_0316:
cmp dword ptr [ebp-20], 0
je .L_0317
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea ebx, [ebp-48]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
jmp .L_0316
.L_0317:
jmp .L_02D6
.L_0314:
.L_02D8:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call _fb_StrAssign@20
inc dword ptr [ebp-12]
.L_02D7:
jmp .L_02D5
.L_02D6:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_02CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
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
_HREMAPCHAR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01E1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_01E4
.L_01E6:
mov dword ptr [ebp-4], 13
jmp .L_01E3
.L_01E8:
mov dword ptr [ebp-4], 10
jmp .L_01E3
.L_01EB:
mov dword ptr [ebp-4], 9
jmp .L_01E3
.L_01ED:
mov dword ptr [ebp-4], 8
jmp .L_01E3
.L_01EF:
mov dword ptr [ebp-4], 7
jmp .L_01E3
.L_01F1:
mov dword ptr [ebp-4], 12
jmp .L_01E3
.L_01F3:
mov dword ptr [ebp-4], 11
jmp .L_01E3
.L_01F5:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01E3
.L_01E4:
mov eax, dword ptr [ebp-8]
add eax, 4294967199
cmp eax, 21
ja .L_01F5
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_01F6+eax*4-388]
_.L_01F6:
.int .L_01EF
.int .L_01ED
.int .L_01F5
.int .L_01F5
.int .L_01F5
.int .L_01F1
.int .L_01F5
.int .L_01F5
.int .L_01F5
.int .L_01F5
.int .L_01F5
.int .L_01E8
.int .L_01F5
.int .L_01E8
.int .L_01F5
.int .L_01F5
.int .L_01F5
.int .L_01E6
.int .L_01F5
.int .L_01EB
.int .L_01F5
.int .L_01F3
.L_01E3:
.L_01E2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HU16TOWCHAR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0211:
mov dword ptr [_Lt_031D], 0
mov dword ptr [_Lt_031E], 1
.L_0216:
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax]
add ebx, -48
mov eax, ebx
mov dword ptr [_Lt_031F], eax
add dword ptr [ebp+8], 2
cmp dword ptr [_Lt_031F], 9
jbe .L_0218
add dword ptr [_Lt_031F], 4294967289
.L_0218:
.L_0217:
cmp dword ptr [_Lt_031F], 16
jbe .L_021A
add dword ptr [_Lt_031F], 4294967264
.L_021A:
.L_0219:
mov eax, dword ptr [_Lt_031D]
shl eax, 4
or eax, dword ptr [_Lt_031F]
mov dword ptr [_Lt_031D], eax
.L_0214:
inc dword ptr [_Lt_031E]
.L_0213:
cmp dword ptr [_Lt_031E], 4
jle .L_0216
.L_0215:
mov eax, dword ptr [_Lt_031D]
mov dword ptr [ebp-4], eax
.L_0212:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_031D,4
.balign 4
	.lcomm	_Lt_031F,4
.balign 4
	.lcomm	_Lt_031E,4
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_029F:	.ascii	"src/compiler/hlp-str.bas\0"
