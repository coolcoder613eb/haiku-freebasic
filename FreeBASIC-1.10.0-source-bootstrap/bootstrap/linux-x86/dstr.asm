	.intel_syntax noprefix

.section .text
.balign 16

.globl DZSTRZERO
DZSTRZERO:
.type DZSTRZERO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_005D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRZERO, .-DZSTRZERO
.cfi_endproc
.balign 16

.globl DZSTRALLOCATE
DZSTRALLOCATE:
.type DZSTRALLOCATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_005E:
cmp dword ptr [ebp+12], 0
jne .L_0061
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0063
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_0063:
.L_0062:
jmp .L_005F
.L_0061:
.L_0060:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .L_0065
push 0
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_0065:
.L_0064:
.L_005F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRALLOCATE, .-DZSTRALLOCATE
.cfi_endproc
.balign 16

.globl DZSTRRESET
DZSTRRESET:
.type DZSTRRESET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0066:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0069
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 0
.L_0069:
.L_0068:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRRESET, .-DZSTRRESET
.cfi_endproc
.balign 16

.globl DZSTRASSIGN
DZSTRASSIGN:
.type DZSTRASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_006A:
cmp dword ptr [ebp+12], 0
je .L_006C
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0076
.L_006C:
mov dword ptr [ebp-8], 0
.L_0076:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0071
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_0071:
.L_0070:
jmp .L_006B
.L_006F:
.L_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_0073
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_0073:
.L_0072:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_0075
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_StrAssign
add esp, 32
.L_0075:
.L_0074:
.L_006B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRASSIGN, .-DZSTRASSIGN
.cfi_endproc
.balign 16

.globl DZSTRASSIGNW
DZSTRASSIGNW:
.type DZSTRASSIGNW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0077:
cmp dword ptr [ebp+12], 0
je .L_0079
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0083
.L_0079:
mov dword ptr [ebp-8], 0
.L_0083:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_007C
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_007E
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_007E:
.L_007D:
jmp .L_0078
.L_007C:
.L_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_0080
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_0080:
.L_007F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_0082
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_WstrAssignToA
add esp, 16
.L_0082:
.L_0081:
.L_0078:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRASSIGNW, .-DZSTRASSIGNW
.cfi_endproc
.balign 16

.globl DZSTRASSIGNC
DZSTRASSIGNC:
.type DZSTRASSIGNC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0084:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp-4], 0
jne .L_0087
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0089
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_0089:
.L_0088:
jmp .L_0085
.L_0087:
.L_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_008B
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_008B:
.L_008A:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_008D
mov bl, byte ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], 0
.L_008D:
.L_008C:
.L_0085:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRASSIGNC, .-DZSTRASSIGNC
.cfi_endproc
.balign 16

.globl DZSTRCONCATASSIGN
DZSTRCONCATASSIGN:
.type DZSTRCONCATASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_008E:
cmp dword ptr [ebp+12], 0
je .L_0090
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0096
.L_0090:
mov dword ptr [ebp-8], 0
.L_0096:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_0093
jmp .L_008F
.L_0093:
.L_0092:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0095
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.L_0095:
.L_0094:
.L_008F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRCONCATASSIGN, .-DZSTRCONCATASSIGN
.cfi_endproc
.balign 16

.globl DZSTRCONCATASSIGNW
DZSTRCONCATASSIGNW:
.type DZSTRCONCATASSIGNW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0097:
cmp dword ptr [ebp+12], 0
je .L_0099
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_009F
.L_0099:
mov dword ptr [ebp-8], 0
.L_009F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_009C
jmp .L_0098
.L_009C:
.L_009B:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_009E
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call fb_WstrAssignToA
add esp, 16
.L_009E:
.L_009D:
.L_0098:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRCONCATASSIGNW, .-DZSTRCONCATASSIGNW
.cfi_endproc
.balign 16

.globl DZSTRCONCATASSIGNC
DZSTRCONCATASSIGNC:
.type DZSTRCONCATASSIGNC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00A0:
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .L_00A3
jmp .L_00A1
.L_00A3:
.L_00A2:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00A5
mov al, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx+1], 0
.L_00A5:
.L_00A4:
.L_00A1:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DZSTRCONCATASSIGNC, .-DZSTRCONCATASSIGNC
.cfi_endproc
.balign 16

.globl DWSTRZERO
DWSTRZERO:
.type DWSTRZERO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00A6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00A7:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRZERO, .-DWSTRZERO
.cfi_endproc
.balign 16

.globl DWSTRALLOCATE
DWSTRALLOCATE:
.type DWSTRALLOCATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00A8:
cmp dword ptr [ebp+12], 0
jne .L_00AB
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00AD
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00AD:
.L_00AC:
jmp .L_00A9
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .L_00AF
push 0
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_00AF:
.L_00AE:
.L_00A9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRALLOCATE, .-DWSTRALLOCATE
.cfi_endproc
.balign 16

.globl DWSTRRESET
DWSTRRESET:
.type DWSTRRESET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00B0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00B3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebx], 0
.L_00B3:
.L_00B2:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.L_00B1:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRRESET, .-DWSTRRESET
.cfi_endproc
.balign 16

.globl DWSTRASSIGN
DWSTRASSIGN:
.type DWSTRASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00B4:
cmp dword ptr [ebp+12], 0
je .L_00B6
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C0
.L_00B6:
mov dword ptr [ebp-8], 0
.L_00C0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00B9
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00BB
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00BB:
.L_00BA:
jmp .L_00B5
.L_00B9:
.L_00B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_00BD
push 0
push 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_00BD:
.L_00BC:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00BF
sub esp, 4
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_WstrAssign
add esp, 16
.L_00BF:
.L_00BE:
.L_00B5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRASSIGN, .-DWSTRASSIGN
.cfi_endproc
.balign 16

.globl DWSTRASSIGNA
DWSTRASSIGNA:
.type DWSTRASSIGNA, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00C1:
cmp dword ptr [ebp+12], 0
je .L_00C3
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00CD
.L_00C3:
mov dword ptr [ebp-8], 0
.L_00CD:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00C6
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00C8
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00C8:
.L_00C7:
jmp .L_00C2
.L_00C6:
.L_00C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_00CA
push 0
push 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_00CA:
.L_00C9:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00CC
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_WstrAssignFromA
add esp, 16
.L_00CC:
.L_00CB:
.L_00C2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRASSIGNA, .-DWSTRASSIGNA
.cfi_endproc
.balign 16

.globl DWSTRASSIGNC
DWSTRASSIGNC:
.type DWSTRASSIGNC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00CE:
mov dword ptr [ebp-4], 4
cmp dword ptr [ebp-4], 0
jne .L_00D1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00D3
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00D3:
.L_00D2:
jmp .L_00CF
.L_00D1:
.L_00D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_00D5
push 0
push 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.L_00D5:
.L_00D4:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00D7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [eax+4], 0
.L_00D7:
.L_00D6:
.L_00CF:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRASSIGNC, .-DWSTRASSIGNC
.cfi_endproc
.balign 16

.globl DWSTRCONCATASSIGN
DWSTRCONCATASSIGN:
.type DWSTRCONCATASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00D8:
cmp dword ptr [ebp+12], 0
je .L_00DA
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00E0
.L_00DA:
mov dword ptr [ebp-8], 0
.L_00E0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_00DD
jmp .L_00D9
.L_00DD:
.L_00DC:
push -1
push 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00DF
sub esp, 4
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssign
add esp, 16
.L_00DF:
.L_00DE:
.L_00D9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRCONCATASSIGN, .-DWSTRCONCATASSIGN
.cfi_endproc
.balign 16

.globl DWSTRCONCATASSIGNA
DWSTRCONCATASSIGNA:
.type DWSTRCONCATASSIGNA, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00E1:
cmp dword ptr [ebp+12], 0
je .L_00E3
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00E9
.L_00E3:
mov dword ptr [ebp-8], 0
.L_00E9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_00E6
jmp .L_00E2
.L_00E6:
.L_00E5:
push -1
push 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00E8
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssignFromA
add esp, 16
.L_00E8:
.L_00E7:
.L_00E2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRCONCATASSIGNA, .-DWSTRCONCATASSIGNA
.cfi_endproc
.balign 16

.globl DWSTRCONCATASSIGNC
DWSTRCONCATASSIGNC:
.type DWSTRCONCATASSIGNC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00EA:
mov dword ptr [ebp-4], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .L_00ED
jmp .L_00EB
.L_00ED:
.L_00EC:
push -1
push 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00EF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 2
mov eax, dword ptr [ebx]
add eax, ecx
mov dword ptr [eax+4], 0
.L_00EF:
.L_00EE:
.L_00EB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DWSTRCONCATASSIGNC, .-DWSTRCONCATASSIGNC
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
HREALLOC:
.type HREALLOC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
push ebx
push esi
.L_00F0:
mov eax, dword ptr [ebp+12]
add eax, 15
and eax, -16
mov dword ptr [Lt_00FC], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [eax+8]
setg cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+8]
sar esi, 3
mov eax, dword ptr [ecx+8]
sub eax, esi
mov esi, dword ptr [Lt_00FC]
cmp esi, eax
setl dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .L_00F3
cmp dword ptr [ebp+20], 0
jne .L_00F5
mov esi, dword ptr [ebp+8]
cmp dword ptr [esi], 0
je .L_00F7
sub esp, 12
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call free
add esp, 16
.L_00F7:
.L_00F6:
sub esp, 12
mov esi, dword ptr [Lt_00FC]
inc esi
imul esi, dword ptr [ebp+16]
mov ebx, esi
push ebx
call malloc
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00F9
sub esp, 12
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [Lt_00FC], eax
.L_00F9:
.L_00F8:
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0100], ebx
sub esp, 8
mov ebx, dword ptr [Lt_00FC]
inc ebx
imul ebx, dword ptr [ebp+16]
mov eax, ebx
push eax
push dword ptr [Lt_0100]
call realloc
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00FB
sub esp, 8
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
push dword ptr [Lt_0100]
call XREALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [Lt_00FC], eax
.L_00FB:
.L_00FA:
.L_00F4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_00FC]
mov dword ptr [eax+8], ebx
.L_00F3:
.L_00F2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_00F1:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREALLOC, .-HREALLOC
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00FC,4
.balign 4
	.lcomm	Lt_0100,4
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
