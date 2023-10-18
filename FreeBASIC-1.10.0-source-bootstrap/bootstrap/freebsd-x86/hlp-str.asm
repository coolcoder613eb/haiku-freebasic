	.intel_syntax noprefix

.section .text
.balign 16

.globl ZSTRASSIGN
ZSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_005C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_005F
mov dword ptr [ebp-8], 0
jmp .L_005E
.L_005F:
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
.L_005E:
cmp dword ptr [ebp-8], 0
jne .L_0061
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0063
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_005D
.L_0063:
.L_0062:
.L_0061:
.L_0060:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0065
mov dword ptr [ebp-4], 0
jmp .L_0064
.L_0065:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.L_0064:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_0067
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0067:
.L_0066:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0069
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrAssign
add esp, 20
.L_0069:
.L_0068:
.L_005D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ZSTRASSIGNW
ZSTRASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_006D
mov dword ptr [ebp-8], 0
jmp .L_006C
.L_006D:
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
.L_006C:
cmp dword ptr [ebp-8], 0
jne .L_006F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0071
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_006B
.L_0071:
.L_0070:
.L_006F:
.L_006E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0073
mov dword ptr [ebp-4], 0
jmp .L_0072
.L_0073:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.L_0072:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_0075
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0075:
.L_0074:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0077
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrAssignToA
add esp, 16
.L_0077:
.L_0076:
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ZSTRCONCATASSIGN
ZSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0078:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_007B
jmp .L_0079
.L_007B:
.L_007A:
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007D
jmp .L_0079
.L_007D:
.L_007C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_007F
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_007E
.L_007F:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_007E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0081
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call fb_StrAssign
add esp, 20
.L_0081:
.L_0080:
.L_0079:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ZSTRCONCATASSIGNW
ZSTRCONCATASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0082:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_0085
jmp .L_0083
.L_0085:
.L_0084:
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0087
jmp .L_0083
.L_0087:
.L_0086:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0089
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_0088
.L_0089:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0088:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_008B
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call fb_WstrAssignToA
add esp, 16
.L_008B:
.L_008A:
.L_0083:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl WSTRASSIGN
WSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_008C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_008F
mov dword ptr [ebp-8], 0
jmp .L_008E
.L_008F:
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
.L_008E:
cmp dword ptr [ebp-8], 0
jne .L_0091
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0093
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_008D
.L_0093:
.L_0092:
.L_0091:
.L_0090:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0095
mov dword ptr [ebp-4], 0
jmp .L_0094
.L_0095:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
.L_0094:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_0097
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_0097:
.L_0096:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0099
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrAssign
add esp, 12
.L_0099:
.L_0098:
.L_008D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl WSTRASSIGNA
WSTRASSIGNA:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_009A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_009D
mov dword ptr [ebp-8], 0
jmp .L_009C
.L_009D:
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
.L_009C:
cmp dword ptr [ebp-8], 0
jne .L_009F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00A1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_009B
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00A3
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00A3:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
.L_00A2:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .L_00A5
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00A5:
.L_00A4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00A7
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrAssignFromA
add esp, 16
.L_00A7:
.L_00A6:
.L_009B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl WSTRCONCATASSIGN
WSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00A8:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_00AB
jmp .L_00A9
.L_00AB:
.L_00AA:
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AD
jmp .L_00A9
.L_00AD:
.L_00AC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00AF
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_00AE
.L_00AF:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
sal eax, 2
add eax, 4
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00AE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00B1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssign
add esp, 12
.L_00B1:
.L_00B0:
.L_00A9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl WSTRCONCATASSIGNW
WSTRCONCATASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00B2:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_00B5
jmp .L_00B3
.L_00B5:
.L_00B4:
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B7
jmp .L_00B3
.L_00B7:
.L_00B6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00B9
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_00B8
.L_00B9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
sal eax, 2
add eax, 4
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00B8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00BB
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssignFromA
add esp, 16
.L_00BB:
.L_00BA:
.L_00B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ZSTRDUP
ZSTRDUP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BC:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl WSTRDUP
WSTRDUP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BE:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 4
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call fb_WstrAssign
add esp, 12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl HREPLACE
HREPLACE:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00C0:
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [Lt_00C8], eax
push 0
push dword ptr [ebp+16]
call fb_StrLen
add esp, 8
mov dword ptr [Lt_00C9], eax
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_00CA
call fb_StrAssign
add esp, 20
mov dword ptr [Lt_00CB], 0
.L_00C2:
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push offset Lt_00CA
mov eax, dword ptr [Lt_00CB]
inc eax
push eax
call fb_StrInstr
add esp, 12
mov dword ptr [Lt_00CB], eax
cmp dword ptr [Lt_00CB], 0
jne .L_00C6
jmp .L_00C3
.L_00C6:
.L_00C5:
push 0
push -1
push -1
mov eax, dword ptr [Lt_00C8]
add eax, dword ptr [Lt_00CB]
push eax
push offset Lt_00CA
call fb_StrMid
add esp, 12
push eax
push -1
push offset Lt_00CC
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [Lt_00CB]
dec eax
push eax
push offset Lt_00CA
call fb_LEFT
add esp, 8
push eax
push -1
push offset Lt_00CA
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+16]
push -1
push offset Lt_00CA
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_00CA
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_00CC
push -1
push offset Lt_00CA
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [Lt_00C9]
add eax, dword ptr [Lt_00CB]
dec eax
mov dword ptr [Lt_00CB], eax
.L_00C4:
jmp .L_00C2
.L_00C3:
push 0
push -1
push offset Lt_00CA
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00C1:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00C8,4
.balign 4
	.lcomm	Lt_00C9,4
.balign 4
	.lcomm	Lt_00CB,4
.balign 4
	.lcomm	Lt_00CA,12
.balign 4
	.lcomm	Lt_00CC,12

.section .text
.balign 16

.globl HREPLACEW
HREPLACEW:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00CD:
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [Lt_00D6], eax
push dword ptr [ebp+16]
call fb_WstrLen
add esp, 4
mov dword ptr [Lt_00D7], eax
push dword ptr [ebp+8]
push offset Lt_00D8
call DWSTRASSIGN
add esp, 8
mov dword ptr [Lt_00D9], 0
.L_00CF:
push dword ptr [ebp+12]
push dword ptr [Lt_00D8]
mov eax, dword ptr [Lt_00D9]
inc eax
push eax
call fb_WstrInstr
add esp, 12
mov dword ptr [Lt_00D9], eax
cmp dword ptr [Lt_00D9], 0
jne .L_00D3
jmp .L_00D0
.L_00D3:
.L_00D2:
push -1
mov eax, dword ptr [Lt_00D6]
add eax, dword ptr [Lt_00D9]
push eax
push dword ptr [Lt_00D8]
call fb_WstrMid
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push offset Lt_00DA
call DWSTRASSIGN
add esp, 8
push dword ptr [ebp-8]
call fb_WstrDelete
add esp, 4
mov eax, dword ptr [Lt_00D9]
dec eax
push eax
push dword ptr [Lt_00D8]
call fb_WstrLeft
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset Lt_00D8
call DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 4
push dword ptr [ebp+16]
push offset Lt_00D8
call DWSTRCONCATASSIGN
add esp, 8
push dword ptr [Lt_00DA]
push offset Lt_00D8
call DWSTRCONCATASSIGN
add esp, 8
mov eax, dword ptr [Lt_00D7]
add eax, dword ptr [Lt_00D9]
dec eax
mov dword ptr [Lt_00D9], eax
.L_00D1:
jmp .L_00CF
.L_00D0:
mov eax, dword ptr [Lt_00D8]
mov dword ptr [ebp-4], eax
.L_00CE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00D6,4
.balign 4
	.lcomm	Lt_00D7,4
.balign 4
	.lcomm	Lt_00D9,4
.balign 4
	.lcomm	Lt_00D8,12
.balign 4
	.lcomm	Lt_00DA,12

.section .text
.balign 16

.globl HREPLACECHAR
HREPLACECHAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DB:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00DE
.L_00E1:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp+12]
cmp ebx, eax
jne .L_00E3
mov al, byte ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-8]
mov byte ptr [ebx], al
.L_00E3:
.L_00E2:
.L_00DF:
inc dword ptr [ebp-8]
.L_00DE:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_00E1
.L_00E0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HREESCAPE
HREESCAPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E4:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [Lt_0141], eax
cmp dword ptr [Lt_0141], 0
jne .L_00E7
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00E5
.L_00E7:
.L_00E6:
mov eax, dword ptr [Lt_0141]
sal eax, 1
push eax
push offset Lt_0142
call DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_0143], eax
mov eax, dword ptr [Lt_0142]
mov dword ptr [Lt_0144], eax
mov eax, dword ptr [Lt_0143]
add eax, dword ptr [Lt_0141]
mov dword ptr [Lt_0145], eax
.L_00E8:
mov eax, dword ptr [Lt_0145]
cmp dword ptr [Lt_0143], eax
jae .L_00E9
mov eax, dword ptr [Lt_0143]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0146], ebx
inc dword ptr [Lt_0143]
cmp dword ptr [Lt_0146], 92
jne .L_00EB
mov ebx, dword ptr [Lt_0145]
cmp dword ptr [Lt_0143], ebx
jb .L_00ED
jmp .L_00E9
.L_00ED:
mov ebx, dword ptr [Lt_0144]
mov byte ptr [ebx], 27
inc dword ptr [Lt_0144]
mov dword ptr [Lt_0147], 0
mov ebx, dword ptr [Lt_0143]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0146], eax
inc dword ptr [Lt_0143]
cmp dword ptr [Lt_0146], 48
jl .L_00EF
cmp dword ptr [Lt_0146], 57
jg .L_00EF
.L_00F0:
mov dword ptr [Lt_0147], -1
mov eax, dword ptr [Lt_0146]
add eax, -48
mov dword ptr [Lt_0148], eax
mov dword ptr [Lt_0149], 2
.L_00F4:
mov eax, dword ptr [Lt_0145]
cmp dword ptr [Lt_0143], eax
jb .L_00F6
jmp .L_00F3
.L_00F6:
mov eax, dword ptr [Lt_0143]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0146], ebx
mov ebx, dword ptr [Lt_0146]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0146]
cmp eax, 57
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00F8
jmp .L_00F3
.L_00F8:
.L_00F7:
mov eax, dword ptr [Lt_0148]
imul eax, 10
add eax, dword ptr [Lt_0146]
add eax, -48
mov dword ptr [Lt_0148], eax
inc dword ptr [Lt_0143]
.L_00F2:
inc dword ptr [Lt_0149]
.L_00F1:
cmp dword ptr [Lt_0149], 3
jle .L_00F4
.L_00F3:
jmp .L_00EE
.L_00EF:
cmp dword ptr [Lt_0146], 38
je .L_00FA
.L_00FB:
cmp dword ptr [Lt_0146], 88
je .L_00FA
.L_00FC:
cmp dword ptr [Lt_0146], 120
jne .L_00F9
.L_00FA:
mov eax, dword ptr [Lt_0145]
cmp dword ptr [Lt_0143], eax
jb .L_00FE
jmp .L_00E9
.L_00FE:
mov dword ptr [Lt_0148], 0
cmp dword ptr [Lt_0146], 38
jne .L_0100
mov eax, dword ptr [Lt_0143]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0146], ebx
inc dword ptr [Lt_0143]
jmp .L_00FF
.L_0100:
mov dword ptr [Lt_0146], 72
.L_00FF:
mov ebx, dword ptr [Lt_0146]
mov dword ptr [ebp-8], ebx
jmp .L_0102
.L_0104:
mov dword ptr [Lt_0147], -1
mov dword ptr [Lt_0149], 1
.L_0108:
mov ebx, dword ptr [Lt_0145]
cmp dword ptr [Lt_0143], ebx
jb .L_010A
jmp .L_0107
.L_010A:
mov ebx, dword ptr [Lt_0143]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0146], eax
cmp dword ptr [Lt_0146], 97
jl .L_010E
cmp dword ptr [Lt_0146], 102
jle .L_010D
.L_010E:
cmp dword ptr [Lt_0146], 65
jl .L_010F
cmp dword ptr [Lt_0146], 70
jle .L_010D
.L_010F:
cmp dword ptr [Lt_0146], 48
jl .L_010C
cmp dword ptr [Lt_0146], 57
jg .L_010C
.L_010D:
add dword ptr [Lt_0146], -48
cmp dword ptr [Lt_0146], 9
jle .L_0111
add dword ptr [Lt_0146], -7
.L_0111:
.L_0110:
cmp dword ptr [Lt_0146], 16
jle .L_0113
add dword ptr [Lt_0146], -32
.L_0113:
.L_0112:
mov eax, dword ptr [Lt_0148]
sal eax, 4
add eax, dword ptr [Lt_0146]
mov dword ptr [Lt_0148], eax
jmp .L_010B
.L_010C:
jmp .L_0107
.L_0114:
.L_010B:
inc dword ptr [Lt_0143]
.L_0106:
inc dword ptr [Lt_0149]
.L_0105:
cmp dword ptr [Lt_0149], 2
jle .L_0108
.L_0107:
jmp .L_0101
.L_0115:
mov dword ptr [Lt_0147], -1
mov dword ptr [Lt_0149], 1
.L_0119:
mov eax, dword ptr [Lt_0145]
cmp dword ptr [Lt_0143], eax
jb .L_011B
jmp .L_0118
.L_011B:
mov eax, dword ptr [Lt_0143]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0146], ebx
mov ebx, dword ptr [Lt_0146]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0146]
cmp eax, 55
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_011D
jmp .L_0118
.L_011D:
.L_011C:
mov eax, dword ptr [Lt_0148]
sal eax, 3
add eax, dword ptr [Lt_0146]
add eax, -48
mov dword ptr [Lt_0148], eax
inc dword ptr [Lt_0143]
.L_0117:
inc dword ptr [Lt_0149]
.L_0116:
cmp dword ptr [Lt_0149], 3
jle .L_0119
.L_0118:
jmp .L_0101
.L_011E:
mov dword ptr [Lt_0147], -1
mov dword ptr [Lt_0149], 1
.L_0122:
mov eax, dword ptr [Lt_0145]
cmp dword ptr [Lt_0143], eax
jb .L_0124
jmp .L_0121
.L_0124:
mov eax, dword ptr [Lt_0143]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0146], ebx
mov ebx, dword ptr [Lt_0146]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0146]
cmp eax, 49
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0126
jmp .L_0121
.L_0126:
.L_0125:
mov eax, dword ptr [Lt_0148]
sal eax, 1
add eax, dword ptr [Lt_0146]
add eax, -48
mov dword ptr [Lt_0148], eax
inc dword ptr [Lt_0143]
.L_0120:
inc dword ptr [Lt_0149]
.L_011F:
cmp dword ptr [Lt_0149], 8
jle .L_0122
.L_0121:
jmp .L_0101
.L_0102:
mov eax, dword ptr [ebp-8]
add eax, 4294967230
cmp eax, 45
ja .L_0101
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0127+eax*4-264]
.L_0127:
.int .L_011E
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0104
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0115
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_011E
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0104
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0115
.L_0101:
jmp .L_00EE
.L_00F9:
cmp dword ptr [Lt_0146], 97
jne .L_0128
.L_0129:
mov dword ptr [Lt_0147], -1
mov dword ptr [Lt_0148], 7
jmp .L_00EE
.L_0128:
cmp dword ptr [Lt_0146], 117
jne .L_012A
.L_012B:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov al, byte ptr [Lt_0146]
mov ebx, dword ptr [Lt_0144]
mov byte ptr [ebx], al
inc dword ptr [Lt_0144]
mov dword ptr [Lt_0149], 1
.L_012F:
push 0
push 0
push dword ptr [Lt_0143]
push 0
push dword ptr [Lt_0144]
call fb_StrAssign
add esp, 20
inc dword ptr [Lt_0144]
inc dword ptr [Lt_0143]
.L_012D:
inc dword ptr [Lt_0149]
.L_012C:
cmp dword ptr [Lt_0149], 4
jle .L_012F
.L_012E:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
jmp .L_00E8
jmp .L_00EE
.L_012A:
cmp dword ptr [Lt_0146], 85
jne .L_0130
.L_0131:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [Lt_0144]
mov byte ptr [eax], 85
inc dword ptr [Lt_0144]
mov dword ptr [Lt_0149], 1
.L_0135:
push 0
push 0
push dword ptr [Lt_0143]
push 0
push dword ptr [Lt_0144]
call fb_StrAssign
add esp, 20
inc dword ptr [Lt_0144]
inc dword ptr [Lt_0143]
.L_0133:
inc dword ptr [Lt_0149]
.L_0132:
cmp dword ptr [Lt_0149], 4
jle .L_0135
.L_0134:
mov eax, dword ptr [Lt_0144]
mov byte ptr [eax], 27
mov eax, dword ptr [Lt_0144]
mov byte ptr [eax+1], 85
add dword ptr [Lt_0144], 2
mov dword ptr [Lt_0149], 1
.L_0139:
push 0
push 0
push dword ptr [Lt_0143]
push 0
push dword ptr [Lt_0144]
call fb_StrAssign
add esp, 20
inc dword ptr [Lt_0144]
inc dword ptr [Lt_0143]
.L_0137:
inc dword ptr [Lt_0149]
.L_0136:
cmp dword ptr [Lt_0149], 4
jle .L_0139
.L_0138:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 4
jmp .L_00E8
.L_0130:
.L_00EE:
cmp dword ptr [Lt_0147], 0
je .L_013B
cmp dword ptr [Lt_0148], 255
jbe .L_013D
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov dword ptr [Lt_0148], 255
.L_013D:
.L_013C:
cmp dword ptr [Lt_0148], 8
jge .L_013F
mov dword ptr [Lt_0141], 1
jmp .L_013E
.L_013F:
cmp dword ptr [Lt_0148], 64
jge .L_0140
mov dword ptr [Lt_0141], 2
jmp .L_013E
.L_0140:
mov dword ptr [Lt_0141], 3
.L_013E:
mov al, byte ptr [Lt_0141]
mov ebx, dword ptr [Lt_0144]
mov byte ptr [ebx], al
inc dword ptr [Lt_0144]
push 0
push -1
push dword ptr [Lt_0148]
call fb_OCT_i
add esp, 4
push eax
push 0
push dword ptr [Lt_0144]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [Lt_0141]
add dword ptr [Lt_0144], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_00E8
.L_013B:
.L_013A:
.L_00EB:
.L_00EA:
mov al, byte ptr [Lt_0146]
mov ebx, dword ptr [Lt_0144]
mov byte ptr [ebx], al
inc dword ptr [Lt_0144]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_00E8
.L_00E9:
mov eax, dword ptr [Lt_0144]
mov byte ptr [eax], 0
mov eax, dword ptr [Lt_0142]
mov dword ptr [ebp-4], eax
.L_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0142,12
.balign 4
	.lcomm	Lt_0146,4
.balign 4
	.lcomm	Lt_0141,4
.balign 4
	.lcomm	Lt_0149,4
.balign 4
	.lcomm	Lt_0148,4
.balign 4
	.lcomm	Lt_0147,4
.balign 4
	.lcomm	Lt_0143,4
.balign 4
	.lcomm	Lt_0144,4
.balign 4
	.lcomm	Lt_0145,4

.section .text
.balign 16

.globl HREESCAPEW
HREESCAPEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0150:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 4
mov dword ptr [Lt_01AB], eax
cmp dword ptr [Lt_01AB], 0
jne .L_0153
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0151
.L_0153:
.L_0152:
mov eax, dword ptr [Lt_01AB]
sal eax, 1
push eax
push offset Lt_01AC
call DWSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_01AD], eax
mov eax, dword ptr [Lt_01AC]
mov dword ptr [Lt_01AE], eax
mov eax, dword ptr [Lt_01AB]
sal eax, 2
mov ebx, dword ptr [Lt_01AD]
add ebx, eax
mov dword ptr [Lt_01AF], ebx
.L_0154:
mov ebx, dword ptr [Lt_01AF]
cmp dword ptr [Lt_01AD], ebx
jae .L_0155
mov ebx, dword ptr [Lt_01AD]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_01B0], eax
add dword ptr [Lt_01AD], 4
cmp dword ptr [Lt_01B0], 92
jne .L_0157
mov eax, dword ptr [Lt_01AF]
cmp dword ptr [Lt_01AD], eax
jb .L_0159
jmp .L_0155
.L_0159:
mov eax, dword ptr [Lt_01AE]
mov dword ptr [eax], 27
add dword ptr [Lt_01AE], 4
mov dword ptr [Lt_01B1], 0
mov eax, dword ptr [Lt_01AD]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_01B0], ebx
add dword ptr [Lt_01AD], 4
cmp dword ptr [Lt_01B0], 48
jl .L_015B
cmp dword ptr [Lt_01B0], 57
jg .L_015B
.L_015C:
mov dword ptr [Lt_01B1], -1
mov ebx, dword ptr [Lt_01B0]
add ebx, -48
mov eax, ebx
mov dword ptr [Lt_01B2], eax
mov dword ptr [Lt_01B3], 2
.L_0160:
mov eax, dword ptr [Lt_01AF]
cmp dword ptr [Lt_01AD], eax
jb .L_0162
jmp .L_015F
.L_0162:
mov eax, dword ptr [Lt_01AD]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_01B0], ebx
mov ebx, dword ptr [Lt_01B0]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_01B0]
cmp eax, 57
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0164
jmp .L_015F
.L_0164:
.L_0163:
mov eax, dword ptr [Lt_01B2]
imul eax, 10
mov ebx, dword ptr [Lt_01B0]
add ebx, -48
mov ecx, ebx
add eax, ecx
mov dword ptr [Lt_01B2], eax
add dword ptr [Lt_01AD], 4
.L_015E:
inc dword ptr [Lt_01B3]
.L_015D:
cmp dword ptr [Lt_01B3], 5
jle .L_0160
.L_015F:
jmp .L_015A
.L_015B:
cmp dword ptr [Lt_01B0], 38
je .L_0166
.L_0167:
cmp dword ptr [Lt_01B0], 88
je .L_0166
.L_0168:
cmp dword ptr [Lt_01B0], 120
jne .L_0165
.L_0166:
mov eax, dword ptr [Lt_01AF]
cmp dword ptr [Lt_01AD], eax
jb .L_016A
jmp .L_0155
.L_016A:
mov dword ptr [Lt_01B2], 0
cmp dword ptr [Lt_01B0], 38
jne .L_016C
mov eax, dword ptr [Lt_01AD]
mov ecx, dword ptr [eax]
mov dword ptr [Lt_01B0], ecx
add dword ptr [Lt_01AD], 4
jmp .L_016B
.L_016C:
mov dword ptr [Lt_01B0], 72
.L_016B:
mov ecx, dword ptr [Lt_01B0]
mov dword ptr [ebp-8], ecx
jmp .L_016E
.L_0170:
mov dword ptr [Lt_01B1], -1
mov dword ptr [Lt_01B3], 1
.L_0174:
mov ecx, dword ptr [Lt_01AF]
cmp dword ptr [Lt_01AD], ecx
jb .L_0176
jmp .L_0173
.L_0176:
mov ecx, dword ptr [Lt_01AD]
mov eax, dword ptr [ecx]
mov dword ptr [Lt_01B0], eax
cmp dword ptr [Lt_01B0], 97
jl .L_017A
cmp dword ptr [Lt_01B0], 102
jle .L_0179
.L_017A:
cmp dword ptr [Lt_01B0], 65
jl .L_017B
cmp dword ptr [Lt_01B0], 70
jle .L_0179
.L_017B:
cmp dword ptr [Lt_01B0], 48
jl .L_0178
cmp dword ptr [Lt_01B0], 57
jg .L_0178
.L_0179:
add dword ptr [Lt_01B0], -48
cmp dword ptr [Lt_01B0], 9
jle .L_017D
add dword ptr [Lt_01B0], -7
.L_017D:
.L_017C:
cmp dword ptr [Lt_01B0], 16
jle .L_017F
add dword ptr [Lt_01B0], -32
.L_017F:
.L_017E:
mov eax, dword ptr [Lt_01B2]
shl eax, 4
add eax, dword ptr [Lt_01B0]
mov dword ptr [Lt_01B2], eax
jmp .L_0177
.L_0178:
jmp .L_0173
.L_0180:
.L_0177:
add dword ptr [Lt_01AD], 4
.L_0172:
inc dword ptr [Lt_01B3]
.L_0171:
cmp dword ptr [Lt_01B3], 4
jle .L_0174
.L_0173:
jmp .L_016D
.L_0181:
mov dword ptr [Lt_01B1], -1
mov dword ptr [Lt_01B3], 1
.L_0185:
mov eax, dword ptr [Lt_01AF]
cmp dword ptr [Lt_01AD], eax
jb .L_0187
jmp .L_0184
.L_0187:
mov eax, dword ptr [Lt_01AD]
mov ecx, dword ptr [eax]
mov dword ptr [Lt_01B0], ecx
mov ecx, dword ptr [Lt_01B0]
cmp ecx, 48
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_01B0]
cmp eax, 55
setg al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0189
jmp .L_0184
.L_0189:
.L_0188:
mov eax, dword ptr [Lt_01B2]
shl eax, 3
mov ecx, dword ptr [Lt_01B0]
add ecx, -48
mov ebx, ecx
add eax, ebx
mov dword ptr [Lt_01B2], eax
add dword ptr [Lt_01AD], 4
.L_0183:
inc dword ptr [Lt_01B3]
.L_0182:
cmp dword ptr [Lt_01B3], 6
jle .L_0185
.L_0184:
jmp .L_016D
.L_018A:
mov dword ptr [Lt_01B1], -1
mov dword ptr [Lt_01B3], 1
.L_018E:
mov eax, dword ptr [Lt_01AF]
cmp dword ptr [Lt_01AD], eax
jb .L_0190
jmp .L_018D
.L_0190:
mov eax, dword ptr [Lt_01AD]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_01B0], ebx
mov ebx, dword ptr [Lt_01B0]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_01B0]
cmp eax, 49
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0192
jmp .L_018D
.L_0192:
.L_0191:
mov eax, dword ptr [Lt_01B2]
shl eax, 1
mov ebx, dword ptr [Lt_01B0]
add ebx, -48
mov ecx, ebx
add eax, ecx
mov dword ptr [Lt_01B2], eax
add dword ptr [Lt_01AD], 4
.L_018C:
inc dword ptr [Lt_01B3]
.L_018B:
cmp dword ptr [Lt_01B3], 16
jle .L_018E
.L_018D:
jmp .L_016D
.L_016E:
mov eax, dword ptr [ebp-8]
add eax, 4294967230
cmp eax, 45
ja .L_016D
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0193+eax*4-264]
.L_0193:
.int .L_018A
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_0170
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_0181
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_018A
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_0170
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_016D
.int .L_0181
.L_016D:
jmp .L_015A
.L_0165:
cmp dword ptr [Lt_01B0], 117
jne .L_0194
.L_0195:
mov eax, dword ptr [Lt_01AE]
mov ecx, dword ptr [Lt_01B0]
mov dword ptr [eax], ecx
add dword ptr [Lt_01AE], 4
mov dword ptr [Lt_01B3], 1
.L_0199:
push dword ptr [Lt_01AD]
push 0
push dword ptr [Lt_01AE]
call fb_WstrAssign
add esp, 12
add dword ptr [Lt_01AE], 4
add dword ptr [Lt_01AD], 4
.L_0197:
inc dword ptr [Lt_01B3]
.L_0196:
cmp dword ptr [Lt_01B3], 4
jle .L_0199
.L_0198:
mov ecx, dword ptr [ebp+12]
add dword ptr [ecx], 2
jmp .L_0154
jmp .L_015A
.L_0194:
cmp dword ptr [Lt_01B0], 85
jne .L_019A
.L_019B:
mov ecx, dword ptr [Lt_01AE]
mov dword ptr [ecx], 85
add dword ptr [Lt_01AE], 4
mov dword ptr [Lt_01B3], 1
.L_019F:
push dword ptr [Lt_01AD]
push 0
push dword ptr [Lt_01AE]
call fb_WstrAssign
add esp, 12
add dword ptr [Lt_01AE], 4
add dword ptr [Lt_01AD], 4
.L_019D:
inc dword ptr [Lt_01B3]
.L_019C:
cmp dword ptr [Lt_01B3], 4
jle .L_019F
.L_019E:
mov ecx, dword ptr [Lt_01AE]
mov dword ptr [ecx], 27
mov ecx, dword ptr [Lt_01AE]
mov dword ptr [ecx+4], 85
add dword ptr [Lt_01AE], 8
mov dword ptr [Lt_01B3], 1
.L_01A3:
push dword ptr [Lt_01AD]
push 0
push dword ptr [Lt_01AE]
call fb_WstrAssign
add esp, 12
add dword ptr [Lt_01AE], 4
add dword ptr [Lt_01AD], 4
.L_01A1:
inc dword ptr [Lt_01B3]
.L_01A0:
cmp dword ptr [Lt_01B3], 4
jle .L_01A3
.L_01A2:
mov ecx, dword ptr [ebp+12]
add dword ptr [ecx], 4
jmp .L_0154
.L_019A:
.L_015A:
cmp dword ptr [Lt_01B1], 0
je .L_01A5
cmp dword ptr [Lt_01B2], 65535
jbe .L_01A7
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov dword ptr [Lt_01B2], 65535
.L_01A7:
.L_01A6:
mov dword ptr [Lt_01AB], 1
mov ecx, dword ptr [Lt_01B2]
mov dword ptr [Lt_01BA], ecx
.L_01A8:
cmp dword ptr [Lt_01BA], 7
jbe .L_01A9
shr dword ptr [Lt_01BA], 3
inc dword ptr [Lt_01AB]
jmp .L_01A8
.L_01A9:
mov ecx, dword ptr [Lt_01AE]
mov eax, dword ptr [Lt_01AB]
mov dword ptr [ecx], eax
add dword ptr [Lt_01AE], 4
push dword ptr [Lt_01B2]
call fb_WstrOct_i
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 0
push dword ptr [Lt_01AE]
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-8]
call fb_WstrDelete
add esp, 4
mov eax, dword ptr [Lt_01AB]
sal eax, 2
add dword ptr [Lt_01AE], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_0154
.L_01A5:
.L_01A4:
.L_0157:
.L_0156:
mov eax, dword ptr [Lt_01AE]
mov ecx, dword ptr [Lt_01B0]
mov dword ptr [eax], ecx
add dword ptr [Lt_01AE], 4
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
jmp .L_0154
.L_0155:
mov ecx, dword ptr [Lt_01AE]
mov dword ptr [ecx], 0
mov ecx, dword ptr [Lt_01AC]
mov dword ptr [ebp-4], ecx
.L_0151:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01AC,12
.balign 4
	.lcomm	Lt_01B0,4
.balign 4
	.lcomm	Lt_01AB,4
.balign 4
	.lcomm	Lt_01B3,4
.balign 4
	.lcomm	Lt_01B1,4
.balign 4
	.lcomm	Lt_01B2,4
.balign 4
	.lcomm	Lt_01AD,4
.balign 4
	.lcomm	Lt_01AE,4
.balign 4
	.lcomm	Lt_01AF,4
.balign 4
	.lcomm	Lt_01BA,4

.section .text
.balign 16

.globl HESCAPE
HESCAPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01BB:
mov dword ptr [Lt_01D7], 0
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [Lt_01D8], eax
cmp dword ptr [Lt_01D8], 0
jne .L_01BE
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01BC
.L_01BE:
.L_01BD:
mov eax, dword ptr [Lt_01D8]
sal eax, 2
push eax
push offset Lt_01D9
call DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_01DA], eax
mov eax, dword ptr [Lt_01D9]
mov dword ptr [Lt_01DB], eax
mov eax, dword ptr [Lt_01DA]
add eax, dword ptr [Lt_01D8]
mov dword ptr [Lt_01DC], eax
.L_01BF:
mov eax, dword ptr [Lt_01DC]
cmp dword ptr [Lt_01DA], eax
jae .L_01C0
mov eax, dword ptr [Lt_01DA]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_01DD], ebx
inc dword ptr [Lt_01DA]
cmp dword ptr [Lt_01DD], 92
je .L_01C3
.L_01C4:
cmp dword ptr [Lt_01DD], 34
jne .L_01C2
.L_01C3:
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 92
inc dword ptr [Lt_01DB]
jmp .L_01C1
.L_01C2:
cmp dword ptr [Lt_01DD], 27
jne .L_01C5
.L_01C6:
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 92
inc dword ptr [Lt_01DB]
mov ebx, dword ptr [Lt_01DC]
cmp dword ptr [Lt_01DA], ebx
jb .L_01C8
jmp .L_01C0
.L_01C8:
mov ebx, dword ptr [Lt_01DA]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_01DD], eax
inc dword ptr [Lt_01DA]
mov eax, dword ptr [Lt_01DD]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_01DD]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01CA
mov ebx, dword ptr [Lt_01DD]
mov dword ptr [Lt_01D7], ebx
mov ebx, dword ptr [Lt_01DC]
cmp dword ptr [Lt_01DA], ebx
jb .L_01CC
jmp .L_01C0
.L_01CC:
mov ebx, dword ptr [Lt_01DA]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_01DD], eax
inc dword ptr [Lt_01DA]
.L_01CA:
.L_01C9:
jmp .L_01C1
.L_01C5:
cmp dword ptr [Lt_01DD], 0
jl .L_01CF
cmp dword ptr [Lt_01DD], 31
jle .L_01CE
.L_01CF:
cmp dword ptr [Lt_01DD], 128
jl .L_01CD
cmp dword ptr [Lt_01DD], 255
jg .L_01CD
.L_01CE:
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], 92
inc dword ptr [Lt_01DB]
cmp dword ptr [Lt_01DD], 8
jge .L_01D1
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], 48
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax+1], 48
add dword ptr [Lt_01DB], 2
add dword ptr [Lt_01DD], 48
jmp .L_01D0
.L_01D1:
cmp dword ptr [Lt_01DD], 64
jge .L_01D2
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], 48
mov eax, dword ptr [Lt_01DD]
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax+1], bl
add dword ptr [Lt_01DB], 2
mov ebx, dword ptr [Lt_01DD]
and ebx, 7
add ebx, 48
mov dword ptr [Lt_01DD], ebx
jmp .L_01D0
.L_01D2:
mov ebx, dword ptr [Lt_01DD]
sar ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], al
mov eax, dword ptr [Lt_01DD]
and eax, 56
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax+1], bl
add dword ptr [Lt_01DB], 2
mov ebx, dword ptr [Lt_01DD]
and ebx, 7
add ebx, 48
mov dword ptr [Lt_01DD], ebx
.L_01D0:
.L_01CD:
.L_01C1:
mov bl, byte ptr [Lt_01DD]
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], bl
inc dword ptr [Lt_01DB]
cmp dword ptr [Lt_01D7], 0
jle .L_01D4
dec dword ptr [Lt_01D7]
cmp dword ptr [Lt_01D7], 0
jne .L_01D6
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 34
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx+1], 34
add dword ptr [Lt_01DB], 2
.L_01D6:
.L_01D5:
.L_01D4:
.L_01D3:
jmp .L_01BF
.L_01C0:
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 0
mov ebx, dword ptr [Lt_01D9]
mov dword ptr [ebp-4], ebx
.L_01BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01D9,12
.balign 4
	.lcomm	Lt_01DD,4
.balign 4
	.lcomm	Lt_01D7,4
.balign 4
	.lcomm	Lt_01D8,4
.balign 4
	.lcomm	Lt_01DA,4
.balign 4
	.lcomm	Lt_01DC,4
.balign 4
	.lcomm	Lt_01DB,4

.section .text
.balign 16

.globl HHASESCAPE
HHASESCAPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01F6:
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [Lt_0201], eax
.L_01F8:
cmp dword ptr [Lt_0201], 0
jle .L_01F9
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 92
jne .L_01FB
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0202], eax
mov eax, dword ptr [Lt_0202]
mov dword ptr [ebp-8], eax
jmp .L_01FD
.L_01FF:
mov dword ptr [ebp-4], -1
jmp .L_01F7
jmp .L_01FC
.L_01FD:
mov eax, dword ptr [ebp-8]
add eax, 4294967262
cmp eax, 84
ja .L_01FC
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0200+eax*4-136]
.L_0200:
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FC
.int .L_01FF
.int .L_01FC
.int .L_01FC
.int .L_01FC
.int .L_01FF
.int .L_01FC
.int .L_01FF
.int .L_01FF
.int .L_01FF
.L_01FC:
.L_01FB:
.L_01FA:
inc dword ptr [ebp+8]
dec dword ptr [Lt_0201]
jmp .L_01F8
.L_01F9:
mov dword ptr [ebp-4], 0
.L_01F7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0202,4
.balign 4
	.lcomm	Lt_0201,4

.section .text
.balign 16

.globl HHASESCAPEW
HHASESCAPEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0203:
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 4
mov dword ptr [Lt_020E], eax
.L_0205:
cmp dword ptr [Lt_020E], 0
jle .L_0206
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 92
jne .L_0208
add dword ptr [ebp+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_020F], ebx
mov ebx, dword ptr [Lt_020F]
mov dword ptr [ebp-8], ebx
jmp .L_020A
.L_020C:
mov dword ptr [ebp-4], -1
jmp .L_0204
jmp .L_0209
.L_020A:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967262
cmp ebx, 84
ja .L_0209
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_020D+ebx*4-136]
.L_020D:
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_0209
.int .L_020C
.int .L_0209
.int .L_0209
.int .L_0209
.int .L_020C
.int .L_0209
.int .L_020C
.int .L_020C
.int .L_020C
.L_0209:
.L_0208:
.L_0207:
add dword ptr [ebp+8], 4
dec dword ptr [Lt_020E]
jmp .L_0205
.L_0206:
mov dword ptr [ebp-4], 0
.L_0204:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_020F,4
.balign 4
	.lcomm	Lt_020E,4

.section .text
.balign 16

.globl HESCAPEW
HESCAPEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_021A:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [Lt_0237], eax
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 4
mov dword ptr [Lt_0238], eax
cmp dword ptr [Lt_0238], 0
jne .L_021D
mov dword ptr [ebp-4], 0
jmp .L_021B
.L_021D:
.L_021C:
mov eax, dword ptr [Lt_0237]
imul eax, dword ptr [Lt_0238]
sal eax, 2
push eax
push offset Lt_0239
call DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_023A], eax
mov eax, dword ptr [Lt_0239]
mov dword ptr [Lt_023B], eax
mov eax, dword ptr [Lt_0238]
sal eax, 2
mov ebx, dword ptr [Lt_023A]
add ebx, eax
mov dword ptr [Lt_023C], ebx
.L_021E:
mov ebx, dword ptr [Lt_023C]
cmp dword ptr [Lt_023A], ebx
jae .L_021F
mov ebx, dword ptr [Lt_023A]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_023D], eax
add dword ptr [Lt_023A], 4
cmp dword ptr [Lt_023D], 27
jne .L_0221
mov eax, dword ptr [Lt_023C]
cmp dword ptr [Lt_023A], eax
jb .L_0223
jmp .L_021F
.L_0223:
mov eax, dword ptr [Lt_023A]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_023D], ebx
add dword ptr [Lt_023A], 4
cmp dword ptr [Lt_023D], 1
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [Lt_023D], 11
setbe al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0225
mov eax, dword ptr [Lt_023D]
mov dword ptr [Lt_0240], eax
mov dword ptr [Lt_023D], 0
mov eax, dword ptr [Lt_0240]
sal eax, 2
mov ebx, dword ptr [Lt_023A]
add ebx, eax
mov eax, dword ptr [Lt_023C]
cmp ebx, eax
jbe .L_0227
jmp .L_021F
.L_0227:
.L_0228:
cmp dword ptr [Lt_0240], 0
jle .L_0229
mov eax, dword ptr [Lt_023D]
shl eax, 3
mov ebx, dword ptr [Lt_023A]
add eax, dword ptr [ebx]
add eax, 4294967248
mov dword ptr [Lt_023D], eax
add dword ptr [Lt_023A], 4
dec dword ptr [Lt_0240]
jmp .L_0228
.L_0229:
jmp .L_0224
.L_0225:
cmp dword ptr [Lt_023D], 117
jne .L_022C
mov eax, dword ptr [Lt_023A]
add eax, 16
mov ebx, dword ptr [Lt_023C]
cmp eax, ebx
jbe .L_022E
jmp .L_021F
.L_022E:
push dword ptr [Lt_023A]
call HU16TOWCHAR
add esp, 4
mov dword ptr [Lt_023D], eax
add dword ptr [Lt_023A], 16
jmp .L_022B
.L_022C:
push dword ptr [Lt_023D]
call HREMAPCHAR
add esp, 4
mov dword ptr [Lt_023D], eax
.L_022B:
.L_0224:
.L_0221:
.L_0220:
mov dword ptr [Lt_0240], 1
mov eax, dword ptr [Lt_0237]
mov dword ptr [ebp-8], eax
jmp .L_0230
.L_0233:
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax], 92
inc dword ptr [Lt_023B]
mov eax, dword ptr [Lt_023D]
and eax, 255
mov dword ptr [Lt_0241], eax
cmp dword ptr [Lt_0241], 8
jae .L_0235
mov eax, dword ptr [Lt_0241]
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax], bl
inc dword ptr [Lt_023B]
jmp .L_0234
.L_0235:
cmp dword ptr [Lt_0241], 64
jae .L_0236
mov ebx, dword ptr [Lt_0241]
shr ebx, 3
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_023B]
mov byte ptr [ebx], al
mov eax, dword ptr [Lt_0241]
and eax, 7
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax+1], bl
add dword ptr [Lt_023B], 2
jmp .L_0234
.L_0236:
mov ebx, dword ptr [Lt_0241]
shr ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_023B]
mov byte ptr [ebx], al
mov eax, dword ptr [Lt_0241]
and eax, 56
shr eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax+1], bl
mov ebx, dword ptr [Lt_0241]
and ebx, 7
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_023B]
mov byte ptr [ebx+2], al
add dword ptr [Lt_023B], 3
.L_0234:
shr dword ptr [Lt_023D], 8
.L_0231:
inc dword ptr [Lt_0240]
.L_0230:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0240], eax
jle .L_0233
.L_0232:
jmp .L_021E
.L_021F:
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax], 0
mov eax, dword ptr [Lt_0239]
mov dword ptr [ebp-4], eax
.L_021B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0239,12
.balign 4
	.lcomm	Lt_023D,4
.balign 4
	.lcomm	Lt_0241,4
.balign 4
	.lcomm	Lt_0238,4
.balign 4
	.lcomm	Lt_0240,4
.balign 4
	.lcomm	Lt_0237,4
.balign 4
	.lcomm	Lt_023A,4
.balign 4
	.lcomm	Lt_023C,4
.balign 4
	.lcomm	Lt_023B,4

.section .text
.balign 16

.globl HUNESCAPE
HUNESCAPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0242:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [Lt_0250], eax
cmp dword ptr [Lt_0250], 0
jne .L_0245
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0243
.L_0245:
.L_0244:
push dword ptr [Lt_0250]
push offset Lt_0251
call DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_0252], eax
mov eax, dword ptr [Lt_0251]
mov dword ptr [Lt_0253], eax
mov eax, dword ptr [Lt_0252]
add eax, dword ptr [Lt_0250]
mov dword ptr [Lt_0254], eax
.L_0246:
mov eax, dword ptr [Lt_0254]
cmp dword ptr [Lt_0252], eax
jae .L_0247
mov eax, dword ptr [Lt_0252]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0255], ebx
inc dword ptr [Lt_0252]
cmp dword ptr [Lt_0255], 27
jne .L_0249
mov ebx, dword ptr [Lt_0254]
cmp dword ptr [Lt_0252], ebx
jb .L_024B
jmp .L_0247
.L_024B:
mov ebx, dword ptr [Lt_0252]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0255], eax
inc dword ptr [Lt_0252]
mov eax, dword ptr [Lt_0255]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0255]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_024D
mov ebx, dword ptr [Lt_0255]
mov dword ptr [Lt_0258], ebx
mov dword ptr [Lt_0255], 0
.L_024E:
cmp dword ptr [Lt_0258], 0
jle .L_024F
mov ebx, dword ptr [Lt_0255]
sal ebx, 3
mov eax, dword ptr [Lt_0252]
movzx ecx, byte ptr [eax]
add ebx, ecx
add ebx, -48
mov dword ptr [Lt_0255], ebx
inc dword ptr [Lt_0252]
dec dword ptr [Lt_0258]
jmp .L_024E
.L_024F:
jmp .L_024C
.L_024D:
push dword ptr [Lt_0255]
call HREMAPCHAR
add esp, 4
mov dword ptr [Lt_0255], eax
.L_024C:
.L_0249:
.L_0248:
mov al, byte ptr [Lt_0255]
mov ebx, dword ptr [Lt_0253]
mov byte ptr [ebx], al
inc dword ptr [Lt_0253]
jmp .L_0246
.L_0247:
mov eax, dword ptr [Lt_0253]
mov byte ptr [eax], 0
mov eax, dword ptr [Lt_0253]
sub eax, dword ptr [Lt_0251]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [Lt_0251]
mov dword ptr [ebp-4], eax
.L_0243:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0251,12
.balign 4
	.lcomm	Lt_0255,4
.balign 4
	.lcomm	Lt_0250,4
.balign 4
	.lcomm	Lt_0258,4
.balign 4
	.lcomm	Lt_0252,4
.balign 4
	.lcomm	Lt_0253,4
.balign 4
	.lcomm	Lt_0254,4

.section .text
.balign 16

.globl HUNESCAPEW
HUNESCAPEW:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0259:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 4
mov dword ptr [Lt_026B], eax
cmp dword ptr [Lt_026B], 0
jne .L_025C
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_025A
.L_025C:
.L_025B:
push dword ptr [Lt_026B]
push offset Lt_026C
call DWSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_026D], eax
mov eax, dword ptr [Lt_026C]
mov dword ptr [Lt_026E], eax
mov eax, dword ptr [Lt_026B]
sal eax, 2
mov ebx, dword ptr [Lt_026D]
add ebx, eax
mov dword ptr [Lt_026F], ebx
.L_025D:
mov ebx, dword ptr [Lt_026F]
cmp dword ptr [Lt_026D], ebx
jae .L_025E
mov ebx, dword ptr [Lt_026D]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_0270], eax
add dword ptr [Lt_026D], 4
cmp dword ptr [Lt_0270], 27
jne .L_0260
mov eax, dword ptr [Lt_026F]
cmp dword ptr [Lt_026D], eax
jb .L_0262
jmp .L_025E
.L_0262:
mov eax, dword ptr [Lt_026D]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0270], ebx
add dword ptr [Lt_026D], 4
mov ebx, dword ptr [Lt_0270]
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0270]
cmp eax, 11
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0264
mov eax, dword ptr [Lt_0270]
mov dword ptr [Lt_0273], eax
mov dword ptr [Lt_0270], 0
.L_0265:
cmp dword ptr [Lt_0273], 0
jle .L_0266
mov eax, dword ptr [Lt_0270]
sal eax, 3
mov ebx, eax
mov eax, dword ptr [Lt_026D]
add ebx, dword ptr [eax]
add ebx, 4294967248
mov eax, ebx
mov dword ptr [Lt_0270], eax
add dword ptr [Lt_026D], 4
dec dword ptr [Lt_0273]
jmp .L_0265
.L_0266:
jmp .L_0263
.L_0264:
cmp dword ptr [Lt_0270], 117
jne .L_0268
mov eax, dword ptr [Lt_026D]
add eax, 16
mov ebx, dword ptr [Lt_026F]
cmp eax, ebx
jbe .L_026A
jmp .L_025E
.L_026A:
push dword ptr [Lt_026D]
call HU16TOWCHAR
add esp, 4
mov dword ptr [Lt_0270], eax
add dword ptr [Lt_026D], 16
jmp .L_0267
.L_0268:
push dword ptr [Lt_0270]
call HREMAPCHAR
add esp, 4
mov dword ptr [Lt_0270], eax
.L_0267:
.L_0263:
.L_0260:
.L_025F:
mov eax, dword ptr [Lt_026E]
mov ebx, dword ptr [Lt_0270]
mov dword ptr [eax], ebx
add dword ptr [Lt_026E], 4
jmp .L_025D
.L_025E:
mov ebx, dword ptr [Lt_026E]
mov dword ptr [ebx], 0
mov ebx, dword ptr [Lt_026E]
sub ebx, dword ptr [Lt_026C]
mov ecx, 4
mov eax, ebx
cdq
idiv ecx
mov ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [Lt_026C]
mov dword ptr [ebp-4], ebx
.L_025A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_026C,12
.balign 4
	.lcomm	Lt_0270,4
.balign 4
	.lcomm	Lt_026B,4
.balign 4
	.lcomm	Lt_0273,4
.balign 4
	.lcomm	Lt_026D,4
.balign 4
	.lcomm	Lt_026E,4
.balign 4
	.lcomm	Lt_026F,4

.section .text
.balign 16

.globl HCHARNEEDSESCAPING
HCHARNEEDSESCAPING:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0274:
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
.L_0275:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HISVALIDHEXDIGIT
HISVALIDHEXDIGIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_027B:
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
.L_027C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HSTR2LONG
HSTR2LONG:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0286:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 1
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0289
mov dword ptr [ebp-4], 0
jmp .L_0287
.L_0289:
.L_0288:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_028A
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0296
.L_028A:
mov dword ptr [ebp-20], -1
.L_0296:
cmp dword ptr [ebp-20], 0
je .L_028D
mov dword ptr [ebp-4], 0
jmp .L_0287
.L_028D:
.L_028C:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 45
jne .L_028F
mov dword ptr [ebp-12], -1
inc dword ptr [ebp-16]
.L_028F:
.L_028E:
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_0291
mov dword ptr [ebp-4], 0
jmp .L_0287
.L_0291:
.L_0290:
.L_0292:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .L_0294
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0297
.L_0294:
mov dword ptr [ebp-24], 0
.L_0297:
cmp dword ptr [ebp-24], 0
je .L_0293
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
jmp .L_0292
.L_0293:
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
.L_0287:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HSPLITSTR
HSPLITSTR:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_029B:
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
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_029D
push 0
push 0
push offset Lt_029E
push 1318
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_029D:
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 1
.L_029F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-52]
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .L_02A3
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-48], eax
jl .L_02A5
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
call fb_ArrayRedimPresvEx
add esp, 28
test eax, eax
je .L_02A6
push 0
push 0
push offset Lt_029E
push 1329
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02A6:
.L_02A5:
.L_02A4:
mov eax, dword ptr [ebp-48]
sal eax, 2
add eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-52]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-44]
add dword ptr [ebp-52], ebx
.L_02A3:
.L_02A2:
inc dword ptr [ebp-48]
.L_02A1:
cmp dword ptr [ebp-52], 0
jne .L_029F
.L_02A0:
dec dword ptr [ebp-48]
cmp dword ptr [ebp-48], 0
jne .L_02A8
push 0
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02A9
push 0
push 0
push offset Lt_029E
push 1339
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02A9:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call fb_ArrayErase
add esp, 4
jmp .L_029C
.L_02A8:
.L_02A7:
push dword ptr [ebp-48]
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02AA
push 0
push 0
push offset Lt_029E
push 1344
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02AA:
push 0
push -1
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax]
dec ebx
push ebx
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-52], 1
.L_02AB:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-52], eax
je .L_02AC
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
call fb_StrMid
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-52]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-52]
jmp .L_02AB
.L_02AC:
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
call fb_StrMid
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-40]
push ebx
call fb_ArrayErase
add esp, 4
.L_029C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HSTR2TOK
HSTR2TOK:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_02AD:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_02AF:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .L_02B0
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .L_02B2
mov dword ptr [ebp-24], 32
.L_02B2:
.L_02B1:
cmp dword ptr [ebp-24], 32
jne .L_02B4
cmp dword ptr [ebp-12], 32
je .L_02B6
inc dword ptr [ebp-8]
.L_02B6:
.L_02B5:
.L_02B4:
.L_02B3:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-16]
jmp .L_02AF
.L_02B0:
cmp dword ptr [ebp-12], 32
je .L_02B8
inc dword ptr [ebp-8]
.L_02B8:
.L_02B7:
cmp dword ptr [ebp-8], 0
jne .L_02BA
mov dword ptr [ebp-4], 0
jmp .L_02AE
.L_02BA:
.L_02B9:
mov eax, dword ptr [ebp-8]
dec eax
push eax
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+12]
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02BB
push 0
push 0
push offset Lt_029E
push 1386
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02BB:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_02BC:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .L_02BD
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .L_02BF
mov dword ptr [ebp-24], 32
.L_02BF:
.L_02BE:
cmp dword ptr [ebp-24], 32
jne .L_02C1
cmp dword ptr [ebp-12], 32
je .L_02C3
inc dword ptr [ebp-8]
.L_02C3:
.L_02C2:
jmp .L_02C0
.L_02C1:
push 0
push -1
push -1
push dword ptr [ebp-24]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_02C0:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-12], ebx
inc dword ptr [ebp-16]
jmp .L_02BC
.L_02BD:
cmp dword ptr [ebp-12], 32
je .L_02C5
mov ebx, dword ptr [ebp-8]
inc ebx
mov dword ptr [ebp-20], ebx
jmp .L_02C7
.L_02C5:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-20], ebx
.L_02C7:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
.L_02AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HSTR2ARGS
HSTR2ARGS:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_02C8:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 10
cmp dword ptr [ebp+8], 0
jne .L_02CB
mov dword ptr [ebp-4], 0
jmp .L_02C9
.L_02CB:
.L_02CA:
mov eax, dword ptr [ebp-24]
dec eax
push eax
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+12]
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_02CC
push 0
push 0
push offset Lt_029E
push 1433
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02CC:
.L_02CD:
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
je .L_02D1
inc dword ptr [ebp-12]
jmp .L_02D0
.L_02D1:
jmp .L_02CE
.L_02D0:
.L_02CF:
jmp .L_02CD
.L_02CE:
cmp dword ptr [ebp-20], 0
jne .L_02D3
mov dword ptr [ebp-4], 0
jmp .L_02C9
.L_02D3:
.L_02D2:
inc dword ptr [ebp-8]
.L_02D4:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_02D8
.L_02D9:
jmp .L_02D5
jmp .L_02D7
.L_02D8:
cmp dword ptr [ebp-20], 40
jne .L_02DA
.L_02DB:
inc dword ptr [ebp-16]
jmp .L_02D7
.L_02DA:
cmp dword ptr [ebp-20], 41
jne .L_02DC
.L_02DD:
cmp dword ptr [ebp-16], 0
jle .L_02DF
dec dword ptr [ebp-16]
.L_02DF:
.L_02DE:
jmp .L_02D7
.L_02DC:
cmp dword ptr [ebp-20], 44
jne .L_02E0
.L_02E1:
cmp dword ptr [ebp-16], 0
jne .L_02E3
inc dword ptr [ebp-8]
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-8], ebx
jle .L_02E5
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
call fb_ArrayRedimPresvEx
add esp, 28
test eax, eax
je .L_02E6
push 0
push 0
push offset Lt_029E
push 1472
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02E6:
.L_02E5:
.L_02E4:
inc dword ptr [ebp-12]
jmp .L_02D6
.L_02E3:
.L_02E2:
jmp .L_02D7
.L_02E0:
cmp dword ptr [ebp-20], 34
je .L_02E8
.L_02E9:
cmp dword ptr [ebp-20], 33
je .L_02E8
.L_02EA:
cmp dword ptr [ebp-20], 36
jne .L_02E7
.L_02E8:
mov eax, dword ptr [ENV+1092]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-20], 34
je .L_02EC
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
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_02EF
jmp .L_02D6
.L_02EF:
.L_02EE:
.L_02EC:
.L_02EB:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
.L_02F1:
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_02F5
jmp .L_02F2
.L_02F5:
.L_02F4:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
cmp dword ptr [ebp-20], 34
jne .L_02F8
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_02FA
jmp .L_02F2
.L_02FA:
.L_02F9:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
jmp .L_02F7
.L_02F8:
cmp dword ptr [ebp-20], 92
jne .L_02FC
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_02FF
.L_0300:
cmp dword ptr [ebp-20], 92
jne .L_02FE
.L_02FF:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
.L_02FE:
.L_02FD:
.L_02FC:
.L_02F7:
.L_02F3:
jmp .L_02F1
.L_02F2:
jmp .L_02D6
jmp .L_02D7
.L_02E7:
cmp dword ptr [ebp-20], 47
jne .L_0302
.L_0303:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 39
je .L_0306
jmp .L_02D6
.L_0306:
.L_0305:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
.L_0308:
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_030C
jmp .L_0309
.L_030C:
.L_030B:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
cmp dword ptr [ebp-20], 39
jne .L_030F
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 47
jne .L_0311
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
jmp .L_0309
.L_0311:
.L_0310:
.L_030F:
.L_030E:
.L_030A:
jmp .L_0308
.L_0309:
jmp .L_02D6
jmp .L_02D7
.L_0302:
cmp dword ptr [ebp-20], 39
jne .L_0313
.L_0314:
.L_0315:
cmp dword ptr [ebp-20], 0
je .L_0316
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-20], eax
jmp .L_0315
.L_0316:
jmp .L_02D5
.L_0313:
.L_02D7:
push 0
push -1
push -1
push dword ptr [ebp-20]
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax-12]
push ebx
call fb_StrAssign
add esp, 20
inc dword ptr [ebp-12]
.L_02D6:
jmp .L_02D4
.L_02D5:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_02C9:
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
HREMAPCHAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01E0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_01E3
.L_01E5:
mov dword ptr [ebp-4], 13
jmp .L_01E2
.L_01E7:
mov dword ptr [ebp-4], 10
jmp .L_01E2
.L_01EA:
mov dword ptr [ebp-4], 9
jmp .L_01E2
.L_01EC:
mov dword ptr [ebp-4], 8
jmp .L_01E2
.L_01EE:
mov dword ptr [ebp-4], 7
jmp .L_01E2
.L_01F0:
mov dword ptr [ebp-4], 12
jmp .L_01E2
.L_01F2:
mov dword ptr [ebp-4], 11
jmp .L_01E2
.L_01F4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01E2
.L_01E3:
mov eax, dword ptr [ebp-8]
add eax, 4294967199
cmp eax, 21
ja .L_01F4
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_01F5+eax*4-388]
.L_01F5:
.int .L_01EE
.int .L_01EC
.int .L_01F4
.int .L_01F4
.int .L_01F4
.int .L_01F0
.int .L_01F4
.int .L_01F4
.int .L_01F4
.int .L_01F4
.int .L_01F4
.int .L_01E7
.int .L_01F4
.int .L_01E7
.int .L_01F4
.int .L_01F4
.int .L_01F4
.int .L_01E5
.int .L_01F4
.int .L_01EA
.int .L_01F4
.int .L_01F2
.L_01E2:
.L_01E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HU16TOWCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0210:
mov dword ptr [Lt_031C], 0
mov dword ptr [Lt_031D], 1
.L_0215:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, 4294967248
mov dword ptr [Lt_031E], ebx
add dword ptr [ebp+8], 4
cmp dword ptr [Lt_031E], 9
jbe .L_0217
add dword ptr [Lt_031E], 4294967289
.L_0217:
.L_0216:
cmp dword ptr [Lt_031E], 16
jbe .L_0219
add dword ptr [Lt_031E], 4294967264
.L_0219:
.L_0218:
mov ebx, dword ptr [Lt_031C]
shl ebx, 4
or ebx, dword ptr [Lt_031E]
mov dword ptr [Lt_031C], ebx
.L_0213:
inc dword ptr [Lt_031D]
.L_0212:
cmp dword ptr [Lt_031D], 4
jle .L_0215
.L_0214:
mov ebx, dword ptr [Lt_031C]
mov dword ptr [ebp-4], ebx
.L_0211:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_031C,4
.balign 4
	.lcomm	Lt_031E,4
.balign 4
	.lcomm	Lt_031D,4
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_029E:	.ascii	"src/compiler/hlp-str.bas\0"
