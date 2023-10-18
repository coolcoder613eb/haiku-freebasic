	.intel_syntax noprefix

.section .text
.balign 16

.globl _DZSTRZERO
_DZSTRZERO:
push ebp
mov ebp, esp
.L_005D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_005E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRALLOCATE
_DZSTRALLOCATE:
push ebp
mov ebp, esp
push ebx
.L_005F:
cmp dword ptr [ebp+12], 0
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
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_0064:
.L_0063:
jmp .L_0060
.L_0062:
.L_0061:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .L_0066
push 0
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_0066:
.L_0065:
.L_0060:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRRESET
_DZSTRRESET:
push ebp
mov ebp, esp
push ebx
.L_0067:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_006A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 0
.L_006A:
.L_0069:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRASSIGN
_DZSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006B:
cmp dword ptr [ebp+12], 0
je .L_006D
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_0077
.L_006D:
mov dword ptr [ebp-8], 0
.L_0077:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
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
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_0072:
.L_0071:
jmp .L_006C
.L_0070:
.L_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_0074
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_0074:
.L_0073:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_0076
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_StrAssign
add esp, 20
.L_0076:
.L_0075:
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRASSIGNW
_DZSTRASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0078:
cmp dword ptr [ebp+12], 0
je .L_007A
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0084
.L_007A:
mov dword ptr [ebp-8], 0
.L_0084:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_007D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_007F
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_007F:
.L_007E:
jmp .L_0079
.L_007D:
.L_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_0081
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_0081:
.L_0080:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_0083
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_WstrAssignToA
add esp, 16
.L_0083:
.L_0082:
.L_0079:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRASSIGNC
_DZSTRASSIGNC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0085:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp-4], 0
jne .L_0088
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_008A
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_008A:
.L_0089:
jmp .L_0086
.L_0088:
.L_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_008C
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_008C:
.L_008B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_008E
mov bl, byte ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], 0
.L_008E:
.L_008D:
.L_0086:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRCONCATASSIGN
_DZSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_008F:
cmp dword ptr [ebp+12], 0
je .L_0091
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_0097
.L_0091:
mov dword ptr [ebp-8], 0
.L_0097:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_0094
jmp .L_0090
.L_0094:
.L_0093:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0096
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.L_0096:
.L_0095:
.L_0090:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRCONCATASSIGNW
_DZSTRCONCATASSIGNW:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0098:
cmp dword ptr [ebp+12], 0
je .L_009A
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00A0
.L_009A:
mov dword ptr [ebp-8], 0
.L_00A0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_009D
jmp .L_0099
.L_009D:
.L_009C:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_009F
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_WstrAssignToA
add esp, 16
.L_009F:
.L_009E:
.L_0099:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRCONCATASSIGNC
_DZSTRCONCATASSIGNC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00A1:
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .L_00A4
jmp .L_00A2
.L_00A4:
.L_00A3:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00A6
mov al, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx+1], 0
.L_00A6:
.L_00A5:
.L_00A2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRZERO
_DWSTRZERO:
push ebp
mov ebp, esp
.L_00A7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00A8:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRALLOCATE
_DWSTRALLOCATE:
push ebp
mov ebp, esp
push ebx
.L_00A9:
cmp dword ptr [ebp+12], 0
jne .L_00AC
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00AE
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00AE:
.L_00AD:
jmp .L_00AA
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .L_00B0
push 0
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_00B0:
.L_00AF:
.L_00AA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRRESET
_DWSTRRESET:
push ebp
mov ebp, esp
push ebx
.L_00B1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00B4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 0
.L_00B4:
.L_00B3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.L_00B2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRASSIGN
_DWSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00B5:
cmp dword ptr [ebp+12], 0
je .L_00B7
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00C1
.L_00B7:
mov dword ptr [ebp-8], 0
.L_00C1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00BA
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00BC
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00BC:
.L_00BB:
jmp .L_00B6
.L_00BA:
.L_00B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_00BE
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_00BE:
.L_00BD:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00C0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_WstrAssign
add esp, 12
.L_00C0:
.L_00BF:
.L_00B6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRASSIGNA
_DWSTRASSIGNA:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00C2:
cmp dword ptr [ebp+12], 0
je .L_00C4
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00CE
.L_00C4:
mov dword ptr [ebp-8], 0
.L_00CE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00C7
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00C9
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00C9:
.L_00C8:
jmp .L_00C3
.L_00C7:
.L_00C6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_00CB
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_00CB:
.L_00CA:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00CD
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_WstrAssignFromA
add esp, 16
.L_00CD:
.L_00CC:
.L_00C3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRASSIGNC
_DWSTRASSIGNC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00CF:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp-4], 0
jne .L_00D2
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00D4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_00D4:
.L_00D3:
jmp .L_00D0
.L_00D2:
.L_00D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .L_00D6
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.L_00D6:
.L_00D5:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .L_00D8
mov bl, byte ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], 0
.L_00D8:
.L_00D7:
.L_00D0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRCONCATASSIGN
_DWSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00D9:
cmp dword ptr [ebp+12], 0
je .L_00DB
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00E1
.L_00DB:
mov dword ptr [ebp-8], 0
.L_00E1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_00DE
jmp .L_00DA
.L_00DE:
.L_00DD:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00E0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_WstrAssign
add esp, 12
.L_00E0:
.L_00DF:
.L_00DA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRCONCATASSIGNA
_DWSTRCONCATASSIGNA:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00E2:
cmp dword ptr [ebp+12], 0
je .L_00E4
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_00EA
.L_00E4:
mov dword ptr [ebp-8], 0
.L_00EA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .L_00E7
jmp .L_00E3
.L_00E7:
.L_00E6:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00E9
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_WstrAssignFromA
add esp, 16
.L_00E9:
.L_00E8:
.L_00E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRCONCATASSIGNC
_DWSTRCONCATASSIGNC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00EB:
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .L_00EE
jmp .L_00EC
.L_00EE:
.L_00ED:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00F0
mov al, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx+1], 0
.L_00F0:
.L_00EF:
.L_00EC:
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
_HREALLOC:
push ebp
mov ebp, esp
push ebx
push esi
.L_00F1:
mov eax, dword ptr [ebp+12]
add eax, 15
and eax, -16
mov dword ptr [_Lt_00FD], eax
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
mov esi, dword ptr [_Lt_00FD]
cmp esi, eax
setl dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .L_00F4
cmp dword ptr [ebp+20], 0
jne .L_00F6
mov esi, dword ptr [ebp+8]
cmp dword ptr [esi], 0
je .L_00F8
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call _free
add esp, 4
.L_00F8:
.L_00F7:
mov esi, dword ptr [_Lt_00FD]
inc esi
imul esi, dword ptr [ebp+16]
mov ebx, esi
push ebx
call _malloc
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00FA
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_Lt_00FD], eax
.L_00FA:
.L_00F9:
jmp .L_00F5
.L_00F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0101], ebx
mov ebx, dword ptr [_Lt_00FD]
inc ebx
imul ebx, dword ptr [ebp+16]
mov eax, ebx
push eax
push dword ptr [_Lt_0101]
call _realloc
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_00FC
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
push dword ptr [_Lt_0101]
call _XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_Lt_00FD], eax
.L_00FC:
.L_00FB:
.L_00F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_00FD]
mov dword ptr [eax+8], ebx
.L_00F4:
.L_00F3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_00F2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00FD,4
.balign 4
	.lcomm	_Lt_0101,4
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
